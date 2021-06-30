#!/bin/bash

set -eu
# export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

load-nvmrc() {
    local node_version="$(nvm version)"
    local nvmrc_path="$(nvm_find_nvmrc)"

    if [ -n "$nvmrc_path" ]; then
        local nvmrc_node_version=$(nvm version "$(cat "${nvmrc_path}")")

        if [ "$nvmrc_node_version" = "N/A" ]; then
            nvm install
        elif [ "$nvmrc_node_version" != "$node_version" ]; then
            nvm use
        fi
    elif [ "$node_version" != "$(nvm version default)" ]; then
        echo "==> Reverting to nvm default version"
        nvm use default
    fi
}

read version _ <<<$(node -v)

if [ "$version" != "v14.15.5" ]; then
    echo "==> Your Using an old node version will try to install the newest version"
    echo "==> Ensuring .bashrc exists and is writable"
    touch ~/.bashrc
    echo "==> Installing node version manager (NVM)."
    rm -rf ~/.nvm
    export NVM_DIR=
    bash scripts/nvm.sh
    source ~/.nvm/nvm.sh
    echo "==> make this version system default"
    load-nvmrc
    echo "==> Installing Yarn package manager"
    rm -rf ~/.yarn
    curl -o- -L https://yarnpkg.com/install.sh | bash -s -- --version 1.22.5
    echo "==> Adding Yarn to environment path"
    export PATH="$HOME/.yarn/bin:$PATH"
    yarn config set prefix ~/.yarn -g
    echo "==> Checking for versions"
    nvm --version
    node --version
    npm --version
    yarn --version
    echo "==> Print binary paths"
    which npm
    which node
    which yarn
    echo "==> List installed node versions"
    nvm ls
    nvm cache clear
    echo "==> Now you're all setup and ready for development. If changes are yet totake effect, I suggest you restart your computer"

else
    echo "==> START INSTALLING YOUR PACKAGES"
    yarn
    echo "==> INSTALLING DONE"
    echo "==> SETUP ENV FILE"
    if [ -f ".env.development" ]; then
        echo ".env file already exists."
    else
        echo ".env does not exist."
        echo "creating one for your right now "
        cp ".env.development.local" ".env.development"
    fi
    echo "==> YOUR DONE BRO"
    echo "==> TRY TO START NOW"
    yarn start
fi
