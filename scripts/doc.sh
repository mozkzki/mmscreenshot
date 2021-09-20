#!/bin/sh

if [ -e docs/conf.py ]; then
    sphinx-apidoc -f -o docs/ src/moz_screenshot  # 2回目以降
else
    sphinx-apidoc -F -o docs/ src/moz_screenshot  # 初回実行
fi

sphinx-build -b singlehtml ./docs ./docs/_build
