part of swagger.api;



class AuthApi {
  final ApiClient apiClient;

  AuthApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Get the account information on blockchain
  ///
  /// 
  Future<InlineResponse2004> authAccountsAddressGet(String address) async {
    Object postBody = null;

    // verify required params are set
    if(address == null) {
     throw new ApiException(400, "Missing required param: address");
    }

    // create path and map variables
    String path = "/auth/accounts/{address}".replaceAll("{format}","json").replaceAll("{" + "address" + "}", address.toString());

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
          apiClient.deserialize(response.body, 'InlineResponse2004') as InlineResponse2004 ;
    } else {
      return null;
    }
  }
}
