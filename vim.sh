#!/usr/bin/env bash

# TODO: migrate to new VIM plugin system
# TODO: merge vimrc file into the shell scritp

sudo apt-get install -y \
  build-essential \
  cmake \
  python-dev \
  python3-dev \
  vim \
  curl \
  git

checkReturn() {
  if [ $? -ne 0 ]
  then
    echo -e "\033[31merror\033[0m"
    exit 1
  else
    echo -e "\033[32mok\033[0m"
  fi
}


VPKGDIR="${HOME}/.vim/bundle"


echo -n "- Basic Setup..."
rm -fr ~/.vim*
mkdir -p ${HOME}/.vim/autoload ${VPKGDIR}
curl -so "${HOME}/.vim/autoload/pathogen.vim" "https://raw.githubusercontent.com/tpope/vim-pathogen/master/autoload/pathogen.vim"
[ ! -d ${HOME}/tmp ] && mkdir ${HOME}/tmp || echo -n ...
checkReturn

PACKAGES="
moll/vim-node
godlygeek/tabular
pangloss/vim-javascript
digitaltoad/vim-jade
kchmck/vim-coffee-script
wavded/vim-stylus
groenewege/vim-less
tpope/vim-surround
scrooloose/nerdcommenter
scrooloose/nerdtree
tomtom/tlib_vim
MarcWeber/vim-addon-mw-utils
honza/vim-snippets
scrooloose/syntastic
tpope/vim-fugitive
vim-airline/vim-airline
"
echo "- Starting packages clonning:"
for package in $PACKAGES
do
  echo -en "\t$package..."
  git clone https://github.com/${package}.git ${VPKGDIR}/${package#*/} > /dev/null 2>&1
  checkReturn
done

cp vimrc ${HOME}/.vimrc
checkReturn

echo done
