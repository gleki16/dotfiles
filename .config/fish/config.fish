# 如果登入没有图形显示，则启动 sway
if test (tty) = "/dev/tty1"
	exec sway
else if status is-interactive
	if test -n "$SSH_TTY" -a -z "$ZELLIJ"
		exec zellij attach --create 0
	else
		starship init fish | source
		zoxide init fish | source
	end
end
