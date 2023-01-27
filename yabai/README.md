## Yabai Manual

#### Requirement
- [yabai](https://github.com/koekeishiya/yabai) 主程序, C/S 模式, 服务端负责解析参数, 操作窗体, 客户端通过`jq`发送参数
- [skhd](https://github.com/koekeishiya/skhd) 快捷键映射
- [limelight](https://github.com/koekeishiya/limelight) 窗体边框显示增强
- [spacebar](https://github.com/cmacrae/spacebar) 菜单栏(可选)
- ~~[simple-bar](https://github.com/Jean-Tinland/simple-bar) 菜单栏增强(可选)~~
- [stackline](https://github.com/AdamWagner/stackline) stack 图形化展示(可选)
- [jq](https://github.com/stedolan/jq) 命令行 JSON 解析器

#### Font

- [JetBrains Mono](https://www.jetbrains.com/lp/mono/)

#### Install

```shell
# yabai
# https://github.com/koekeishiya/yabai/wiki/Installing-yabai-(latest-release)

# skhd
brew install koekeishiya/formulae/skhd
brew services start skhd/

# limelight
git clone https://github.com/koekeishiya/limelight && cd limelight
make
ln -s /path/to/bin/limelight /usr/local/bin/limelight

# spacebar
brew install cmacrae/formulae/spacebar
brew services start spacebar

# hammerspoon(stackline dependency)
brew cask install hammerspoon

# stackline
# Get the repo
git clone https://github.com/AdamWagner/stackline.git ~/.hammerspoon/stackline
# Make stackline run when hammerspoon launches
cd ~/.hammerspoon
echo 'stackline = require "stackline"' >> init.lua
echo 'stackline:init()' >> init.lua
```

#### Configuration

**Make sure thje configuration file is executable**

- [yabai](https://github.com/koekeishiya/yabai/wiki/Configuration#configuration-file)

  - `$XDG_CONFIG_HOME/yabai/yabairc`

  - `$HOME/.config/yabai/yabairc`

  - `$HOME/.yabairc`

- [skhd](https://github.com/koekeishiya/skhd#Configuration)

  - `$XDG_CONFIG_HOME/skhd/skhdrc`
  - `$HOME/.config/skhd/skhdrc`
  - `$HOME/.skhdrc`

- [limelight](https://github.com/koekeishiya/limelight/blob/master/doc/limelight.asciidoc#config)

  ```shell
  # 通过 --config 选项指定配置文件
  limelight --config config_file
  ```

- [spacebar](https://github.com/cmacrae/spacebar/blob/v1.4.0/doc/spacebar.asciidoc)

  - `$XDG_CONFIG_HOME/spacebar/spacebarrc`
  - `$HOME/.config/spacebar/spacebarrc`
  - `$HOME/.spacebarrc`

- [stackline](https://github.com/AdamWagner/stackline/wiki/Configuring-stackline)

  - `$HOME/.hammerspoon/stackline`

