# swagger.api.StakingApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://stargate.cosmos.network*

Method | HTTP request | Description
------------- | ------------- | -------------
[**stakingDelegatorsDelegatorAddrDelegationsGet**](StakingApi.md#stakingDelegatorsDelegatorAddrDelegationsGet) | **GET** /staking/delegators/{delegatorAddr}/delegations | Get all delegations from a delegator
[**stakingDelegatorsDelegatorAddrDelegationsPost**](StakingApi.md#stakingDelegatorsDelegatorAddrDelegationsPost) | **POST** /staking/delegators/{delegatorAddr}/delegations | Submit delegation
[**stakingDelegatorsDelegatorAddrDelegationsValidatorAddrGet**](StakingApi.md#stakingDelegatorsDelegatorAddrDelegationsValidatorAddrGet) | **GET** /staking/delegators/{delegatorAddr}/delegations/{validatorAddr} | Query the current delegation between a delegator and a validator
[**stakingDelegatorsDelegatorAddrRedelegationsPost**](StakingApi.md#stakingDelegatorsDelegatorAddrRedelegationsPost) | **POST** /staking/delegators/{delegatorAddr}/redelegations | Submit a redelegation
[**stakingDelegatorsDelegatorAddrUnbondingDelegationsGet**](StakingApi.md#stakingDelegatorsDelegatorAddrUnbondingDelegationsGet) | **GET** /staking/delegators/{delegatorAddr}/unbonding_delegations | Get all unbonding delegations from a delegator
[**stakingDelegatorsDelegatorAddrUnbondingDelegationsPost**](StakingApi.md#stakingDelegatorsDelegatorAddrUnbondingDelegationsPost) | **POST** /staking/delegators/{delegatorAddr}/unbonding_delegations | Submit an unbonding delegation
[**stakingDelegatorsDelegatorAddrUnbondingDelegationsValidatorAddrGet**](StakingApi.md#stakingDelegatorsDelegatorAddrUnbondingDelegationsValidatorAddrGet) | **GET** /staking/delegators/{delegatorAddr}/unbonding_delegations/{validatorAddr} | Query all unbonding delegations between a delegator and a validator
[**stakingDelegatorsDelegatorAddrValidatorsGet**](StakingApi.md#stakingDelegatorsDelegatorAddrValidatorsGet) | **GET** /staking/delegators/{delegatorAddr}/validators | Query all validators that a delegator is bonded to
[**stakingDelegatorsDelegatorAddrValidatorsValidatorAddrGet**](StakingApi.md#stakingDelegatorsDelegatorAddrValidatorsValidatorAddrGet) | **GET** /staking/delegators/{delegatorAddr}/validators/{validatorAddr} | Query a validator that a delegator is bonded to
[**stakingParametersGet**](StakingApi.md#stakingParametersGet) | **GET** /staking/parameters | Get the current staking parameter values
[**stakingPoolGet**](StakingApi.md#stakingPoolGet) | **GET** /staking/pool | Get the current state of the staking pool
[**stakingRedelegationsGet**](StakingApi.md#stakingRedelegationsGet) | **GET** /staking/redelegations | Get all redelegations (filter by query params)
[**stakingValidatorsGet**](StakingApi.md#stakingValidatorsGet) | **GET** /staking/validators | Get all validator candidates. By default it returns only the bonded validators.
[**stakingValidatorsValidatorAddrDelegationsGet**](StakingApi.md#stakingValidatorsValidatorAddrDelegationsGet) | **GET** /staking/validators/{validatorAddr}/delegations | Get all delegations from a validator
[**stakingValidatorsValidatorAddrGet**](StakingApi.md#stakingValidatorsValidatorAddrGet) | **GET** /staking/validators/{validatorAddr} | Query the information from a single validator
[**stakingValidatorsValidatorAddrUnbondingDelegationsGet**](StakingApi.md#stakingValidatorsValidatorAddrUnbondingDelegationsGet) | **GET** /staking/validators/{validatorAddr}/unbonding_delegations | Get all unbonding delegations from a validator


# **stakingDelegatorsDelegatorAddrDelegationsGet**
> List<Delegation> stakingDelegatorsDelegatorAddrDelegationsGet(delegatorAddr)

Get all delegations from a delegator

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new StakingApi();
var delegatorAddr = delegatorAddr_example; // String | Bech32 AccAddress of Delegator

try { 
    var result = api_instance.stakingDelegatorsDelegatorAddrDelegationsGet(delegatorAddr);
    print(result);
} catch (e) {
    print("Exception when calling StakingApi->stakingDelegatorsDelegatorAddrDelegationsGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **delegatorAddr** | **String**| Bech32 AccAddress of Delegator | 

### Return type

[**List<Delegation>**](Delegation.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **stakingDelegatorsDelegatorAddrDelegationsPost**
> BroadcastTxCommitResult stakingDelegatorsDelegatorAddrDelegationsPost(delegatorAddr, delegation)

Submit delegation

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new StakingApi();
var delegatorAddr = delegatorAddr_example; // String | Bech32 AccAddress of Delegator
var delegation = new Delegation(); // Delegation | The password of the account to remove from the KMS

try { 
    var result = api_instance.stakingDelegatorsDelegatorAddrDelegationsPost(delegatorAddr, delegation);
    print(result);
} catch (e) {
    print("Exception when calling StakingApi->stakingDelegatorsDelegatorAddrDelegationsPost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **delegatorAddr** | **String**| Bech32 AccAddress of Delegator | 
 **delegation** | [**Delegation**](Delegation.md)| The password of the account to remove from the KMS | [optional] 

### Return type

[**BroadcastTxCommitResult**](BroadcastTxCommitResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **stakingDelegatorsDelegatorAddrDelegationsValidatorAddrGet**
> Delegation stakingDelegatorsDelegatorAddrDelegationsValidatorAddrGet(delegatorAddr, validatorAddr)

Query the current delegation between a delegator and a validator

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new StakingApi();
var delegatorAddr = delegatorAddr_example; // String | Bech32 AccAddress of Delegator
var validatorAddr = validatorAddr_example; // String | Bech32 OperatorAddress of validator

try { 
    var result = api_instance.stakingDelegatorsDelegatorAddrDelegationsValidatorAddrGet(delegatorAddr, validatorAddr);
    print(result);
} catch (e) {
    print("Exception when calling StakingApi->stakingDelegatorsDelegatorAddrDelegationsValidatorAddrGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **delegatorAddr** | **String**| Bech32 AccAddress of Delegator | 
 **validatorAddr** | **String**| Bech32 OperatorAddress of validator | 

### Return type

[**Delegation**](Delegation.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **stakingDelegatorsDelegatorAddrRedelegationsPost**
> StdTx stakingDelegatorsDelegatorAddrRedelegationsPost(delegatorAddr, delegation)

Submit a redelegation

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new StakingApi();
var delegatorAddr = delegatorAddr_example; // String | Bech32 AccAddress of Delegator
var delegation = new Delegation2(); // Delegation2 | The sender and tx information

try { 
    var result = api_instance.stakingDelegatorsDelegatorAddrRedelegationsPost(delegatorAddr, delegation);
    print(result);
} catch (e) {
    print("Exception when calling StakingApi->stakingDelegatorsDelegatorAddrRedelegationsPost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **delegatorAddr** | **String**| Bech32 AccAddress of Delegator | 
 **delegation** | [**Delegation2**](Delegation2.md)| The sender and tx information | [optional] 

### Return type

[**StdTx**](StdTx.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **stakingDelegatorsDelegatorAddrUnbondingDelegationsGet**
> List<UnbondingDelegation> stakingDelegatorsDelegatorAddrUnbondingDelegationsGet(delegatorAddr)

Get all unbonding delegations from a delegator

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new StakingApi();
var delegatorAddr = delegatorAddr_example; // String | Bech32 AccAddress of Delegator

try { 
    var result = api_instance.stakingDelegatorsDelegatorAddrUnbondingDelegationsGet(delegatorAddr);
    print(result);
} catch (e) {
    print("Exception when calling StakingApi->stakingDelegatorsDelegatorAddrUnbondingDelegationsGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **delegatorAddr** | **String**| Bech32 AccAddress of Delegator | 

### Return type

[**List<UnbondingDelegation>**](UnbondingDelegation.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **stakingDelegatorsDelegatorAddrUnbondingDelegationsPost**
> BroadcastTxCommitResult stakingDelegatorsDelegatorAddrUnbondingDelegationsPost(delegatorAddr, delegation)

Submit an unbonding delegation

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new StakingApi();
var delegatorAddr = delegatorAddr_example; // String | Bech32 AccAddress of Delegator
var delegation = new Delegation1(); // Delegation1 | The password of the account to remove from the KMS

try { 
    var result = api_instance.stakingDelegatorsDelegatorAddrUnbondingDelegationsPost(delegatorAddr, delegation);
    print(result);
} catch (e) {
    print("Exception when calling StakingApi->stakingDelegatorsDelegatorAddrUnbondingDelegationsPost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **delegatorAddr** | **String**| Bech32 AccAddress of Delegator | 
 **delegation** | [**Delegation1**](Delegation1.md)| The password of the account to remove from the KMS | [optional] 

### Return type

[**BroadcastTxCommitResult**](BroadcastTxCommitResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **stakingDelegatorsDelegatorAddrUnbondingDelegationsValidatorAddrGet**
> UnbondingDelegationPair stakingDelegatorsDelegatorAddrUnbondingDelegationsValidatorAddrGet(delegatorAddr, validatorAddr)

Query all unbonding delegations between a delegator and a validator

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new StakingApi();
var delegatorAddr = delegatorAddr_example; // String | Bech32 AccAddress of Delegator
var validatorAddr = validatorAddr_example; // String | Bech32 OperatorAddress of validator

try { 
    var result = api_instance.stakingDelegatorsDelegatorAddrUnbondingDelegationsValidatorAddrGet(delegatorAddr, validatorAddr);
    print(result);
} catch (e) {
    print("Exception when calling StakingApi->stakingDelegatorsDelegatorAddrUnbondingDelegationsValidatorAddrGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **delegatorAddr** | **String**| Bech32 AccAddress of Delegator | 
 **validatorAddr** | **String**| Bech32 OperatorAddress of validator | 

### Return type

[**UnbondingDelegationPair**](UnbondingDelegationPair.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **stakingDelegatorsDelegatorAddrValidatorsGet**
> List<Validator> stakingDelegatorsDelegatorAddrValidatorsGet(delegatorAddr)

Query all validators that a delegator is bonded to

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new StakingApi();
var delegatorAddr = delegatorAddr_example; // String | Bech32 AccAddress of Delegator

try { 
    var result = api_instance.stakingDelegatorsDelegatorAddrValidatorsGet(delegatorAddr);
    print(result);
} catch (e) {
    print("Exception when calling StakingApi->stakingDelegatorsDelegatorAddrValidatorsGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **delegatorAddr** | **String**| Bech32 AccAddress of Delegator | 

### Return type

[**List<Validator>**](Validator.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **stakingDelegatorsDelegatorAddrValidatorsValidatorAddrGet**
> Validator stakingDelegatorsDelegatorAddrValidatorsValidatorAddrGet(delegatorAddr, validatorAddr)

Query a validator that a delegator is bonded to

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new StakingApi();
var delegatorAddr = delegatorAddr_example; // String | Bech32 AccAddress of Delegator
var validatorAddr = validatorAddr_example; // String | Bech32 ValAddress of Delegator

try { 
    var result = api_instance.stakingDelegatorsDelegatorAddrValidatorsValidatorAddrGet(delegatorAddr, validatorAddr);
    print(result);
} catch (e) {
    print("Exception when calling StakingApi->stakingDelegatorsDelegatorAddrValidatorsValidatorAddrGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **delegatorAddr** | **String**| Bech32 AccAddress of Delegator | 
 **validatorAddr** | **String**| Bech32 ValAddress of Delegator | 

### Return type

[**Validator**](Validator.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **stakingParametersGet**
> InlineResponse2006 stakingParametersGet()

Get the current staking parameter values

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new StakingApi();

try { 
    var result = api_instance.stakingParametersGet();
    print(result);
} catch (e) {
    print("Exception when calling StakingApi->stakingParametersGet: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**InlineResponse2006**](InlineResponse2006.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **stakingPoolGet**
> InlineResponse2005 stakingPoolGet()

Get the current state of the staking pool

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new StakingApi();

try { 
    var result = api_instance.stakingPoolGet();
    print(result);
} catch (e) {
    print("Exception when calling StakingApi->stakingPoolGet: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**InlineResponse2005**](InlineResponse2005.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **stakingRedelegationsGet**
> List<Redelegation> stakingRedelegationsGet(delegator, validatorFrom, validatorTo)

Get all redelegations (filter by query params)

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new StakingApi();
var delegator = delegator_example; // String | Bech32 AccAddress of Delegator
var validatorFrom = validatorFrom_example; // String | Bech32 ValAddress of SrcValidator
var validatorTo = validatorTo_example; // String | Bech32 ValAddress of DstValidator

try { 
    var result = api_instance.stakingRedelegationsGet(delegator, validatorFrom, validatorTo);
    print(result);
} catch (e) {
    print("Exception when calling StakingApi->stakingRedelegationsGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **delegator** | **String**| Bech32 AccAddress of Delegator | [optional] 
 **validatorFrom** | **String**| Bech32 ValAddress of SrcValidator | [optional] 
 **validatorTo** | **String**| Bech32 ValAddress of DstValidator | [optional] 

### Return type

[**List<Redelegation>**](Redelegation.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **stakingValidatorsGet**
> List<Validator> stakingValidatorsGet(status, page, limit)

Get all validator candidates. By default it returns only the bonded validators.

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new StakingApi();
var status = status_example; // String | The validator bond status. Must be either 'bonded', 'unbonded', or 'unbonding'.
var page = 56; // int | The page number.
var limit = 56; // int | The maximum number of items per page.

try { 
    var result = api_instance.stakingValidatorsGet(status, page, limit);
    print(result);
} catch (e) {
    print("Exception when calling StakingApi->stakingValidatorsGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **status** | **String**| The validator bond status. Must be either &#39;bonded&#39;, &#39;unbonded&#39;, or &#39;unbonding&#39;. | [optional] 
 **page** | **int**| The page number. | [optional] 
 **limit** | **int**| The maximum number of items per page. | [optional] 

### Return type

[**List<Validator>**](Validator.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **stakingValidatorsValidatorAddrDelegationsGet**
> List<Delegation> stakingValidatorsValidatorAddrDelegationsGet(validatorAddr)

Get all delegations from a validator

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new StakingApi();
var validatorAddr = validatorAddr_example; // String | Bech32 OperatorAddress of validator

try { 
    var result = api_instance.stakingValidatorsValidatorAddrDelegationsGet(validatorAddr);
    print(result);
} catch (e) {
    print("Exception when calling StakingApi->stakingValidatorsValidatorAddrDelegationsGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **validatorAddr** | **String**| Bech32 OperatorAddress of validator | 

### Return type

[**List<Delegation>**](Delegation.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **stakingValidatorsValidatorAddrGet**
> Validator stakingValidatorsValidatorAddrGet(validatorAddr)

Query the information from a single validator

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new StakingApi();
var validatorAddr = validatorAddr_example; // String | Bech32 OperatorAddress of validator

try { 
    var result = api_instance.stakingValidatorsValidatorAddrGet(validatorAddr);
    print(result);
} catch (e) {
    print("Exception when calling StakingApi->stakingValidatorsValidatorAddrGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **validatorAddr** | **String**| Bech32 OperatorAddress of validator | 

### Return type

[**Validator**](Validator.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **stakingValidatorsValidatorAddrUnbondingDelegationsGet**
> List<UnbondingDelegation> stakingValidatorsValidatorAddrUnbondingDelegationsGet(validatorAddr)

Get all unbonding delegations from a validator

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new StakingApi();
var validatorAddr = validatorAddr_example; // String | Bech32 OperatorAddress of validator

try { 
    var result = api_instance.stakingValidatorsValidatorAddrUnbondingDelegationsGet(validatorAddr);
    print(result);
} catch (e) {
    print("Exception when calling StakingApi->stakingValidatorsValidatorAddrUnbondingDelegationsGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **validatorAddr** | **String**| Bech32 OperatorAddress of validator | 

### Return type

[**List<UnbondingDelegation>**](UnbondingDelegation.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

