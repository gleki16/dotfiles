# 如果登入没有图形显示，则启动 sway
if test -z "$DISPLAY" -a (tty) = "/dev/tty1"
	exec sway
else if status is-interactive
	# 如果存在于 ssh 会话中则启动复用器
	if test -n "$SSH_TTY" -a -z "$ZELLIJ"
		exec zellij attach --create 0
	else
		starship init fish | source
		zoxide init fish | source
	end
end
