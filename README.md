# LinuxQuickConfig 🚀

This repository provides scripts designed to streamline and automate various configurations on Linux systems. From setting up fonts to optimizing your shell experience, LinuxQuickConfig aims to simplify the process and save you time.

## Workflow 😎🔥

LinuxQuickConfig follows a simple workflow to enhance your Linux experience:

1. **Explore the Source Code**: Dive into the `src` directory to discover the scripts available for various tasks.

2. **Run AutoScript**: Execute `AutoScript.py` to initiate automatic installation of essential software packages. This script intelligently detects your package manager (apt or pacman) and installs required packages accordingly.

```bash
python3 AutoScript.py
```

3. **Customize Configurations**: Use `main.py` to execute distribution-specific scripts for additional configurations. These scripts include setting up browsers, fonts, and customizing the Zsh shell.

```bash
python3 main.py
```

4. **Manage Swap Memory**: Optionally, run `swapMemory.sh` to manage swap memory, improving system performance.

```bash
bash swapMemory.sh
```

## Fonts Installed by `nerdfonts.sh`

The `nerdfonts.sh` script installs the following fonts:

- Hack
- FiraCode
- JetBrainsMono

These fonts enhance your terminal and editor experience with additional icons and glyphs.

## Getting Started

To get started with LinuxQuickConfig, follow these steps:

1. Clone this repository to your local machine.
   
2. Navigate to the `src` directory.
   
3. Run `AutoScript.py` to install essential software packages automatically.

4. Use `main.py` to execute distribution-specific scripts for additional configurations.

5. Optionally, run `swapMemory.sh` to manage swap memory and improve system performance.