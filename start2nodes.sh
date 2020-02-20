mkdir node1
geth --datadir "node1" account new
geth --datadir "node1" init genesis.json
geth --datadir "node1" --networkid 1234 --port 11111 --nodiscover console

#for > cosole commands
  # list wallets
> personal.listWallets 

  # get balance
> eth.getBalance(eth.coinbase)
> eth.getBalance(eth.accounts[0])
> web3.fromWei(eth.getBalance(eth.accounts[0]), "ether")

  # Connect to peers
> admin.nodeInfo.enode #to get uri use this to add peers
> admin.addPeer("enode://341793ade41a145c1987d2ade...")
> admin.peers # give info about connected peers

  # transactions
> personal.unlockAccount(eth.accounts[0]) # unlock account 
> eth.sendTransaction({from: eth.accounts[0], to: 
  "<wallet address on node 2>", value: 20})
  # create a block 
> miner.start()
> miner.stop()



# ------------------- OR  -------------------------- #
# if local build

# mkdir node2
# ./go-ethereum/build/bin/geth --datadir "node2" account new
# ./go-ethereum/build/bin/geth --datadir "node2" init genesis.json
# ./go-ethereum/build/bin/geth --datadir "node2" --networkid 1234 --port 11112 --nodiscover console


#to see all accounts
# ./go-ethereum/build/bin/geth account list
# all accounts info is stored in ~/.ethereum