# swagger.api.BankApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://stargate.cosmos.network*

Method | HTTP request | Description
------------- | ------------- | -------------
[**bankAccountsAddressTransfersPost**](BankApi.md#bankAccountsAddressTransfersPost) | **POST** /bank/accounts/{address}/transfers | Send coins from one account to another
[**bankBalancesAddressGet**](BankApi.md#bankBalancesAddressGet) | **GET** /bank/balances/{address} | Get the account balances


# **bankAccountsAddressTransfersPost**
> StdTx bankAccountsAddressTransfersPost(address, account)

Send coins from one account to another

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new BankApi();
var address = address_example; // String | Account address in bech32 format
var account = new Account(); // Account | The sender and tx information

try { 
    var result = api_instance.bankAccountsAddressTransfersPost(address, account);
    print(result);
} catch (e) {
    print("Exception when calling BankApi->bankAccountsAddressTransfersPost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **address** | **String**| Account address in bech32 format | 
 **account** | [**Account**](Account.md)| The sender and tx information | 

### Return type

[**StdTx**](StdTx.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **bankBalancesAddressGet**
> List<Coin> bankBalancesAddressGet(address)

Get the account balances

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new BankApi();
var address = address_example; // String | Account address in bech32 format

try { 
    var result = api_instance.bankBalancesAddressGet(address);
    print(result);
} catch (e) {
    print("Exception when calling BankApi->bankBalancesAddressGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **address** | **String**| Account address in bech32 format | 

### Return type

[**List<Coin>**](Coin.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

