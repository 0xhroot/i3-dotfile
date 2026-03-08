<div align="center">

```
 ██████╗ ██╗  ██╗██╗  ██╗██████╗  ██████╗  ██████╗ ████████╗
██╔═████╗╚██╗██╔╝██║  ██║██╔══██╗██╔═══██╗██╔═══██╗╚══██╔══╝
██║██╔██║ ╚███╔╝ ███████║██████╔╝██║   ██║██║   ██║   ██║   
████╔╝██║ ██╔██╗ ██╔══██║██╔══██╗██║   ██║██║   ██║   ██║   
╚██████╔╝██╔╝ ██╗██║  ██║██║  ██║╚██████╔╝╚██████╔╝   ██║   
 ╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝  ╚═════╝   ╚═╝   
```

**A dark, minimal i3wm rice built for keyboard-driven hackers**

[![i3wm](https://img.shields.io/badge/WM-i3wm-2B303B?style=for-the-badge&logo=i3&logoColor=white)](https://i3wm.org)
[![Polybar](https://img.shields.io/badge/Bar-Polybar-96CDFB?style=for-the-badge)](https://github.com/polybar/polybar)
[![Kitty](https://img.shields.io/badge/Terminal-Kitty-F38BA8?style=for-the-badge)](https://sw.kovidgoyal.net/kitty)
[![Rofi](https://img.shields.io/badge/Launcher-Rofi-CBA6F7?style=for-the-badge)](https://github.com/davatorium/rofi)
[![Picom](https://img.shields.io/badge/Compositor-Picom-A6E3A1?style=for-the-badge)](https://github.com/yshui/picom)
[![Shell](https://img.shields.io/badge/Shell-49.9%25-FAB387?style=for-the-badge&logo=gnubash&logoColor=white)](.)
[![BlackArch](https://img.shields.io/badge/Distro-BlackArch-1A1B26?style=for-the-badge&logo=archlinux&logoColor=white)](https://blackarch.org)

<br/>

> *"Less chrome. More control. All keyboard."*

<br/>

[**Components**](#-components) · [**Installation**](#-installation) · [**Keybinds**](#️-keybindings) · [**Structure**](#-file-structure) · [**Screenshots**](#-screenshots)

</div>

---

## 🖥️ Overview

This is my personal **i3wm dotfile configuration** — a dark, minimal desktop environment built for focus and efficiency on **BlackArch Linux**. Every component is carefully tuned to work together: tight gaps, a custom Polybar, GPU-accelerated transparency via Picom, a themed Rofi launcher, and Cava audio visualizer all tied into a single `apply-theme` script.

The whole setup is keyboard-driven. Mouse is optional. Everything runs fast.

### At a glance

| Component | Choice |
|---|---|
| Window Manager | i3wm |
| Status Bar | Polybar |
| Terminal | Kitty |
| Compositor | Picom (with GLSL shaders) |
| App Launcher | Rofi |
| Audio Visualizer | Cava |
| Fetch | fm6000 |
| Wallpaper | Custom (included in `wallpaper/`) |
| Distro | BlackArch Linux |
| Shell | Bash |

---

## 🧩 Components

### 🪟 i3wm — Window Manager
`config/` in `i3/`

The core of the setup. i3 is a tiling window manager controlled entirely by keyboard. Key design decisions in this config:
- **Gaps** — inner/outer gaps for a clean floating aesthetic while staying tiling
- **No title bars** — minimal chrome, maximum screen real estate
- **Workspace naming** — custom workspace labels for a clean bar
- **Autostart** — Polybar, Picom, and wallpaper launched on startup

### 📊 Polybar — Status Bar
`polybar/`

A custom Polybar config displaying system info in a minimal top bar. Built with:
- Workspace indicator
- CPU / RAM / network modules
- Date & time
- Cava integration (optional)
- Custom color scheme matching the overall theme

### 🐱 Kitty — Terminal Emulator
`kitty/`

GPU-accelerated terminal with:
- Custom color palette matching the dark theme
- Font configuration (likely a Nerd Font for icon support)
- Transparency / background opacity tuned to match Picom
- Tab bar styling

### 🌀 Picom — Compositor
`picom/`

Handles transparency, shadows, and blur. Notable config:
- **GLSL shaders** (3.2% of the repo is GLSL) — custom visual effects
- Window fade animations
- Shadow exclusions for Polybar and Rofi
- Backend: `glx` for GPU acceleration

### 🚀 Rofi — App Launcher
`rofi/`

Themed application launcher / window switcher:
- Custom `.rasi` theme matching the overall color scheme
- Dmenu mode for scripts
- Window switcher integration with i3

### 🎵 Cava — Audio Visualizer
`cava/`

Terminal-based audio visualizer configured to match the color theme. Can be embedded in Kitty or displayed standalone as a visual element alongside the bar.

### 🖼️ Wallpaper
`wallpaper/`

Custom wallpaper(s) included in the repo. Applied via the `apply-theme` script or via `feh`/`nitrogen` in i3 autostart.

### ⚙️ apply-theme
A shell script that applies the entire theme in one shot — symlinks configs, sets the wallpaper, restarts Polybar and Picom, and reloads i3. Single command to go from a fresh install to a fully themed desktop.

### 🛡️ blackarch.sh
Bootstrap script for setting up the environment on BlackArch Linux. Installs all required packages and dependencies in one run.

### 📟 fm6000
A custom system fetch script — displays system info on terminal launch in a stylized format, consistent with the theme's aesthetic.

---

## 📁 File Structure

```
i3-dotfile/
│
├── i3/                        # i3wm configuration
│   └── config                 # Main i3 config — keybinds, gaps, autostart
│
├── polybar/                   # Polybar status bar
│   ├── config.ini             # Bar layout, modules, colors
│   └── launch.sh              # Polybar startup script
│
├── kitty/                     # Kitty terminal emulator
│   └── kitty.conf             # Colors, font, opacity, tabs
│
├── picom/                     # Picom compositor
│   └── picom.conf             # Shadows, fades, blur, GLSL shaders
│
├── rofi/                      # Rofi launcher
│   └── theme.rasi             # Custom Rofi theme
│
├── cava/                      # Cava audio visualizer
│   └── config                 # Colors, bars, sensitivity
│
├── wallpaper/                 # Wallpaper assets
│   └── *.png / *.jpg
│
├── apply-theme                # 🔑 One-shot theme applier script
├── blackarch.sh               # 📦 Dependency installer for BlackArch
└── fm6000                     # 📟 Custom system fetch
```

---

## ⚙️ Installation

### Prerequisites

This config is built and tested on **BlackArch Linux** (Arch-based). It will work on any Arch or Arch-derivative with the right packages installed.

### Step 1 — Clone the repo

```bash
git clone https://github.com/0xhroot/i3-dotfile.git
cd i3-dotfile
```

### Step 2 — Install dependencies (BlackArch / Arch)

```bash
# Automated install
chmod +x blackarch.sh
./blackarch.sh
```

Or manually install the required packages:

```bash
sudo pacman -S i3-wm i3status i3lock polybar kitty picom rofi cava feh \
               ttf-nerd-fonts-symbols noto-fonts-emoji
```

### Step 3 — Apply the theme

```bash
chmod +x apply-theme
./apply-theme
```

This script will:
- Copy / symlink configs to the correct `~/.config/` paths
- Set the wallpaper
- Reload i3 config
- Restart Polybar and Picom

### Step 4 — Reload i3

```
$mod + Shift + r
```

---

## ⌨️ Keybindings

> Default `$mod` key is `Super` (Win key). Adjust in `i3/config`.

| Keybind | Action |
|---|---|
| `$mod + Enter` | Open terminal (Kitty) |
| `$mod + d` | Open Rofi launcher |
| `$mod + Shift + q` | Kill focused window |
| `$mod + Shift + r` | Reload i3 config |
| `$mod + Shift + e` | Exit i3 |
| `$mod + h/j/k/l` | Focus left/down/up/right |
| `$mod + Shift + h/j/k/l` | Move window |
| `$mod + 1–9` | Switch workspace |
| `$mod + Shift + 1–9` | Move window to workspace |
| `$mod + f` | Fullscreen toggle |
| `$mod + s` | Stacking layout |
| `$mod + w` | Tabbed layout |
| `$mod + e` | Toggle split layout |
| `$mod + r` | Resize mode |

---

## 🎨 Color Palette

The theme follows a dark, muted color palette typical of the hacker/security aesthetic:

```
Background    #0d0d0d  ████  Deep black
Surface       #1a1a2e  ████  Dark navy
Border Active #00ff88  ████  Cyber green (focused window)
Border Idle   #2b2b3b  ████  Muted purple-grey
Foreground    #c0caf5  ████  Soft lavender white
Accent        #f38ba8  ████  Soft red / pink
Highlight     #cba6f7  ████  Purple
```

> Exact values may vary — check `i3/config`, `kitty/kitty.conf`, and `polybar/config.ini` for the live values in your install.

---

## 🔧 Customization

### Change wallpaper
Drop a new image in `wallpaper/` and update the path in `apply-theme` or in the i3 config autostart:
```bash
exec --no-startup-id feh --bg-fill ~/path/to/wallpaper/your-image.png
```

### Change gaps
In `i3/config`:
```
gaps inner 10
gaps outer 5
```

### Change Polybar font
In `polybar/config.ini`, find the `[bar]` section:
```ini
font-0 = "JetBrainsMono Nerd Font:size=10;2"
```

### Change Picom blur / opacity
In `picom/picom.conf`:
```
blur-method = "dual_kawase"
blur-strength = 5
inactive-opacity = 0.85
```

---

## 📦 Dependencies Reference

| Package | Purpose |
|---|---|
| `i3-wm` | Window manager |
| `polybar` | Status bar |
| `kitty` | Terminal emulator |
| `picom` | Compositor (fork with blur support) |
| `rofi` | App launcher |
| `cava` | Audio visualizer |
| `feh` | Wallpaper setter |
| `ttf-nerd-fonts-symbols` | Icon glyphs in Polybar/Kitty |
| `noto-fonts-emoji` | Emoji support |
| `bash` | Shell scripts |

---

## 🗺️ Roadmap

- [ ] Add dunst notification config
- [ ] Add zsh / fish shell config
- [ ] Add lockscreen (i3lock-fancy or betterlockscreen)
- [ ] Add multi-monitor Polybar setup
- [ ] Add GTK theme config (consistent app styling)
- [ ] Add screenshot keybind (maim / flameshot)
- [ ] Document all custom Polybar modules

---

## 📄 License

```
MIT License — Copyright (c) 2025 0xhroot

Do whatever you want with this. A star is appreciated. ⭐
```

---

<div align="center">

**Crafted by [0xhroot](https://github.com/0xhroot)**

*Riced. Minimal. Keyboard-only.*

[![GitHub](https://img.shields.io/badge/GitHub-0xhroot-181717?style=for-the-badge&logo=github)](https://github.com/0xhroot)
[![Stars](https://img.shields.io/github/stars/0xhroot/i3-dotfile?style=for-the-badge&color=FFD700)](https://github.com/0xhroot/i3-dotfile/stargazers)

</div>
