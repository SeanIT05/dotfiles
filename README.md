# .dotfiles
### Modular Unix Configurations | Low-Level System Architecture

<div align="left">
  <a href="https://v0-seanvittek.vercel.app">
    <img src="https://img.shields.io/badge/Portfolio-v0--seanvittek.vercel.app-000000?style=flat-square&logo=vercel" />
  </a>
  <a href="mailto:seanvittek05@protonmail.com">
    <img src="https://img.shields.io/badge/Email-seanvittek05%40protonmail.com-D14836?style=flat-square&logo=protonmail" />
  </a>
</div>

This repository contains centralized configurations for Unix-based environments, focusing on performance optimization and low-level system integration.

### Repository Structure

Configurations are modularized by environment to ensure portability and clean deployment across different hardware.

**dwm**
Custom C builds featuring specific patches for memory optimization, pertag, and autostart functionality.

**hypr**
High-fidelity Wayland configuration utilizing dynamic tiling and optimized compositor parameters.

**bspwm**
Binary space partitioning configuration focused on efficient X11 workflows.

**alacritty**
GPU-accelerated terminal configuration for low-latency text rendering.

**polybar & waybar**
Modular status bars for both X11 and Wayland display protocols.

### Technical Implementation

**Low-Level Customization**
Core components such as dwm and slstatus involve direct C source modification. The priority is stripping unnecessary modules to maintain a minimal memory footprint while enhancing structural efficiency through custom patching.

**Performance Tooling**
The environment is optimized for speed using minimalist application launchers and lightweight notification daemons to reduce system overhead.

### Deployment

Each directory mirrors the internal structure of the home folder. Deployment is handled through symlinking to ensure a reproducible environment.

```bash
# Example deployment sequence
# Link modules to ~/.config
stow hypr
stow waybar
stow alacritty
