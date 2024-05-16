
BACKEND=~/Documents/projects/sea/biblioteca/repositorio-backend/
FRONTEND=~/Documents/projects/sea/biblioteca/repositorio-frontend/

tmux send-keys $BACKEND C-m
# nvim
tmux split-window -v
tmux send-keys $FRONTEND C-m
# nvim


# Abrir nueva pestana
tmux new-window

tmux send-keys $BACKEND C-m
tmux send-keys "npm run dev" C-m

tmux split-window -h
tmux send-keys $FRONTEND C-m
tmux send-keys "npm run dev" C-m

tmux split-window -v
tmux send-keys $FRONTEND C-m
tmux send-keys "ggpull" C-m

tmux select-pane -R
tmux split-window -v
tmux send-keys $BACKEND C-m
tmux send-keys "ggpull" C-m
