# My VIM Note
>There are 3 modes, command mode, insert mode and visual mode. Most the time, be in command mode.

## Basic
    * :help       help
    * i/I         enter INSERT mode
    * esc/ctrl+[  enter command mode, ctrl+c breaks visual block and won't trigger InsertLeave autocommand event
    * .           redo previous command
    * u           undo previous change
    * U           return the whole line to original state
    * ctrl+r      redo previous change
    * :q          quit
    * :q!         quit without saving
    * :w          save
    * :x          save if there is any change and quit
    * :wq         save and quit
    * :wq!        save and quit, force write if file doesn't have write permission
    * :xa         save if there is any change and quit all files

## Move Cursor & Scroll
    * basic movement
        * h/j/k/l   move left/down/up/right
    * word movement
        * w         move to next word start
        * b         move to previous word start
        * e         move to next word end
        * ge        move to previous word end
    * number powered action/movement, all above can be used with number
        * 5 k       move cursor up by 5 position
        * 5 j       move cursor down by 5 position
    * move in line
        * 0         move to start of the line
        * $         move to end of the line
        * ^         move to beginning of the first word of the line
        * 5|        go to column 5
    * large range movement
        * :5/5G     goto line number 5
        * gg        goto beginning of file
        * G         goto end of file
        * ctrl+u    page up (default: half page)
        * ctrl+d    page down (default: half page)
        * ctrl+f    page forward full screen
        * ctrl+b    page backward full screen
        * ctrl+y    page up by 1 line
        * ctrl+e    page down by 1 line
    * crazy jumper
        * :jumps    display the jump list for the current window
        * ctrl+o    jump to older location
        * ctrl+i    jump to newer location
        * 5 ctrl+o  jump to 5 steps older location
        * zz        move current line to the middle of the screen
        * zt        move current line to the top of the screen
        * zb        move current line to the bottom of the screen

## Search
    * /abc search "abc" in the file
        * n      find next match
        * N      find previous match
    * find in same line
        * fo     find next 'o'
        * Fo     find previous 'o'
        * 3fq    find 3rd 'q'
        * ;      repeat last f
        * ,      repeat last F
    * %     jump to matching parenthesis
    * *     find next occurrence of word under cursor
    * #     find previous occurrence of word under cursor

## Edit (copy & paste & cut & delete)
    * y[number]motion yank (copy) by giving movement
        * yy         copy current line
        * yit        copy in (html) tag
        * yip        copy in entire paragraph
    * Y           ...
    * d[number]motion delete by giving movement
        * de         delete to the end of the word, keep trailing space(s)
        * dw         delete first (partial) word on the right and trailing space(s)
        * diw        delete in the (whole) word
        * d2e        delete to the end of 2 words, keep trailing space(s)
        * d2w        delete 2 words on the right and trailing space(s)
        * dd == d$   delete current line
        * di(        delete inside of ()
        * di[        delete inside of []
        * di{        delete inside of {}
        * dt
        * df
    * c[number]motion change by giving movement
        * ce         change to the end of the word
        * ci(        change inside of ()
    * C           delete from cursor to end of line, and enter INSERT mode
    * o           new line below, and enter INSERT mode
    * O           new line above, and enter INSERT mode
    * a           append at next position, enter INSERT mode
    * A           append at end of line, enter INSERT mode
    * |           move to beginning of line, enter INSERT mode
    * 30i- esc    insert "-" 30 times
    * S           delete current line, and enter INSERT mode
    * D           delete from cursor to end of line
    * x           delete character under cursor, like "Delete"
    * X           delete character to the left of cursor, like "Back Space"
    * r           replace character under cursor
    * p           paste copied text after cursor

## Split buffer
    * :vs       vertically split
    * :split    horizontally split
    * ctrl+w    switch between open files
        * h/j/k/l   left, down, up, right
        * H/J/K/L   left most, down most, up most, right most
        * =         balance the windows size even

Tip: I use [DILLINGER](http://dillinger.io/) both to create the initial version of this markdown file, and to modify this file sometimes afterwards.

[//]: # (Reference links used in the body of this note, which were stripped out by markdown processor. All comments won't be seen after rendering. SO post for comments in markdown - http://stackoverflow.com/questions/4823468/store-comments-in-markdown-syntax)

   [DILLINGER]: <http://dillinger.io/>
