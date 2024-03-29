set -e
mkdir -p artifacts/compiled
mkdir -p artifacts/abis
cd contracts

starknet-compile NFTBaseCollection.cairo \
    --output ../artifacts/compiled/NFTBaseCollection.json \
    --abi ../artifacts/abis/NFTBaseCollection.json

starknet-compile NFTDelegatableCollection.cairo \
    --output ../artifacts/compiled/NFTDelegatableCollection.json \
    --abi ../artifacts/abis/NFTDelegatableCollection.json

starknet-compile NFTCollectionLauncher.cairo \
    --output ../artifacts/compiled/NFTCollectionLauncher.json \
    --abi ../artifacts/abis/NFTCollectionLauncher.json

echo "Done!"