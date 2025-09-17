#!/usr/bin/env zsh

# WORK DIR
export WORK_DIR_PATH=~/dev

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
alias mts="code $HOME/dev/toolshed"

### CORYTHOSAURUS ###
alias corycd="cd ~/dev/corythosaurus"
alias corycode="code ~/dev/corythosaurus"

### TOOLSHED ###
alias toolshed="code $WORK_DIR_PATH/toolshed"

#### NAVIGATION ####
alias cdt="cd $WORK_DIR_PATH/toolshed"

#### RUBY ####
alias rc="bundle exec rubocop"
alias rspec="nocorrect rspec" # ZSH is being a bitch and throws 'zsh: correct 'rspec' to 'spec''

#### GIT ####
alias gac="git commit -am $0"
alias cb="git rev-parse --abbrev-ref HEAD"

#### GITHUB ####
# Open all PRs for the current repo in webview
alias prs="gh pr list -w"
# Open my PRs for the current repo in webview
alias myprs="gh pr list --author '@me' -w"
# Open the PR based on the current branch
alias thispr="git rev-parse --abbrev-ref HEAD | xargs gh pr view --web"

### ARCHWAY ###

# Open archway crm in vscode
alias crm="code $HOME/dev/archway/crm"



