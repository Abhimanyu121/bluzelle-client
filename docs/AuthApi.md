# swagger.api.AuthApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://stargate.cosmos.network*

Method | HTTP request | Description
------------- | ------------- | -------------
[**authAccountsAddressGet**](AuthApi.md#authAccountsAddressGet) | **GET** /auth/accounts/{address} | Get the account information on blockchain


# **authAccountsAddressGet**
> InlineResponse2004 authAccountsAddressGet(address)

Get the account information on blockchain

### Example 
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

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **address** | **String**| Account address | 

### Return type

[**InlineResponse2004**](InlineResponse2004.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

