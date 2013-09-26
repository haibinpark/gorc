gorc
=======

gorc for golang developement envirement

## 准备环境  

### 新建目录
`mkdir ~/.vim`
`mkdir ~/.bin`

### 克隆配置
`git clone https://github.com/haibinpark/gorc .vim`  

## 初始化配置  

`git submodule update --init`  
`git submodule foreach git pull origin master`


## 安装配置 
`install-gorc.sh` 

## 添加插件  
### 添加插件MarkDown  
`git submodule add git://github.com/tpope/vim-markdown.git bundle/vim-markdown`


## 使用技巧

### 参考文章
[Git Submodule 的認識與正確使用][gitsubmodule-link]
[gitsubmodule-link]:http://josephjiang.com/entry.php?id=342

[tmux的使用方法和个性化配置][tmux-link]
[tmux-link]:http://mingxinglai.com/cn/2012/09/tmux/

[Best of VIM Tips, gVIM's Key Features zzapper][vimtips-link]
[vimtips-link]:http://www.rayninfo.co.uk/vimtips.html
