govimrc
=======

vimrc for golang developement

## 安装 vim-pathogen  
```  
git submodule add git://github.com/tpope/vim-pathogen.git bundle/vim-pathogen
  
```

## 启用 vim-pathogen  
```
echo -e "runtime bundle/vim-pathogen/autoload/pathogen.vim\ncall pathogen#infect()\n" >> ~/.vim/vimrc
```

## 安装vimrc  
`./install-vimrc.sh` 

## 安装插件  
### 安装MarkDown
`git submodule add git://github.com/tpope/vim-markdown.git bundle/vim-markdown`
