# Course Note

### day 1 Course overview + the shell

`echo` can print out the arguments 

use `\`  to print special characters  e.g echo My\ Photos = echo "My Photos"

`cd` -  go to previous position

`ls -l ` first d means directory then follow three groups of three characters`(rwx)`. These indicate what permissions the owner of the file , the owning group(users), and everyone else respectively have on  the relevant item.  For file r : read w : write x = execute  For directory r : see which files are inside this directory  w : rename create or remove files x : known as search and allowed into directory if you want to get to a file

`<` file left angle indicate rewire the input for this program to be the contents of this file

`>` file rewire the output of the preceding program into this file 

`>>` append the text

`|` means take the output of the program to the right and take input of the program to the left  e.g `ls -l` | `tail -n1`

`tee` takes its input and writes it to a file but also to standard out

e.g echo 500 | sudo tee backlight

`xdg-open` : on Linux open file

`open`: on macos open file

### day 2 Shell Tools and Scripting

`foo` = `bar` will not work since it interpreted as calling the `foo `program with arguments = and bar.

Strings in bash can be defined with `'` and `"` delimiters, but they are not equivalent. Strings delimited with `' `are literal strings and will not substitute variable values whereas `"` delimited strings will.

```bash
foo=bar
echo "$foo"
# prints bar
echo '$foo'
# prints $foo
```

```bash
mcd () {
    mkdir -p "$1"
    cd "$1"
}
```

`$0`  Name of the script

`$1` to`$9` Arguments to the script. 

`$@` All the arguments

`$#` Number of arguments

`$?` Return code of the previous command

`$$` Process identification number for the current script

`!!` Entire last command  **one trick** `sudo !!`

`$_` Last argument from the last command **one trick** `Esc + .`

curly braces {} for bash to expand this automatically This comes in very handy when moving or converting files

`touch project{,1,2}` = `touch project project1 project2`

`shellcheck` will help you find errors in your scripts

shebang : `#! /usr/local/bin/python` at the top of the script

another command `env` will resolve to wherever the command lives int the system

e.g `#!/usr/bin/env python`

#### Shell Tools

##### Finding how to use commands 

`man`  : provide a manual page  (detailed descriptions of the commands)

`tldr` : a nifty complementary solution that focuses on giving example use cases of a command so you can quickly figure out which options to use

##### Finding files

`fd` is a simple, fast, and user-friendly alternative to find

`fd PATTERN`

##### Finding code

`grep`  a generic tool for matching patterns from the input text

`rg`  -> `ripgrep`  an alternatives

##### Finding shell commands 

`history` will let you access your shell history 

`Ctrl+R`  to perform backwards search through your history

`fzf` is a general-purpose fuzzy finder that can be used with many commands

##### Directory Navigation

`autojump` or `z`

More complex tools exist to quickly get an overview of a directory structure: `tree`, `broot` or even full fledged file managers like `nnn` or `ranger`

`touch project{,1,2}` = `touch project project1 project2`

`shellcheck` will help you find errors in your scripts

shebang : `#! /usr/local/bin/python` at the top of the script

another command `env` will resolve to wherever the command lives int the system.

e.g `#!/usr/bin/env python`

#### Shell Tools

##### Finding how to use commands 

`man`  : provide a manual page  (detailed descriptions of the commands)

`tldr` : a nifty complementary solution that focuses on giving example use cases of a command so you can quickly figure out which options to use

##### Finding files

`find` All UNIX-like systems come packaged. Some examples: 

```bash
# Find all directories named src
find . -name src -type d
# Find all python files that have a folder named test in their path
find . -path '*/test/*.py' -type f
# Find all files modified in the last day
find . -mtime -1
# Find all zip files with size in range 500k to 10M
find . -size +500k -size -10M -name '*.tar.gz'
```

Beyond listing files, find can also perform actions over files that match your query. This property can be incredibly helpful to simplify what could be fairly monotonous tasks.

```bash
# Delete all files with .tmp extension
find . -name '*.tmp' -exec rm {} \;
# Find all PNG files and convert them to JPG
find . -name '*.png' -exec convert {} {}.jpg \;
```

`fd` is a simple, fast, and user-friendly alternative to find

`fd PATTERN`

##### Finding code

`grep`  a generic tool for matching patterns from the input text

`rg`  -> `ripgrep`  an alternatives

##### Finding shell commands 

`history` will let you access your shell history 

`Ctrl+R`  to perform backwards search through your history

`fzf` is a general-purpose fuzzy finder that can be used with many commands

##### Directory Navigation

`autojump` or `z`

More complex tools exist to quickly get an overview of a directory structure: `tree`, `broot` or even full fledged file managers like `nnn` or `ranger`

### day 3 Editors(Vim)

#### Philosophy of Vim

When programming, you spend most of your time reading/editing, not writing. For this reason, Vim is a modal editor: it has different modes for inserting text vs manipulating text. Vim is programmable (with Vimscript and also other languages like Python), and Vim’s interface itself is a programming language: keystrokes (with mnemonic names) are commands, and these commands are composable. Vim avoids the use of the mouse, because it’s too slow; Vim even avoids using the arrow keys because it requires too much movement.

#### Modal editing

`Normal`: for moving around a file and making edits
`Insert`: for inserting text
`Replace`: for replacing text
`Visual (plain, line, or block)`: for selecting blocks of text
`Command-line`: for running a command

#### Vim’s interface is a programming language

The most important idea in Vim is that Vim’s interface itself is a programming language. Keystrokes (with mnemonic names) are commands, and these commands compose. This enables efficient movement and edits, especially once the commands become muscle memory.

##### Movement

Basic movement: hjkl (left, down, up, right)
Words: w (next word), b (beginning of word), e (end of word)
Lines: 0 (beginning of line), ^ (first non-blank character), $ (end of line)
Screen: H (top of screen), M (middle of screen), L (bottom of screen)
Scroll: Ctrl-u (up), Ctrl-d (down)
File: gg (beginning of file), G (end of file)
Line numbers: :{number}<CR> or {number}G (line {number})
Misc: % (corresponding item)
Find: f{character}, t{character}, F{character}, T{character}
find/to forward/backward {character} on the current line
, / ; for navigating matches
Search: /{regex}, n / N for navigating matches

