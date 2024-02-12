#!/usr/bin/env zsh

#### CONVENIENCE ####
# Keep display on
alias ca="caffeinate -d"
# Open zsh profile in vscode
alias zrc="code ~/.zshrc"

#### NAVIGATION ####
alias cdt="cd $WORK_DIR_PATH/toolshed"

#### RUBY ####
alias rc="bundle exec rubocop"

#### GITHUB ####
# Open my PRs for the current repo in webview
alias myprs="gh pr list --author '@me' -w"
# Open the most recent of my PRs against the current repo in webview (NOT WORKING)
# alias mypr="gh pr list --author '@me' | grep $(git rev-parse --abbrev-ref HEAD) | awk '{print $1}' | xargs num echo num " 


