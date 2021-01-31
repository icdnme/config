attach-session -c ~/workspace2
send-keys -t 0 'cd ~/workspace2' ENTER
split-window -h -t 0
split-window -v -t 1
split-window -v -t 1
split-window -v -t 3
send-keys -t 1 'source venv/bin/activate' ENTER
send-keys -t 2 'source venv/bin/activate' ENTER
send-keys -t 3 'source venv/bin/activate' ENTER
send-keys -t 4 'source venv/bin/activate' ENTER
