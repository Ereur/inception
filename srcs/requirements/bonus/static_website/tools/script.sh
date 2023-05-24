#!/bin/bash

# while true; do sleep 1000; done
curl https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

nvm install node

# npm install -g @nestjs/cli
# mkdir app && cd app
# nest new static-website -p npm
# cd static-website
# npm run start:dev
# while

cd app

npm start