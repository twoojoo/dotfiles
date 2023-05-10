directory_name=$(echo $1 | rev | cut -d "/" -f 1 | rev)
echo $directory_name
sublime_win_name="untitled • ($directory_name) - Sublime Text (UNREGISTERED)"
echo $sublime_win_name
xdotool search --name "untitled • ($directory_name) - Sublime Text (UNREGISTERED)" set_window --name "Sublime Text - $directory_name"