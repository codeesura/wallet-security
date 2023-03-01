# OnlyOwnerWithdrawal Smart Contract

This is a Solidity smart contract that only allows withdrawals by a specific address (`0x123`). It is designed to be used as a template for creating smart contracts that have restricted access to their functions.

## Usage

To use this smart contract, you will need to deploy it to the Ethereum network using a tool like [Remix IDE](https://remix.ethereum.org/). You can then interact with the contract by calling its functions using a compatible Ethereum wallet, such as [MetaMask](https://metamask.io/).

### Constructor

The `OnlyOwnerWithdrawal` constructor sets the `owner` address to the address that deploys the contract. This is done by setting the `owner` variable to `msg.sender`.

### Withdraw function

The `withdraw` function is used to transfer all the funds in the contract to the owner's address. It includes a `require` statement that checks whether the caller of the function is `0x123`, and reverts the transaction if the condition is not met.

### Receive function

The `receive` function is included to enable the contract to receive funds. When someone sends ether to the contract's address, the `receive` function is called automatically.

## Deployment

To deploy this smart contract, follow these steps:

1. Open Remix IDE and create a new Solidity file.
2. Copy and paste the code from this repository into the file.
3. Compile the code by clicking the `Compile` button in the Remix IDE.
4. Click the `Deploy & Run Transactions` tab in the Remix IDE.
5. Select the Ethereum network you want to deploy the contract to from the dropdown menu.
6. Make sure the `OnlyOwnerWithdrawal` contract is selected in the Contract dropdown.
7. Click the `Deploy` button.
8. Confirm the transaction in your Ethereum wallet.

## Testing

To test this smart contract, follow these steps:

1. Deploy the contract to a test network, such as Rinkeby or Kovan.
2. Send ether to the contract's address.
3. Call the `withdraw` function using an Ethereum wallet that is not associated with the `0x123` address.
4. Confirm that the transaction reverts.
5. Call the `withdraw` function using an Ethereum wallet that is associated with the `0x123` address.
6. Confirm that the funds are transferred to the owner's address.

## License

This smart contract is licensed under the MIT License. See [LICENSE](LICENSE) for more information.
