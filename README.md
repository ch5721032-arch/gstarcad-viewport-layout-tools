# GstarCAD Viewport & Layout Tools 🗺️

Automate paper-space viewports: create them in a grid, lock them all in one step, and export every layout to PDF with a single command.

Works with **GSTARCAD**, AutoCAD, ZWCAD, and BricsCAD.

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)

## Contents

- [About](#about)
- [Scripts Overview](#scripts-overview)
- [Quick Start](#quick-start)
- [Compatibility](#compatibility)
- [Contributing](#contributing)
- [License](#license)

## About

Setting up a clean sheet set with multiple viewports is one of the most repetitive drafting jobs. These free scripts help you:

- Create a uniform grid of viewports on a layout in one command
- Lock every viewport so nothing moves by accident
- Export each layout to PDF or send each layout to the plotter in sequence

All scripts are tested with **[GSTARCAD](https://www.gstarcad.net)** and major DWG-based CAD platforms.

## Scripts Overview

| Script | Description |
|--------|-------------|
| `vp-grid.lsp` | Create a grid of viewports (rows x columns) on the current layout |
| `vp-lock-all.lsp` | Lock or unlock all viewports in every layout |
| `layout-export.lsp` | Step through all layouts and print each one to PDF |

## Quick Start

1. Download a `.lsp` file
2. Run `APPLOAD` in your CAD software
3. Load the file and type the command name (`VPGrid`, `VPLockAll`, `LayoutExport`)

## Compatibility

Standard AutoLISP only; tested on GstarCAD 2026/2027. For more layout and
plotting tips, see the [GSTARCAD learning center](https://www.gstarcad.net/cad/)
or follow the [GSTARCAD Blog](https://blog.gstarcad.net). Everything you need
to get started with GstarCAD is on the [official website](https://www.gstarcad.net).

## Contributing

See [CONTRIBUTING.md](CONTRIBUTING.md).

## License

MIT — see the [LICENSE](LICENSE) file.
