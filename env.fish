#!/bin/fish

# 移除欢迎语
set -U fish_greeting ""

# 语言设置
set -Ux LANG zh_CN.UTF-8
set -Ux LANGUAGE zh_CN:en_US
set -Ux LC_CTYPE en_US.UTF-8
#设定输入法
set -Ux GTK_IM_MODULE fcitx
set -Ux QT_IM_MODULE fcitx
set -Ux XMODIFIERS @im=fcitx
set -Ux SDL_IM_MODULE fcitx

# 默认编辑器
set -Ux EDITOR helix

# 控制键替换大写锁定键
set -Ux XKB_DEFAULT_OPTIONS ctrl:nocaps

# git 控制
abbr -Ua g   'git'
abbr -Ua ga  'git add'
abbr -Ua gaa 'git add --all'
abbr -Ua gb  'git branch'
abbr -Ua gba 'git branch -a'
abbr -Ua gc  'git checkout'
abbr -Ua gcl 'git clone --depth=1'
abbr -Ua gd  'git diff'
abbr -Ua gl  'git pull'
abbr -Ua gm  'git commit -am'
abbr -Ua gmm 'git commit -m'
abbr -Ua gp  'git push'
abbr -Ua grh 'git reset --hard'
abbr -Ua grs 'git reset --soft'
abbr -Ua gs  'git status'

# 其他
abbr -Ua 1   'cd -'
abbr -Ua up  'sudo reflector @/etc/xdg/reflector/reflector.conf; and sudo pacman -Syu --noconfirm'
abbr -Ua fu  'fusermount -u'
abbr -Ua h   'btm'
abbr -Ua j   'lf'
abbr -Ua l   'exa -laF'
abbr -Ua nm  'nmtui-connect'
abbr -Ua r   'rsync --progress -h'
abbr -Ua s   'sudo'
abbr -Ua sp  'sudo pacman'
abbr -Ua sv  'sudo -e'
abbr -Ua sj  'sudo lf'
abbr -Ua t   'tmux'
abbr -Ua ta  'tmux attach'
abbr -Ua tl  'tmux ls'
abbr -Ua tn  'tmux new -s'
abbr -Ua tr  'tmux rename'
abbr -Ua uu  'udiskie-umount -a'
abbr -Ua v   'helix'
