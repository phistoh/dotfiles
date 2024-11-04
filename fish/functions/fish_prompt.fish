function fish_prompt
    string join '' -- \n (set_color $fish_color_user) " 🐐 " $USER (set_color $fish_color_cwd) " 📂 " $PWD \n (set_color $fish_color_cwd) "> "
    if set -q VIRTUAL_ENV
        echo -n -s (set_color -b blue white) "(" (basename "$VIRTUAL_ENV") ")" (set_color normal) " "
    end
end
