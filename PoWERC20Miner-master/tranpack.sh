#!/bin/bash

# 定义一个包含500个常用单词的数组
words=(
    "blockchain" "cryptocurrency" "smartcontract" "decentralization" "ethereum" "bitcoin" "dapps" "token" 
    "ledger" "consensus" "decentralizedfinance" "defi" "wallet" "nft" "nonfungibletoken" "mining" "staking"
    "dao" "decentralizedautonomousorganization" "block" "chain" "hash" "node" "peer" "publickey" "privatekey"
    "signature" "address" "transaction" "gas" "fees" "mainnet" "testnet" "sharding" "layer2" "protocol" 
    "solidity" "governance" "fork" "hardfork" "softfork" "validator" "proof" "work" "proofstake" "pow" 
    "pos" "byzantinefaulttolerance" "bft" "security" "privacy" "scalability" "interoperability" "lightningnetwork"
    "lightclient" "zkrollup" "optimisticrollup" "oracles" "decentralizedexchange" "dex" "yieldfarming"
    "liquiditypool" "liquidityprovider" "impermanentloss" "syntheticassets" "collateral" "stablecoin"
    "algorithmicstablecoin" "custody" "noncustodial" "multisig" "atomic" "swap" "crosschain" "bridges" "layer1"
    "tokenomics" "supply" "demand" "inflation" "deflation" "burn" "mint" "ico" "initialcoinoffering" "ieo" 
    "initialexchangeoffering" "ido" "initialdexoffering" "stakingrewards" "airdrops" "whitelist" "whale" 
    "tokenburn" "faucet" "testnetfaucet" "regulation" "compliance" "kyc" "aml" "knowyourcustomer" 
    "antimoneylaundering" "digitalidentity" "sovereignidentity" "did" "decentralizedidentifier" "ssiblockchain" 
    "web3" "metamask" "walletconnect" "trustwallet" "web3wallet" "hotwallet" "coldwallet" "hardwarewallet" 
    "ledgerwallet" "trezor" "bitcointalk" "cryptoforum" "cryptotwitter" "cryptoreddit" "cryptodiscord"
    "priceoracle" "uniswap" "sushiswap" "balancer" "curve" "pancakeswap" "dexaggregator" "paraswap" "1inch" 
    "matcha" "zerox" "zrx" "arbitrage" "flashloan" "flashloanattack" "front_running" "sandwichattack"
    "darkpool" "privacycoin" "monero" "zcash" "tornado" "tornado_cash" "mixer" "anonymity" "privacyprotocol"
    "zero_knowledge" "zk_snark" "zk_stark" "bulletproofs" "ring_signature" "confidentialtransaction"
    "stealthaddress" "masternode" "dash" "privacyshield" "scramble" "coinjoin" "wasabi" "wallets" 
    "samourai" "encryption" "asymmetricalencryption" "symmetricencryption" "hashfunction" "sha256" "keccak256"
    "blake2" "argon2" "bcrypt" "scrypt" "schnorr" "ecdsa" "ellipticcurve" "ecdh" "diffiehellman" "cipher"
    "aes" "rsa" "pgp" "qubit" "quantumresistance" "postquantum" "quantumcomputing" "latticecryptography"
    "multisignature" "thresholdsignature" "dkg" "distributedkeygeneration" "securemultipartycomputation"
    "smc" "homomorphicencryption" "zkp" "zeroknowledgeproof" "verifiablecomputation" "fhe" "fullyhomomorphicencryption"
    "commitment" "merkleproof" "merkle" "tree" "hashgraph" "dag" "directedacyclicgraph" "cybersecurity"
    "cypherpunk" "cryptoanarchy" "anonymization" "deanonymization" "pseudonymity" "sybilattack" "ddos"
    "dns" "ipfs" "interplanetaryfilesystem" "filecoin" "storj" "sia" "arweave" "swarm" "bittorrent" "webtorrent"
    "hypercore" "dat" "ssb" "scuttlebutt" "textile" "ceramic" "orbitdb" "bigchain" "bigchaindb" "gun" 
    "peerdatastore" "dweb" "decentralizedweb" "p2p" "peer2peer" "hyperledger" "indigo" "besu" "fabric"
    "sawtooth" "iroha" "blockstack" "stacks" "arweave" "algorand" "hbar" "hedera" "eos" "tezos" "polkadot"
    "substrate" "cosmos" "tendermint" "cerberus" "libra" "dm" "celo" "chiliz" "theta" "solana" "avalanche"
    "fantom" "near" "protocol" "celo" "heco" "harmony" "matic" "polygon" "optimism" "arbitrum" "rollups" 
    "l2" "zkrollups" "oracles" "chainlink" "band" "api3" "razor" "tellor" "nest" "plug" "data" "fetch"
    "fetchai" "ocean" "datamarket" "oceanprotocol" "singularity" "aiforblockchain" "decentralizedai" 
    "singularitynet" "dapp" "truffle" "ganache" "remix" "embark" "brownie" "wyre" "infura" "alchemy" 
    "quicknode" "ethgasstation" "etherscan" "bscscan" "polygonscan" "explorer" "blockexplorer" "ethereumfoundation"
    "etclabs" "ethclassic" "consensys" "web3foundation" "omgnetwork" "maticnetwork" "polkadotnetwork"
    "parachain" "parathread" "substrate" "runtime" "forkless" "upgrades" "parity" "ink" "substrate" "proofofstake"
    "pos" "nominator" "collator" "validator" "relaychain" "parachain" "parathread" "subquery" "moonbeam"
    "moonriver" "moonbeamnetwork" "acalanetwork" "karura" "acala" "kusama" "rococo" "bifrost" "centrifuge"
    "cennznet" "edgeware" "edgeware" "edge" "edgeprotocol" "edgewaredao" "edgewaregovernance" "phala"
    "phalanetwork" "lending" "borrow" "debt" "collateral" "loans" "interest" "yield" "apy" "apr"
    "stablecoin" "usd" "usdc" "usdt" "tether" "gds" "cusd" "gusd" "pax" "paxos" "frax" "ust"
    "luna" "terra" "anchor" "mirror" "mim" "magic" "abracadabra" "spell" "sushibar" "sushi" "sushieth"
    "borroweth" "borrowdai" "comp" "competh" "compusd" "compusdc" "compusdt" "aave" "aaveeth" "aavedai"
    "aaveusd" "aaveusdc" "aaveusdt" "aavecompound" "compound" "compoundeth" "compounddai" "compoundusd"
    "compoundusdc" "compoundusdt" "curvefi" "curvefiusd" "curveeth" "curvebtc" "curveusd" "balancerfi"
    "balancereth" "balancerusd" "balancerdai" "balancerusdc" "balancerusdt" "balancercompound" "pools"
    "balancerpools" "curvepools" "curvepoolusd" "curvepooleth" "balancerpoolusd" "balancerpooleth" "3pool"
    "3poolusd" "3pooleth" "3poolusdc" "3poolusdt" "3pooldai" "curve3pool" "curvedai" "curveusdc" "curveusdt"
    "pooltogrow" "p2p" "lendingprotocol" "lendingpool" "credit" "borrow" "loans" "collateral" "defiborrow"
)
# 从数组中随机选择两个单词，并拼接在一起作为新的 package 名称
generate_random_name() {
    word1=${words[$RANDOM % ${#words[@]}]}
    word2=${words[$RANDOM % ${#words[@]}]}
    echo "${word1}-${word2}"
}

while true; do
    # 生成新的 package name
    new_package_name=$(generate_random_name)
    echo "New package name: $new_package_name"

    # 修改 package.json 中的 name 字段
    sed -i "s#\"name\": \".*\"#\"name\": \"$new_package_name\"#" package.json
    echo "Modified package.json"

    # 发布 npm 包
    echo "Publishing npm package..."
    npm publish

    # 等待 2 分钟
    echo "Waiting for 2 minutes..."
    sleep 2m
done
