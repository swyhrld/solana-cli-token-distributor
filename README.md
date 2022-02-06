# solana-cli-token-distributor
A simple SPL bulk token distributor


input is csv file as input in the following format: recipient name,solana address, amount of token to send
token address is hardcoded

output is a csv file with the following format: recipient name,transaction id
if transaction id is empty, the transfer was not successful (usually because transferrer does not have enough SOL to pay for transaction costs, or the transaction was dropped due to solana network congestion
