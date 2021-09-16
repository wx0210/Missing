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

`xdg-open` : on Linux open file

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

curly braces {} for bash to expand this automatically. This comes in very handy when moving or converting files.

`touch project{,1,2}` = `touch project project1 project2`

`shellcheck` will help you find errors in your scripts

shebang : `#! /usr/local/bin/python` at the top of the script.

another command `env` will resolve to wherever the command lives int the system.

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

More complex tools exist to quickly get an overview of a directory structure: `tree`, `broot` or even full fledged file managers like `nnn` or `ranger`.
