vim-ide
=====================

Table of contents

- [What's the purpose of vim-ide ?](#)
- [Installation](#)
- [Functionnalities (comparison with GUI IDE)](#)
- [Plugins (See each plugins repository to have more informations)](#)
- [Improvements](#)

What's the purpose of vim-ide ?
==========================
 I think every vim user agrees with me if I say that vim is a wonderfull editor
 thanks to its key mapping and its modes.

 At first, vim is not configured to develop with. One needs to install a ton of
 plugins, search the internet to know which plugin does what one needs, etc. You
 can also write your own plugin if you are confortable enough and/or too lazy to
 search extensively for the existing one that would match your needs.

 This takes time, and we (developers) don't want to lose time configuring our
 IDE from scratch.

 So, vim-IDE is here to help you. It helps you by integrating a list of plugins 
 which will transform vim in a full IDE, and it's **easy** to install.

------------------
Installation
==========

 1. Clone this repository, save your old vim configuration, and make symlinks to vim and vimrc. You can paste these following lines which do the job.
  ```
  git clone https://github.com/vim-IDE/vim-IDE.git ~/.vim-ide
  tar -cvf old.vim.configuration.tar ~/.vim ~/.vimrc
  rm -rf ~/.vim ~/.vimrc
  ln -s ~/.vim-ide/vim ~/.vim
  ln -s ~/.vim-ide/vimrc ~/.vimrc
  ```

 2. Open the vimrc file. You have a plugins list, with the description.
 You can choose which plugin you want to install by comment/uncomment the line "Plugin 'vim-IDE/[plugin name]'".  For example, if you don't use the go language, and so, you don't want to install the plugin, you only have to comment "Plugin 'vim-IDE/vim-go'" line by inserting a '#'. So you have
 ```
 Plugin 'vim-IDE/vim-go'
 ```

 ```
 # Plugin 'vim-IDE/vim-go'
 ```
If you decide to not install a plugin, you have to comment the configuration file (if there's one). They are at the end of the vimrc file and saved in the directory *vim/configuration*.

 3. Install plugins by opening vim and type
```
:PlugInstall
```
or directly in a terminal
```
vim +PlugInstall
```

 4. (Optionnal) Plugins are frequently updated, and you can be interrested to get the updated plugins.
 You can manually update by typing, in vim, the command
```
:PlugUpdate
```
or directly in a terminal
```
vim +PlugUpdate
```
 You can also use a cron job to update automatically the plugins by inserting the command
```
vim +PlugUpdate
```
in the cron file.

Functionnalities (comparison with GUI IDE)
===================================

 - **Templates**: work with C/C++, LaTeX, Shell (using *c-vim*, *latex-suite*, *bash-support*)
 - **Snippets**: insert snippets rapidly with *vim-snippets*. It improves your
   productivity by avoiding you to type a long function or instruction.
 - **Syntax highlightning/checking**: work with a lot of languages, and warning you as you type for syntax errors.
 - **Integrated version control**: Git integration (using *fugitive*)
 - **Refactoring**: work (at the moment) with java using JavaRename (using *Eclim*), and OCaml (using *merlin*, manually installed)
 - **Building**: Fast access to build and deploy functionnalities.
 - **Autocompletion**: work with a lot of languages (using *YouCompleteMe*)
 - **Project management**: work with C, C++, PHP, HTML/CSS, JS, JAVA, PYTHON (using *Eclim*)
 - **Fast commenting**: work with a lot of filetype (using *NerdCommenter*)
 - **Android development**: with *Eclim*, it provides a complete interface to *Eclipse* functionnalities.
 - **Markdown edition**: By default in vim.
 - **Web development**: syntax checker and highlighting (default in vim).
   Improved with two plugins for HTML5 and CSS3, supporting LESS and SASS, and providing Bootstrap snippets. It matches tags with *MatchTagAlways* and tags are automatically closed with *vim-closetag*.
   An useful plugin (*vim-coloresque*) highlights the text in the corresponding color it describes. Improves php completion with *phpcomplete.vim* and the node development with *vim-node*.

-------------------
Plugins (See each plugins repository to have more informations)
=======
- Programming languages support:
- Vim supports a huge range of programming languages by default. But, it exists some plugins that improve some programming languages support.
	- **C**: [c.vim](https://github.com/vim-ide/c.vim)
	- **Shell**: [bash-support.vim](https://github.com/vim-ide/bash-support.vim)
	- **LaTeX**: [vim-latex](https://github.com/vim-ide/vim-latex)
	- **Go**: [vim-go](https://github.com/vim-ide/vim-go)
  - **Arduino**: [vim-arduino-ino](https://github.com/vim-ide/vim-arduino-ino)

- Syntax highlightning:

- Project management:
	- [Eclim](http://eclim.org): interface to eclipse (need *Eclipse Luna*). Please see the "Improvements" section about *Eclim*. Need to be installed manually.
	- **[NerdTree](https://github.com/vim-ide/nerdtree)**: File manager. Show in a split windows a tree with your files. It's an alternative for *Eclim* if you edit something not supported by *Eclim*.

- Autocompletion:
	- **[YouCompleteMe](https://github.com/vim-ide/youcompleteme)**: show popup for autocompletion when typing.

- Snippets:
	- **[vim-snipmate](https://github.com/vim-ide/vim-snipmate)**: provide snippets in a large category of filetypes

- Comments:
	- **[NerdCommenter](https://github.com/vim-ide/nerdcommenter)**: provides shortcuts to (un)comment lines in several filetype

- Build and deploy applications:
	- **[Eclim](http://eclim.org)**: Build and deploy *Android* applications. Need to be installed manually.

- Version control:
	- **[Vim-Fugitive](https://github.com/vim-ide/vim-fugitive)**: provides git command by using *:Git add*, *:Git commit*, etc directly in vim.

- Real-time syntax checking:
	- **[syntastic](https://github.com/vim-ide/syntastic)**: provides a real time syntax checking. If you forgot a brace, a parenthesis, a semi colon, or something else, *syntastic* prevents you. It works for a lot of programming languages.

- Source code browsing:
	- **[taglist.vim](https://github.com/vim-ide/taglist.vim)**: provides a list with all defined variables and functions and give direct access to their definition.

- Web development:
	- **[html5.vim](https://github.com/vim-ide/html5.vim)**: improved HTML5 support.
	- **[vim-css3-syntax](https://github.com/vim-ide/vim-css3-syntax)**: improved CSS3 support.
	- **[MatchTagAlways](https://github.com/vim-ide/matchtagalways)**: highlight tags couples.
	- **[vim-less](https://github.com/vim-ide/vim-less)**: support for less syntax.
	- **[scss-syntax.vim](https://github.com/vim-ide/scss-syntax.vim)**: vim syntax for scss files.
	- **[vim-closetag](https://github.com/vim-ide/vim-closetag)**: automatically close tag.
	- **[bootstrap-snippets](https://github.com/vim-ide/bootstrap-snippets)**: bootstrap snippets. It's not needed to remember
	  all code to insert a carousel or a button, just type "carousel" or "btn"
	  and bootstrap-snippets inserts automatically the code.  Autocompletion is
	  activated by default.
	- **[phpcomplete.vim](https://github.com/vim-ide/phpcomplete.vim)**: Improve php complete.
	- **[vim-node](https://github.com/vim-ide/vim-node)**: Improve node development..
	- **[vim-coloresque](https://github.com/vim-ide/vim-coloresque)**: highlight the text in the form #rrggbb or #rgb in the corresponding color.
	- **[gulp-vim](https://github.com/vim-ide/gulp-vim)**: Wrapper to gulp
	- **[emmet-vim](https://github.com/vim-ide/emmet-vim)**: emmet-vim is a vim plug-in which provides support for
	  expanding abbreviations similar to emmet.

- Arduino development:
	- **[vim-arduino-ino](https://github.com/vim-ide/vim-arduino-ino)**: provides keybindings and access to template like *arduino-ide*. Use *ino*.

- MISC:
	- **[numbers.vim](https://github.com/vim-ide/numbers.vim)**: improve line numbering
	- **[vim-airline](https://github.com/vim-ide/vim-airline)**: Provide a rich status line, showing the branch you're working on.
	- **[vim-better-whitespaces](https://github.com/vim-ide/vim-better-whitespaces)**: provides some commands to delete spaces at the end of lines, extra tabs, etc.
	- **[vim-task](https://github.com/vim-ide/vim-task)**: provides highlight and shortcuts to manage a todo file. Extensive with your own file extensions.

Improvements
=================================================

 - *Eclim*: For now, you need to install manually. See http://eclim.org/ to install it and for documentation.
 - *c.vim*: You can choose which indent style you want, which are in a specific branch. By default, **vim-IDE** use the master branch of the git repository. If you use the *allman* indent style, type
 ```
 Plug 'vim-IDE/c.vim', {"branch': 'allman'}
 ```
 in the vimrc before launching *:PlugInstall*.
 For now, only the allman indent style is available. Others are coming soon. You're free to help and share your own indent style.
 - Add more plugins improving programming languages support in the default vimrc such as OCaml (merlin), javascript (vim-javascript), scala (vim-scala), etc.
