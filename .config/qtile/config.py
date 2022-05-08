import os
import subprocess

from libqtile import bar, hook, layout, widget
from libqtile.config import Click, Drag, Group, Key, KeyChord, Match, Screen
from libqtile.lazy import lazy
from libqtile.utils import guess_terminal

mod = "mod4"
terminal = guess_terminal()

locker = "i3lock --color 000000"
menu = "rofi -show drun"
browser = "firefox"
reader = "foliate"
screenshot = "flameshot gui"
virt = "virt-manager"

keys = [

# mod + function keys
    Key([mod], "f", lazy.window.toggle_fullscreen()),
    Key([mod], "q", lazy.window.kill()),

# reload config and restart
    Key([mod, "control"], "r", lazy.reload_config()),
    Key([mod, "shift"], "r", lazy.restart()),

# layout
    Key([mod], "Tab", lazy.next_layout()),
    Key([mod], "space", lazy.next_layout()),
    Key([mod], "n", lazy.layout.normalize()),
    Key([mod, "shift"], "Return", lazy.layout.toggle_split()),

# change focus
    Key([mod], "Up", lazy.layout.up()),
    Key([mod], "Down", lazy.layout.down()),
    Key([mod], "Left", lazy.layout.left()),
    Key([mod], "Right", lazy.layout.right()),
    Key([mod], "k", lazy.layout.up()),
    Key([mod], "j", lazy.layout.down()),
    Key([mod], "h", lazy.layout.left()),
    Key([mod], "l", lazy.layout.right()),

# resize up, down, left, right
    Key([mod, "control"], "Up", lazy.layout.grow_up()),
    Key([mod, "control"], "Down", lazy.layout.grow_down()),
    Key([mod, "control"], "Left", lazy.layout.grow_left()),
    Key([mod, "control"], "Right", lazy.layout.grow_right()),
    Key([mod, "control"], "k", lazy.layout.grow_up()),
    Key([mod, "control"], "j", lazy.layout.grow_down()),
    Key([mod, "control"], "h", lazy.layout.grow_left()),
    Key([mod, "control"], "l", lazy.layout.grow_right()),

# flip layout for monadtall/monadwide
    Key([mod, "shift"], "f", lazy.layout.flip()),

# flip layout for bsp
    Key([mod, "mod1"], "k", lazy.layout.flip_up()),
    Key([mod, "mod1"], "j", lazy.layout.flip_down()),
    Key([mod, "mod1"], "l", lazy.layout.flip_right()),
    Key([mod, "mod1"], "h", lazy.layout.flip_left()),

# move windows up or down bsp layout
    Key([mod, "shift"], "k", lazy.layout.shuffle_up()),
    Key([mod, "shift"], "j", lazy.layout.shuffle_down()),
    Key([mod, "shift"], "h", lazy.layout.shuffle_left()),
    Key([mod, "shift"], "l", lazy.layout.shuffle_right()),

# move windows up or down monadtall/monadwide layout
    Key([mod, "shift"], "Up", lazy.layout.shuffle_up()),
    Key([mod, "shift"], "Down", lazy.layout.shuffle_down()),
    Key([mod, "shift"], "Left", lazy.layout.swap_left()),
    Key([mod, "shift"], "Right", lazy.layout.swap_right()),

# toggle floating layout
    Key([mod, "shift"], "space", lazy.window.toggle_floating()),

# terminal and screen locker
    Key([mod], "Return", lazy.spawn(terminal)),
    Key([mod], "s", lazy.spawn(locker), lazy.spawn("xset dpms force off")),

# power mode
    KeyChord([mod], "o", [
        Key([], "Return", lazy.ungrab_chord()),
        Key([], "space", lazy.ungrab_chord()),
        Key([], "d", lazy.shutdown(), lazy.ungrab_chord()),
        Key([], "g", lazy.spawn(locker), lazy.spawn("systemctl suspend"), lazy.ungrab_chord()),
        Key([], "i", lazy.spawn("systemctl reboot"), lazy.ungrab_chord()),
        Key([], "j", lazy.spawn("systemctl poweroff"), lazy.ungrab_chord())],
        mode="d 登出, g 挂起, i 重启, j 关机"
    ),

# function keys
    Key([], "XF86AudioMute", lazy.spawn("pactl set-sink-mute @DEFAULT_SINK@ toggle")),
    Key([], "XF86AudioRaiseVolume", lazy.spawn("pactl set-sink-volume @DEFAULT_SINK@ +5%")),
    Key([], "XF86AudioLowerVolume", lazy.spawn("pactl set-sink-volume @DEFAULT_SINK@ -5%")),
    Key([], "XF86AudioMicMute", lazy.spawn("pactl set-source-mute @DEFAULT_SOURCE@ toggle")),

    Key([], "XF86MonBrightnessDown", lazy.spawn("light -U 5")),
    Key([], "XF86MonBrightnessUp", lazy.spawn("light -A 5")),

    Key([], "XF86AudioPlay", lazy.spawn("playerctl play-pause")),
    Key([], "XF86AudioNext", lazy.spawn("playerctl next")),
    Key([], "XF86AudioPrev", lazy.spawn("playerctl previous")),

# app
    Key([mod], "d", lazy.spawn(menu)),
    Key([mod], "m", lazy.spawn(virt)),
    Key([mod], "p", lazy.spawn(screenshot)),
    Key([mod], "x", lazy.spawn(reader)),
    Key([mod], "z", lazy.spawn(browser)),
]

groups = [Group(i) for i in "123456789"]

for i in groups:
    keys.extend([

# change workspaces
        Key([mod], i.name, lazy.group[i.name].toscreen()),

# move window to selected workspace
        Key([mod, "shift"], i.name, lazy.window.togroup(i.name, switch_group=True)),
    ])

layouts = [
    layout.Max(),
    layout.Bsp(),
]

widget_defaults = dict(
    font="Ubuntu",
    fontsize=16,
    padding=5,
)
extension_defaults = widget_defaults.copy()

widgets_list = [
    widget.GroupBox(disable_drag=True, hide_unused=True),
    widget.CurrentLayoutIcon(),
    widget.TaskList(padding_y=0, margin_y=0),

    widget.Chord(),
    widget.DF(),
    widget.PulseVolume(),
    widget.Systray(),
    widget.Clock(format="%D %a %R"),
]

screens = [Screen(top=bar.Bar(widgets_list, 24, opacity=0.8))]

# drag floating layouts.
mouse = [
    Drag([mod], "Button1", lazy.window.set_position_floating(),
        start=lazy.window.get_position()),
    Drag([mod], "Button3", lazy.window.set_size_floating(),
        start=lazy.window.get_size()),
]

@hook.subscribe.startup_once
def autostart():
    home = os.path.expanduser('~')
    subprocess.Popen(['bash', home + '/.config/qtile/autostart.sh'])

dgroups_key_binder = None
dgroups_app_rules = []  # type: list
follow_mouse_focus = True
bring_front_click = False
cursor_warp = False
floating_layout = layout.Floating(float_rules=[
        # Run the utility of `xprop` to see the wm class and name of an X client.
        *layout.Floating.default_float_rules,
        Match(wm_class="confirmreset"),  # gitk
        Match(wm_class="makebranch"),  # gitk
        Match(wm_class="maketag"),  # gitk
        Match(wm_class="ssh-askpass"),  # ssh-askpass
        Match(title="branchdialog"),  # gitk
        Match(title="pinentry"),  # GPG key password entry
])
auto_fullscreen = True
focus_on_window_activation = "smart"
reconfigure_screens = True

# If things like steam games want to auto-minimize themselves when losing
# focus, should we respect this or not?
auto_minimize = True

# When using the Wayland backend, this can be used to configure input devices.
wl_input_rules = None

# XXX: Gasp! We're lying here. In fact, nobody really uses or cares about this
# string besides java UI toolkits; you can see several discussions on the
# mailing lists, GitHub issues, and other WM documentation that suggest setting
# this string if your java app doesn't work correctly. We may as well just lie
# and say that we're a working one by default.
#
# We choose LG3D to maximize irony: it is a 3D non-reparenting WM written in
# java that happens to be on java's whitelist.
wmname = "LG3D"
