part of swagger.api;



class StakingApi {
  final ApiClient apiClient;

  StakingApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Get all delegations from a delegator
  ///
  /// 
  Future<List<Delegation>> stakingDelegatorsDelegatorAddrDelegationsGet(String delegatorAddr) async {
    Object postBody = null;

    // verify required params are set
    if(delegatorAddr == null) {
     throw new ApiException(400, "Missing required param: delegatorAddr");
    }

    // create path and map variables
    String path = "/staking/delegators/{delegatorAddr}/delegations".replaceAll("{format}","json").replaceAll("{" + "delegatorAddr" + "}", delegatorAddr.toString());

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
        (apiClient.deserialize(response.body, 'List<Delegation>') as List).map((item) => item as Delegation).toList();
    } else {
      return null;
    }
  }
  /// Submit delegation
  ///
  /// 
  Future<BroadcastTxCommitResult> stakingDelegatorsDelegatorAddrDelegationsPost(String delegatorAddr, { Delegation delegation }) async {
    Object postBody = delegation;

    // verify required params are set
    if(delegatorAddr == null) {
     throw new ApiException(400, "Missing required param: delegatorAddr");
    }

    // create path and map variables
    String path = "/staking/delegators/{delegatorAddr}/delegations".replaceAll("{format}","json").replaceAll("{" + "delegatorAddr" + "}", delegatorAddr.toString());

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
  /// Query the current delegation between a delegator and a validator
  ///
  /// 
  Future<Delegation> stakingDelegatorsDelegatorAddrDelegationsValidatorAddrGet(String delegatorAddr, String validatorAddr) async {
    Object postBody = null;

    // verify required params are set
    if(delegatorAddr == null) {
     throw new ApiException(400, "Missing required param: delegatorAddr");
    }
    if(validatorAddr == null) {
     throw new ApiException(400, "Missing required param: validatorAddr");
    }

    // create path and map variables
    String path = "/staking/delegators/{delegatorAddr}/delegations/{validatorAddr}".replaceAll("{format}","json").replaceAll("{" + "delegatorAddr" + "}", delegatorAddr.toString()).replaceAll("{" + "validatorAddr" + "}", validatorAddr.toString());

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
          apiClient.deserialize(response.body, 'Delegation') as Delegation ;
    } else {
      return null;
    }
  }
  /// Submit a redelegation
  ///
  /// 
  Future<StdTx> stakingDelegatorsDelegatorAddrRedelegationsPost(String delegatorAddr, { Delegation2 delegation }) async {
    Object postBody = delegation;

    // verify required params are set
    if(delegatorAddr == null) {
     throw new ApiException(400, "Missing required param: delegatorAddr");
    }

    // create path and map variables
    String path = "/staking/delegators/{delegatorAddr}/redelegations".replaceAll("{format}","json").replaceAll("{" + "delegatorAddr" + "}", delegatorAddr.toString());

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
  /// Get all unbonding delegations from a delegator
  ///
  /// 
  Future<List<UnbondingDelegation>> stakingDelegatorsDelegatorAddrUnbondingDelegationsGet(String delegatorAddr) async {
    Object postBody = null;

    // verify required params are set
    if(delegatorAddr == null) {
     throw new ApiException(400, "Missing required param: delegatorAddr");
    }

    // create path and map variables
    String path = "/staking/delegators/{delegatorAddr}/unbonding_delegations".replaceAll("{format}","json").replaceAll("{" + "delegatorAddr" + "}", delegatorAddr.toString());

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
        (apiClient.deserialize(response.body, 'List<UnbondingDelegation>') as List).map((item) => item as UnbondingDelegation).toList();
    } else {
      return null;
    }
  }
  /// Submit an unbonding delegation
  ///
  /// 
  Future<BroadcastTxCommitResult> stakingDelegatorsDelegatorAddrUnbondingDelegationsPost(String delegatorAddr, { Delegation1 delegation }) async {
    Object postBody = delegation;

    // verify required params are set
    if(delegatorAddr == null) {
     throw new ApiException(400, "Missing required param: delegatorAddr");
    }

    // create path and map variables
    String path = "/staking/delegators/{delegatorAddr}/unbonding_delegations".replaceAll("{format}","json").replaceAll("{" + "delegatorAddr" + "}", delegatorAddr.toString());

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
  /// Query all unbonding delegations between a delegator and a validator
  ///
  /// 
  Future<UnbondingDelegationPair> stakingDelegatorsDelegatorAddrUnbondingDelegationsValidatorAddrGet(String delegatorAddr, String validatorAddr) async {
    Object postBody = null;

    // verify required params are set
    if(delegatorAddr == null) {
     throw new ApiException(400, "Missing required param: delegatorAddr");
    }
    if(validatorAddr == null) {
     throw new ApiException(400, "Missing required param: validatorAddr");
    }

    // create path and map variables
    String path = "/staking/delegators/{delegatorAddr}/unbonding_delegations/{validatorAddr}".replaceAll("{format}","json").replaceAll("{" + "delegatorAddr" + "}", delegatorAddr.toString()).replaceAll("{" + "validatorAddr" + "}", validatorAddr.toString());

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
          apiClient.deserialize(response.body, 'UnbondingDelegationPair') as UnbondingDelegationPair ;
    } else {
      return null;
    }
  }
  /// Query all validators that a delegator is bonded to
  ///
  /// 
  Future<List<Validator>> stakingDelegatorsDelegatorAddrValidatorsGet(String delegatorAddr) async {
    Object postBody = null;

    // verify required params are set
    if(delegatorAddr == null) {
     throw new ApiException(400, "Missing required param: delegatorAddr");
    }

    // create path and map variables
    String path = "/staking/delegators/{delegatorAddr}/validators".replaceAll("{format}","json").replaceAll("{" + "delegatorAddr" + "}", delegatorAddr.toString());

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
        (apiClient.deserialize(response.body, 'List<Validator>') as List).map((item) => item as Validator).toList();
    } else {
      return null;
    }
  }
  /// Query a validator that a delegator is bonded to
  ///
  /// 
  Future<Validator> stakingDelegatorsDelegatorAddrValidatorsValidatorAddrGet(String delegatorAddr, String validatorAddr) async {
    Object postBody = null;

    // verify required params are set
    if(delegatorAddr == null) {
     throw new ApiException(400, "Missing required param: delegatorAddr");
    }
    if(validatorAddr == null) {
     throw new ApiException(400, "Missing required param: validatorAddr");
    }

    // create path and map variables
    String path = "/staking/delegators/{delegatorAddr}/validators/{validatorAddr}".replaceAll("{format}","json").replaceAll("{" + "delegatorAddr" + "}", delegatorAddr.toString()).replaceAll("{" + "validatorAddr" + "}", validatorAddr.toString());

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
          apiClient.deserialize(response.body, 'Validator') as Validator ;
    } else {
      return null;
    }
  }
  /// Get the current staking parameter values
  ///
  /// 
  Future<InlineResponse2006> stakingParametersGet() async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/staking/parameters".replaceAll("{format}","json");

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
          apiClient.deserialize(response.body, 'InlineResponse2006') as InlineResponse2006 ;
    } else {
      return null;
    }
  }
  /// Get the current state of the staking pool
  ///
  /// 
  Future<InlineResponse2005> stakingPoolGet() async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/staking/pool".replaceAll("{format}","json");

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
          apiClient.deserialize(response.body, 'InlineResponse2005') as InlineResponse2005 ;
    } else {
      return null;
    }
  }
  /// Get all redelegations (filter by query params)
  ///
  /// 
  Future<List<Redelegation>> stakingRedelegationsGet({ String delegator, String validatorFrom, String validatorTo }) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/staking/redelegations".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(delegator != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "delegator", delegator));
    }
    if(validatorFrom != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "validator_from", validatorFrom));
    }
    if(validatorTo != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "validator_to", validatorTo));
    }
    
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
        (apiClient.deserialize(response.body, 'List<Redelegation>') as List).map((item) => item as Redelegation).toList();
    } else {
      return null;
    }
  }
  /// Get all validator candidates. By default it returns only the bonded validators.
  ///
  /// 
  Future<List<Validator>> stakingValidatorsGet({ String status, int page, int limit }) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/staking/validators".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(status != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "status", status));
    }
    if(page != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "page", page));
    }
    if(limit != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "limit", limit));
    }
    
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
        (apiClient.deserialize(response.body, 'List<Validator>') as List).map((item) => item as Validator).toList();
    } else {
      return null;
    }
  }
  /// Get all delegations from a validator
  ///
  /// 
  Future<List<Delegation>> stakingValidatorsValidatorAddrDelegationsGet(String validatorAddr) async {
    Object postBody = null;

    // verify required params are set
    if(validatorAddr == null) {
     throw new ApiException(400, "Missing required param: validatorAddr");
    }

    // create path and map variables
    String path = "/staking/validators/{validatorAddr}/delegations".replaceAll("{format}","json").replaceAll("{" + "validatorAddr" + "}", validatorAddr.toString());

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
        (apiClient.deserialize(response.body, 'List<Delegation>') as List).map((item) => item as Delegation).toList();
    } else {
      return null;
    }
  }
  /// Query the information from a single validator
  ///
  /// 
  Future<Validator> stakingValidatorsValidatorAddrGet(String validatorAddr) async {
    Object postBody = null;

    // verify required params are set
    if(validatorAddr == null) {
     throw new ApiException(400, "Missing required param: validatorAddr");
    }

    // create path and map variables
    String path = "/staking/validators/{validatorAddr}".replaceAll("{format}","json").replaceAll("{" + "validatorAddr" + "}", validatorAddr.toString());

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
          apiClient.deserialize(response.body, 'Validator') as Validator ;
    } else {
      return null;
    }
  }
  /// Get all unbonding delegations from a validator
  ///
  /// 
  Future<List<UnbondingDelegation>> stakingValidatorsValidatorAddrUnbondingDelegationsGet(String validatorAddr) async {
    Object postBody = null;

    // verify required params are set
    if(validatorAddr == null) {
     throw new ApiException(400, "Missing required param: validatorAddr");
    }

    // create path and map variables
    String path = "/staking/validators/{validatorAddr}/unbonding_delegations".replaceAll("{format}","json").replaceAll("{" + "validatorAddr" + "}", validatorAddr.toString());

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
        (apiClient.deserialize(response.body, 'List<UnbondingDelegation>') as List).map((item) => item as UnbondingDelegation).toList();
    } else {
      return null;
    }
  }
}
