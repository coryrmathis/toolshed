#!/usr/bin/env zsh

# WORK DIR
export WORK_DIR_PATH=~/dev
export TOOLSHED_PATH="$WORK_DIR_PATH/toolshed"

### GENERAL PURPOSE ###

# grep with some context
alias gwl="grep -C $0"
# Keep display awake
alias ca="caffeinate  -d"
# Better cat
alias cat="bat"
# Open zsh profile in vscode
alias zrc="code $HOME/.zshrc"
# Reload zsh profile
alias ez="exec zsh"
# Open zsh profile in vscode
alias zrc="code ~/.zshrc"
# Keep display on
alias ca="caffeinate -d"

### TOOLSHED ###

# Open toolshed in vscode
alias mts="code $TOOLSHED_PATH"

### CORYTHOSAURUS ###
alias corycd="cd ~/dev/corythosaurus"
alias corycode="code ~/dev/corythosaurus"

### TOOLSHED ###
alias toolshed="cd $TOOLSHED_PATH && code ."

#### RUBY ####
alias rspec="nocorrect rspec" # ZSH is being a bitch and throws 'zsh: correct 'rspec' to 'spec''
alias rc="bundle exec rubocop"
export BUNDLER_EDITOR="code"

#### GIT ####
alias gsc="git commit -am $0"
alias cb="git rev-parse --abbrev-ref HEAD"
alias gb="git branch --color --sort=-committerdate | head -n 5"
alias gac="git commit -am $0"


#### GITHUB ####
# Open all PRs for the current repo in webview
alias prs="gh pr list -w"
# Open my PRs for the current repo in webview
alias myprs="gh pr list --author '@me' -w"
# Open the PR based on the current branch
alias thispr="git rev-parse --abbrev-ref HEAD | xargs gh pr view --web"

alias bruns="cb | xargs gh run list -b"

### ARCHWAY ###

# Open archway crm in vscode
alias crm="code $WORK_DIR_PATH/archway/crm"
