
# File Browsing with Netrw

`:e .` to open a netrw file browser in the current directory

`:help netrw-quickmap` to list netrw commands.

`i` to cycle file tree modes

`-` to go to the parent directory

`v` to open the file under the cursor in a new vertical split

`t` to open the file under the cursor in a new tab


# Marking Files in Netrw

`mt` to set a target directory

`mf` to mark a file

`mm` to move marked files into the target directory

`md` to open a diff of up to 3 marked files.


# Manage Screen Splits

`sp <filename>` to open a new horizontal split

`vs <filename>` to open a new vertical split

`:res 10` to horizontally resize the current split to l0 rows.

`:vert res 50` to vertically resize the current split to 50 columns.

`<ctrl w>` while pressing the navigation keys `j`, `k`, `h`, `l` to move between splits.

Use `:term` or `:vert term` to open a terminal window as a split. Use `exit` to exit.

Hold shift while using the commands to move between splits to move splits around.

# Manage Multiple Editor Tabs

`:tabedit <filename>` to open a file in a new tab.

`gt` and `gT` to cycle between tabs.

`2gt` to go to the 2nd open tab.

From netrw, use `t` to open the file under the cursor in a new tab.


# Editing Basics

`u` and `<ctrl r` for undo and redo

`:w` and `:q` to write and quit

Prefix any yank with `“*` to copy to the system clipboard.

# Movement Essentials

`hjkl` for moving the cursor

`web` for jumping between words

`ftFT` for searching within a line

`yy`, `dd`, `p`, and `P` for copy-pasting

`%` for jumping to matching bracket

`^`, `$`, `0` for going to the beginning and end of lines

`/` and `?` for searching forwards and back

`v` for highlighting using visual mode

`gg` to jump to the beginning of the file

`G` to jump to the end of the file

`;` to repeat the last motion in normal mode

`,` to repeat the last motion in normal mode (in reverse!)

`.` in normal mode to repeat the last command

# Combining Normal Mode Motions

`7dj` deletes the next 7 lines in the `j` direction (down)

`ggVG` to select the entire file in visual mode.

`ci{` to change the contents of the nearest curly bracket.

`cf"` to change the contents between the cursor and the next double quote.

`yt` to yank the HTML tag under the cursor

# Formatting

`gq` to format long lines

`=` to fix indentation

`=ap` to re-indent the enclosing paragraph.

`>l` and `<h` to move endentation to the right and left.

`gu` and `gU` to capitalize and un-capitalize

`g~` to change the capitalization

`~` to change the capitalization of a single character

`<ctrl a>` and `<ctrl x>` to increment and decrement numbers. Prefix with `g` to get a staircase effect.



# Diffing Files

`[c` and `]c` to jump between regions of the diff.

`:diffget` or `do` to pull in the current change from the opposite file.

`:diffput` or `dp` to push the current change into the opposite file.

`:diffupdate` to re-scan your open files for a diff.


# Multi-File Navigation

`gf` to open a file whose name is under the cursor.

`<ctrl w> gf` to open the file under the cursor in a new tab.

`:b#` to open the last open buffer.

`:pwd` to show the current directory

`:b <tab>` to cycle through all open (buffered) files

`:only` to close all other splits except the current


# Find and Replace

`:%s/before/after` to substitute the first instance of "before" with "after".

`:s/` to substitute only on the current line.

`&` to repeat the previous substitution.

`g&` to apply the previous substitution to the entire file.

`:vimgrep 'pattern' filepath` to search the codebase

`:cn`, `:cp`, `:cnf` `:cnp` to jump between matches.

`:cr` to return to the first match.

`:cdo s/before/after/gc | update` to interactively find and replace matches from `:vimgrep`

Use `gd` or `gD` to go to a local declaration of a variable.

`gD` always starts from the top of the file.


# Autocomplete

`<ctrl> n` to autocomplete.

`<ctrl> p` to autocomplete using words pressing you have already typed.

`<ctrl> xf` to autocomplete filenames.

`<ctrl> n` and `<ctrl> p` to cycle through autocomplete options.


# Macros

Press `q` in normal mode to start recording a macro, and then another key, let's say `w` that the macro will be assigned to.

Input your macro, and press `q` again to finish recording.

Type `@w` in normal mode to replay the macro.

Type `3@w` to replay the macro 3 times


# Misc

Source control your `~/.vim` directory.

Learn manage plugins, colors, etc.. as git submodules

Learn from others' RC Files
