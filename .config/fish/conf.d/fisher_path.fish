set --query _fisher_path_initialized && exit
set --global _fisher_path_initialized

if test -z "$fisher_path" || test "$fisher_path" = "$__fish_config_dir"
    exit
end

# ======== fzf.fish ========
set fzf_directory_opts --bind "ctrl-o:execute($EDITOR {} &> /dev/tty)"
set fzf_preview_dir_cmd eza --all --color=always -1

set fish_complete_path $fish_complete_path[1] $fisher_path/completions $fish_complete_path[2..]
set fish_function_path $fish_function_path[1] $fisher_path/functions $fish_function_path[2..]

for file in $fisher_path/conf.d/*.fish
    if ! test -f (string replace --regex "^.*/" $__fish_config_dir/conf.d/ -- $file)
        and test -f $file && test -r $file
        source $file
    end
end
