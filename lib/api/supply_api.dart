part of swagger.api;



class SupplyApi {
  final ApiClient apiClient;

  SupplyApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Total supply of a single coin denomination
  ///
  /// 
  Future<String> supplyTotalDenominationGet(String denomination) async {
    Object postBody = null;

    // verify required params are set
    if(denomination == null) {
     throw new ApiException(400, "Missing required param: denomination");
    }

    // create path and map variables
    String path = "/supply/total/{denomination}".replaceAll("{format}","json").replaceAll("{" + "denomination" + "}", denomination.toString());

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
          apiClient.deserialize(response.body, 'String') as String ;
    } else {
      return null;
    }
  }
  /// Total supply of coins in the chain
  ///
  /// 
  Future<Supply> supplyTotalGet() async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/supply/total".replaceAll("{format}","json");

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
          apiClient.deserialize(response.body, 'Supply') as Supply ;
    } else {
      return null;
    }
  }
}
