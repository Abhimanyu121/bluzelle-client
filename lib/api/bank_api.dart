part of swagger.api;



class BankApi {
  final ApiClient apiClient;

  BankApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Send coins from one account to another
  ///
  /// 
  Future<StdTx> bankAccountsAddressTransfersPost(String address, Account account) async {
    Object postBody = account;

    // verify required params are set
    if(address == null) {
     throw new ApiException(400, "Missing required param: address");
    }
    if(account == null) {
     throw new ApiException(400, "Missing required param: account");
    }

    // create path and map variables
    String path = "/bank/accounts/{address}/transfers".replaceAll("{format}","json").replaceAll("{" + "address" + "}", address.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return 
          apiClient.deserialize(response.body, 'StdTx') as StdTx ;
    } else {
      return null;
    }
  }
  /// Get the account balances
  ///
  /// 
  Future<List<Coin>> bankBalancesAddressGet(String address) async {
    Object postBody = null;

    // verify required params are set
    if(address == null) {
     throw new ApiException(400, "Missing required param: address");
    }

    // create path and map variables
    String path = "/bank/balances/{address}".replaceAll("{format}","json").replaceAll("{" + "address" + "}", address.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return 
        (apiClient.deserialize(response.body, 'List<Coin>') as List).map((item) => item as Coin).toList();
    } else {
      return null;
    }
  }
}
