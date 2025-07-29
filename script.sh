set -eo pipefail

echo "--- :package: Build job checkout directory"

pwd
ls -la


echo "--- :evergreen_tree: Build job environment"

env


echo "--- :evergreen_tree: Devbox config"

cat devbox.json

echo "+++ :hammer: Devbox build"
devbox -q run -- cowsay -d "Hello, Buildkite!"
