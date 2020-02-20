
# --------------------- Install ethereum ------------------------- #
sudo add-apt-repository ppa:ethereum/ethereum
sudo apt-get update
sudo apt-get install ethereum

# =============== OR =======================

# wget https://dl.google.com/go/go1.13.8.linux-amd64.tar.gz
# sudo tar -C /usr/local -xzf go1.13.8.linux-amd64.tar.gz
# export PATH=$PATH:/usr/local/go/bin

# git clone https://github.com/ethereum/go-ethereum.git
# cd go-ethereum/
# make geth
# ./build/bin/geth #to run geth


# ================ OR ===================== 

# sudo apt install linuxbrew-wrapper -y
# brew update
# brew upgrade
# brew tap ethereum/ethereum
# brew install ethereum

# --------------------- Install solidity ------------------------- #
sudo add-apt-repository ppa:ethereum/ethereum
sudo apt-get update
sudo apt-get install solc


#======================== OR ================
#sudo snap install solc



