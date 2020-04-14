# swagger.api.GovernanceApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://stargate.cosmos.network*

Method | HTTP request | Description
------------- | ------------- | -------------
[**govParametersDepositGet**](GovernanceApi.md#govParametersDepositGet) | **GET** /gov/parameters/deposit | Query governance deposit parameters
[**govParametersTallyingGet**](GovernanceApi.md#govParametersTallyingGet) | **GET** /gov/parameters/tallying | Query governance tally parameters
[**govParametersVotingGet**](GovernanceApi.md#govParametersVotingGet) | **GET** /gov/parameters/voting | Query governance voting parameters
[**govProposalsGet**](GovernanceApi.md#govProposalsGet) | **GET** /gov/proposals | Query proposals
[**govProposalsParamChangePost**](GovernanceApi.md#govProposalsParamChangePost) | **POST** /gov/proposals/param_change | Generate a parameter change proposal transaction
[**govProposalsPost**](GovernanceApi.md#govProposalsPost) | **POST** /gov/proposals | Submit a proposal
[**govProposalsProposalIdDepositsDepositorGet**](GovernanceApi.md#govProposalsProposalIdDepositsDepositorGet) | **GET** /gov/proposals/{proposalId}/deposits/{depositor} | Query deposit
[**govProposalsProposalIdDepositsGet**](GovernanceApi.md#govProposalsProposalIdDepositsGet) | **GET** /gov/proposals/{proposalId}/deposits | Query deposits
[**govProposalsProposalIdDepositsPost**](GovernanceApi.md#govProposalsProposalIdDepositsPost) | **POST** /gov/proposals/{proposalId}/deposits | Deposit tokens to a proposal
[**govProposalsProposalIdGet**](GovernanceApi.md#govProposalsProposalIdGet) | **GET** /gov/proposals/{proposalId} | Query a proposal
[**govProposalsProposalIdProposerGet**](GovernanceApi.md#govProposalsProposalIdProposerGet) | **GET** /gov/proposals/{proposalId}/proposer | Query proposer
[**govProposalsProposalIdTallyGet**](GovernanceApi.md#govProposalsProposalIdTallyGet) | **GET** /gov/proposals/{proposalId}/tally | Get a proposal&#39;s tally result at the current time
[**govProposalsProposalIdVotesGet**](GovernanceApi.md#govProposalsProposalIdVotesGet) | **GET** /gov/proposals/{proposalId}/votes | Query voters
[**govProposalsProposalIdVotesPost**](GovernanceApi.md#govProposalsProposalIdVotesPost) | **POST** /gov/proposals/{proposalId}/votes | Vote a proposal
[**govProposalsProposalIdVotesVoterGet**](GovernanceApi.md#govProposalsProposalIdVotesVoterGet) | **GET** /gov/proposals/{proposalId}/votes/{voter} | Query vote


# **govParametersDepositGet**
> InlineResponse2008 govParametersDepositGet()

Query governance deposit parameters

Query governance deposit parameters. The max_deposit_period units are in nanoseconds.

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new GovernanceApi();

try { 
    var result = api_instance.govParametersDepositGet();
    print(result);
} catch (e) {
    print("Exception when calling GovernanceApi->govParametersDepositGet: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**InlineResponse2008**](InlineResponse2008.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **govParametersTallyingGet**
> Object govParametersTallyingGet()

Query governance tally parameters

Query governance tally parameters

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new GovernanceApi();

try { 
    var result = api_instance.govParametersTallyingGet();
    print(result);
} catch (e) {
    print("Exception when calling GovernanceApi->govParametersTallyingGet: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **govParametersVotingGet**
> Object govParametersVotingGet()

Query governance voting parameters

Query governance voting parameters. The voting_period units are in nanoseconds.

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new GovernanceApi();

try { 
    var result = api_instance.govParametersVotingGet();
    print(result);
} catch (e) {
    print("Exception when calling GovernanceApi->govParametersVotingGet: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **govProposalsGet**
> List<TextProposal> govProposalsGet(voter, depositor, status)

Query proposals

Query proposals information with parameters

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new GovernanceApi();
var voter = voter_example; // String | voter address
var depositor = depositor_example; // String | depositor address
var status = status_example; // String | proposal status, valid values can be `\"deposit_period\"`, `\"voting_period\"`, `\"passed\"`, `\"rejected\"`

try { 
    var result = api_instance.govProposalsGet(voter, depositor, status);
    print(result);
} catch (e) {
    print("Exception when calling GovernanceApi->govProposalsGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **voter** | **String**| voter address | [optional] 
 **depositor** | **String**| depositor address | [optional] 
 **status** | **String**| proposal status, valid values can be &#x60;\&quot;deposit_period\&quot;&#x60;, &#x60;\&quot;voting_period\&quot;&#x60;, &#x60;\&quot;passed\&quot;&#x60;, &#x60;\&quot;rejected\&quot;&#x60; | [optional] 

### Return type

[**List<TextProposal>**](TextProposal.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **govProposalsParamChangePost**
> StdTx govProposalsParamChangePost(postProposalBody)

Generate a parameter change proposal transaction

Generate a parameter change proposal transaction

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new GovernanceApi();
var postProposalBody = new PostProposalBody1(); // PostProposalBody1 | The parameter change proposal body that contains all parameter changes

try { 
    var result = api_instance.govProposalsParamChangePost(postProposalBody);
    print(result);
} catch (e) {
    print("Exception when calling GovernanceApi->govProposalsParamChangePost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **postProposalBody** | [**PostProposalBody1**](PostProposalBody1.md)| The parameter change proposal body that contains all parameter changes | 

### Return type

[**StdTx**](StdTx.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **govProposalsPost**
> StdTx govProposalsPost(postProposalBody)

Submit a proposal

Send transaction to submit a proposal

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new GovernanceApi();
var postProposalBody = new PostProposalBody(); // PostProposalBody | valid value of `\"proposal_type\"` can be `\"text\"`, `\"parameter_change\"`, `\"software_upgrade\"`

try { 
    var result = api_instance.govProposalsPost(postProposalBody);
    print(result);
} catch (e) {
    print("Exception when calling GovernanceApi->govProposalsPost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **postProposalBody** | [**PostProposalBody**](PostProposalBody.md)| valid value of &#x60;\&quot;proposal_type\&quot;&#x60; can be &#x60;\&quot;text\&quot;&#x60;, &#x60;\&quot;parameter_change\&quot;&#x60;, &#x60;\&quot;software_upgrade\&quot;&#x60; | 

### Return type

[**StdTx**](StdTx.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **govProposalsProposalIdDepositsDepositorGet**
> Deposit govProposalsProposalIdDepositsDepositorGet(proposalId, depositor)

Query deposit

Query deposit by proposalId and depositor address

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new GovernanceApi();
var proposalId = proposalId_example; // String | proposal id
var depositor = depositor_example; // String | Bech32 depositor address

try { 
    var result = api_instance.govProposalsProposalIdDepositsDepositorGet(proposalId, depositor);
    print(result);
} catch (e) {
    print("Exception when calling GovernanceApi->govProposalsProposalIdDepositsDepositorGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **proposalId** | **String**| proposal id | 
 **depositor** | **String**| Bech32 depositor address | 

### Return type

[**Deposit**](Deposit.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **govProposalsProposalIdDepositsGet**
> List<Deposit> govProposalsProposalIdDepositsGet(proposalId)

Query deposits

Query deposits by proposalId

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new GovernanceApi();
var proposalId = proposalId_example; // String | 

try { 
    var result = api_instance.govProposalsProposalIdDepositsGet(proposalId);
    print(result);
} catch (e) {
    print("Exception when calling GovernanceApi->govProposalsProposalIdDepositsGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **proposalId** | **String**|  | 

### Return type

[**List<Deposit>**](Deposit.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **govProposalsProposalIdDepositsPost**
> BroadcastTxCommitResult govProposalsProposalIdDepositsPost(proposalId, postDepositBody)

Deposit tokens to a proposal

Send transaction to deposit tokens to a proposal

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new GovernanceApi();
var proposalId = proposalId_example; // String | proposal id
var postDepositBody = new PostDepositBody(); // PostDepositBody | 

try { 
    var result = api_instance.govProposalsProposalIdDepositsPost(proposalId, postDepositBody);
    print(result);
} catch (e) {
    print("Exception when calling GovernanceApi->govProposalsProposalIdDepositsPost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **proposalId** | **String**| proposal id | 
 **postDepositBody** | [**PostDepositBody**](PostDepositBody.md)|  | 

### Return type

[**BroadcastTxCommitResult**](BroadcastTxCommitResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **govProposalsProposalIdGet**
> TextProposal govProposalsProposalIdGet(proposalId)

Query a proposal

Query a proposal by id

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new GovernanceApi();
var proposalId = proposalId_example; // String | 

try { 
    var result = api_instance.govProposalsProposalIdGet(proposalId);
    print(result);
} catch (e) {
    print("Exception when calling GovernanceApi->govProposalsProposalIdGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **proposalId** | **String**|  | 

### Return type

[**TextProposal**](TextProposal.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **govProposalsProposalIdProposerGet**
> Proposer govProposalsProposalIdProposerGet(proposalId)

Query proposer

Query for the proposer for a proposal

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new GovernanceApi();
var proposalId = proposalId_example; // String | 

try { 
    var result = api_instance.govProposalsProposalIdProposerGet(proposalId);
    print(result);
} catch (e) {
    print("Exception when calling GovernanceApi->govProposalsProposalIdProposerGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **proposalId** | **String**|  | 

### Return type

[**Proposer**](Proposer.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **govProposalsProposalIdTallyGet**
> TallyResult govProposalsProposalIdTallyGet(proposalId)

Get a proposal's tally result at the current time

Gets a proposal's tally result at the current time. If the proposal is pending deposits (i.e status 'DepositPeriod') it returns an empty tally result.

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new GovernanceApi();
var proposalId = proposalId_example; // String | proposal id

try { 
    var result = api_instance.govProposalsProposalIdTallyGet(proposalId);
    print(result);
} catch (e) {
    print("Exception when calling GovernanceApi->govProposalsProposalIdTallyGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **proposalId** | **String**| proposal id | 

### Return type

[**TallyResult**](TallyResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **govProposalsProposalIdVotesGet**
> List<Vote> govProposalsProposalIdVotesGet(proposalId)

Query voters

Query voters information by proposalId

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new GovernanceApi();
var proposalId = proposalId_example; // String | proposal id

try { 
    var result = api_instance.govProposalsProposalIdVotesGet(proposalId);
    print(result);
} catch (e) {
    print("Exception when calling GovernanceApi->govProposalsProposalIdVotesGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **proposalId** | **String**| proposal id | 

### Return type

[**List<Vote>**](Vote.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **govProposalsProposalIdVotesPost**
> BroadcastTxCommitResult govProposalsProposalIdVotesPost(proposalId, postVoteBody)

Vote a proposal

Send transaction to vote a proposal

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new GovernanceApi();
var proposalId = proposalId_example; // String | proposal id
var postVoteBody = new PostVoteBody(); // PostVoteBody | valid value of `\"option\"` field can be `\"yes\"`, `\"no\"`, `\"no_with_veto\"` and `\"abstain\"`

try { 
    var result = api_instance.govProposalsProposalIdVotesPost(proposalId, postVoteBody);
    print(result);
} catch (e) {
    print("Exception when calling GovernanceApi->govProposalsProposalIdVotesPost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **proposalId** | **String**| proposal id | 
 **postVoteBody** | [**PostVoteBody**](PostVoteBody.md)| valid value of &#x60;\&quot;option\&quot;&#x60; field can be &#x60;\&quot;yes\&quot;&#x60;, &#x60;\&quot;no\&quot;&#x60;, &#x60;\&quot;no_with_veto\&quot;&#x60; and &#x60;\&quot;abstain\&quot;&#x60; | 

### Return type

[**BroadcastTxCommitResult**](BroadcastTxCommitResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **govProposalsProposalIdVotesVoterGet**
> Vote govProposalsProposalIdVotesVoterGet(proposalId, voter)

Query vote

Query vote information by proposal Id and voter address

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new GovernanceApi();
var proposalId = proposalId_example; // String | proposal id
var voter = voter_example; // String | Bech32 voter address

try { 
    var result = api_instance.govProposalsProposalIdVotesVoterGet(proposalId, voter);
    print(result);
} catch (e) {
    print("Exception when calling GovernanceApi->govProposalsProposalIdVotesVoterGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **proposalId** | **String**| proposal id | 
 **voter** | **String**| Bech32 voter address | 

### Return type

[**Vote**](Vote.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

