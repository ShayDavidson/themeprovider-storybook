#!/bin/sh
DIST_FOLDER="pkg"

rm -rf themeprovider-storybook*
rm -rf package

if [ ! -d "$DIST_FOLDER" ]; then
  echo "Dist folder doesnt exist"
  exit 1
fi

echo '📦 Running npm pack -> 📦'
npm pack file:"$DIST_FOLDER"

echo '🏳️‍🌈 Unpacking the packing -> 🏳️‍🌈'
tar -xvzf themeprovider-storybook*
