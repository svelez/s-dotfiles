# Include default startup present in workspaces
if [[ -e ~/.profile ]]; then
source ~/.profile
fi

# Make tokens available to tools using well-known environment variables
export GITLAB_TOKEN=$(pass development/tokens/gitlab)
export GITHUB_TOKEN=$(pass development/tokens/github)
