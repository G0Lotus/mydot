if status is-interactive
    # Commands to run in interactive sessions can go here
    set -U fish_greeting # disable fish greeting

    # 检查 Fisher 是否已安装
    if not functions -q fisher
        curl -sL https://git.io/fisher | source && fisher update
    end

    # fisher plugins setting
    # ======== fzf.fish ========
    set fzf_directory_opts --bind "ctrl-o:execute($EDITOR {} &> /dev/tty)"
    set fzf_preview_dir_cmd eza --all --color=always
    # ==========================
end
