#!/bin/bash -e
# Copyright 2019 Google Inc. Use of this source code is governed by an MIT-style
# license that can be found in the LICENSE file or at
# https://opensource.org/licenses/MIT.

echo 'Deploying to npm.'

source tool/travis/utils.sh

decrypt_credentials
tar xfO credentials.tar npm > ~/.npmrc

travis_cmd pub run grinder npm-release-package
travis_cmd npm publish build/npm
