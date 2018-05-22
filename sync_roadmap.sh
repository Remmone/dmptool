if ! git ls-remote roadmap; then
  echo "No remote found for DMPRoadmap/roadmap ... adding one now"
  git remote add roadmap https://github.com/DMPRoadmap/roadmap.git
fi
git fetch origin combined
echo "Fetching latest roadmap combined-ruby-notification-versioning"
git fetch origin combined-ruby-notification-versioning
git checkout combined-ruby-notification-versioning
echo "Pulling down latest changes from DMPRoadmap"
#git pull roadmap master
git pull roadmap combined-ruby-notification-versioning
#echo "Pushing updated branch"
#git push origin combined-ruby-notification-versioning
git checkout combined
echo "Switching to the combined branch"
