# Hammerspoon

A suite of Lua scripts for [Hammerspoon](https://github.com/Hammerspoon/hammerspoon) that provide functionality and keyboard shortcuts for actions I commonly use.

Inspiration, file structure etc mostly from [SenorProgrammer's init](https://github.com/senorprogrammer/hammerspoon_init).

## Installation

1. Install [Hammerspoon](https://github.com/Hammerspoon/hammerspoon).
1. Clone this repository into your `~/.hammerspoon` directory.
1. Open Hammerspoon or reload your config from the Hammerspoon menubar
   menu.

## Functionality

This set of scripts provides the following functionality via Hammerspoon.

### Hotkey Hammerspoon config reloading
* `Alt-Shift-h` : reload the hammerspoon config

### Menubar status of internet reachability
* Displays a ☺ in the menubar if the internet is reachable, displays ☠  if it's not reachable.

### Hotkey window resizing
* `Command-alt-control-left` : Move the active window to take up the left half of the screen
* `Command-alt-control-right` : Move the active window to take up the right half of the screen
* `Command-alt-control-up` : Move the active window to take up the top half of the screen
* `Command-alt-control-down` : Move the active window to take up the bottom half of the screen
* `Command-alt-control-space` : Move the active window to take up the whole screen
