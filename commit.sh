API_TOKEN_GITHUB=$AZUREPAT
AZUSERNAME=$AZUSERNAME
git clone https://github.com/harishlalwani/testAzureDevops
cd testAzureDevops
rm -rf .git

GIT_CMD_REPOSITORY="https://$AZUSERNAME:$API_TOKEN_GITHUB@dev.azure.com/$AZUSERNAME/TestGitSync/_git/TestGitSync"
git clone $GIT_CMD_REPOSITORY

mv -r ../testAzureDevops/* TestGitSync/
git add .
git push
