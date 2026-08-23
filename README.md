# 🧨 Breakout — Arkanoid Deluxe

A classic **Breakout / Arkanoid** arcade game built with plain HTML, CSS, and
JavaScript (Canvas 2D). Zero dependencies, zero build steps, completely offline.
Just open the file and play.

![preview](https://img.shields.io/badge/platform-Web-blue) ![no deps](https://img.shields.io/badge/deps-none-green) ![sound](https://img.shields.io/badge/audio-WebAudio_Synth-brightgreen)

---

## ✨ Features

- **Neon Arcade Visuals & Game Feel**:
  - Particle explosions on brick shattering.
  - Glowing comet motion trails behind fast-moving balls.
  - Micro-screen shake and floating score popups.
  - Procedural crack rendering on damaged multi-hit bricks.
  - Ambient drifting starfield.
- **7 Power-Ups** that drop from destroyed bricks:
  | Icon | Power-up | Effect | Duration |
  |------|----------|--------|----------|
  | `WIDE`  | Wide Paddle    | Paddle expands in width               | ~12 s |
  | `MULTI` | Multi-Ball     | Clones all active balls into 3 (max 8)| Instant |
  | `SLOW`  | Slow Ball      | Ball moves slower                     | ~9 s |
  | `+1`    | Extra Life     | Adds one life                         | Instant |
  | `LASER` | Laser Cannons  | Dual blasters on paddle (Space to fire)| ~10 s |
  | `FIRE`  | Fireball       | Pierces straight through 1-hit bricks | ~8 s |
  | `CATCH` | Sticky Paddle  | Catches ball; re-aim & launch (Space) | ~12 s |
- **Musical Web Audio Synthesis**:
  - Harmonized pentatonic scale tones mapped to brick rows.
  - Real-time synthesized laser blaster SFX, power-up arpeggios, and fanfares.
  - `M` key / button audio mute toggle.
- **Combo Multiplier & High Scores**:
  - Chaining brick hits before touching the paddle multiplies points (`x2`, `x3`, `x4`...).
  - Persistent High Score saved automatically via `localStorage`.
- **5 Progressive Levels**: Increasing ball speed, shrinking paddle, tough multi-hit bricks, and pattern layouts.

---

## 🎮 Controls

| Action | Keys / Input |
|--------|--------------|
| Move paddle | `Mouse`, `Touch / Swipe`, `←` / `→` (or `A` / `D`) |
| Launch ball / Fire lasers / Release catch | `Space`, `Tap / Click canvas` |
| Pause / Resume | `P` |
| Toggle Sound Mute | `M` (or click 🔊 Sound button) |
| In-game Guide | `H` (or click while on the guide) |

---

## ▶️ How to run

### Option 1 — double-click (simplest)
Open `breakout.html` directly in any modern browser (Chrome, Firefox, Edge, Safari).

### Option 2 — local web server
```bash
# Python 3
python -m http.server 8000

# or Node
npx serve .
```
Then open <http://localhost:8000/breakout.html>.

---

## 📁 Project files

| File | Purpose |
|------|---------|
| `breakout.html` | The complete standalone game (HTML + CSS + Canvas + Synth in one file). |
| `README.md`      | Overview and feature highlights. |
| `GUIDE.md`       | In-depth strategy guide, power-up combos, and high-score tactics. |
| `start.bat`      | Quick launcher script for Windows. |

---

## 🔧 Customization

Open `breakout.html` and tweak constants near the top of the `<script>`:

```js
const PADDLE_BASE_W = 96;   // starting paddle width
const PADDLE_WIDE_W = 150;  // width while WIDE power-up active
const baseSpeed     = 5.5;  // base ball speed (scales +0.45 per level)
const POWERUP_VY    = 3.5;  // power-up fall velocity
// drop chance per brick hit:
if (Math.random() < 0.18) { /* spawn power-up */ }
```

---

## 📄 License

Free to use, modify, and share for any purpose.
