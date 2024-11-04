function fish_right_prompt
    tput sc; tput cuu1; tput cuf 2

    if set -q VIRTUAL_ENV
        string join '' -- "🐍 " (set_color $fish_color_cwd) (basename "$VIRTUAL_ENV") (set_color normal) " "
    end

    if string length -q -- (fish_git_prompt);
        string join '' -- "🌴 " (set_color $fish_color_user) (fish_git_prompt | tr -d "()") (set_color normal)
    end

    tput rc
end
