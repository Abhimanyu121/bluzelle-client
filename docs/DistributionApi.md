# swagger.api.DistributionApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://stargate.cosmos.network*

Method | HTTP request | Description
------------- | ------------- | -------------
[**distributionCommunityPoolGet**](DistributionApi.md#distributionCommunityPoolGet) | **GET** /distribution/community_pool | Community pool parameters
[**distributionDelegatorsDelegatorAddrRewardsGet**](DistributionApi.md#distributionDelegatorsDelegatorAddrRewardsGet) | **GET** /distribution/delegators/{delegatorAddr}/rewards | Get the total rewards balance from all delegations
[**distributionDelegatorsDelegatorAddrRewardsPost**](DistributionApi.md#distributionDelegatorsDelegatorAddrRewardsPost) | **POST** /distribution/delegators/{delegatorAddr}/rewards | Withdraw all the delegator&#39;s delegation rewards
[**distributionDelegatorsDelegatorAddrRewardsValidatorAddrGet**](DistributionApi.md#distributionDelegatorsDelegatorAddrRewardsValidatorAddrGet) | **GET** /distribution/delegators/{delegatorAddr}/rewards/{validatorAddr} | Query a delegation reward
[**distributionDelegatorsDelegatorAddrRewardsValidatorAddrPost**](DistributionApi.md#distributionDelegatorsDelegatorAddrRewardsValidatorAddrPost) | **POST** /distribution/delegators/{delegatorAddr}/rewards/{validatorAddr} | Withdraw a delegation reward
[**distributionDelegatorsDelegatorAddrWithdrawAddressGet**](DistributionApi.md#distributionDelegatorsDelegatorAddrWithdrawAddressGet) | **GET** /distribution/delegators/{delegatorAddr}/withdraw_address | Get the rewards withdrawal address
[**distributionDelegatorsDelegatorAddrWithdrawAddressPost**](DistributionApi.md#distributionDelegatorsDelegatorAddrWithdrawAddressPost) | **POST** /distribution/delegators/{delegatorAddr}/withdraw_address | Replace the rewards withdrawal address
[**distributionParametersGet**](DistributionApi.md#distributionParametersGet) | **GET** /distribution/parameters | Fee distribution parameters
[**distributionValidatorsValidatorAddrGet**](DistributionApi.md#distributionValidatorsValidatorAddrGet) | **GET** /distribution/validators/{validatorAddr} | Validator distribution information
[**distributionValidatorsValidatorAddrOutstandingRewardsGet**](DistributionApi.md#distributionValidatorsValidatorAddrOutstandingRewardsGet) | **GET** /distribution/validators/{validatorAddr}/outstanding_rewards | Fee distribution outstanding rewards of a single validator
[**distributionValidatorsValidatorAddrRewardsGet**](DistributionApi.md#distributionValidatorsValidatorAddrRewardsGet) | **GET** /distribution/validators/{validatorAddr}/rewards | Commission and self-delegation rewards of a single validator
[**distributionValidatorsValidatorAddrRewardsPost**](DistributionApi.md#distributionValidatorsValidatorAddrRewardsPost) | **POST** /distribution/validators/{validatorAddr}/rewards | Withdraw the validator&#39;s rewards


# **distributionCommunityPoolGet**
> List<Coin> distributionCommunityPoolGet()

Community pool parameters

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new DistributionApi();

try { 
    var result = api_instance.distributionCommunityPoolGet();
    print(result);
} catch (e) {
    print("Exception when calling DistributionApi->distributionCommunityPoolGet: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<Coin>**](Coin.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **distributionDelegatorsDelegatorAddrRewardsGet**
> DelegatorTotalRewards distributionDelegatorsDelegatorAddrRewardsGet(delegatorAddr)

Get the total rewards balance from all delegations

Get the sum of all the rewards earned by delegations by a single delegator

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new DistributionApi();
var delegatorAddr = delegatorAddr_example; // String | Bech32 AccAddress of Delegator

try { 
    var result = api_instance.distributionDelegatorsDelegatorAddrRewardsGet(delegatorAddr);
    print(result);
} catch (e) {
    print("Exception when calling DistributionApi->distributionDelegatorsDelegatorAddrRewardsGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **delegatorAddr** | **String**| Bech32 AccAddress of Delegator | 

### Return type

[**DelegatorTotalRewards**](DelegatorTotalRewards.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **distributionDelegatorsDelegatorAddrRewardsPost**
> BroadcastTxCommitResult distributionDelegatorsDelegatorAddrRewardsPost(delegatorAddr, withdraw request body)

Withdraw all the delegator's delegation rewards

Withdraw all the delegator's delegation rewards

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new DistributionApi();
var delegatorAddr = delegatorAddr_example; // String | Bech32 AccAddress of Delegator
var withdraw request body = new Withdraw request body(); // Withdraw request body | 

try { 
    var result = api_instance.distributionDelegatorsDelegatorAddrRewardsPost(delegatorAddr, withdraw request body);
    print(result);
} catch (e) {
    print("Exception when calling DistributionApi->distributionDelegatorsDelegatorAddrRewardsPost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **delegatorAddr** | **String**| Bech32 AccAddress of Delegator | 
 **withdraw request body** | [**Withdraw request body**](Withdraw request body.md)|  | [optional] 

### Return type

[**BroadcastTxCommitResult**](BroadcastTxCommitResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **distributionDelegatorsDelegatorAddrRewardsValidatorAddrGet**
> List<Coin> distributionDelegatorsDelegatorAddrRewardsValidatorAddrGet(delegatorAddr, validatorAddr)

Query a delegation reward

Query a single delegation reward by a delegator

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new DistributionApi();
var delegatorAddr = delegatorAddr_example; // String | Bech32 AccAddress of Delegator
var validatorAddr = validatorAddr_example; // String | Bech32 OperatorAddress of validator

try { 
    var result = api_instance.distributionDelegatorsDelegatorAddrRewardsValidatorAddrGet(delegatorAddr, validatorAddr);
    print(result);
} catch (e) {
    print("Exception when calling DistributionApi->distributionDelegatorsDelegatorAddrRewardsValidatorAddrGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **delegatorAddr** | **String**| Bech32 AccAddress of Delegator | 
 **validatorAddr** | **String**| Bech32 OperatorAddress of validator | 

### Return type

[**List<Coin>**](Coin.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **distributionDelegatorsDelegatorAddrRewardsValidatorAddrPost**
> BroadcastTxCommitResult distributionDelegatorsDelegatorAddrRewardsValidatorAddrPost(delegatorAddr, validatorAddr, withdraw request body)

Withdraw a delegation reward

Withdraw a delegator's delegation reward from a single validator

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new DistributionApi();
var delegatorAddr = delegatorAddr_example; // String | Bech32 AccAddress of Delegator
var validatorAddr = validatorAddr_example; // String | Bech32 OperatorAddress of validator
var withdraw request body = new Withdraw request body1(); // Withdraw request body1 | 

try { 
    var result = api_instance.distributionDelegatorsDelegatorAddrRewardsValidatorAddrPost(delegatorAddr, validatorAddr, withdraw request body);
    print(result);
} catch (e) {
    print("Exception when calling DistributionApi->distributionDelegatorsDelegatorAddrRewardsValidatorAddrPost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **delegatorAddr** | **String**| Bech32 AccAddress of Delegator | 
 **validatorAddr** | **String**| Bech32 OperatorAddress of validator | 
 **withdraw request body** | [**Withdraw request body1**](Withdraw request body1.md)|  | [optional] 

### Return type

[**BroadcastTxCommitResult**](BroadcastTxCommitResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **distributionDelegatorsDelegatorAddrWithdrawAddressGet**
> Address distributionDelegatorsDelegatorAddrWithdrawAddressGet(delegatorAddr)

Get the rewards withdrawal address

Get the delegations' rewards withdrawal address. This is the address in which the user will receive the reward funds

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new DistributionApi();
var delegatorAddr = delegatorAddr_example; // String | Bech32 AccAddress of Delegator

try { 
    var result = api_instance.distributionDelegatorsDelegatorAddrWithdrawAddressGet(delegatorAddr);
    print(result);
} catch (e) {
    print("Exception when calling DistributionApi->distributionDelegatorsDelegatorAddrWithdrawAddressGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **delegatorAddr** | **String**| Bech32 AccAddress of Delegator | 

### Return type

[**Address**](Address.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **distributionDelegatorsDelegatorAddrWithdrawAddressPost**
> BroadcastTxCommitResult distributionDelegatorsDelegatorAddrWithdrawAddressPost(delegatorAddr, withdraw request body)

Replace the rewards withdrawal address

Replace the delegations' rewards withdrawal address for a new one.

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new DistributionApi();
var delegatorAddr = delegatorAddr_example; // String | Bech32 AccAddress of Delegator
var withdraw request body = new Withdraw request body2(); // Withdraw request body2 | 

try { 
    var result = api_instance.distributionDelegatorsDelegatorAddrWithdrawAddressPost(delegatorAddr, withdraw request body);
    print(result);
} catch (e) {
    print("Exception when calling DistributionApi->distributionDelegatorsDelegatorAddrWithdrawAddressPost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **delegatorAddr** | **String**| Bech32 AccAddress of Delegator | 
 **withdraw request body** | [**Withdraw request body2**](Withdraw request body2.md)|  | [optional] 

### Return type

[**BroadcastTxCommitResult**](BroadcastTxCommitResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **distributionParametersGet**
> Object distributionParametersGet()

Fee distribution parameters

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new DistributionApi();

try { 
    var result = api_instance.distributionParametersGet();
    print(result);
} catch (e) {
    print("Exception when calling DistributionApi->distributionParametersGet: $e\n");
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

# **distributionValidatorsValidatorAddrGet**
> ValidatorDistInfo distributionValidatorsValidatorAddrGet(validatorAddr)

Validator distribution information

Query the distribution information of a single validator

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new DistributionApi();
var validatorAddr = validatorAddr_example; // String | Bech32 OperatorAddress of validator

try { 
    var result = api_instance.distributionValidatorsValidatorAddrGet(validatorAddr);
    print(result);
} catch (e) {
    print("Exception when calling DistributionApi->distributionValidatorsValidatorAddrGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **validatorAddr** | **String**| Bech32 OperatorAddress of validator | 

### Return type

[**ValidatorDistInfo**](ValidatorDistInfo.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **distributionValidatorsValidatorAddrOutstandingRewardsGet**
> List<Coin> distributionValidatorsValidatorAddrOutstandingRewardsGet(validatorAddr)

Fee distribution outstanding rewards of a single validator

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new DistributionApi();
var validatorAddr = validatorAddr_example; // String | Bech32 OperatorAddress of validator

try { 
    var result = api_instance.distributionValidatorsValidatorAddrOutstandingRewardsGet(validatorAddr);
    print(result);
} catch (e) {
    print("Exception when calling DistributionApi->distributionValidatorsValidatorAddrOutstandingRewardsGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **validatorAddr** | **String**| Bech32 OperatorAddress of validator | 

### Return type

[**List<Coin>**](Coin.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **distributionValidatorsValidatorAddrRewardsGet**
> List<Coin> distributionValidatorsValidatorAddrRewardsGet(validatorAddr)

Commission and self-delegation rewards of a single validator

Query the commission and self-delegation rewards of validator.

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new DistributionApi();
var validatorAddr = validatorAddr_example; // String | Bech32 OperatorAddress of validator

try { 
    var result = api_instance.distributionValidatorsValidatorAddrRewardsGet(validatorAddr);
    print(result);
} catch (e) {
    print("Exception when calling DistributionApi->distributionValidatorsValidatorAddrRewardsGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **validatorAddr** | **String**| Bech32 OperatorAddress of validator | 

### Return type

[**List<Coin>**](Coin.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **distributionValidatorsValidatorAddrRewardsPost**
> BroadcastTxCommitResult distributionValidatorsValidatorAddrRewardsPost(validatorAddr, withdraw request body)

Withdraw the validator's rewards

Withdraw the validator's self-delegation and commissions rewards

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new DistributionApi();
var validatorAddr = validatorAddr_example; // String | Bech32 OperatorAddress of validator
var withdraw request body = new Withdraw request body3(); // Withdraw request body3 | 

try { 
    var result = api_instance.distributionValidatorsValidatorAddrRewardsPost(validatorAddr, withdraw request body);
    print(result);
} catch (e) {
    print("Exception when calling DistributionApi->distributionValidatorsValidatorAddrRewardsPost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **validatorAddr** | **String**| Bech32 OperatorAddress of validator | 
 **withdraw request body** | [**Withdraw request body3**](Withdraw request body3.md)|  | [optional] 

### Return type

[**BroadcastTxCommitResult**](BroadcastTxCommitResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

