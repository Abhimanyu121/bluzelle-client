part of swagger.api;



class SlashingApi {
  final ApiClient apiClient;

  SlashingApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Get the current slashing parameters
  ///
  /// 
  Future<InlineResponse2007> slashingParametersGet() async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/slashing/parameters".replaceAll("{format}","json");

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
          apiClient.deserialize(response.body, 'InlineResponse2007') as InlineResponse2007 ;
    } else {
      return null;
    }
  }
  /// Get sign info of given all validators
  ///
  /// Get sign info of all validators
  Future<List<SigningInfo>> slashingSigningInfosGet(int page, int limit) async {
    Object postBody = null;

    // verify required params are set
    if(page == null) {
     throw new ApiException(400, "Missing required param: page");
    }
    if(limit == null) {
     throw new ApiException(400, "Missing required param: limit");
    }

    // create path and map variables
    String path = "/slashing/signing_infos".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
      queryParams.addAll(_convertParametersForCollectionFormat("", "page", page));
      queryParams.addAll(_convertParametersForCollectionFormat("", "limit", limit));
    
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
        (apiClient.deserialize(response.body, 'List<SigningInfo>') as List).map((item) => item as SigningInfo).toList();
    } else {
      return null;
    }
  }
  /// Unjail a jailed validator
  ///
  /// Send transaction to unjail a jailed validator
  Future<BroadcastTxCommitResult> slashingValidatorsValidatorAddrUnjailPost(String validatorAddr, UnjailBody unjailBody) async {
    Object postBody = unjailBody;

    // verify required params are set
    if(validatorAddr == null) {
     throw new ApiException(400, "Missing required param: validatorAddr");
    }
    if(unjailBody == null) {
     throw new ApiException(400, "Missing required param: unjailBody");
    }

    // create path and map variables
    String path = "/slashing/validators/{validatorAddr}/unjail".replaceAll("{format}","json").replaceAll("{" + "validatorAddr" + "}", validatorAddr.toString());

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
          apiClient.deserialize(response.body, 'BroadcastTxCommitResult') as BroadcastTxCommitResult ;
    } else {
      return null;
    }
  }
}
