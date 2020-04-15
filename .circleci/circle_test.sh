PACKAGE_PATH="./packages" 
LATEST_PACKAGE_COMMIT_SINCE_DEVELOP=$(git rev-list -1 develop..$CIRCLE_SHA1 -- ${PACKAGE_PATH#./})
LATEST_COMMIT_SINCE_DEVELOP=$(git rev-list -1 develop..$CIRCLE_SHA1)
COMMITS_SINCE_DEVELOP=$(git rev-list develop..$CIRCLE_SHA1)
COMMITS_COUNT_SINCE_DEVELOP=$(git rev-list --count develop..$CIRCLE_SHA1)
echo -e "\e[36m  first changed commit in package since develop $LATEST_PACKAGE_COMMIT_SINCE_DEVELOP \e[0m"
echo -e "\e[36m  first changed commit since develop $LATEST_COMMIT_SINCE_DEVELOP \e[0m"
echo -e "\e[36m  commits since develop $COMMITS_SINCE_DEVELOP \e[0m"
echo -e "\e[36m  commits count since develop $COMMITS_COUNT_SINCE_DEVELOP \e[0m"
echo -e "\e[36m  this commit $CIRCLE_SHA1 \e[0m"
