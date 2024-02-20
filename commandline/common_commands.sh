#!/usr/bin/env zsh

# WORK DIR
export WORK_DIR_PATH=~/dev

#### CONVENIENCE ####

# TOOLSHED #
alias toolshed="code $WORK_DIR_PATH/toolshed"
# Keep display on
alias ca="caffeinate -d"
# Open zsh profile in vscode
alias zrc="code ~/.zshrc"

#### NAVIGATION ####
alias cdt="cd $WORK_DIR_PATH/toolshed"

#### RUBY ####
alias rc="bundle exec rubocop"

#### GIT ####
alias current_branch="git rev-parse --abbrev-ref HEAD"

#### GITHUB ####
# Open my PRs for the current repo in webview
alias myprs="gh pr list --author '@me' -w"
# Open the PR based on the current branch
alias thispr="git rev-parse --abbrev-ref HEAD | xargs gh pr view --web"
