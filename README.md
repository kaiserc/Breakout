# 🧱 Breakout — Arkanoid Deluxe

A classic, highly polished **Breakout / Arkanoid** arcade clone built with vanilla HTML5, CSS3, and JavaScript (Canvas 2D). Zero external dependencies, offline-capable, and optimized for both desktop and mobile layouts.

[![Play Live](https://img.shields.io/badge/Play_Live-GitHub_Pages-success?style=for-the-badge&logo=github)](https://kaiserc.github.io/Breakout/)
![platform](https://img.shields.io/badge/platform-Web-blue) ![no deps](https://img.shields.io/badge/deps-none-green) ![sound](https://img.shields.io/badge/audio-WebAudio_Synth-brightgreen) [![license](https://img.shields.io/badge/license-MIT-blue)](LICENSE)

🎮 **Play Online Now**: [https://kaiserc.github.io/Breakout/](https://kaiserc.github.io/Breakout/)

## 📸 Screenshots

| Glassmorphic Main Menu | Active Campaign Game | Endless Mode Challenge |
| :---: | :---: | :---: |
| ![Glassmorphic Main Menu](screenshots/menu.png) | ![Active Campaign Game](screenshots/game.png) | ![Endless Mode Challenge](screenshots/endless.png) |

---

## ✨ Features

- **Arcade Visuals & Juiced Game Feel**:
  - Particle explosions on brick shattering and explosive chain reactions.
  - Glowing comet motion trails behind fast-moving balls.
  - Micro-screen shake, floating combo popups, and visual countdown timer badges.
  - Procedural crack rendering on damaged multi-hit bricks.
  - Hi-DPI / Retina canvas support (`devicePixelRatio`).
- **8 Campaign Levels & Procedural Endless Mode**:
  - 8 hand-crafted patterned maps (The Wall, Diamond, Space Invader, Pillars, Heart, Hourglass, The Maze, Final Citadel).
  - Endless Mode starting at Level 9 with procedural grid generation, dynamic wave mutators (*Falling Sky*, *Shifting Horizon*, *Armored Defense*, *Checkerboard Matrix*, *Speed Surge*), and speed scaling (+0.4 per level).
- **Interactive Multi-Screen Overlay Menus**:
  - Glassmorphic panels for Campaign, Endless Mode, Stats, Achievements, and Level Select.
  - Automatic persistence of high scores, level progression, and stats (`localStorage`).
- **High-Fidelity Skin Themes**:
  - **Neon Cyberpunk**: Glowing cyan and hot-pink neon styling (default).
  - **Emerald Matrix**: Green terminal style with falling digital Matrix code rain backgrounds.
  - **Sunset Wave**: Vaporwave orange, pink, and purple gradient theme.
  - **Classic Arcade**: Hard-edged pixel graphics and solid retro colors.
- **Web Audio Procedural Synthesis**:
  - Harmonized pentatonic rows (higher bricks play higher notes) with dynamic combo chords.
  - Real-time synthesized laser blaster sound effects, power-up arpeggios, and fanfares.
  - Persistent Mute state saved across sessions.
- **Engine Performance & Game Physics**:
  - **Object Pools** (`particlePool`, `laserPool`, `floatingTextPool`, `powerupPool`) that recycle objects to eliminate garbage collection micro-stuttering.
  - **Continuous Collision Detection (CCD)**: Sub-stepped physics updates to prevent high-speed tunneling through bricks.
  - **Paddle Spin**: Deflection angle adjusts depending on the paddle's speed and movement direction during contact.

---

## 🎁 Power-ups & Power-downs

When a brick shatters, there is an **18% chance** it drops a capsule. Watch out for red/purple hazard capsules!

### Positive Power-Ups
| Icon | Name | Effect | Color | Duration |
|:---:|---|---|---|---|
| `WIDE` | Wide Paddle | Expands the paddle's width (cancels `TINY`) | 🟦 Blue | ~12 s |
| `MULTI` | Multi-Ball | Splits all active balls into 3 (max 8) | 🟨 Yellow | Instant |
| `SLOW` | Slow Ball | Reduces ball velocity for control | 🟩 Green | ~9 s |
| `+1` | Extra Life | Grants an additional life (Max 5, rare drop) | 💖 Pink | Instant |
| `LASER` | Laser Cannons | Mounts twin blasters (Space or Click to fire) | 🔴 Red | ~10 s |
| `FIRE` | Fireball | Ball plows straight through single-hit bricks | 🟧 Orange | ~8 s |
| `CATCH` | Sticky Paddle | Magnetically catches the ball (Space/Click to release) | 🟪 Purple | ~12 s |
| `SHIELD` | Screen Shield | Places a safety bounce line at the screen bottom | 💎 Cyan | Until hit |

### Negative Power-Downs
| Icon | Name | Effect | Color | Duration |
|:---:|---|---|---|---|
| `TINY` | Narrow Paddle | Narrows the paddle to a tiny width (cancels `WIDE`) | 🟥 Dark Red | ~10 s |
| `FAST` | Fast Ball | Speeds up the ball by `1.45x` | 🟨 Green-Yellow | ~8 s |
| `CONFUSE` | Reversed | Inverts left/right arrow keys & pointer movement | 🟪 Deep Purple | ~6 s |

---

## 🧱 Brick Types
* **Normal Bricks**: Take 1 to 3 hits to destroy. Render procedural cracks when damaged.
* **Invincible Metal Bricks** (`M`): Indestructible steel block hazard. Balls bounce off, and they do not count towards clearing levels.
* **Explosive Bricks** (`E`): Trigger a chain reaction damaging all 8 adjacent bricks when shattered.
* **Mystery Bricks** (`?`): Guaranteed random positive power-up or negative power-down drop.

---

## 🎮 Controls

| Action | Input |
|---|---|
| Move Paddle | `Mouse`, `Touch / Swipe`, or `←` / `→` (or `A` / `D` keys) |
| Launch / Shoot / Release | `Spacebar` or `Tap / Left-Click Canvas` |
| Pause / Resume | `P` key (or top header `⏸` button) |
| Toggle Audio Mute | `M` key (or top header `🔊`/`🔇` button) |
| Fullscreen Toggle | Top header `⛶` button |
| In-Game Guide | `H` key |

---

## ▶️ How to Run

### Option 1 — Play Live Online
👉 **[https://kaiserc.github.io/Breakout/](https://kaiserc.github.io/Breakout/)**

### Option 2 — Double-click local file
Open [`breakout.html`](./breakout.html) directly in any modern browser (Chrome, Edge, Firefox, Safari).

### Option 3 — Local Web Server
Start a web server inside this project directory:
```bash
# Python 3
python -m http.server 8000

# Node.js
npx serve -l 8000 .
```
Then load **[http://localhost:8000/breakout.html](http://localhost:8000/breakout.html)** in your browser.

---

## 📁 Project Files

| File | Purpose |
|------|---------|
| [`breakout.html`](./breakout.html) | The complete standalone game (HTML + CSS + Canvas + Synth in one file). |
| [`README.md`](./README.md)      | Project documentation and highlights. |
| [`GUIDE.md`](./GUIDE.md)       | Deep strategic guide, advanced level charts, and combo scoring. |
| [`start.bat`](./start.bat)      | Quick server startup script for Windows. |
| [`LICENSE`](./LICENSE)        | License specifications (MIT). |

---

## 📄 License

This project is licensed under the [MIT License](LICENSE).
