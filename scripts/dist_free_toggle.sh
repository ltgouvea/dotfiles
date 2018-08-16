#!/bin/bash
if [[ $(sed -n '/whatsapp/p' /etc/hosts) ]]; then
	sudo sed -i '/facebook/d;/twitter/d;/reddit/d;/whatsapp/d' /etc/hosts
	notify-send 'Distraction Free Mode' 'Off' 
else
	sudo sed -i '$a\
		0.0.0.0 www.facebook.com\
		0.0.0.0 facebook.com\
		0.0.0.0 www.twitter.com\
		0.0.0.0 twitter.com\
		0.0.0.0 www.reddit.com\
		0.0.0.0 reddit.com\
		0.0.0.0 www.web.whatsapp.com\
		0.0.0.0 web.whatsapp.com\
		' /etc/hosts
	notify-send 'Distraction Free Mode' 'On'
fi
