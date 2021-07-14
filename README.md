> *Base on [Starship v0.56.0 (2021-07-13)](https://github.com/starship/starship/releases/tag/v0.56.0)*

### Basic
|Module                                                                   |                                                                          |
|-------------------------------------------------------------------------|--------------------------------------------------------------------------|
|      [Custom commands](https://starship.rs/config/#custom-commands)     |*Just write the custom command into the script*                           |
|            [Directory](https://starship.rs/config/#directory)           |`echo "$PWD"` or [`path_prettier`](https://github.com/NNBnh/path_prettier)|
| [Environment Variable](https://starship.rs/config/#environment-variable)|`echo "$some_variable"`                                                   |
|             [Hostname](https://starship.rs/config/#hostname)            |`hostname`                                                                |
|           [Line Break](https://starship.rs/config/#line-break)          |`echo` or `printf '\n'`                                                   |
|               [Prompt](https://starship.rs/config/#prompt)              |`printf "somestring"`                                                     |
|                [SHLVL](https://starship.rs/config/#shlvl)               |`echo "$SHLVL"`                                                           |
|             [Username](https://starship.rs/config/#username)            |`echo "$USER"`                                                            |

### Cross shell feature
|Module                                                                   |                                                                                                |
|-------------------------------------------------------------------------|------------------------------------------------------------------------------------------------|
|            [Character](https://starship.rs/config/#character)           |Built-in to Shell                                                                               |
|     [Command Duration](https://starship.rs/config/#command-duration)    |Built-in to DIYship (enhance with [`ms2duration`](https://github.com/info-mono/ms2duration))    |
|                 [Jobs](https://starship.rs/config/#jobs)                |Built-in to DIYship                                                                             |
|                [Shell](https://starship.rs/config/#shell)               |Built-in to Shell                                                                               |
|               [Status](https://starship.rs/config/#status)              |Built-in to DIYship (enhance with [`status2signal`](https://github.com/info-mono/status2signal))|

### System
|Module                                                                   |                                                                                                    |
|-------------------------------------------------------------------------|----------------------------------------------------------------------------------------------------|
|              [Battery](https://starship.rs/config/#battery)             |[`dwm_battery.sh`](https://github.com/joestandring/dwm-bar/blob/master/bar-functions/dwm_battery.sh)|
|         [Memory Usage](https://starship.rs/config/#memory-usage)        |`/proc/meminfo`                                                                                     |
|                 [Time](https://starship.rs/config/#time)                |`date`                                                                                              |

### Other
|Module                                                                   |                           |
|-------------------------------------------------------------------------|---------------------------|
|                  [AWS](https://starship.rs/config/#aws)                 |                           |
|                [Conda](https://starship.rs/config/#conda)               |`echo "$CONDA_DEFAULT_ENV"`|
|       [Docker Context](https://starship.rs/config/#docker-context)      |                           |
|               [Dotnet](https://starship.rs/config/#dotnet)              |                           |
|[Google Cloud (gcloud)](https://starship.rs/config/#google-cloud-gcloud) |                           |
|           [Kubernetes](https://starship.rs/config/#kubernetes)          |                           |
|     [Mercurial Branch](https://starship.rs/config/#mercurial-branch)    |                           |
|            [Nix-shell](https://starship.rs/config/#nix-shell)           |                           |
|            [OpenStack](https://starship.rs/config/#openstack)           |                           |
|      [Package Version](https://starship.rs/config/#package-version)     |                           |
|          [Singularity](https://starship.rs/config/#singularity)         |                           |
|            [Terraform](https://starship.rs/config/#terraform)           |                           |
|                 [VCSH](https://starship.rs/config/#vcsh)                |                           |

### Git
|Module                                                                   |                                                                    |
|-------------------------------------------------------------------------|--------------------------------------------------------------------|
|           [Git Branch](https://starship.rs/config/#git-branch)          |`git rev-parse --abbrev-ref HEAD`                                   |
|           [Git Commit](https://starship.rs/config/#git-commit)          |`git rev-parse --verify --short HEAD` and `git tag --points-at HEAD`|
|            [Git State](https://starship.rs/config/#git-state)           |`#TODO`                                                             |
|          [Git Metrics](https://starship.rs/config/#git-metrics)         |`git diff --shortstat`                                              |
|           [Git Status](https://starship.rs/config/#git-status)          |`#TODO`                                                             |

- https://github.com/starship/starship/discussions/1252#discussioncomment-58920
- https://github.com/romkatv/powerlevel10k#what-do-different-symbols-in-git-status-mean
- https://github.com/NNBnh/dots/blob/9f8139add78b159552b0ef3bab9b3e8aceaf62d6/home/.config/starship.toml#L78-L89

<details>
<summary>More</summary>
  
### Version
|Module                                                                   |
|-------------------------------------------------------------------------|
|                [CMake](https://starship.rs/config/#cmake)               |
|              [Crystal](https://starship.rs/config/#crystal)             |
|                 [Dart](https://starship.rs/config/#dart)                |
|                 [Deno](https://starship.rs/config/#deno)                |
|               [Elixir](https://starship.rs/config/#elixir)              |
|                  [Elm](https://starship.rs/config/#elm)                 |
|               [Erlang](https://starship.rs/config/#erlang)              |
|               [Golang](https://starship.rs/config/#golang)              |
|                 [Helm](https://starship.rs/config/#helm)                |
|                 [Java](https://starship.rs/config/#java)                |
|                [Julia](https://starship.rs/config/#julia)               |
|               [Kotlin](https://starship.rs/config/#kotlin)              |
|                  [Lua](https://starship.rs/config/#lua)                 |
|                  [Nim](https://starship.rs/config/#nim)                 |
|               [NodeJS](https://starship.rs/config/#node-js)             |
|                [OCaml](https://starship.rs/config/#ocaml)               |
|                 [Perl](https://starship.rs/config/#perl)                |
|                  [PHP](https://starship.rs/config/#php)                 |
|           [PureScript](https://starship.rs/config/#purescript)          |
|               [Python](https://starship.rs/config/#python)              |
|                    [R](https://starship.rs/config/#r)                   |
|                  [Red](https://starship.rs/config/#red)                 |
|                 [Ruby](https://starship.rs/config/#ruby)                |
|                 [Rust](https://starship.rs/config/#rust)                |
|                [Scala](https://starship.rs/config/#scala)               |
|                [Swift](https://starship.rs/config/#swift)               |
|              [Vagrant](https://starship.rs/config/#vagrant)             |
|                [VLang](https://starship.rs/config/#vlang)               |
|                  [Zig](https://starship.rs/config/#zig)                 |

</details>
