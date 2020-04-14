# swagger.api.TransactionsApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://stargate.cosmos.network*

Method | HTTP request | Description
------------- | ------------- | -------------
[**txsDecodePost**](TransactionsApi.md#txsDecodePost) | **POST** /txs/decode | Decode a transaction from the Amino wire format
[**txsEncodePost**](TransactionsApi.md#txsEncodePost) | **POST** /txs/encode | Encode a transaction to the Amino wire format
[**txsGet**](TransactionsApi.md#txsGet) | **GET** /txs | Search transactions
[**txsHashGet**](TransactionsApi.md#txsHashGet) | **GET** /txs/{hash} | Get a Tx by hash
[**txsPost**](TransactionsApi.md#txsPost) | **POST** /txs | Broadcast a signed tx


# **txsDecodePost**
> StdTx txsDecodePost(tx)

Decode a transaction from the Amino wire format

Decode a transaction (signed or not) from base64-encoded Amino serialized bytes to JSON

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new TransactionsApi();
var tx = new Tx1(); // Tx1 | The tx to decode

try { 
    var result = api_instance.txsDecodePost(tx);
    print(result);
} catch (e) {
    print("Exception when calling TransactionsApi->txsDecodePost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tx** | [**Tx1**](Tx1.md)| The tx to decode | 

### Return type

[**StdTx**](StdTx.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **txsEncodePost**
> InlineResponse2003 txsEncodePost(tx)

Encode a transaction to the Amino wire format

Encode a transaction (signed or not) from JSON to base64-encoded Amino serialized bytes

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new TransactionsApi();
var tx = new Tx(); // Tx | The tx to encode

try { 
    var result = api_instance.txsEncodePost(tx);
    print(result);
} catch (e) {
    print("Exception when calling TransactionsApi->txsEncodePost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tx** | [**Tx**](Tx.md)| The tx to encode | 

### Return type

[**InlineResponse2003**](InlineResponse2003.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **txsGet**
> PaginatedQueryTxs txsGet(messageAction, messageSender, page, limit)

Search transactions

Search transactions by events.

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new TransactionsApi();
var messageAction = messageAction_example; // String | transaction events such as 'message.action=send' which results in the following endpoint: 'GET /txs?message.action=send'
var messageSender = messageSender_example; // String | transaction tags with sender: 'GET /txs?message.action=send&message.sender=cosmos16xyempempp92x9hyzz9wrgf94r6j9h5f06pxxv'
var page = 56; // int | Page number
var limit = 56; // int | Maximum number of items per page

try { 
    var result = api_instance.txsGet(messageAction, messageSender, page, limit);
    print(result);
} catch (e) {
    print("Exception when calling TransactionsApi->txsGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **messageAction** | **String**| transaction events such as &#39;message.action&#x3D;send&#39; which results in the following endpoint: &#39;GET /txs?message.action&#x3D;send&#39; | [optional] 
 **messageSender** | **String**| transaction tags with sender: &#39;GET /txs?message.action&#x3D;send&amp;message.sender&#x3D;cosmos16xyempempp92x9hyzz9wrgf94r6j9h5f06pxxv&#39; | [optional] 
 **page** | **int**| Page number | [optional] 
 **limit** | **int**| Maximum number of items per page | [optional] 

### Return type

[**PaginatedQueryTxs**](PaginatedQueryTxs.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **txsHashGet**
> TxQuery txsHashGet(hash)

Get a Tx by hash

Retrieve a transaction using its hash.

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new TransactionsApi();
var hash = hash_example; // String | Tx hash

try { 
    var result = api_instance.txsHashGet(hash);
    print(result);
} catch (e) {
    print("Exception when calling TransactionsApi->txsHashGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **hash** | **String**| Tx hash | 

### Return type

[**TxQuery**](TxQuery.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **txsPost**
> BroadcastTxCommitResult txsPost(txBroadcast)

Broadcast a signed tx

Broadcast a signed tx to a full node

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new TransactionsApi();
var txBroadcast = new TxBroadcast(); // TxBroadcast | The tx must be a signed StdTx. The supported broadcast modes include `\"block\"`(return after tx commit), `\"sync\"`(return afer CheckTx) and `\"async\"`(return right away).

try { 
    var result = api_instance.txsPost(txBroadcast);
    print(result);
} catch (e) {
    print("Exception when calling TransactionsApi->txsPost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **txBroadcast** | [**TxBroadcast**](TxBroadcast.md)| The tx must be a signed StdTx. The supported broadcast modes include &#x60;\&quot;block\&quot;&#x60;(return after tx commit), &#x60;\&quot;sync\&quot;&#x60;(return afer CheckTx) and &#x60;\&quot;async\&quot;&#x60;(return right away). | 

### Return type

[**BroadcastTxCommitResult**](BroadcastTxCommitResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

