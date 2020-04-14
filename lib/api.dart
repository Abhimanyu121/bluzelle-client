library swagger.api;

import 'dart:async';
import 'dart:convert';
import 'package:http/browser_client.dart';
import 'package:http/http.dart';

part 'api_client.dart';
part 'api_helper.dart';
part 'api_exception.dart';
part 'auth/authentication.dart';
part 'auth/api_key_auth.dart';
part 'auth/oauth.dart';
part 'auth/http_basic_auth.dart';

part 'api/auth_api.dart';
part 'api/bank_api.dart';
part 'api/distribution_api.dart';
part 'api/governance_api.dart';
part 'api/mint_api.dart';
part 'api/slashing_api.dart';
part 'api/staking_api.dart';
part 'api/supply_api.dart';
part 'api/tendermint_rpc_api.dart';
part 'api/transactions_api.dart';

part 'model/account.dart';
part 'model/address.dart';
part 'model/base_req.dart';
part 'model/block.dart';
part 'model/block_header.dart';
part 'model/block_header_version.dart';
part 'model/block_id.dart';
part 'model/block_id_parts.dart';
part 'model/block_last_commit.dart';
part 'model/block_last_commit_precommits.dart';
part 'model/block_query.dart';
part 'model/block_query_block_meta.dart';
part 'model/broadcast_tx_commit_result.dart';
part 'model/check_tx_result.dart';
part 'model/coin.dart';
part 'model/delegation.dart';
part 'model/delegation1.dart';
part 'model/delegation2.dart';
part 'model/delegation_delegator_reward.dart';
part 'model/delegator_total_rewards.dart';
part 'model/deliver_tx_result.dart';
part 'model/deposit.dart';
part 'model/hash.dart';
part 'model/inline_response200.dart';
part 'model/inline_response2001.dart';
part 'model/inline_response2002.dart';
part 'model/inline_response2003.dart';
part 'model/inline_response2004.dart';
part 'model/inline_response2004_value.dart';
part 'model/inline_response2005.dart';
part 'model/inline_response2006.dart';
part 'model/inline_response2007.dart';
part 'model/inline_response2008.dart';
part 'model/inline_response200_application_version.dart';
part 'model/inline_response200_node_info.dart';
part 'model/inline_response200_node_info_other.dart';
part 'model/inline_response200_node_info_protocol_version.dart';
part 'model/kv_pair.dart';
part 'model/msg.dart';
part 'model/paginated_query_txs.dart';
part 'model/param_change.dart';
part 'model/post_deposit_body.dart';
part 'model/post_proposal_body.dart';
part 'model/post_proposal_body1.dart';
part 'model/post_vote_body.dart';
part 'model/proposer.dart';
part 'model/public_key.dart';
part 'model/redelegation.dart';
part 'model/redelegation_entry.dart';
part 'model/signing_info.dart';
part 'model/std_tx.dart';
part 'model/std_tx_fee.dart';
part 'model/std_tx_signature.dart';
part 'model/std_tx_signature_pub_key.dart';
part 'model/supply.dart';
part 'model/tally_result.dart';
part 'model/tendermint_validator.dart';
part 'model/text_proposal.dart';
part 'model/tx.dart';
part 'model/tx1.dart';
part 'model/tx_broadcast.dart';
part 'model/tx_query.dart';
part 'model/tx_query_result.dart';
part 'model/unbonding_delegation.dart';
part 'model/unbonding_delegation_pair.dart';
part 'model/unbonding_entries.dart';
part 'model/unjail_body.dart';
part 'model/validator.dart';
part 'model/validator_address.dart';
part 'model/validator_commission.dart';
part 'model/validator_description.dart';
part 'model/validator_dist_info.dart';
part 'model/vote.dart';
part 'model/withdraw_request_body.dart';
part 'model/withdraw_request_body1.dart';
part 'model/withdraw_request_body2.dart';
part 'model/withdraw_request_body3.dart';


ApiClient defaultApiClient = new ApiClient();
