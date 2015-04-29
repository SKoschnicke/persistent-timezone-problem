docker run -it -p 3000:3000 --link postgresql_container:db -v $(pwd):/build stackage /bin/bash
# in the container:
#  export PATH=$PATH:/build/.cabal-sandbox/bin
#  cd /build
#  yesod devel
