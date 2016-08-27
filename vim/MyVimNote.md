# My VIM Note & Cheat Sheet
>There are 3 modes, command mode, insert mode and visual mode. Most the time, be in command mode.

## Basic
    * :help/<F1>      help
    * i/I             enter INSERT mode
    * esc/ctrl+[      enter command mode, ctrl+c breaks visual block and won't trigger InsertLeave autocommand event
    * .               redo previous command
    * u               undo previous change
    * U               return the whole line to original state
    * ctrl+r          redo previous change
    * :q              quit
    * :q!             quit without saving
    * :w              save
    * :x              save if there is any change and quit
    * :wq             save and quit
    * :wq!            save and quit, force write if file doesn't have write permission
    * :xa             save if there is any change and quit all files
    * :!<command>     execute the command
    * :r FILENAME     retrieves file FILENAME and puts it below the cursor
    * :r !ls          reads output of ls command and puts it below the cursor
    * :e/:edit abc    edit file "abc"
    * Completion
        * <TAB>       complete with next possible match
        * CTRL-D      show a list of commands that could be a match
    * :make  runs the make command and captures the output if you got a Makefile
        * cn          go to the location of the next error even if it is in another file
        * cc          see the current error message again

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
        * |         move to beginning of line
        * 5|        go to column 5
    * large range movement
        * gg        goto beginning of file
        * G         goto beginning of last line of file
        * :5/5G     goto line number 5
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
    * *    search the word under the cursor
    * /abc search "abc" in the file
        * n      find next match
        * N      find previous match
        * /abc\c search "abc" in the file and ignore case for this search
    * find in same line
        * fo     find next 'o'
        * Fo     find previous 'o'
        * 3fq    find 3rd 'q'
        * ;      repeat last f
        * ,      repeat last F
    * % jump to matching parenthesis
    * * find next occurrence of word under cursor
    * # find previous occurrence of word under cursor

## Edit (copy & paste & cut & delete)
    * y[number]motion yank (copy) by giving movement
        * yy == Y    copy current line
        * yit        copy in (html) tag
        * yip        copy in entire paragraph
    * d[number]motion delete by giving movement
        * de         delete to the end of the word, keep trailing space(s)
        * dw         delete word from cursor, including trailing space(s)
        * diw        delete in the (whole) word
        * d2e        delete to the end of 2 words, keep trailing space(s)
        * d2w        delete 2 words on the right and trailing space(s)
        * dd         delete current line
        * d$ == D    delete from cursor to end of line
        * di(        delete inside of ()
        * di[        delete inside of []
        * di{        delete inside of {}
        * dt
        * df
    * c[number]motion change by giving movement
        * ce         change to the end of the word
        * ci(        change inside of ()
        * c$ == C    delete from cursor to end of line, and enter INSERT mode
    * :s/old/new substitute "new" for "old"
        * :s/old/new/g      substitute globally in the whole line
        * :1,3s/old/new/g   substitute in line 1 to line 3
        * :%s/old/new/g     to change every occurrence in the whole file.
        * :%s/old/new/gc    to find every occurrence in the whole file, with a prompt whether to substitute or not.
    * v  enter visual mode
        * v motion :w abc  selecting text to write to file called abc
        * v                select by character
        * ctrl+v           select as a block
        * V                select lines
    * o           open new line below, and enter INSERT mode
    * O           open new line above, and enter INSERT mode
    * a           append at next position, enter INSERT mode
    * A           append at end of line, enter INSERT mode
    * 30i- esc    insert "-" 30 times
    * S           ^ + c$
    * s           x + i
    * x           delete character under cursor, like "Delete"
    * X           delete character to the left of cursor, like "Back Space"
    * r           replace character under cursor
    * R           replace multiple characters from cursor, press <ESC> to exit replace mode
    * p           paste copied text after cursor

## Split buffer
    * :vs [file]      vertically split
    * :split [file]   horizontally split
    * ctrl+w    switch between open files
        * h/j/k/l     left, down, up, right
        * H/J/K/L     left most, down most, up most, right most
        * =           balance the windows size even

## Set Options
    * :set xxx  sets the option "xxx"
        * :set ic/ignorecase  ignore upper/lower case when searching
        * :set is/incsearch   show partial matches for a search phrase
        * :set hls/hlsearch   highlight all matching phrases
        * :set cindent        turns on C style indentation
    * :set noxxx   prepend "no" to switches the option off
        * :set noic           turn off the ignore case option
    * Abbreviation
        * :ab/:abbreviate teh the  whenever you type the word 'teh', it will be replaced with 'the'
        * :una/:unabbreviate       remove 'teh' from the list of abbreviations
        * :abc/:abclear            remove all abbreviations
    * :set tw/textwidth=80    set the text width for automatic word wrapping
    * :set tw=0               stop automatic wrapping, unset textwidth

Tip: I use [DILLINGER] both to create the initial version of this markdown file, and to modify this file sometimes afterwards.

[//]: # (Reference links used in the body of this note, which were stripped out by markdown processor. All comments won't be seen after rendering. SO post for comments in markdown - http://stackoverflow.com/questions/4823468/store-comments-in-markdown-syntax)

   [DILLINGER]: <http://dillinger.io/>
