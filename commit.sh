API_TOKEN_GITHUB=$AZUREPAT
AZUSERNAME=$AZUSERNAME
GIT_CMD_REPOSITORY="https://$AZUSERNAME:$API_TOKEN_GITHUB@dev.azure.com/$AZUSERNAME/TestGitSync/_git/TestGitSync"
git clone GIT_CMD_REPOSITORY;
git add .
git push