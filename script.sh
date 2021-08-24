#! /bin/bash  

echo "###################### INITALIZING EMPTY RESPOSITORY #####################"
git init
echo ""

echo "################## ADDING ALL FILES TO EMPTY REPOSITORY ##################"
git add .
echo ""

read -p 'Commit Message: ' commitmsg

echo ""
echo "######################### COMMITING RESPOSITORY ##########################"
git commit -m "$commitmsg"
echo ""

echo "######################### RENAMING MASTER TO MAIN #########################"
git branch -M main
echo "NOW THE MASTER BRANCH IS RENAMED TO MAIN"
echo ""

read -p 'Your Git URL: ' giturl
echo ""


echo "###################### ADDED REMOTE ORIGIN TO GITHUB ######################"
git remote add origin $giturl.git
echo ""

echo "######################### PUSHED CODE TO GITHUB ###########################"
git push -u origin main
echo ""

echo "Opening in browser $giturl"
start $giturl