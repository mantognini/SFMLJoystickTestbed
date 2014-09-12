#!/bin/bash

# Put us in the same folder as this script.
cd "$(dirname "$0")"
app_name="SFMLJoystickTestbed.app"

PROJ_ROOT=..

rm -rf $PROJ_ROOT/build/Debug/$app_name/Contents/Resources
# At some point make this more selective so we aren't copying all the source assets
# as well.
ditto $PROJ_ROOT/Resources $CONFIGURATION_BUILD_DIR/$CONTENTS_FOLDER_PATH/Resources
