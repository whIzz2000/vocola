# Voice mappings for vim (enabled applications )
# vim.vcl

# symbols
slap = {enter};
back = {backspace};
hat = "^";
clam = "!";
lat = "@";
numb = "#";
lace = "{";
race = "}";
score = "_";
eke = "=";
dall = "$";
pipe = "|";
laip = "(";
rye = ")";


# vim versions of text editing Mappings established in vocola general commands

# ---------------------------------------------------------------------------
# Text Editing

<n> := 0..99;
<direction>  := Left | Right | Up | Down;
<left_right> := (Left={b} | Right={w});
<start_end> := (Start={Home} | End={End});
<compass> := (North={Shift+h} | South={Shift+l} |
 East={'$'} | West={0});
<delmode> := (Change={c} | Kill={d});
#Change line			= {Esc} C;
#Change word			= {Esc} cw;
#destroy line = {Esc} dd;
#destroy word = {Esc} dw;

### Characters
# implemented elsewhere
#<n> <direction>       = {$2_$1};
Kill (Char | 1 | One) = {Del};
Kill Back [1]         = {Esc}{Backspace};
Kill <n>              = {Del_$1};
[Kill] Back <n>       = {Esc}{Backspace_$1};

#### Words
#[One] Word <left_right> = $1;
#<n> Words <left_right> = Repeat($1,$2}); 
##{Ctrl+$2_$1};
#Kill Word              = {Right_2}{Ctrl+Left}{Shift+Ctrl+Right}   {Del};
#Kill <n> Words         = {Right_2}{Ctrl+Left}{Shift+Ctrl+Right_$1}{Del};
#Kill Back Word         = {Left}{Ctrl+Right}{Shift+Ctrl+Left}   {Del};
#Kill Back <n> Words    = {Left}{Ctrl+Right}{Shift+Ctrl+Left_$1}{Del};
#
#### Lines
#Line <start_end>     = $1;
## implemented elsewhere
##New Line             = {Enter};
#Line Here            = {Enter}{Left};
#Copy Line            = {home}{Shift+Down}{Shift+Home}{Ctrl+c};
#Kill Line            = {home}{Shift+Down}{Shift+Home}{Del};
#Kill Back Line       = {home}{Shift+Up}  {Shift+Home}{Del};
#Kill <n> Lines       = {home}{Shift+Down_$1}{Shift+Home}{Del};
#Kill Back <n> Lines  = {home}{Shift+Up_$1}  {Shift+Home}{Del};
#Kill Here            = {Shift+End}{Del};
#Kill Back Here       = {Shift+Home}{Del};
#Duplicate Line       = {home}{Shift+Down}{Shift+Home}{Ctrl+c}{Home}{Ctrl+v};
remove previous line = {Esc}":-1d"{Enter};
remove next line = {Esc}":+1d"{Enter};
#                    
#### Paragraphs        
#Graph Start          = {Ctrl+Up}{Right}{Home};
#Graph End            = {Ctrl+Down}{Left_2}{End};
#(Paragraph|Graph) Here = {Enter}{Enter}{Left}{Left};
#Open (Graph|Line)    = {Enter}{Enter}{Left};
#Copy Graph           = {Ctrl+Down}{Shift+Ctrl+Up}{Ctrl+c};
#Kill Graph           = {Ctrl+Down}{Shift+Ctrl+Up}{Del};
#Duplicate Graph      = {Ctrl+Down}{Shift+Ctrl+Up}{Ctrl+c}{Home}{Ctrl+v};
#                    
#### Entire "Flow"   
#Flow Start           = {Ctrl+Home};
#Flow End             = {Ctrl+End};
##New Line             = {Enter};
#All           = {Ctrl+a};
#Copy All             = {Ctrl+a}{Ctrl+c};
#(Cut|Kill) All       = {Ctrl+a}{Ctrl+x};
#Kill Flow Here       = {Ctrl+Shift+End} {Ctrl+x};
#Kill Back Flow Here  = {Ctrl+Shift+Home}{Ctrl+x};
#Replace All          = {Ctrl+a}{Del}{Ctrl+v};
#                    
#### Selection         
#Kill That            = {Del};
## implemented elsewhere
##Cut That             = {Ctrl+x};
##Copy That            = {Ctrl+c};
#Yank That            = {Ctrl+v};
#Paste Here           = ButtonClick() {Ctrl+v};
#Duplicate That       = {Ctrl+c}{Left}{Ctrl+v};
#Keep That            = {Ctrl+c}{Ctrl+a}{Del}{Ctrl+v};
#Select <compass>     = $1;

#/*-------------------------------------------- */ 
# vim commands

# keyboard mapping for vim commands (distinct from text editing)
include keys.vch;

# text editing
copy previous line = {Esc}":-1y"{Enter};
copy current line = {Esc}"yy"{Enter};
copy next line = {Esc}":+1y"{Enter};
blank line previous = {Esc}"O"{down}{Esc};
blank line next = {Esc}"o"{up}{Esc};
change character case = {Esc}"~";

# text shortcuts
define = {Esc}"i#"{esc}"id"{space};
include = {Esc}"i#"{esc}"ii"{space};
equals = i{right}" = "{Esc};
hash = {Esc}"i#"{esc};
insert space = {Esc}"i"{space}{esc};
begin comment = {Esc}"i/* ";
end comment = {Esc}"i */"{enter};
begin long comment = {Esc}"i#"{esc}"ib"{space};
end long comment = {Esc}"i#"{esc}"ie"{enter};
insert line break = {Esc}"i"{enter};
line comment = {Esc}"i#"{esc}"il"{enter};
double slash backslash = "\/\/";
double dot slash = "../";

# text navigation actions
list changes = {Esc}":changes";
previous change = {Esc}"g;";
##next change = {Esc}"g,";
undo jump = {Esc}"``";
return = {Esc}"''";
set mark = {Esc}"mz";
goto mark = {Esc}"'zi";
beginning previous = {Esc}"-";
beginning next = {Esc}"+";
match bracket = {Esc}"%";
scroll to bottom = {Esc}"zb";
scroll to top = {Esc}"zt";
Line 1..999 = {Esc}":$1 {Enter}";
Back till <key>		= {Esc}"T $1";
Till <key>		= {Esc}"t $1";
Search <_anything>	= {Esc}"/ $1";

# window navigation
split vertical = {Esc}":vsp"{Enter};
window left				= {Ctrl+w}"h";
window right				= {Ctrl+w}"l";
window up				= {Ctrl+w}"k";
window down				= {Ctrl+w}"j";
next window				= {Ctrl+w}"w";
window close = {ESC}{Ctrl+w}"c";

# buffer navigation
previous = {Esc}":bp";
remove buffer = {Esc}":bd";
next = {Esc}":bn";
previous buffer = {Esc}":b#";
list buffers = {Esc}":buffers"{enter}":b";

# standard actions
start macro = {Esc}"qz";
repeat macro = {Esc}"@z";
format = {Esc}"Q";
replace = {Esc}"R";
normal mode 		= {ESC};
Undo that		= {Esc}"u";
undo that 1..99 times	= {Esc} Repeat($1, u);
redo = {Esc}{ctrl+r};
insert 		= {ESC}"i";
insert begin	= {Esc}"I";
substitute	= {Esc}"s";
change		= {Esc}"C";
append		= {Esc}"a";
append line	= {Esc}"A";
open above	= {Esc}"O";
open down	= {Esc}"o";

# commandline actions
make = {Esc}":make";
update = {Esc}":!ctags -a ."{Enter};
list errors = {Esc}":clist";
next error = {Esc}":cn";
previous error = {Esc}":cp";
save file = {Esc}":w"{Enter};
close = {Esc}":q"{Enter};
#confirm force close definite = {Esc}":q!";
previous command = {Esc}":"{up};
edit another = {Esc}":e ";
file browser = {Esc}":e."{Enter};
(sub | substitute) line	= {Esc}":s///gc"Repeat(4, {Left});
(sub | substitute) all	= {Esc}":%s///gc"Repeat(4, {Left});

# plug-in actions
folds = {Esc}{ctrl+f};
taglist = {Esc}""{ctrl+p};

# editor settings
nowrap = "{Esc}:set nowrap{enter}";
Edit vim RC		= {Esc} ":e ~\.vimrc" {Enter};
reload			= {Esc} ":source \$MYVIMRC" {Enter};



### surplus for reference

#<surround> := ( par = "()" | bar = "||" | quote = "" );

#Surround <surround> = $1{Left};
#
#.rb:
#	new method <_anything>	= "def " Ruby.to_method($1);
#	class <_anything>	= Ruby.classify($1);
#	method <_anything>	= Ruby.to_method($1);
#	variable <_anything>	= Ruby.to_method($1); 
#
#	Directory		= Dir;
#	change directory	= chdir;



