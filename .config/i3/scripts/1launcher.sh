dbus-send --type=method_call --dest=org.kde.yakuake /yakuake/window org.kde.yakuake.toggleWindowState
qdbus org.kde.yakuake /yakuake/sessions runCommandInTerminal 0 "1launcher"
