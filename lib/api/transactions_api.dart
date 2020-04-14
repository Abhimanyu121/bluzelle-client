part of swagger.api;



class TransactionsApi {
  final ApiClient apiClient;

  TransactionsApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Decode a transaction from the Amino wire format
  ///
  /// Decode a transaction (signed or not) from base64-encoded Amino serialized bytes to JSON
  Future<StdTx> txsDecodePost(Tx1 tx) async {
    Object postBody = tx;

    // verify required params are set
    if(tx == null) {
     throw new ApiException(400, "Missing required param: tx");
    }

    // create path and map variables
    String path = "/txs/decode".replaceAll("{format}","json");

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
  /// Encode a transaction to the Amino wire format
  ///
  /// Encode a transaction (signed or not) from JSON to base64-encoded Amino serialized bytes
  Future<InlineResponse2003> txsEncodePost(Tx tx) async {
    Object postBody = tx;

    // verify required params are set
    if(tx == null) {
     throw new ApiException(400, "Missing required param: tx");
    }

    // create path and map variables
    String path = "/txs/encode".replaceAll("{format}","json");

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
          apiClient.deserialize(response.body, 'InlineResponse2003') as InlineResponse2003 ;
    } else {
      return null;
    }
  }
  /// Search transactions
  ///
  /// Search transactions by events.
  Future<PaginatedQueryTxs> txsGet({ String messageAction, String messageSender, int page, int limit }) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/txs".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(messageAction != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "message.action", messageAction));
    }
    if(messageSender != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "message.sender", messageSender));
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
          apiClient.deserialize(response.body, 'PaginatedQueryTxs') as PaginatedQueryTxs ;
    } else {
      return null;
    }
  }
  /// Get a Tx by hash
  ///
  /// Retrieve a transaction using its hash.
  Future<TxQuery> txsHashGet(String hash) async {
    Object postBody = null;

    // verify required params are set
    if(hash == null) {
     throw new ApiException(400, "Missing required param: hash");
    }

    // create path and map variables
    String path = "/txs/{hash}".replaceAll("{format}","json").replaceAll("{" + "hash" + "}", hash.toString());

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
          apiClient.deserialize(response.body, 'TxQuery') as TxQuery ;
    } else {
      return null;
    }
  }
  /// Broadcast a signed tx
  ///
  /// Broadcast a signed tx to a full node
  Future<BroadcastTxCommitResult> txsPost(TxBroadcast txBroadcast) async {
    Object postBody = txBroadcast;

    // verify required params are set
    if(txBroadcast == null) {
     throw new ApiException(400, "Missing required param: txBroadcast");
    }

    // create path and map variables
    String path = "/txs".replaceAll("{format}","json");

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
