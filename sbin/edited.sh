#!/usr/bin/env sh

export APP_NAME=my-app

cp src-edited/config/entrypoint.js ${APP_NAME}/src/config/
cp ${APP_NAME}/src/index.js index.pre-gen.js
cp src-edited/index.js ${APP_NAME}/src/
cp src-edited/serviceWorker.js ${APP_NAME}/src/
cp src-edited/welcome.css ${APP_NAME}/src/
cp src-edited/Welcome.js ${APP_NAME}/src/
patch < src-edited/components/book/List.diff
patch < src-edited/components/book/Show.diff