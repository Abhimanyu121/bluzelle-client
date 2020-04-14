# swagger.api.TendermintRPCApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://stargate.cosmos.network*

Method | HTTP request | Description
------------- | ------------- | -------------
[**blocksHeightGet**](TendermintRPCApi.md#blocksHeightGet) | **GET** /blocks/{height} | Get a block at a certain height
[**blocksLatestGet**](TendermintRPCApi.md#blocksLatestGet) | **GET** /blocks/latest | Get the latest block
[**nodeInfoGet**](TendermintRPCApi.md#nodeInfoGet) | **GET** /node_info | The properties of the connected node
[**syncingGet**](TendermintRPCApi.md#syncingGet) | **GET** /syncing | Syncing state of node
[**validatorsetsHeightGet**](TendermintRPCApi.md#validatorsetsHeightGet) | **GET** /validatorsets/{height} | Get a validator set a certain height
[**validatorsetsLatestGet**](TendermintRPCApi.md#validatorsetsLatestGet) | **GET** /validatorsets/latest | Get the latest validator set


# **blocksHeightGet**
> BlockQuery blocksHeightGet(height)

Get a block at a certain height

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new TendermintRPCApi();
var height = 8.14; // num | Block height

try { 
    var result = api_instance.blocksHeightGet(height);
    print(result);
} catch (e) {
    print("Exception when calling TendermintRPCApi->blocksHeightGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **height** | **num**| Block height | 

### Return type

[**BlockQuery**](BlockQuery.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **blocksLatestGet**
> BlockQuery blocksLatestGet()

Get the latest block

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new TendermintRPCApi();

try { 
    var result = api_instance.blocksLatestGet();
    print(result);
} catch (e) {
    print("Exception when calling TendermintRPCApi->blocksLatestGet: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BlockQuery**](BlockQuery.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **nodeInfoGet**
> InlineResponse200 nodeInfoGet()

The properties of the connected node

Information about the connected node

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new TendermintRPCApi();

try { 
    var result = api_instance.nodeInfoGet();
    print(result);
} catch (e) {
    print("Exception when calling TendermintRPCApi->nodeInfoGet: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**InlineResponse200**](InlineResponse200.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **syncingGet**
> InlineResponse2001 syncingGet()

Syncing state of node

Get if the node is currently syning with other nodes

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new TendermintRPCApi();

try { 
    var result = api_instance.syncingGet();
    print(result);
} catch (e) {
    print("Exception when calling TendermintRPCApi->syncingGet: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**InlineResponse2001**](InlineResponse2001.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **validatorsetsHeightGet**
> InlineResponse2002 validatorsetsHeightGet(height)

Get a validator set a certain height

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new TendermintRPCApi();
var height = 8.14; // num | Block height

try { 
    var result = api_instance.validatorsetsHeightGet(height);
    print(result);
} catch (e) {
    print("Exception when calling TendermintRPCApi->validatorsetsHeightGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **height** | **num**| Block height | 

### Return type

[**InlineResponse2002**](InlineResponse2002.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **validatorsetsLatestGet**
> InlineResponse2002 validatorsetsLatestGet()

Get the latest validator set

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new TendermintRPCApi();

try { 
    var result = api_instance.validatorsetsLatestGet();
    print(result);
} catch (e) {
    print("Exception when calling TendermintRPCApi->validatorsetsLatestGet: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**InlineResponse2002**](InlineResponse2002.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

