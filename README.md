# 🎮 MIPS Assembly Tetris

📺 **Demo Video**: [Watch here]([https://youtu.be/wEAbautBheI?si=n6ZmaVC7RktL9r8s])

A fully-functional Tetris game implemented in MIPS assembly language for CSCB58 at University of Toronto.

## ✨ Features Implemented

### Core Gameplay
- ✅ All 7 standard Tetromino pieces (I, O, T, S, Z, J, L)
- ✅ Piece rotation with wall kick system
- ✅ Gravity and automatic drop
- ✅ Line clearing with cascade effect
- ✅ Collision detection

### Advanced Features
- 🎯 Score tracking and display
- ⏸️ Pause/Resume functionality  
- 🔄 Game over screen with restart option
- 🎨 Next piece preview
- 🏆 Progressive difficulty

## 🎮 Controls

| Key | Action |
|-----|--------|
| `W` | Rotate piece |
| `A` | Move left |
| `S` | Soft drop |
| `D` | Move right |
| `P` | Pause/Resume |
| `R` | Restart (at game over) |
| `Q` | Quit game |

## 🛠️ Technical Details

### Display Configuration
- **Display:** 256x256 pixels (64x64 units)
- **Game Board:** 10×15 blocks
- **Base Address:** 0x10008000 ($gp)

### Architecture Highlights
```assembly
# Efficient collision detection using board state array
# Rotation system with SRS-like wall kicks
# Optimized rendering with dirty rectangle updates
Memory Management

Board State: 600 bytes (10×15×4)
Piece Shapes: Pre-calculated rotation states
UI Elements: Dedicated memory regions

🚀 How to Run

Open MARS MIPS simulator
Load tetris.asm
Configure Bitmap Display:

Unit Width: 4 pixels
Unit Height: 4 pixels
Display Width: 256 pixels
Display Height: 256 pixels
Base address: 0x10008000


Connect Bitmap Display and Keyboard Simulator
Assemble and Run

📊 Performance Optimizations

Smart Rendering: Only updates changed screen regions
Piece Locking: Efficient board state updates
Line Clearing: Optimized row shifting algorithm

🎯 Learning Outcomes
This project demonstrates:

Low-level programming and memory management
Game loop implementation in assembly
Real-time input handling
Bitmap graphics manipulation
Algorithm optimization in constrained environments
