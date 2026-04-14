let micEnabled = false;

async function loadStatus() {
    try {
        const res = await fetch("/status");
        const data = await res.json();
        micEnabled = data.mic;
        updateUI();
    } catch {
        console.log("Ошибка получения статуса");
    }
}

async function toggleAudio() {
    const btn = document.querySelector("button");
    btn.disabled = true;

    try {
        const res = await fetch("/toggle", { method: "POST" });
        const data = await res.json();

        micEnabled = data.mic;
        updateUI();
    } catch {
        btn.innerText = "❌ Ошибка";
    }

    btn.disabled = false;
}

function updateUI() {
    const btn = document.querySelector("button");

    if (micEnabled) {
        btn.innerText = "Micro.1";
        btn.style.background = "#f44336";
    } else {
        btn.innerText = "Micro.2";
        btn.style.background = "#4CAF50";
    }
}

window.onload = loadStatus;

if ("serviceWorker" in navigator) {
    navigator.serviceWorker.register("/sw.js");
}