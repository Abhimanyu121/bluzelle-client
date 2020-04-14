# swagger.api.SupplyApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://stargate.cosmos.network*

Method | HTTP request | Description
------------- | ------------- | -------------
[**supplyTotalDenominationGet**](SupplyApi.md#supplyTotalDenominationGet) | **GET** /supply/total/{denomination} | Total supply of a single coin denomination
[**supplyTotalGet**](SupplyApi.md#supplyTotalGet) | **GET** /supply/total | Total supply of coins in the chain


# **supplyTotalDenominationGet**
> String supplyTotalDenominationGet(denomination)

Total supply of a single coin denomination

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new SupplyApi();
var denomination = denomination_example; // String | Coin denomination

try { 
    var result = api_instance.supplyTotalDenominationGet(denomination);
    print(result);
} catch (e) {
    print("Exception when calling SupplyApi->supplyTotalDenominationGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **denomination** | **String**| Coin denomination | 

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **supplyTotalGet**
> Supply supplyTotalGet()

Total supply of coins in the chain

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new SupplyApi();

try { 
    var result = api_instance.supplyTotalGet();
    print(result);
} catch (e) {
    print("Exception when calling SupplyApi->supplyTotalGet: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Supply**](Supply.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

