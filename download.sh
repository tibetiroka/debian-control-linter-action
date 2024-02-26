LATEST_RELEASE=$(curl -L -s -H 'Accept: application/json' https://github.com/tibetiroka/debian-control-linter/releases/latest)
LATEST_VERSION=$(echo $LATEST_RELEASE | sed -e 's/.*"tag_name":"\([^"]*\)".*/\1/')
ARTIFACT_URL="https://github.com/tibetiroka/debian-control-linter/releases/download/$LATEST_VERSION/debian-control-linter"
wget -o /dev/null "$ARTIFACT_URL" && chmod u+x debian-control-linter