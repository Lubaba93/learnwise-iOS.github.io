#!/bin/sh
if [ "${CONFIGURATION}" != "DEV" ]; then
echo "Building Fabric"
"${PODS_ROOT}/Fabric/run" ${CRASHLYTICS_API_KEY} ${CRASHLYTICS_BUILD_SECRET}
fi
