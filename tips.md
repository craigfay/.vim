
# Shortlist

**Motions**
Use `/` to cycle between occurences of a string to move your cursor to what you're looking at.
Use `va(` to select everything inside and including the current parentheses.
Use `vi{` to select everything inside the current curly brackets.
Use `ci{` to change the contents of the nearest curly bracket.
Use `viw` to visually select the entirety of the current word. 
Use `viW` to visually select the entirety of the current non-whitespace chunk. 
Use `10dj` to delete the next 10 lines downward (good with relative number)
Use `10kj` to delete the next 10 lines upward


# Undo / Redo

Use `u` and `<ctrl> r` to undo / redo.

# Netrw

Use `:help netrw-quickmap` to list netrw commands.
Press `c` to make the browsing directory the current working directory.
Press `C` to make the current netrw window the "editing window".
Use `gh` to quickly show / hide dotfiles
Use `md` to open a diff of up to 3 marked files.
Use `mT` to apply ctags to marked file.
Use `mu` to unmark all marked files.
Use `mx` to apply an arbitrary shell command to marked files
Use `mx` to compress or uncompress marked files
Use `qb` to list bookmarked files.
Use `qf` to list information for the file under the cursor.
Use `s` to cycle sorting style by name, time or file size


# Motions

Get fast with `w`, `f`, and `t`.
Use `;` to repeat the last motion in normal mode
Use `,` to repeat the last motion in normal mode (in reverse!)
Use `%` to jump to the matching bracket under the cursor.
Use `f[` to jump to the next square bracket.
Use `<ctrl y>` and `<ctrl e>` to move scroll the current line up and down in the viewport.
Use `dt<char>` to delete everything until the next instance of `<char>`.
Use `ci}` to replace the contents of inside the current curly bracket pair.
Use `yi'` to yank everything inside the enclosing single quotes.
Use `ya"` to yank the enclosing double quotes and everything inside.
Prefix any yank with `“*` to copy to the system clipboard.


# Command Mode

Use `@:` to repeat the last command.
Use `@@` to repeat the last played macro. I often use this instead of `@:`.

# Capitalization

Use `gu` and `gU` to capitalize and un-capitalize
`g~` to change the capitalization
`~` to change the capitalization of a single character

```
this sentence is normalized
```

# Formatting

Use `gg=G` to re-indent the entire file.

# Line Wrapping

Use `gqq` to format long lines into multiple lines.
Use `gj` to navigate downward by one visual line.
Use `J` to join the next line with the current one.
Use `gJ` to join without including a space.

```
Kant's original goals were unattainable. We have no direct intuition of the form of our minds. Peirce sought to renovate Kant's project. Though we can't have synthetic a-priori certainty about anything, he seeks ways to establish comparative confidence in our knowledge. This doesn't have the philosophical glamor of perfect apadectic certainty, but it's what's available to us, and better than falling into Hume's skeptical despair. Kant's dream was a-priori necessary and universal truth.
```

```javascript
// TODO: How to join these lines and remove whitespace?
let kvPairs = querystring
    .split('&')
    .map(pair => pair.split('='))
```

# Netrw

Use `-` to go up one directory
Use `u` to go back to the previous directory
Use `mb` to bookmark the current directory
Use `gb` to return to the most recent bookmark
Use `mt` to mark a target directory
Use `mf` to mark a file or directory
Use `mm` to move marked files into the target dir
Use `mc` to copy marked files into the target dir


# Multi-File Navigation

Use `:e .` to open netrw in the current location.
Use `i` from netrw to cycle through modes.
Use `I` from netrw to show and hide the banner.
Use `/` from netrw to search for a file by name.
Use `gf` to open a file whose name is under the cursor.
Use `<ctrl w> gf` to open the file under the cursor in a new tab.
Use `:b#` to open the last open buffer.
Use `:pwd` to show the current directory


```
~/.vimrc
```

# Visual Mode

Use `gv` to re-select the last thing selected in visual mode.


# Find and Replace

Use `:%s/before/after` to substitute the first instance of "before" with "after".
Use `g&` to apply the previous substitution to the entire file.
Use `:s/` to substitute only on the current line.

Use :vimgrep 'pattern' filepath to search the codebase, and :cn, :cp, :cnf,
:cnp to jump between matches. Use :cr to return to the first match.

Use `:cdo s/before/after/gc | update` to interactively find and replace matches from `:vimgrep`

# Quickfix Window

The quickfix window is opened after commands like `:vimgrep`.

Open the quickfix window with `:cwindow <height>` or `:cw`

Use `:copen` to open a new split with the list of matches.

# Manage Multiple Editor Tabs

From the command line, use `vim -p <filename1> <filename2>` to open multiple files at once.
Use `:tabedit <filename>` to open a file in a new tab.
Use `gt` and `gT` to cycle between tabs.
Use `2gt` to go to the 2nd open tab.
From netrw, use `t` to open the file under the cursor in a new tab.

# Manage Screen Splits

Use `sp <filename>` to open a new horizontal split
Use `vs <filename>` to open a new vertical split
Use `:res 10` to horizontally resize the current split to l0 rows.
Use `:vert res 50` to vertically resize the current split to 50 columns.
Hold `<ctrl w>` while pressing the navigation keys `j`, `k`, `h`, `l` to move between splits.
Use `:term` or `:vert term` to open a terminal window as a split. Use `exit` to exit.
Use `<ctrl w> =` to equalize the size of open splits.
Hold shift while using the commands to move between splits to move splits around.


# Autocomplete

Use `<ctrl> n` to autocomplete.
Use `<ctrl> p` to autocomplete using words pressing you have already typed.
Use `<ctrl> xf` to autocomplete filenames.
Use `<ctrl> n` and `<ctrl> p` to cycle through autocomplete options.

# Session Management

Use `:mksession <path_to_session_file>` to create a session file.
Use `vim -S <path_to_session_file>` to open a session.

# Diffing

Use `vim -d filename1 filename2` to open a vim diff.
Use `[c` and `]c` to jump between regions of the diff.
Use `:diffget` or `do` to pull in the current change from the opposite file.
Use `:diffput` or `dp` to push the current change into the opposite file.
Use `:diffupdate` to re-scan your open files for a diff.


# Spellchecking

Use `:set spell` to enable spell checking.
Use `:set spelllang <iso_code>` to set the spell check language.



# Fold Management

Use `zo` and `zc` to open and close folds.
Use `zr` and `zm` to open and close all folds.
