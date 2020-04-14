# swagger.api.MintApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://stargate.cosmos.network*

Method | HTTP request | Description
------------- | ------------- | -------------
[**mintingAnnualProvisionsGet**](MintApi.md#mintingAnnualProvisionsGet) | **GET** /minting/annual-provisions | Current minting annual provisions value
[**mintingInflationGet**](MintApi.md#mintingInflationGet) | **GET** /minting/inflation | Current minting inflation value
[**mintingParametersGet**](MintApi.md#mintingParametersGet) | **GET** /minting/parameters | Minting module parameters


# **mintingAnnualProvisionsGet**
> String mintingAnnualProvisionsGet()

Current minting annual provisions value

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new MintApi();

try { 
    var result = api_instance.mintingAnnualProvisionsGet();
    print(result);
} catch (e) {
    print("Exception when calling MintApi->mintingAnnualProvisionsGet: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mintingInflationGet**
> String mintingInflationGet()

Current minting inflation value

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new MintApi();

try { 
    var result = api_instance.mintingInflationGet();
    print(result);
} catch (e) {
    print("Exception when calling MintApi->mintingInflationGet: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mintingParametersGet**
> Object mintingParametersGet()

Minting module parameters

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new MintApi();

try { 
    var result = api_instance.mintingParametersGet();
    print(result);
} catch (e) {
    print("Exception when calling MintApi->mintingParametersGet: $e\n");
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

