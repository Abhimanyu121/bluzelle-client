# swagger.model.BaseReq

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**from** | **String** | Sender address or Keybase name to generate a transaction | [optional] [default to null]
**memo** | **String** |  | [optional] [default to null]
**chainId** | **String** |  | [optional] [default to null]
**accountNumber** | **String** |  | [optional] [default to null]
**sequence** | **String** |  | [optional] [default to null]
**gas** | **String** |  | [optional] [default to null]
**gasAdjustment** | **String** |  | [optional] [default to null]
**fees** | [**List&lt;Coin&gt;**](Coin.md) |  | [optional] [default to []]
**simulate** | **bool** | Estimate gas for a transaction (cannot be used in conjunction with generate_only) | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


