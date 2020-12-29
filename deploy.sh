# #!/bin/sh

# # If a command fails then the deploy stops
# set -e

# printf "\033[0;32mDeploying updates to GitHub...\033[0m\n"

# # Build the project.
# hugo

# # Go To Public folder
# cd public

# # Add changes to git.
# git add .

# # Commit changes.
# msg="rebuilding site $(date)"
# if [ -n "$*" ]; then
# 	msg="$*"
# fi
# git commit -m "$msg"

# # Push source and build repos.
# git push origin main
#!/bin/sh

if [ "`git status -s`" ]
then
    echo "The working directory is dirty. Please commit any pending changes."
    exit 1;
fi

echo "Deleting old publication"
rm -rf public
mkdir public
git worktree prune
rm -rf .git/worktrees/public/

echo "Checking out gh-pages branch into public"
git worktree add -B gh-pages public upstream/gh-pages

echo "Removing existing files"
rm -rf public/*

echo "Generating site"
hugo

echo "Updating gh-pages branch"
cd public && git add --all && git commit -m "Publishing to gh-pages (publish.sh)"

#echo "Pushing to github"
#git push --all