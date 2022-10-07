## VimConfig Shortcuts


```
:h[elp] keyword	-	open help for keyword
:sav[eas] file	-	save file as
:clo[se]	- 	close current pane
:ter[minal]	- 	open a terminal window
K		- 	open man page for word under the cursor
:w		-	save file
:q		-	exit file
:q!		- 	force exit file
:wq		-	save and exit file
:wq!		-	save and exit file forced
```
#### movement
```
h	-	<
l 	-	>
k	-	^
j	-	v
Esc	-	escape insert mode
" normal directional arrows can also be used

gg		-	go to first line of document
G		- 	go to last line of document
10gg or 10G	-	go to line 10 
gd		- 	go to local declaration of the keyword
gD		- 	go to global declaration
/'string'	-	search for 'string' experssion in the document

r		- 	replace a single caaracter
R		-	replace more than one Character, until `Esc` is pressed

```

#### copy paste

```
" visual mode is selection mode
visual mode	-	v in command mode
insert mode	-	i in command mode(insert before the cursor)
			I in command mode(insert at the beginning of line)
			a in command mode(insert after the cursor)
			A in command mode(insert at the beginning of line)
			o new line below the cursorline
			O new line above the cursorline	
copy lines	-	yy (copy single line not in visual mode)
			y  (copy multiple lines selected in viusal mode)
cut lines	-	cc (cut single line not in visual mode) with line space left
			c  (cut multiple lines selected in visual mode)
			dd (cut single line not in visual mode and no space left)
			d  (cut multiple lines in visual mode and no space left)
switch case	-	~
" lines when cut are also copied to clipboard

" `5dd` will remove 5 lines under the cursor
" simillarly every other command


```

#### comment

```
toggle comment		-	gcc
comment paragraph	-	gcip
```

#### Indentation

```
shift indent to right	-	ctrl + shift + 2 * greater than '>' 
shift indent to left	-	ctrl + shift + 2 * less than '<'
```

#### Find and Replace
```
Replace All:

:%s/foo/bar/g

Find each occurrence of 'foo' (in all lines), and replace it with 'bar'.

For specific lines:

:6,10s/foo/bar/g

```
