#!/bin/bash
function nvim()
{
	echo "checking dependencies..."
	#check ripgrep for fzf
	if ! command -v rg &> /dev/null
	then
		echo -e "\033[31mripgrep not installed(fzf.vim)\033[37m"
		exit
	fi
	# check fzf
	if ! command -v fzf &> /dev/null
	then
		echo -e "\033[31mfuzzyfinder not installed(fzf.vim)\033[37m"
		exit
	fi
	#check node
	if ! command -v node &> /dev/null
	then
		echo -e "\033[31mnode not installed(coc.nvim)\033[37m"
		exit
	fi
	#check git 
	if ! command -v git &> /dev/null
	then
		echo -e "\033[31mgit not installed\033[37m"
		exit
	fi
	#check ctags
	if ! command -v ctags &> /dev/null
	then
		echo -e "\033[31mctags not installed\033[37m"
		exit
	fi

	echo "setting up..."
	if [ -d "~/.config/nvim"]; then
		echo "nvim directory exists, renaming into nvim_tmp to avoid conflict"
		mv ~/.config/nvim ~/.config/nvim_tmp
	fi

	if [ -d "~/.config/coc"]; then
		echo "coc directory exists, renaming into coc_tmp to avoid conflict"
		mv ~/.config/coc ~/.config/coc_tmp
	fi

	ln -s $(pwd)/nvim ~/.config/
	ln -s $(pwd)/coc ~/.config/
	sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
	https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

	nvim +Pluginstall +qa

	echo "neovim config installed!"
}

echo -e "which config do u want to install ? \033[34m1)neovim 2)shell(bash/zsh) 3)kitty 4)tmux 5)leave\033[37m:"
read -p "==>" ans
case $ans in
	1)
		nvim
		;;
	5)
		exit
		;;
	*)
		echo "invalid option"
		exit
		;;
esac
