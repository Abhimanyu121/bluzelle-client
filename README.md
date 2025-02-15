# swagger
A REST interface for state queries, transaction generation and broadcasting.

This Dart package is automatically generated by the [Swagger Codegen](https://github.com/swagger-api/swagger-codegen) project:

- API version: 3.0
- Build package: io.swagger.codegen.languages.DartClientCodegen

## Requirements

Dart 1.20.0 or later OR Flutter 0.0.20 or later

## Installation & Usage

### Github
If this Dart package is published to Github, please include the following in pubspec.yaml
```
name: swagger
version: 1.0.0
description: Swagger API client
dependencies:
  swagger:
    git: https://github.com//.git
      version: 'any'
```

### Local
To use the package in your local drive, please include the following in pubspec.yaml
```
dependencies:
  swagger:
    path: /path/to/swagger
```

## Tests

TODO

## Getting Started

Please follow the [installation procedure](#installation--usage) and then run the following:

```dart
import 'package:swagger/api.dart';


var api_instance = new AuthApi();
var address = address_example; // String | Account address

try {
    var result = api_instance.authAccountsAddressGet(address);
    print(result);
} catch (e) {
    print("Exception when calling AuthApi->authAccountsAddressGet: $e\n");
}

```

## Documentation for API Endpoints

All URIs are relative to *https://stargate.cosmos.network*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*AuthApi* | [**authAccountsAddressGet**](docs//AuthApi.md#authaccountsaddressget) | **GET** /auth/accounts/{address} | Get the account information on blockchain
*BankApi* | [**bankAccountsAddressTransfersPost**](docs//BankApi.md#bankaccountsaddresstransferspost) | **POST** /bank/accounts/{address}/transfers | Send coins from one account to another
*BankApi* | [**bankBalancesAddressGet**](docs//BankApi.md#bankbalancesaddressget) | **GET** /bank/balances/{address} | Get the account balances
*DistributionApi* | [**distributionCommunityPoolGet**](docs//DistributionApi.md#distributioncommunitypoolget) | **GET** /distribution/community_pool | Community pool parameters
*DistributionApi* | [**distributionDelegatorsDelegatorAddrRewardsGet**](docs//DistributionApi.md#distributiondelegatorsdelegatoraddrrewardsget) | **GET** /distribution/delegators/{delegatorAddr}/rewards | Get the total rewards balance from all delegations
*DistributionApi* | [**distributionDelegatorsDelegatorAddrRewardsPost**](docs//DistributionApi.md#distributiondelegatorsdelegatoraddrrewardspost) | **POST** /distribution/delegators/{delegatorAddr}/rewards | Withdraw all the delegator&#39;s delegation rewards
*DistributionApi* | [**distributionDelegatorsDelegatorAddrRewardsValidatorAddrGet**](docs//DistributionApi.md#distributiondelegatorsdelegatoraddrrewardsvalidatoraddrget) | **GET** /distribution/delegators/{delegatorAddr}/rewards/{validatorAddr} | Query a delegation reward
*DistributionApi* | [**distributionDelegatorsDelegatorAddrRewardsValidatorAddrPost**](docs//DistributionApi.md#distributiondelegatorsdelegatoraddrrewardsvalidatoraddrpost) | **POST** /distribution/delegators/{delegatorAddr}/rewards/{validatorAddr} | Withdraw a delegation reward
*DistributionApi* | [**distributionDelegatorsDelegatorAddrWithdrawAddressGet**](docs//DistributionApi.md#distributiondelegatorsdelegatoraddrwithdrawaddressget) | **GET** /distribution/delegators/{delegatorAddr}/withdraw_address | Get the rewards withdrawal address
*DistributionApi* | [**distributionDelegatorsDelegatorAddrWithdrawAddressPost**](docs//DistributionApi.md#distributiondelegatorsdelegatoraddrwithdrawaddresspost) | **POST** /distribution/delegators/{delegatorAddr}/withdraw_address | Replace the rewards withdrawal address
*DistributionApi* | [**distributionParametersGet**](docs//DistributionApi.md#distributionparametersget) | **GET** /distribution/parameters | Fee distribution parameters
*DistributionApi* | [**distributionValidatorsValidatorAddrGet**](docs//DistributionApi.md#distributionvalidatorsvalidatoraddrget) | **GET** /distribution/validators/{validatorAddr} | Validator distribution information
*DistributionApi* | [**distributionValidatorsValidatorAddrOutstandingRewardsGet**](docs//DistributionApi.md#distributionvalidatorsvalidatoraddroutstandingrewardsget) | **GET** /distribution/validators/{validatorAddr}/outstanding_rewards | Fee distribution outstanding rewards of a single validator
*DistributionApi* | [**distributionValidatorsValidatorAddrRewardsGet**](docs//DistributionApi.md#distributionvalidatorsvalidatoraddrrewardsget) | **GET** /distribution/validators/{validatorAddr}/rewards | Commission and self-delegation rewards of a single validator
*DistributionApi* | [**distributionValidatorsValidatorAddrRewardsPost**](docs//DistributionApi.md#distributionvalidatorsvalidatoraddrrewardspost) | **POST** /distribution/validators/{validatorAddr}/rewards | Withdraw the validator&#39;s rewards
*GovernanceApi* | [**govParametersDepositGet**](docs//GovernanceApi.md#govparametersdepositget) | **GET** /gov/parameters/deposit | Query governance deposit parameters
*GovernanceApi* | [**govParametersTallyingGet**](docs//GovernanceApi.md#govparameterstallyingget) | **GET** /gov/parameters/tallying | Query governance tally parameters
*GovernanceApi* | [**govParametersVotingGet**](docs//GovernanceApi.md#govparametersvotingget) | **GET** /gov/parameters/voting | Query governance voting parameters
*GovernanceApi* | [**govProposalsGet**](docs//GovernanceApi.md#govproposalsget) | **GET** /gov/proposals | Query proposals
*GovernanceApi* | [**govProposalsParamChangePost**](docs//GovernanceApi.md#govproposalsparamchangepost) | **POST** /gov/proposals/param_change | Generate a parameter change proposal transaction
*GovernanceApi* | [**govProposalsPost**](docs//GovernanceApi.md#govproposalspost) | **POST** /gov/proposals | Submit a proposal
*GovernanceApi* | [**govProposalsProposalIdDepositsDepositorGet**](docs//GovernanceApi.md#govproposalsproposaliddepositsdepositorget) | **GET** /gov/proposals/{proposalId}/deposits/{depositor} | Query deposit
*GovernanceApi* | [**govProposalsProposalIdDepositsGet**](docs//GovernanceApi.md#govproposalsproposaliddepositsget) | **GET** /gov/proposals/{proposalId}/deposits | Query deposits
*GovernanceApi* | [**govProposalsProposalIdDepositsPost**](docs//GovernanceApi.md#govproposalsproposaliddepositspost) | **POST** /gov/proposals/{proposalId}/deposits | Deposit tokens to a proposal
*GovernanceApi* | [**govProposalsProposalIdGet**](docs//GovernanceApi.md#govproposalsproposalidget) | **GET** /gov/proposals/{proposalId} | Query a proposal
*GovernanceApi* | [**govProposalsProposalIdProposerGet**](docs//GovernanceApi.md#govproposalsproposalidproposerget) | **GET** /gov/proposals/{proposalId}/proposer | Query proposer
*GovernanceApi* | [**govProposalsProposalIdTallyGet**](docs//GovernanceApi.md#govproposalsproposalidtallyget) | **GET** /gov/proposals/{proposalId}/tally | Get a proposal&#39;s tally result at the current time
*GovernanceApi* | [**govProposalsProposalIdVotesGet**](docs//GovernanceApi.md#govproposalsproposalidvotesget) | **GET** /gov/proposals/{proposalId}/votes | Query voters
*GovernanceApi* | [**govProposalsProposalIdVotesPost**](docs//GovernanceApi.md#govproposalsproposalidvotespost) | **POST** /gov/proposals/{proposalId}/votes | Vote a proposal
*GovernanceApi* | [**govProposalsProposalIdVotesVoterGet**](docs//GovernanceApi.md#govproposalsproposalidvotesvoterget) | **GET** /gov/proposals/{proposalId}/votes/{voter} | Query vote
*MintApi* | [**mintingAnnualProvisionsGet**](docs//MintApi.md#mintingannualprovisionsget) | **GET** /minting/annual-provisions | Current minting annual provisions value
*MintApi* | [**mintingInflationGet**](docs//MintApi.md#mintinginflationget) | **GET** /minting/inflation | Current minting inflation value
*MintApi* | [**mintingParametersGet**](docs//MintApi.md#mintingparametersget) | **GET** /minting/parameters | Minting module parameters
*SlashingApi* | [**slashingParametersGet**](docs//SlashingApi.md#slashingparametersget) | **GET** /slashing/parameters | Get the current slashing parameters
*SlashingApi* | [**slashingSigningInfosGet**](docs//SlashingApi.md#slashingsigninginfosget) | **GET** /slashing/signing_infos | Get sign info of given all validators
*SlashingApi* | [**slashingValidatorsValidatorAddrUnjailPost**](docs//SlashingApi.md#slashingvalidatorsvalidatoraddrunjailpost) | **POST** /slashing/validators/{validatorAddr}/unjail | Unjail a jailed validator
*StakingApi* | [**stakingDelegatorsDelegatorAddrDelegationsGet**](docs//StakingApi.md#stakingdelegatorsdelegatoraddrdelegationsget) | **GET** /staking/delegators/{delegatorAddr}/delegations | Get all delegations from a delegator
*StakingApi* | [**stakingDelegatorsDelegatorAddrDelegationsPost**](docs//StakingApi.md#stakingdelegatorsdelegatoraddrdelegationspost) | **POST** /staking/delegators/{delegatorAddr}/delegations | Submit delegation
*StakingApi* | [**stakingDelegatorsDelegatorAddrDelegationsValidatorAddrGet**](docs//StakingApi.md#stakingdelegatorsdelegatoraddrdelegationsvalidatoraddrget) | **GET** /staking/delegators/{delegatorAddr}/delegations/{validatorAddr} | Query the current delegation between a delegator and a validator
*StakingApi* | [**stakingDelegatorsDelegatorAddrRedelegationsPost**](docs//StakingApi.md#stakingdelegatorsdelegatoraddrredelegationspost) | **POST** /staking/delegators/{delegatorAddr}/redelegations | Submit a redelegation
*StakingApi* | [**stakingDelegatorsDelegatorAddrUnbondingDelegationsGet**](docs//StakingApi.md#stakingdelegatorsdelegatoraddrunbondingdelegationsget) | **GET** /staking/delegators/{delegatorAddr}/unbonding_delegations | Get all unbonding delegations from a delegator
*StakingApi* | [**stakingDelegatorsDelegatorAddrUnbondingDelegationsPost**](docs//StakingApi.md#stakingdelegatorsdelegatoraddrunbondingdelegationspost) | **POST** /staking/delegators/{delegatorAddr}/unbonding_delegations | Submit an unbonding delegation
*StakingApi* | [**stakingDelegatorsDelegatorAddrUnbondingDelegationsValidatorAddrGet**](docs//StakingApi.md#stakingdelegatorsdelegatoraddrunbondingdelegationsvalidatoraddrget) | **GET** /staking/delegators/{delegatorAddr}/unbonding_delegations/{validatorAddr} | Query all unbonding delegations between a delegator and a validator
*StakingApi* | [**stakingDelegatorsDelegatorAddrValidatorsGet**](docs//StakingApi.md#stakingdelegatorsdelegatoraddrvalidatorsget) | **GET** /staking/delegators/{delegatorAddr}/validators | Query all validators that a delegator is bonded to
*StakingApi* | [**stakingDelegatorsDelegatorAddrValidatorsValidatorAddrGet**](docs//StakingApi.md#stakingdelegatorsdelegatoraddrvalidatorsvalidatoraddrget) | **GET** /staking/delegators/{delegatorAddr}/validators/{validatorAddr} | Query a validator that a delegator is bonded to
*StakingApi* | [**stakingParametersGet**](docs//StakingApi.md#stakingparametersget) | **GET** /staking/parameters | Get the current staking parameter values
*StakingApi* | [**stakingPoolGet**](docs//StakingApi.md#stakingpoolget) | **GET** /staking/pool | Get the current state of the staking pool
*StakingApi* | [**stakingRedelegationsGet**](docs//StakingApi.md#stakingredelegationsget) | **GET** /staking/redelegations | Get all redelegations (filter by query params)
*StakingApi* | [**stakingValidatorsGet**](docs//StakingApi.md#stakingvalidatorsget) | **GET** /staking/validators | Get all validator candidates. By default it returns only the bonded validators.
*StakingApi* | [**stakingValidatorsValidatorAddrDelegationsGet**](docs//StakingApi.md#stakingvalidatorsvalidatoraddrdelegationsget) | **GET** /staking/validators/{validatorAddr}/delegations | Get all delegations from a validator
*StakingApi* | [**stakingValidatorsValidatorAddrGet**](docs//StakingApi.md#stakingvalidatorsvalidatoraddrget) | **GET** /staking/validators/{validatorAddr} | Query the information from a single validator
*StakingApi* | [**stakingValidatorsValidatorAddrUnbondingDelegationsGet**](docs//StakingApi.md#stakingvalidatorsvalidatoraddrunbondingdelegationsget) | **GET** /staking/validators/{validatorAddr}/unbonding_delegations | Get all unbonding delegations from a validator
*SupplyApi* | [**supplyTotalDenominationGet**](docs//SupplyApi.md#supplytotaldenominationget) | **GET** /supply/total/{denomination} | Total supply of a single coin denomination
*SupplyApi* | [**supplyTotalGet**](docs//SupplyApi.md#supplytotalget) | **GET** /supply/total | Total supply of coins in the chain
*TendermintRPCApi* | [**blocksHeightGet**](docs//TendermintRPCApi.md#blocksheightget) | **GET** /blocks/{height} | Get a block at a certain height
*TendermintRPCApi* | [**blocksLatestGet**](docs//TendermintRPCApi.md#blockslatestget) | **GET** /blocks/latest | Get the latest block
*TendermintRPCApi* | [**nodeInfoGet**](docs//TendermintRPCApi.md#nodeinfoget) | **GET** /node_info | The properties of the connected node
*TendermintRPCApi* | [**syncingGet**](docs//TendermintRPCApi.md#syncingget) | **GET** /syncing | Syncing state of node
*TendermintRPCApi* | [**validatorsetsHeightGet**](docs//TendermintRPCApi.md#validatorsetsheightget) | **GET** /validatorsets/{height} | Get a validator set a certain height
*TendermintRPCApi* | [**validatorsetsLatestGet**](docs//TendermintRPCApi.md#validatorsetslatestget) | **GET** /validatorsets/latest | Get the latest validator set
*TransactionsApi* | [**txsDecodePost**](docs//TransactionsApi.md#txsdecodepost) | **POST** /txs/decode | Decode a transaction from the Amino wire format
*TransactionsApi* | [**txsEncodePost**](docs//TransactionsApi.md#txsencodepost) | **POST** /txs/encode | Encode a transaction to the Amino wire format
*TransactionsApi* | [**txsGet**](docs//TransactionsApi.md#txsget) | **GET** /txs | Search transactions
*TransactionsApi* | [**txsHashGet**](docs//TransactionsApi.md#txshashget) | **GET** /txs/{hash} | Get a Tx by hash
*TransactionsApi* | [**txsPost**](docs//TransactionsApi.md#txspost) | **POST** /txs | Broadcast a signed tx


## Documentation For Models

 - [Account](docs//Account.md)
 - [Address](docs//Address.md)
 - [BaseReq](docs//BaseReq.md)
 - [Block](docs//Block.md)
 - [BlockHeader](docs//BlockHeader.md)
 - [BlockHeaderVersion](docs//BlockHeaderVersion.md)
 - [BlockID](docs//BlockID.md)
 - [BlockIDParts](docs//BlockIDParts.md)
 - [BlockLastCommit](docs//BlockLastCommit.md)
 - [BlockLastCommitPrecommits](docs//BlockLastCommitPrecommits.md)
 - [BlockQuery](docs//BlockQuery.md)
 - [BlockQueryBlockMeta](docs//BlockQueryBlockMeta.md)
 - [BroadcastTxCommitResult](docs//BroadcastTxCommitResult.md)
 - [CheckTxResult](docs//CheckTxResult.md)
 - [Coin](docs//Coin.md)
 - [Delegation](docs//Delegation.md)
 - [Delegation1](docs//Delegation1.md)
 - [Delegation2](docs//Delegation2.md)
 - [DelegationDelegatorReward](docs//DelegationDelegatorReward.md)
 - [DelegatorTotalRewards](docs//DelegatorTotalRewards.md)
 - [DeliverTxResult](docs//DeliverTxResult.md)
 - [Deposit](docs//Deposit.md)
 - [Hash](docs//Hash.md)
 - [InlineResponse200](docs//InlineResponse200.md)
 - [InlineResponse2001](docs//InlineResponse2001.md)
 - [InlineResponse2002](docs//InlineResponse2002.md)
 - [InlineResponse2003](docs//InlineResponse2003.md)
 - [InlineResponse2004](docs//InlineResponse2004.md)
 - [InlineResponse2004Value](docs//InlineResponse2004Value.md)
 - [InlineResponse2005](docs//InlineResponse2005.md)
 - [InlineResponse2006](docs//InlineResponse2006.md)
 - [InlineResponse2007](docs//InlineResponse2007.md)
 - [InlineResponse2008](docs//InlineResponse2008.md)
 - [InlineResponse200ApplicationVersion](docs//InlineResponse200ApplicationVersion.md)
 - [InlineResponse200NodeInfo](docs//InlineResponse200NodeInfo.md)
 - [InlineResponse200NodeInfoOther](docs//InlineResponse200NodeInfoOther.md)
 - [InlineResponse200NodeInfoProtocolVersion](docs//InlineResponse200NodeInfoProtocolVersion.md)
 - [KVPair](docs//KVPair.md)
 - [Msg](docs//Msg.md)
 - [PaginatedQueryTxs](docs//PaginatedQueryTxs.md)
 - [ParamChange](docs//ParamChange.md)
 - [PostDepositBody](docs//PostDepositBody.md)
 - [PostProposalBody](docs//PostProposalBody.md)
 - [PostProposalBody1](docs//PostProposalBody1.md)
 - [PostVoteBody](docs//PostVoteBody.md)
 - [Proposer](docs//Proposer.md)
 - [PublicKey](docs//PublicKey.md)
 - [Redelegation](docs//Redelegation.md)
 - [RedelegationEntry](docs//RedelegationEntry.md)
 - [SigningInfo](docs//SigningInfo.md)
 - [StdTx](docs//StdTx.md)
 - [StdTxFee](docs//StdTxFee.md)
 - [StdTxSignature](docs//StdTxSignature.md)
 - [StdTxSignaturePubKey](docs//StdTxSignaturePubKey.md)
 - [Supply](docs//Supply.md)
 - [TallyResult](docs//TallyResult.md)
 - [TendermintValidator](docs//TendermintValidator.md)
 - [TextProposal](docs//TextProposal.md)
 - [Tx](docs//Tx.md)
 - [Tx1](docs//Tx1.md)
 - [TxBroadcast](docs//TxBroadcast.md)
 - [TxQuery](docs//TxQuery.md)
 - [TxQueryResult](docs//TxQueryResult.md)
 - [UnbondingDelegation](docs//UnbondingDelegation.md)
 - [UnbondingDelegationPair](docs//UnbondingDelegationPair.md)
 - [UnbondingEntries](docs//UnbondingEntries.md)
 - [UnjailBody](docs//UnjailBody.md)
 - [Validator](docs//Validator.md)
 - [ValidatorAddress](docs//ValidatorAddress.md)
 - [ValidatorCommission](docs//ValidatorCommission.md)
 - [ValidatorDescription](docs//ValidatorDescription.md)
 - [ValidatorDistInfo](docs//ValidatorDistInfo.md)
 - [Vote](docs//Vote.md)
 - [Withdraw request body](docs//Withdraw request body.md)
 - [Withdraw request body1](docs//Withdraw request body1.md)
 - [Withdraw request body2](docs//Withdraw request body2.md)
 - [Withdraw request body3](docs//Withdraw request body3.md)


## Documentation For Authorization


## kms

- **Type**: HTTP basic authentication


## Author




