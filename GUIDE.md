# 📜 Breakout — Strategy Guide

A complete guide to mastering **Breakout / Arkanoid Deluxe**. Read this to maximize your combos, master power-ups, avoid hazard debuffs, and conquer both Campaign and Endless modes.

🎮 **Play Live**: [https://kaiserc.github.io/Breakout/](https://kaiserc.github.io/Breakout/)

---

## 1. Game Modes

- **Campaign Mode**: Clear 8 authored stages without losing all lives. Each map features distinct geometry, reinforced multi-hit bricks, explosive blocks, and indestructible steel barriers.
- **Endless Mode**: Procedural waves starting at Wave 9 with escalating speed (+0.4 per level) and 5 rotating mutators:
  - 🌧️ **Falling Sky**: The brick ceiling steadily descends towards your paddle! Clear bricks fast before they breach the danger line.
  - 🌊 **Shifting Horizon**: Brick rows smoothly sway side to side.
  - 🛡️ **Armored Defense**: Heavy 2-hit and 3-hit brick fortress.
  - ⚡ **Speed Surge**: High-velocity turbo balls.
  - 🏁 **Checkerboard Matrix**: Sparse bank-shot grid.

---

## 2. Controls Refresher

| Action | Input |
|--------|-------|
| Move paddle | `Mouse`, `Touch / Swipe`, or `←` / `→` (`A` / `D`) |
| Launch ball / Fire lasers / Release catch | `Space` or `Tap / Click canvas` |
| Nudge ball / Free stuck balls | `N`, `Space`, or top header `⚡` button |
| Pause / Resume | `P` (or top header button) |
| Cycle Background Music Track | `B` (or top header `🎵` button) |
| Toggle Audio Mute | `M` (or top header sound button) |
| Fullscreen | `⛶` button |
| In-game Guide | `H` |

---

## 3. Ball Physics & Aiming

The bounce angle is determined by where the ball contacts the paddle:

- **Center impact** → Shoots nearly straight up (safer, controlled).
- **Edge impact** → Deflects out at steep angles up to 60° (ideal for penetrating top channels).
- **Paddle Motion (English)** → Moving the paddle while striking the ball slices the trajectory for precision bank shots!
- **Anti-Stuck & Orbit Breaker (Auto)** → Never get soft-locked in infinite loops between indestructible steel bricks or horizontal walls. The physics engine enforces minimum vertical velocity, applies bevel dispersion on steel impacts, and automatically fires an **Orbit Breaker** if a ball is trapped for >3.5–6s.
- **Manual Table Nudge (`⚡` / `N`)** → Whenever you want to perturb ball angles or rescue balls from tight mazes, tap `N` or the header `⚡` button to shake the table and kick all balls downward!

**Pro Tip**: Slice the ball with the paddle edges to funnel it above the brick wall. Once above the wall, the ball will bounce between the ceiling and bricks, wiping out entire rows automatically!

---

## 4. Power-Up & Hazard Breakdown

When a brick shatters, there is an **18% chance** it drops a capsule. `+1 LIFE` and `MULTI` capsules feature a soft magnetic attraction toward your paddle when close!

| Power-up | Icon / Color | Duration | Tactical Advice |
|---|---|---|---|
| **WIDE** | 🟦 `#4dd0ff` | ~12 s | Expands paddle width. Clears the `TINY` debuff immediately. |
| **SHIELD** | 🛡️ `#00f5d4` | Until hit | Deploys a safety barrier at the bottom of the screen. Saves one dropped ball, then breaks! |
| **MULTI** | 🟨 `#ffe66d` | Instant | Splits active balls into multiple comet balls (up to 8 balls total). |
| **SLOW** | 🟩 `#38f9d7` | ~9 s | Reduces ball speed. Crucial when high-level balls get frantic. |
| **+1 LIFE** | 💖 `#ff4d8d` | Instant | Awards an extra life (Max 5). Magnetically drifts toward paddle. |
| **LASER** | 🔴 `#ff3355` | ~10 s | Mounts twin blasters. Press `Space` / `Tap` repeatedly to snipe bricks from safety! |
| **FIRE** | 🟧 `#ff7700` | ~8 s | Inferno Comet! Plows straight through single-hit bricks without bouncing off them. |
| **CATCH** | 🟪 `#b366ff` | ~12 s | Magnetic Paddle. Catches the ball on contact. Line up your shot and press `Space` to launch! |
| **TINY** | 🔻 `#ff3333` | ~10 s | **Hazard!** Shrinks your paddle. Collecting `WIDE` will cancel it. |
| **FAST** | ⚡ `#ccff00` | ~8 s | **Hazard!** Boosts ball speed by 1.45x. |
| **CONFUSE** | ⇄ ⚠️ `#ff0055` | ~6 s | **The Joker Hazard (AVOID!)** Inverts paddle movement direction. Highlighted with pulsing danger beacon & warning aura. |

---

## 5. Combo Multiplier System

Consecutive brick hits **before the ball touches the paddle again** build a multiplier combo:
- 1st hit: `10 × Level × 1`
- 2nd hit: `10 × Level × 2`
- 3rd hit: `10 × Level × 3`
- ...and so on!

> 💥 **Bank Shot Bonus**: Sending the ball behind the brick wall creates 10x+ combos that send your score skyrocketing!

---

## 6. Campaign Map Progression

| Level | Map Name | Structure & Mechanics |
|---|---|---|
| **1** | The Wall | Classic full 8×10 brick wall. Tutorial pace (`5.5` speed). |
| **2** | Diamond Edge | Diamond formation with reinforced center bricks. |
| **3** | Space Invader | Iconic pixel invader pattern with armored core. |
| **4** | Checkered Fortress | Checkerboard grid with metal sentinels and reinforced 2-hit bricks. |
| **5** | Heart Core | Heart layout with armored exterior walls. |
| **6** | Hourglass | Narrow middle choke point and explosive bricks. |
| **7** | The Maze | Interlocking labyrinth walls of 2-hit reinforced bricks. |
| **8** | Final Citadel | 3-hit boss core bricks, metal sentinels, and full perimeter defense! |

---

Good luck, and aim for the high score! 🏆
