function fish_prompt
    test $SSH_TTY
    and printf (set_color red)$USER(set_color brwhite)'@'(set_color yellow)(prompt_hostname)' '
    test "$USER" = 'root'
    and echo (set_color red)"#"

    function check_branch
    echo (set_color green)(git branch ^/dev/null | grep \* | sed 's/* /  /')
    end

    # Main
    echo -n (check_branch)(set_color cyan) (prompt_pwd) (set_color red)'❯'(set_color yellow)'❯'(set_color green)'❯ '
end
