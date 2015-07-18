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
I think every vim user is agree if I say vim is a wonderful text editor with his key mappings and his modes.

At the beginning, vim isn't configured to develop with. We need to install loads of plugins, search on the Internet which plugins can do what we want.
We can also write your own plugin if you're lazy to search for an existing one doing what you want.

These things take time, and we (developers) don't want to lost time to configure our IDE.

So, vim-IDE is here to help you. It helps you by integrating a list of plugins which will transform vim in a full IDE, and it's **easy** to install.

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
 - **Autocompletion**: work with a lot of languages (using *AutoComplPop*)
 - **Project management**: work with C, C++, PHP, HTML/CSS, JS, JAVA, PYTHON (using *Eclim*)
 - **Fast commenting**: work with a lot of filetype (using *NerdCommenter*)
 - **Android development**: with *Eclim*, it provides a complete interface to *Eclipse* functionnalities.
 - **Markdown edition**: By default in vim.
 - **Web development**: syntax checker and highlighting (default in vim).
   Improved with two plugins for HTML5 and CSS3, supporting LESS and SASS, and providing Bootstrap snippets. It matches tags with *MatchTagAlways* and tags are automatically closed with *vim-closetag*.

-------------------
Plugins (See each plugins repository to have more informations)
=======
- Programming languages support:
- Vim supports a huge range of programming languages by default. But, it exists some plugins that improve some programming languages support.
	- **C**: c-vim
	- **Shell**: bash-support.vim
	- **LaTeX**: latex-suite
	- **Go**: vim-go
  - **Arduino**: vim-arduino-ino

- Syntax highlightning:

- Project management:
	- **Eclim**: interface to eclipse (need *Eclipse Luna*). Please see the "Improvements" section about *Eclim*. Need to be installed manually.
	- **NerdTree**: File manager. Show in a split windows a tree with your files. It's an alternative for *Eclim* if you edit something not supported by *Eclim*.

- Autocompletion:
	- **AutoComplPop**: show popup for autocompletion when typing.

- Snippets:
	- **vim-snipmate**: provide snippets in a large category of filetypes

- Comments:
	- **NerdCommenter**: provides shortcuts to (un)comment lines in several filetype

- Build and deploy applications:
	- **Eclim**: Build and deploy *Android* applications. Need to be installed manually.

- Version control:
	- **Fugitive**: provides git command by using *:Git add*, *:Git commit*, etc directly in vim.

- Real-time syntax checking:
	- **syntastic**: provides a real time syntax checking. If you forgot a brace, a parenthesis, a semi colon, or something else, *syntastic* prevents you. It works for a lot of programming languages.

- Source code browsing:
	- **tag-list**: provides a list with all defined variables and functions and give direct access to their definition.

- Web development:
	- **html5.vim**: improved HTML5 support.
	- **vim-css3-syntax**: improved CSS3 support.
	- **MatchTagAlways**: highlight tags couples.
	- **vim-less**: support for less syntax.
	- **scss-syntax.vim**: vim syntax for scss files.
	- **vim-closetag**: automatically close tag.
	- **bootstrap-snippets**: bootstrap snippets. It's not needed to remember
	  all code to insert a carousel or a button, just type "carousel" or "btn"
	  and bootstrap-snippets inserts automatically the code.  Autocompletion is
	  activated by default.

- Arduino development:
	- **vim-arduino-ino**: provides keybindings and access to template like *arduino-ide*. Use *ino*.

- MISC:
	- **number-vim**: improve line numbering
	- **vim-airline**: Provide a rich status line, showing the branch you're working on.
	- **vim-better-whitespaces**: provides some commands to delete spaces at the end of lines, extra tabs, etc.
	- **vim-task**: provides highlight and shortcuts to manage a todo file. Extensive with your own file extensions.

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
