# swagger.api.SlashingApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://stargate.cosmos.network*

Method | HTTP request | Description
------------- | ------------- | -------------
[**slashingParametersGet**](SlashingApi.md#slashingParametersGet) | **GET** /slashing/parameters | Get the current slashing parameters
[**slashingSigningInfosGet**](SlashingApi.md#slashingSigningInfosGet) | **GET** /slashing/signing_infos | Get sign info of given all validators
[**slashingValidatorsValidatorAddrUnjailPost**](SlashingApi.md#slashingValidatorsValidatorAddrUnjailPost) | **POST** /slashing/validators/{validatorAddr}/unjail | Unjail a jailed validator


# **slashingParametersGet**
> InlineResponse2007 slashingParametersGet()

Get the current slashing parameters

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new SlashingApi();

try { 
    var result = api_instance.slashingParametersGet();
    print(result);
} catch (e) {
    print("Exception when calling SlashingApi->slashingParametersGet: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**InlineResponse2007**](InlineResponse2007.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **slashingSigningInfosGet**
> List<SigningInfo> slashingSigningInfosGet(page, limit)

Get sign info of given all validators

Get sign info of all validators

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new SlashingApi();
var page = 56; // int | Page number
var limit = 56; // int | Maximum number of items per page

try { 
    var result = api_instance.slashingSigningInfosGet(page, limit);
    print(result);
} catch (e) {
    print("Exception when calling SlashingApi->slashingSigningInfosGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Page number | 
 **limit** | **int**| Maximum number of items per page | 

### Return type

[**List<SigningInfo>**](SigningInfo.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **slashingValidatorsValidatorAddrUnjailPost**
> BroadcastTxCommitResult slashingValidatorsValidatorAddrUnjailPost(validatorAddr, unjailBody)

Unjail a jailed validator

Send transaction to unjail a jailed validator

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new SlashingApi();
var validatorAddr = validatorAddr_example; // String | Bech32 validator address
var unjailBody = new UnjailBody(); // UnjailBody | 

try { 
    var result = api_instance.slashingValidatorsValidatorAddrUnjailPost(validatorAddr, unjailBody);
    print(result);
} catch (e) {
    print("Exception when calling SlashingApi->slashingValidatorsValidatorAddrUnjailPost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **validatorAddr** | **String**| Bech32 validator address | 
 **unjailBody** | [**UnjailBody**](UnjailBody.md)|  | 

### Return type

[**BroadcastTxCommitResult**](BroadcastTxCommitResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

