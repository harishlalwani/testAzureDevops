AZUREPAT=$AZUREPAT
AZUSERNAME=$AZUSERNAME
AZUSER_EMAIL=$AZUSER_EMAIL
git clone https://github.com/harishlalwani/testAzureDevops
cd testAzureDevops
rm -rf .git

cd ..

GIT_CMD_REPOSITORY="https://$AZUSERNAME:$AZUREPAT@dev.azure.com/$AZUSERNAME/TestGitSync/_git/TestGitSync"
git clone $GIT_CMD_REPOSITORY

cp -r testAzureDevops/* TestGitSync/

cd TestGitSync

git config --global user.email "$AZUSER_EMAIL"
git config --global user.name "$AZUSERNAME"

git add .
git commit -m "sync from git to azure"

git push
