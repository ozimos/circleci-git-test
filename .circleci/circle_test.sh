PACKAGE_PATH="./packages" 
LATEST_COMMIT_SINCE_LAST_BUILD=$(git rev-list -1 develop..$CIRCLE_SHA1 -- ${PACKAGE_PATH#./})
echo -e "\e[36m  [+] ${LATEST_COMMIT_SINCE_LAST_BUILD} \e[21m (included because changed since last build)\e[0m"
