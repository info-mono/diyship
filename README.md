<h1 align="center">DIYship</h1>
<p align="center">Cross-shell prompt framework</p>
<p align="center"><a href="https://github.com/info-mono/diyship/blob/main/LICENSE"><img src="https://img.shields.io/github/license/info-mono/diyship?labelColor=383838&color=585858&style=for-the-badge" alt="License: GPL-3.0"></a> <a href="https://gist.github.com/NNBnh/9ef453aba3efce26046e0d3119dab5a7#active-development"><img src="https://img.shields.io/github/last-commit/NNBnh/dots?labelColor=383838&color=585858&style=for-the-badge" alt="Active development"></a></p>

## 💡 About
**DIYship** is a cross-shell prompt framework written in [`portable sh`](https://github.com/dylanaraps/pure-sh-bible).

`#TODO`

## 🚀 Setup
### 🧾 Dependencies
- [Unix commands](https://en.wikipedia.org/wiki/List_of_Unix_commands) to process

### 📥 Installation
#### 🔧 Manually
Option 1: using `curl`
```sh
curl https://raw.githubusercontent.com/info-mono/diyship/main/bin/diyship > ~/.local/bin/diyship
chmod +x ~/.local/bin/diyship
```

Option 2: using `git`
```sh
git clone https://github.com/info-mono/diyship.git ~/.local/share/diyship
ln -s ~/.local/share/diyship/bin/diyship ~/.local/bin/diyship
```

#### 📦 Package manager
For [`bpkg`](https://github.com/bpkg/bpkg) user:
```sh
bpkg install info-mono/diyship
```

For [Basher](https://github.com/bpkg/bpkg) user:
```sh
basher install info-mono/diyship
```

> *If you can and want to port DIYship to other package managers, feel free to do so.*

## 🐚 Shell integrate
### 🐚 Bash
Add the following to the end of `~/.bashrc`:

```bash
eval "$(diyship bash)"
```

### 🐚 Zsh
Add the following to the end of `~/.zshrc`:

```zsh
source <(diyship zsh)
```

### 🐚 Fish
Add the following to the end of `~/.config/fish/config.fish`:

```fish
diyship fish | source
```

### 🐚 PowerShell
Add the following to the end of `Microsoft.PowerShell_profile.ps1`.
You can check the location of this file by querying the `$PROFILE` variable in PowerShell.
Typically the path is `~\Documents\PowerShell\Microsoft.PowerShell_profile.ps1` or `~/.config/powershell/Microsoft.PowerShell_profile.ps1` on `*nix`.

```powershell
Invoke-Expression (@(&diyship powershell) -join "`n")
```

### 🐚 Ion
Add the following to the end of `~/.config/ion/initrc`:

```ion
eval $(diyship ion)
```

### 🐚 Elvish
Add the following to the end of `~/.elvish/rc.elv`:

```elv
eval (diyship elvish)
```

> *Only Elvish v0.15 or higher is supported.*

### 🐚 Tcsh
Add the following to the end of `~/.tcshrc`:

```tcsh
eval `diyship tcsh`
```

### 🐚 Nushell
Add the following to your Nushell config file. You can check the location of this file by running `config path` in Nushell.

```toml
startup = [
	"mkdir ~/.cache/diyship",
	"diyship nushell | save ~/.cache/diyship/init.nu",
	"source ~/.cache/diyship/init.nu"
]
prompt = "diyship_prompt"
```

### 🐚 Xonsh
Add the following to the end of `~/.xonshrc`:

```xsh
execx($(diyship xonsh))
```

> *Only Nushell version v0.33 or higher is supported.*

## ⚙️ Configuration
`#TODO`

## 💌 Credits
Special thanks to:
- [**Starship**](https://starship.rs) by [it's contributors](https://github.com/starship/starship/graphs/contributors)

<br><br><br><br>

---

> <h1 align="center">Made with ❤️ by <a href="https://github.com/NNBnh"><i>NNB</i></a></h1>
>
> <p align="center"><a href="https://www.buymeacoffee.com/nnbnh"><img src="https://img.shields.io/badge/buy_me_a_coffee%20-%23F7CA88.svg?logo=buy-me-a-coffee&logoColor=333333&style=for-the-badge" alt="Buy Me a Coffee"></a></p>
