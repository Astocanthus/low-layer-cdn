# Changelog

All notable changes to the LOW-LAYER CDN project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

---

## [Unreleased]

### Planned

- Font assets (Inter, JetBrains Mono, Rajdhani)
- Image sprite sheets for UI icons
- Additional 3D model variants

---

## [1.0.0] - 2026-02-01

### Added

- **CSS Design System** (`assets/css/`)
  - `ll-base.css` - Core foundation with CSS variables, reset, typography, and layer system
    - HSL-based theming with configurable `--ll-hue` primary color
    - Complete color palette: primary, secondary, danger, warning, success
    - Typography scale with fluid sizing using `clamp()`
    - Glass morphism variables for backdrop blur effects
    - Z-index layer system (canvas, overlay, UI)
  - `ll-animations.css` - Keyframe animations and utilities
    - 12 keyframe animations: fade, scale, pulse, ping, spin, scan, shine, glow, shake
    - Animation utility classes with optimal timing
    - Initial states for JS-triggered animations
    - Delay utilities (0.1s to 0.7s increments)
    - `prefers-reduced-motion` accessibility support
  - `ll-components.css` - Complete UI component library
    - Glass cards with optional CRT scanline effect
    - Clip-path angular corner shapes
    - SVG and CSS decorative corners
    - Buttons: primary, ghost, danger, cyber, loading variants
    - Form inputs with glow focus states
    - Custom checkboxes
    - Scanning bar loader
    - Status badges with ping animation
    - Alert boxes (error, warning, info, success)
    - Section labels and titles
    - Featured cards with image, body, metadata
    - Series cards with animated left border
    - Article rows with counter
    - Social link buttons
    - Pagination controls
    - Scroll indicator
    - Avatar container with spinner
    - Navigation items for sidebars
  - `ll-utils.css` - Atomic utility classes
    - Display utilities (hidden, block, flex, grid)
    - Flexbox controls (direction, alignment, gap)
    - Spacing scale (padding, margin 0-10)
    - Sizing utilities (width, height, constraints)
    - Positioning (relative, absolute, fixed, z-index)
    - Text alignment
    - Overflow control
    - Visibility and opacity
    - Custom scrollbar styling
    - Responsive variants at 768px breakpoint

- **3D Model Assets** (`assets/models/`)
  - `female-01.glb` through `female-04.glb` - Female avatar variants
  - `male-01.glb` through `male-04.glb` - Male avatar variants
  - `special-01.glb` through `special-04.glb` - Special avatar variants

- **Docker Infrastructure**
  - `Dockerfile` - Nginx Alpine-based container
    - Rootless execution (nginx user)
    - Proper permission handling for cache/logs
    - Exposed on port 8080
  - `docker-compose.yml` - Container orchestration
    - Security hardening with `no-new-privileges`
    - Bridge network configuration
    - Port mapping 9090:8080
  - `nginx.conf` - Server configuration
    - CORS headers for cross-origin asset loading
    - Aggressive caching (1 month) for static assets
    - Health check endpoint at `/health`
    - Support for GLB 3D model MIME types
    - Server tokens disabled for security

- **Documentation**
  - `README.md` - Complete project documentation
    - Architecture diagrams with Mermaid
    - Quick start guide
    - CSS design system usage examples
    - Theming instructions
    - Troubleshooting guide

---

[Unreleased]: https://github.com/Astocanthus/low-layer-cdn/compare/v1.0.0...HEAD
[1.0.0]: https://github.com/Astocanthus/low-layer-cdn/releases/tag/v1.0.0
