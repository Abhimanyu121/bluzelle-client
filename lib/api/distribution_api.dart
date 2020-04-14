part of swagger.api;



class DistributionApi {
  final ApiClient apiClient;

  DistributionApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Community pool parameters
  ///
  /// 
  Future<List<Coin>> distributionCommunityPoolGet() async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/distribution/community_pool".replaceAll("{format}","json");

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
  /// Get the total rewards balance from all delegations
  ///
  /// Get the sum of all the rewards earned by delegations by a single delegator
  Future<DelegatorTotalRewards> distributionDelegatorsDelegatorAddrRewardsGet(String delegatorAddr) async {
    Object postBody = null;

    // verify required params are set
    if(delegatorAddr == null) {
     throw new ApiException(400, "Missing required param: delegatorAddr");
    }

    // create path and map variables
    String path = "/distribution/delegators/{delegatorAddr}/rewards".replaceAll("{format}","json").replaceAll("{" + "delegatorAddr" + "}", delegatorAddr.toString());

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
          apiClient.deserialize(response.body, 'DelegatorTotalRewards') as DelegatorTotalRewards ;
    } else {
      return null;
    }
  }
  /// Withdraw all the delegator&#39;s delegation rewards
  ///
  /// Withdraw all the delegator&#39;s delegation rewards
  Future<BroadcastTxCommitResult> distributionDelegatorsDelegatorAddrRewardsPost(String delegatorAddr, { Withdraw request body withdraw request body }) async {
    Object postBody = withdraw request body;

    // verify required params are set
    if(delegatorAddr == null) {
     throw new ApiException(400, "Missing required param: delegatorAddr");
    }

    // create path and map variables
    String path = "/distribution/delegators/{delegatorAddr}/rewards".replaceAll("{format}","json").replaceAll("{" + "delegatorAddr" + "}", delegatorAddr.toString());

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
  /// Query a delegation reward
  ///
  /// Query a single delegation reward by a delegator
  Future<List<Coin>> distributionDelegatorsDelegatorAddrRewardsValidatorAddrGet(String delegatorAddr, String validatorAddr) async {
    Object postBody = null;

    // verify required params are set
    if(delegatorAddr == null) {
     throw new ApiException(400, "Missing required param: delegatorAddr");
    }
    if(validatorAddr == null) {
     throw new ApiException(400, "Missing required param: validatorAddr");
    }

    // create path and map variables
    String path = "/distribution/delegators/{delegatorAddr}/rewards/{validatorAddr}".replaceAll("{format}","json").replaceAll("{" + "delegatorAddr" + "}", delegatorAddr.toString()).replaceAll("{" + "validatorAddr" + "}", validatorAddr.toString());

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
  /// Withdraw a delegation reward
  ///
  /// Withdraw a delegator&#39;s delegation reward from a single validator
  Future<BroadcastTxCommitResult> distributionDelegatorsDelegatorAddrRewardsValidatorAddrPost(String delegatorAddr, String validatorAddr, { Withdraw request body1 withdraw request body }) async {
    Object postBody = withdraw request body;

    // verify required params are set
    if(delegatorAddr == null) {
     throw new ApiException(400, "Missing required param: delegatorAddr");
    }
    if(validatorAddr == null) {
     throw new ApiException(400, "Missing required param: validatorAddr");
    }

    // create path and map variables
    String path = "/distribution/delegators/{delegatorAddr}/rewards/{validatorAddr}".replaceAll("{format}","json").replaceAll("{" + "delegatorAddr" + "}", delegatorAddr.toString()).replaceAll("{" + "validatorAddr" + "}", validatorAddr.toString());

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
  /// Get the rewards withdrawal address
  ///
  /// Get the delegations&#39; rewards withdrawal address. This is the address in which the user will receive the reward funds
  Future<Address> distributionDelegatorsDelegatorAddrWithdrawAddressGet(String delegatorAddr) async {
    Object postBody = null;

    // verify required params are set
    if(delegatorAddr == null) {
     throw new ApiException(400, "Missing required param: delegatorAddr");
    }

    // create path and map variables
    String path = "/distribution/delegators/{delegatorAddr}/withdraw_address".replaceAll("{format}","json").replaceAll("{" + "delegatorAddr" + "}", delegatorAddr.toString());

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
          apiClient.deserialize(response.body, 'Address') as Address ;
    } else {
      return null;
    }
  }
  /// Replace the rewards withdrawal address
  ///
  /// Replace the delegations&#39; rewards withdrawal address for a new one.
  Future<BroadcastTxCommitResult> distributionDelegatorsDelegatorAddrWithdrawAddressPost(String delegatorAddr, { Withdraw request body2 withdraw request body }) async {
    Object postBody = withdraw request body;

    // verify required params are set
    if(delegatorAddr == null) {
     throw new ApiException(400, "Missing required param: delegatorAddr");
    }

    // create path and map variables
    String path = "/distribution/delegators/{delegatorAddr}/withdraw_address".replaceAll("{format}","json").replaceAll("{" + "delegatorAddr" + "}", delegatorAddr.toString());

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
  /// Fee distribution parameters
  ///
  /// 
  Future<Object> distributionParametersGet() async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/distribution/parameters".replaceAll("{format}","json");

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
          apiClient.deserialize(response.body, 'Object') as Object ;
    } else {
      return null;
    }
  }
  /// Validator distribution information
  ///
  /// Query the distribution information of a single validator
  Future<ValidatorDistInfo> distributionValidatorsValidatorAddrGet(String validatorAddr) async {
    Object postBody = null;

    // verify required params are set
    if(validatorAddr == null) {
     throw new ApiException(400, "Missing required param: validatorAddr");
    }

    // create path and map variables
    String path = "/distribution/validators/{validatorAddr}".replaceAll("{format}","json").replaceAll("{" + "validatorAddr" + "}", validatorAddr.toString());

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
          apiClient.deserialize(response.body, 'ValidatorDistInfo') as ValidatorDistInfo ;
    } else {
      return null;
    }
  }
  /// Fee distribution outstanding rewards of a single validator
  ///
  /// 
  Future<List<Coin>> distributionValidatorsValidatorAddrOutstandingRewardsGet(String validatorAddr) async {
    Object postBody = null;

    // verify required params are set
    if(validatorAddr == null) {
     throw new ApiException(400, "Missing required param: validatorAddr");
    }

    // create path and map variables
    String path = "/distribution/validators/{validatorAddr}/outstanding_rewards".replaceAll("{format}","json").replaceAll("{" + "validatorAddr" + "}", validatorAddr.toString());

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
  /// Commission and self-delegation rewards of a single validator
  ///
  /// Query the commission and self-delegation rewards of validator.
  Future<List<Coin>> distributionValidatorsValidatorAddrRewardsGet(String validatorAddr) async {
    Object postBody = null;

    // verify required params are set
    if(validatorAddr == null) {
     throw new ApiException(400, "Missing required param: validatorAddr");
    }

    // create path and map variables
    String path = "/distribution/validators/{validatorAddr}/rewards".replaceAll("{format}","json").replaceAll("{" + "validatorAddr" + "}", validatorAddr.toString());

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
  /// Withdraw the validator&#39;s rewards
  ///
  /// Withdraw the validator&#39;s self-delegation and commissions rewards
  Future<BroadcastTxCommitResult> distributionValidatorsValidatorAddrRewardsPost(String validatorAddr, { Withdraw request body3 withdraw request body }) async {
    Object postBody = withdraw request body;

    // verify required params are set
    if(validatorAddr == null) {
     throw new ApiException(400, "Missing required param: validatorAddr");
    }

    // create path and map variables
    String path = "/distribution/validators/{validatorAddr}/rewards".replaceAll("{format}","json").replaceAll("{" + "validatorAddr" + "}", validatorAddr.toString());

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
