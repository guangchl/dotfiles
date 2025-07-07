# My Tmux Note & Cheat Sheet
>Awesome session management. Layers go as session -> window -> pane.
>When in a tmux session, ctrl + b is the skip word (marked as PREFIX below).

## Basic
    * tmux                           start new session
    * tmux new -s <name>             start new session with name
    * tmux ls                        list sessions
    * tmux kill-session -t <name>    kill session
    * tmux ls | grep : | cut -d. -f1 | awk '{print substr($1, 0, length($1)-1)}' | xargs kill  kill all sessions
    * PREFIX ?                       list key binding shortcuts
    * PREFIX t                       big clock
    * PREFIX :                       prompt
    * PREFIX :source-file <filename> Reload the tmux config file
## Copy & Paste (VI mode)
    * PREFIX [       enter copy mode
    * PREFIX ]       paste
    * PREFIX =       list all paste buffers and choose one to paste from
## Session
    * tmux a/at/attach                             attach
    * tmux a -t <name>                             attach to a named session
    * PREFIX s                                     list all sessions to choose
    * tmux ls/list-sessions                        list all sessions
    * PREFIX d                                     Detach from the current session
    * PREFIX D                                     Select a session to detach from
    * PREFIX (                                     Move to previous session
    * PREFIX )                                     Move to next session
    * PREFIX $                                     renmae the session
    * PREFIX :rename-session [-t name] [new-name]  rename a session, if name is not specified, rename the current one
    * tmux rename-session [-t name] [new-name]     rename a session, if name is not speicfied, rename the most recently used session
## Window
    * PREFIX w       list all windows
    * PREFIX 2       go to window 2
    * PREFIX n       go to next window
    * PREFIX p       go to previous window
    * PREFIX l       go to last active window
    * PREFIX c       create another window
    * PREFIX ,       rename current window
## Pane
    * PREFIX z       zoom the current pane
    * PREFIX {       swap the current pane with the one on its left
    * PREFIX }       swap the current pane with the one on its right
    * PREFIX ctrl+o  rotate all panes in the same window counter-clockwise
    * PREFIX space   toggle layouts of the panes within the same window
    * PREFIX x       kill the current pane
    * PREFIX o       switch to other pane
    * PREFIX !       close all other panes
    * PREFIX q       show numerical values of panes
## Resize Pane
    * PREFIX :resize-pane -D (Resizes the current pane down)
    * PREFIX :resize-pane -U (Resizes the current pane upward)
    * PREFIX :resize-pane -L (Resizes the current pane left)
    * PREFIX :resize-pane -R (Resizes the current pane right)
    * PREFIX :resize-pane -D 5 (Resizes the current pane down by 5 cells)
    * PREFIX :resize-pane -U 5 (Resizes the current pane upward by 5 cells)
    * PREFIX :resize-pane -L 5 (Resizes the current pane left by 5 cells)
    * PREFIX :resize-pane -R 5 (Resizes the current pane right by 5 cells)
    * PREFIX :resize-pane -t 2 -D 5 (Resizes the pane with the id of 2 down by 5 cells)
    * PREFIX :resize-pane -t 2 -L 5 (Resizes the pane with the id of 2 left by 5 cells)

[//]: # (Reference links used in the body of this note, which were stripped out by markdown processor. All comments won't be seen after rendering. SO post for comments in markdown - http://stackoverflow.com/questions/4823468/store-comments-in-markdown-syntax)

   [DILLINGER]: <http://dillinger.io/>
