#!/bin/bash
#
#tput setaf 0 = black
#tput setaf 1 = red
#tput setaf 2 = green
#tput setaf 3 = yellow
#tput setaf 4 = dark blue
#tput setaf 5 = purple
#tput setaf 6 = cyan
#tput setaf 7 = gray
#tput setaf 8 = light blue
##################################################################################################################

##################################################################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
##################################################################################################################

# Problem solving commands

# Read before using it.
# https://www.atlassian.com/git/tutorials/undoing-changes/git-reset
# git reset --hard orgin/master
# ONLY if you are very sure and no coworkers are on your github.

# Command that have helped in the past
# Force git to overwrite local files on pull - no merge
# git fetch all
# git push --set-upstream origin master
# git reset --hard orgin/master

#setting up git
#https://www.atlassian.com/git/tutorials/setting-up-a-repository/git-config
#https://medium.com/clarusway/how-to-use-git-github-without-asking-for-authentication-always-passwordless-usage-of-private-git-8c32489bc2e9
#https://blog.nillsf.com/index.php/2021/05/27/github-sso-using-password-protected-ssh-keys

project=$(basename $(pwd))
githubdir="ricknosnow"
echo "-----------------------------------------------------------------------------"
echo "this is project https://github.com/$githubdir/$project"
echo "-----------------------------------------------------------------------------"

echo
tput setaf 1
echo "################################################################"
echo "#####  Choose wisely - one time setup after clean install   ####"
echo "################################################################"
tput sgr0
echo
echo "Select the correct desktop"
echo
echo "0.  Do nothing"
echo "1.  Rick"
echo "Type the number..."

read CHOICE

case $CHOICE in

0)
  echo
  echo "########################################"
  echo "We did nothing as per your request"
  echo "########################################"
  echo
  ;;

1)
  git config --global pull.rebase false
  git config --global push.default simple
  git config --global user.name "ricknosnow"
  git config --global user.email "junk@yahoo.com"
  git config --global core.autocrlf input
  sudo git config --system core.editor vim
  #git config --global credential.helper cache
  #git config --global credential.helper 'cache --timeout=32000'
  git remote set-url origin git@github.com:$githubdir/$project
  echo
  echo "Everything set"
  ;;
*)
  echo "#################################"
  echo "Choose the correct number"
  echo "#################################"
  ;;
esac

echo "################################################################"
echo "###################    T H E   E N D      ######################"
echo "################################################################"
