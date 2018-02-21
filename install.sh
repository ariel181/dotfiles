#! /bin/sh
echo "Move dot files"
pwd

dir="$HOME/dotfile"
dir_old="$HOME/old_dotfile"

#files=".bashrc .vimrc .zshrc .gitconfig .tmux.conf"
files=".tmux.conf"

for file in $dir ; do 
    echo $file
done


echo "Creating folder $dir_old"
mkdir -pv "$dir_old"

echo "Changing to the $dir directory"

for file in $files; do
    echo "Moving existing dotfiles from ~ to $dir_old"
    mv -v "$HOME/$file" "$dir_old"
    echo "Creating symlink to $file in home directory."
    ln -s $dir/$file ~/$file
done

echo "list of files"
ls -al "$dir_old"

exit 0
