# Voice commands for mintty
#include Unimacro.vch;
include vim.vcl;

package install = "apt-cyg install ";
package remove = "apt-cyg remove ";

# screen
screen next = {Ctrl + a} {n};
screen prev = {Ctrl + a} {p};
screen 0..9 = {Ctrl + a} {$1};
#screen detach = {Ctrl + T} {d};
#screen attach = "tmux attach {enter}";
#screen reattach = "tmux attach -d {enter}";

