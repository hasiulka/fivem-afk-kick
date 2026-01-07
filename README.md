# FiveM AFK Kick System

Simple AFK kick system for FiveM servers.

This resource automatically detects inactive players and removes them from the server after a configurable amount of time.

---

## ✨ Features
- AFK detection
- Warning before kick
- Automatic kick after inactivity
- Fully configurable
- Lightweight and standalone
- No ESX or QBCore required

---

## 🦇 Installation
1. Download or clone this repository
2. Put the folder into your `resources` directory
3. Add the following line to your `server.cfg`:
   ```
   ensure fivem-afk-kick
   ```

---

## ⚙️ Configuration
Edit the `config.lua` file:
```lua
Config.AFKTime = 10      -- minutes before kick
Config.WarningTime = 8  -- minutes before warning
Config.KickMessage = 'You were kicked for being AFK too long.'
```

---

## 🦇 How It Works
- The script checks player activity every second
- If no movement is detected, the AFK timer starts
- A warning message is shown before the kick
- The player is kicked once the AFK time is reached

---

## 📌 Notes
- Works automatically after server start
- No commands required
- Suitable for any FiveM server

---

## 📄 License
MIT License
