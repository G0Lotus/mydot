set -xg fisher_path "$XDG_DATA_HOME"/fish/plugins
if not test -d "$fisher_path"
    mkdir -p "$fisher_path"
end

set fish_complete_path $fish_complete_path $fisher_path/completions $fish_complete_path[2..]
set fish_function_path $fish_function_path $fisher_path/functions $fish_function_path[2..]
for file in "$fisher_path"/conf.d/*.fish
    source $file 2>/dev/null
end
