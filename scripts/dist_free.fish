#!/usr/bin/fish

function dist_free_disable
        export DIST_FREE_MODE=0
        sudo sed -i '/facebook/d;/twitter/d;/reddit/d;/whatsapp/d' /etc/hosts
        echo 'dist_free: distraction free disabled.'
end

function dist_free_enable
        export DIST_FREE_MODE=1
        echo 'enabling.'
        sudo sed -i '$a\
0.0.0.0 www.facebook.com \
0.0.0.0 facebook.com \
0.0.0.0 www.twitter.com \
0.0.0.0 twitter.com \
0.0.0.0 www.reddit.com \
0.0.0.0 reddit.com \
0.0.0.0 www.web.whatsapp.com \
0.0.0.0 web.whatsapp.com' /etc/hosts
        echo 'dist_free: distraction free enabled'
end

function dist_free_toggle
        test "$DIST_FREE_MODE" -eq 0 && dist_free_enable  || dist_free_disable
end


