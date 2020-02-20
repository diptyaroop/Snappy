mkdir node1
./go-ethereum/build/bin/geth --datadir "node1" account new
./go-ethereum/build/bin/geth --datadir "node1" init genesis.json
./go-ethereum/build/bin/geth --datadir "node1" --networkid 1234 --port 11111 --nodiscover console

#for > cosole commands
> personal.listWallets
> web3.fromWei(eth.getBalance(eth.accounts[0]), "ether"); #to check balance
> admin.nodeInfo.enode #to get uri use this to add peers
> admin.addPeer("enode://091b2211c90f884b3779ada638a17091c1554c857c99279cce2ad88543085bc2405dc1ef37d328488b6f82d329e0cf574f6018119e949ec495dc890962c757ea@127.0.0.1:11112?discport=0")
> admin.peers # give info about others peers
#transactions
personal.unlockAccount(eth.accounts[0]) # to unlock the account 
eth.sendTransaction({from: eth.accounts[0], to: "<wallet address on node 2>", value: 20})
# still  node 2 will have zero balance
 miner.start()
 miner.stop()
 #get balaance
 eth.getBalance(eth.coinbase) #get balance
 eth.getBalance(eth.accounts[0])
 > web3.fromWei(eth.getBalance(eth.accounts[0]), "ether")





mkdir node2
./go-ethereum/build/bin/geth --datadir "node2" account new
./go-ethereum/build/bin/geth --datadir "node2" init genesis.json
./go-ethereum/build/bin/geth --datadir "node2" --networkid 1234 --port 11112 --nodiscover console


#to see all accounts
# ./go-ethereum/build/bin/geth account list
# all accounts info is stored in ~/.ethereum