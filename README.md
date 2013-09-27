gorc
=======

gorc for golang developement envirement

## 准备环境  

### 新建目录
`mkdir ~/.vim`
`mkdir ~/.bin`

### 克隆配置
`git clone https://github.com/haibinpark/gorc.vim`  

### 安装依赖
`go get -u github.com/jstemmer/gotags`  
`go get -u github.com/nsf/gocode`  
`go get -u code.google.com/p/rog-go/exp/cmd/godef`

## 初始化配置  

`git submodule update --init`  
`git submodule foreach git pull origin master`


## 安装配置 
`install-gorc.sh` 

## 插件管理 
### 添加插件  
**添加mardown插件**
`git submodule add git://github.com/tpope/vim-markdown.git bundle/vim-markdown`
### 移除插件  
**删除go.vim插件**
1. 删除git记录  
`git rm bundle/go.vim`  
2. 删除文件  
`rm bundle/go.vim`  
3. 修正.gitmodules
移除和go.vim相关的内容  
4. 提交修改后的.gitmodules
`git add .gitmodules`
`git commit -m "Remove vim plugin go.vim"
5. 同步submodule  
`git submodule sync`


## 使用技巧

### 参考文章
[Git Submodule 的認識與正確使用][gitsubmodule-link]
[gitsubmodule-link]:http://josephjiang.com/entry.php?id=342

[tmux的使用方法和个性化配置][tmux-link]
[tmux-link]:http://mingxinglai.com/cn/2012/09/tmux/

[Best of VIM Tips, gVIM's Key Features zzapper][vimtips-link]
[vimtips-link]:http://www.rayninfo.co.uk/vimtips.html
