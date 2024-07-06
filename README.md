# MEGA65 Homebrew tap

This is the [Homebrew](https://brew.sh/) tap for projects of the MEGA65 team. You can use this to install MEGA65-related tools and applications for macOS.

For more information about Homebrew, see the [Homebrew documentation](https://docs.brew.sh/) and [Homebrew terminology](https://docs.brew.sh/Formula-Cookbook#homebrew-terminology).

Casks:
* `mega65-m65connect` : M65Connect, a desktop application for transferring files and performing other MEGA65 tasks
* `mega65-xemu` : Xemu MEGA65 emulator (xmega65.app)

If you experience any issues with this tap, [inquire on Discord](https://discord.gg/5DNvESf) or [file an issue](https://github.com/dansanderson/homebrew-mega65/issues).

## How to use this tap with Homebrew

To set up the tap:

```
brew tap dansanderson/homebrew-mega65
```

To install a cask, run `brew cask install` with the cask name as an argument. Use the `--no-quarantine` argument to bypass warnings about developer signatures and notarizations. (MEGA65 projects cannot sign or notarize macOS apps.)

```
brew install --cask --no-quarantine mega65-m65connect
```

To install a formula, use the same command with the forumula name, and omit the `--cask` and `--no-quarantine` arguments.

To update a specific formula or cask, use the `brew upgrade` command with the name of the formula or cask. (No other arguments are needed.)

```
brew upgrade mega65-m65connect
```

## Notes

M65Connect and Xemu do not remove their user files when uninstalled. To fully remove these, see:

* M65Connect: `~/Documents/MEGA65/M65Connect`
* Xemu: `~/Library/Application Support/xemu-lgb/mega65`, and the `~/.xemu-lgb` shortcut

There is not yet a Linux version of this tap. This is macOS only.
