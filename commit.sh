API_TOKEN_GITHUB=$AZUREPAT
AZUSERNAME=$AZUSERNAME
git clone https://github.com/harishlalwani/testAzureDevops
cd testAzureDevops
rm -rf .git

cd ..

GIT_CMD_REPOSITORY="https://$AZUSERNAME:$API_TOKEN_GITHUB@dev.azure.com/$AZUSERNAME/TestGitSync/_git/TestGitSync"
git clone $GIT_CMD_REPOSITORY

cp -r testAzureDevops/* TestGitSync/

cd TestGitSync
git add .
git commit -m "sync from git to azure"
ls -lrth
git push
