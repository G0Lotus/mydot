# 设置 fzf-tab 的选项
set -gx FZF_DEFAULT_OPTS '--height 40% --reverse --preview "cat {}"'

# 自定义绑定 Tab 键以触发 fzf 补全
function fzf_complete
    set -l cmdline (commandline)
    if string match -q '*nvim*' "$cmdline"
        complete -C | fd --type file | fzf --height 40% --reverse --header="$cmdline" | read -l token
        commandline -rt "$token"
    else
        # 如果不包含 nvim，执行默认的 Tab 补全
        commandline -f complete
    end
end

# 绑定 Tab 键
bind \t 'fzf_complete; commandline -f repaint'
fzf_configure_bindings --directory=\ct --processes=\ck
