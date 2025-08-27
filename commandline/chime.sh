# #!/usr/bin/env zsh

# #### CHIME ####

# Make tokens available to (some) Ruby projects.
export BUNDLE_GITHUB__COM="$GITHUB_TOKEN:x-oauth-basic"
export GEMFURY_URL="https://$GEMFURY_TOKEN@push.fury.io/$GEMFURY_USER/"
export BUNDLE_GEM__FURY__IO="$GEMFURY_TOKEN"
export HOMEBREW_GITHUB_API_TOKEN=$GITHUB_TOKEN

# Artifactory
export ARTIFACTORY_READ_USER="cory.mathis"
export ARTIFACTORY_READ_TOKEN="cmVmdGtuOjAxOjAwMDAwMDAwMDA6Wjd4TzI5eUNlSGhTNnJLVkNwaFBqWFNaUERv"
export BUNDLE_CHIME__JFROG__IO="$ARTIFACTORY_READ_USER:$ARTIFACTORY_READ_TOKEN"
export ARTIFACTORY_NPM_AUTH=$(echo -n "$ARTIFACTORY_READ_USER:$ARTIFACTORY_READ_TOKEN" | base64)

# The parent directory for all your Chime repos
export WORK_DIR_PATH=~/dev
export LOCAL_GEM_PATH=$WORK_DIR_PATH

# Update to "M1" if you're using an M1 MacBook
export ARCH="M1"

#### REPOS ####
export INSPECTOR_PATH=$WORK_DIR_PATH/inspector
export PENNY_PATH=$WORK_DIR_PATH/penny
export PENNY_CLIENT_PATH=$WORK_DIR_PATH/penny-client

#### NAV TO REPOS ####
alias cdi="cd $INSPECTOR_PATH"
alias cdp="cd $PENNY_PATH"
alias cdpc="cd $PENNY_CLIENT_PATH"

#### CONVENIENCE ####
alias ydl="yarn dev:local"
alias hs="halo exec $1 -- /bin/bash"
alias hc="halo exec $1 -- ./bin/rails c"
alias cpl="compass branchpin list $1"
alias kubeqa="kubectl --context=csstable-rails-test -n qa"
alias kubehalo="kubectl --context=eks-use1-halo-wkload1-a018 -n cory-mathis"
alias kubeprod="kubectl --context=csproduction-rails-test -n chime01"
alias prod_console="kubectl --context=csproduction-rails-test -n chime01 console stuff"
alias kubedev1="kubectl --context=csstable-rails-test -n dev1"
alias kubedev2="kubectl --context=csstable-rails-test -n dev2"
alias kubedev3="kubectl --context=csstable-rails-test -n dev3"

alias claude-sso="aws sso login --profile=daily-login && claude"

gpods(){
    namespace=${1:-"dev3"}
    app=${2:-"inspector"}
    kubectl -n $namespace --context=csstable-rails-test get pods | grep $app
}


