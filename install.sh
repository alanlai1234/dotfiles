#!/bin/bash
echo "checking dependencies..."
# check fzf
#if ! command -v fzf &> /dev/null
#then
	#echo -e "\033[31mfuzzyfinder not installed(fzf.vim)\033[37m"
	#exit
#fi
#check node
if ! command -v node &> /dev/null;
then
	echo -e "\033[31mnode not installed(coc.nvim)\033[37m"
	exit
fi
if ! command -v yarn &> /dev/null;
then
	if ! command -v npm &> /dev/null;
	then 
		echo -e "\033[31myarn or npm not installed(coc.nvim) (yarn recommanded)\033[37m"
		exit
	fi
fi
#check git 
if ! command -v git &> /dev/null;
then
	echo -e "\033[31mgit not installed\033[37m"
	exit
fi
if ! command -v zsh &> /dev/null;
then
	echo -e "\033[31mzsh not installed\033[37m"
	exit
fi
#check ctags
#if ! command -v ctags &> /dev/null
#then
	#echo -e "\033[31mctags not installed\033[37m"
	#exit
#fi
echo "setting neovim"
if [ -d "~/.config/nvim"]; then
	echo "nvim directory exists, renaming into nvim_tmp to avoid conflict"
	mv ~/.config/nvim ~/.config/nvim_tmp
fi

ln -s $(pwd)/nvim ~/.config/nvim
echo "install vim-plug"
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

nvim +Pluginstall +qa

echo "neovim config installed"
