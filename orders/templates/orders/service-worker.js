self.addEventListener("install", (event) => {
    console.log("Service Worker Installed");
    // Force the waiting service worker to become active
    self.skipWaiting();
  });
  
  self.addEventListener("activate", (event) => {
    console.log("Service Worker Activated");
    // Take control of all clients immediately
    event.waitUntil(clients.claim());
  });
  
  console.log("Service worker loaded");
  
  self.addEventListener("push", (event) => {
    console.log("[Service Worker] Push Received:", event);
  
    let data = {};
    if (event.data) {
      try {
        data = event.data.json();
        console.log("[Service Worker] Push data:", data);
      } catch (error) {
        console.error("[Service Worker] Error parsing push data:", error);
      }
    } else {
      data = { title: "Order Update", body: "Your order is ready!" };
      console.log("[Service Worker] No data payload, using default:", data);
    }
  
    // Ensure minimum payload fields
    const title = data.title || "Order Update";
    const options = {
      body: data.body || "Your order is ready!",
      icon: "https://feline-clever-mutually.ngrok-free.app/static/orders/images/logo.png",
      data: data, // Attach full payload for later use
    };
  
    event.waitUntil(
      self.registration.showNotification(title, options)
        .then(() => {
          console.log("[Service Worker] Notification displayed.");
          return self.clients.matchAll({ includeUncontrolled: true, type: "window" });
        })
        .then((clients) => {
          console.log("[Service Worker] Found", clients.length, "client(s).");
          clients.forEach((client) => {
            client.postMessage({
              type: "PUSH_STATUS_UPDATE",
              payload: data,
            });
          });
        })
        .catch((err) => {
          console.error("[Service Worker] Error displaying notification:", err);
        })
    );
  });
  
  self.addEventListener("notificationclick", (event) => {
    event.notification.close();
    // Use a default URL if none is provided in the payload
    const targetUrl = (event.notification.data && event.notification.data.url) 
      ? event.notification.data.url 
      : "https://feline-clever-mutually.ngrok-free.app";
    
    event.waitUntil(
      clients.openWindow(targetUrl)
        .catch(err => console.error("[Service Worker] Error opening window:", err))
    );
  });
  