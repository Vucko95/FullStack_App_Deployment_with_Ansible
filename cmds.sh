# To generate SSH KEYS Wihtout Prompot
ssh-keygen -q -t rsa -N '' -f ~/.ssh/id_rsa <<<y >/dev/null 2>&1