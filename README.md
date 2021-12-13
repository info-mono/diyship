<p align="center"><a href="https://www.figma.com/file/ivfF5xzAi1zioAkpDHbUyb/DIYship"><img src="https://user-images.githubusercontent.com/43980777/142657083-ec10c6a1-b34b-4517-9110-3d07f7263a63.png"></a></p>
<p align="center">Cross-shell prompt framework</p>
<p align="center">
  <a href="https://github.com/info-mono/diyship/blob/main/LICENSE"><img src="https://img.shields.io/github/license/info-mono/diyship?labelColor=383838&color=585858&style=for-the-badge" alt="License: GPL-3.0"></a>
  <a href="https://gist.github.com/NNBnh/9ef453aba3efce26046e0d3119dab5a7#development-completed"><img src="https://img.shields.io/badge/development-completed-%23585858.svg?labelColor=383838&style=for-the-badge&logoColor=FFFFFF" alt="Development completed"></a>
</p>

## 💡 About

**DIYship** is a cross-shell prompt framework that let you write your prompt with any programing language for any shell.

> _[Learn more about how its work](#%EF%B8%8F-configuration)._

## 🚀 Setup

### 📥 Installation

To install DIYship to your shell, simply append the correspond code file on this repo to your shell config file.

#### 🐚 Bash

```sh
curl https://raw.githubusercontent.com/info-mono/diyship/main/bash >> ~/.bashrc
```

#### 🐚 Zsh

```sh
curl https://raw.githubusercontent.com/info-mono/diyship/main/zshrc >> ~/.zshrc
```

#### 🐚 Fish

```sh
curl https://raw.githubusercontent.com/info-mono/diyship/main/fish >> ~/.config/fish/config.fish
```

#### 🐚 PowerShell

```sh
curl https://raw.githubusercontent.com/info-mono/diyship/main/powerShell >> ~/.config/powershell/Microsoft.PowerShell_profile.ps1
```

#### 🐚 Ion

```sh
curl https://raw.githubusercontent.com/info-mono/diyship/main/ion >> ~/.config/ion/initrc
```

#### 🐚 Elvish

```sh
curl https://raw.githubusercontent.com/info-mono/diyship/main/elvish >> ~/.elvish/rc.elv
```

> _Only Elvish v0.15 or higher is supported._

#### 🐚 Tcsh

```sh
curl https://raw.githubusercontent.com/info-mono/diyship/main/tcsh >> ~/.tcshrc
```

#### 🐚 Nushell

```sh
curl https://raw.githubusercontent.com/info-mono/diyship/main/nushell >> ~/.config/nu/config.toml
```

#### 🐚 Xonsh

```sh
curl https://raw.githubusercontent.com/info-mono/diyship/main/xonsh >> ~/.xonshrc
```

> _Only Nushell version v0.33 or higher is supported._

### ⚙️ Configuration

DIYship is basically execute a command (which could be a path to an executable script file or program) and take it output as a prompt,
you can change the command through variable:

| Environment variable    | Description                    |
| ----------------------- | ------------------------------ |
| `DIYSHIP_COMMAND_LEFT`  | Command to print left prompt.  |
| `DIYSHIP_COMMAND_RIGHT` | Command to print right prompt. |

> _TIP: You can disable right prompt by `DIYSHIP_COMMAND_RIGHT="test"`_

DIYship will export these following environment variables before running the commands to print out prompts,
so you could utilize theme informations in your script/program:

| Environment variable  | Description                                                   |
| --------------------- | ------------------------------------------------------------- |
| `$DIYSHIP_SHELL`      | Current shell name.                                           |
| `$DIYSHIP_STATUS`     | The status code of the previously run command.                |
| `$DIYSHIP_PIPESTATUS` | Status codes from a command pipeline.                         |
| `$DIYSHIP_DURATION`   | The execution duration of the last command (in milliseconds). |
| `$DIYSHIP_JOBS`       | The number of currently running jobs                          |
| `$DIYSHIP_KEYMAP`     | The current keymap.                                           |

Do to many technical limitation, not every shell support all features:

| Feature              | Bash | Zsh | Fish | Powershell | Ion | Elvish | Tcsh | Nushell | Xonsh |
| -------------------- | ---- | --- | ---- | ---------- | --- | ------ | ---- | ------- | ----- |
| Left prompt          | ✅   | ✅  | ✅   | ✅         | ✅  | ✅     | ✅   | ✅      | ✅    |
| Right prompt         |      | ✅  | ✅   |            |     | ✅     |      |         | ✅    |
| Export current shell | ✅   | ✅  | ✅   | ✅         | ✅  | ✅     | ✅   | ✅      | ✅    |
| Export status        | ✅   | ✅  | ✅   | ✅         | ✅  |        | ✅   |         | ✅    |
| Export pipe status   | ✅   | ✅  | ✅   |            |     |        |      |         |       |
| Export duration      | ✅   | ✅  | ✅   | ✅         | ✅  | ✅     | ✅   | ✅      | ✅    |
| Export jobs          | ✅   | ✅  | ✅   | ✅         | ✅  | ✅     |      |         | ✅    |
| Export keymap        |      | ✅  | ✅   |            |     |        |      |         |       |

> _For more documentation and inspiration about writing your own prompt, checkout [ours wiki](https://github.com/info-mono/diyship/wiki) and [Starship's custom modules](https://github.com/starship/starship/discussions/1252)._

## 💌 Credits

This project was heavily based on and inspired by [**Starship**](https://starship.rs).

<br><br><br><br>

---

> <h1 align="center">Made with ❤️ by <a href="https://github.com/NNBnh"><i>NNB</i></a></h1>
>
> <p align="center"><a href="https://www.buymeacoffee.com/nnbnh"><img src="https://img.shields.io/badge/buy_me_a_coffee%20-%23FFC387.svg?logo=buy-me-a-coffee&logoColor=333333&style=for-the-badge" alt="Buy Me a Coffee"></a></p>
