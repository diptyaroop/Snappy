https://dl.google.com/go/go1.13.8.linux-amd64.tar.gz
sudo tar -C /usr/local -xzf go1.13.8.linux-amd64.tar.gz
export PATH=$PATH:/usr/local/go/bin

git clone https://github.com/ethereum/go-ethereum.git
cd go-ethereum/
make geth
./build/bin/geth #to run geth

