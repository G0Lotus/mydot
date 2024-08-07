if status is-interactive
    # Commands to run in interactive sessions can go here
    set -U fish_greeting # disable fish greeting

    # 检查 Fisher 是否已安装
    if not functions -q fisher
        # curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher
        curl -sL https://git.io/fisher | source
        if test -f ~/.config/fish/fish_plugins
            fisher update
        end
    end
end
