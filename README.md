# TestAzureDevops

This repo demonstrates how we can sync github repo to Azure Devops.

Requirements
- Azure devops repo
- Personal Access Token for Azure.
- Github repo to sync with Azure devops.

We are using Github actions to perform sync operation.

1. Create Environment secret variables under settings > environment > secrets.

        AZUREPAT
        AZUSERNAME
        AZUSER_EMAIL
        AZORG
        
2. Pass those environment variables in deploy.yml file like following

        AZUREPAT: ${{secrets.AZUREPAT}}
        AZUSERNAME: ${{secrets.AZUSERNAME}}
        AZUSER_EMAIL: ${{secrets.AZUSER_EMAIL}}
        AZORG: ${{secrets.AZORG}}
        
3. On every git push, commit.sh gets executed.

4. Following steps are done in commit.sh
- git clone git hub repo
- cd to repo folder.
- remove .git folder
- cd ..
- git clone Azure repo using azure PAT and other settings.
- copy files from git repo folder to azure repo folder.
- git add , git commit and git push.
- Above steps should update Azure repo with github code.


