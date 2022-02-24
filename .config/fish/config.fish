# 如果登入没有图形显示，则启动 sway
if status is-login ;and test -z "$DISPLAY" -a (tty) = "/dev/tty1"
	exec sway
else if status is-interactive
	starship init fish | source
	zoxide init fish | source
end
