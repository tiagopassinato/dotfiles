if [ -f "$1" ]
then
  mv $1 ~/.dotfiles/$1
  ln -s ~/.dotfiles/$1 $1
  echo "$1 linked..."
else
  echo "$1 not found"
fi

