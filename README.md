# .dotfiles
### Modular Unix Configurations | Fedora System Architecture

<div align="left">
  <a href="https://v0-seanvittek.vercel.app">
    <img src="https://img.shields.io/badge/Portfolio-v0--seanvittek.vercel.app-000000?style=flat-square&logo=vercel" />
  </a>
  <a href="mailto:seanvittek05@protonmail.com">
    <img src="https://img.shields.io/badge/Email-seanvittek05%40protonmail.com-D14836?style=flat-square&logo=protonmail" />
  </a>
</div>

This repository contains my centralized system configurations, designed for performance-optimized environments and low-level system integration.

### Environment Specification

* **Host OS** Fedora Linux
* **Window Managers** dwm (patched), bspwm, hyprland
* **Terminal** alacritty
* **Bar** polybar / waybar
* **Compositor** picom (X11) / hyprland (Wayland)

### Repository Structure

The configuration is modularized by environment to allow for hardware-agnostic deployment.

**dwm**
Custom C builds featuring patches for memory optimization, pertag, and autostart functionality.

**hypr**
High-fidelity Wayland setup utilizing dynamic tiling and optimized compositor settings.

**bspwm**
Binary space partitioning configuration focused on efficient X11 workflows.

**alacritty**
GPU-accelerated terminal configuration for low-latency text rendering.

**polybar & waybar**
Modular status bars for both X11 and Wayland display protocols.

### Technical Implementation

**Low-Level Customization**
My dwm and slstatus setups involve direct C source modification. I prioritize stripping unnecessary modules to maintain a minimal memory footprint while enhancing structural efficiency through custom patching.

**Performance Tooling**
Systems are optimized for speed using minimalist application launchers like rofi and wofi, alongside lightweight daemons like dunst and sxhkd.

### Deployment

Each directory mirrors the internal structure of the home folder. Deployment is handled through symlinking to ensure a reproducible environment across different machines.

```bash
# Example deployment sequence
# Link modules to ~/.config
stow hypr
stow waybar
stow alacritty
