part of swagger.api;



class GovernanceApi {
  final ApiClient apiClient;

  GovernanceApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Query governance deposit parameters
  ///
  /// Query governance deposit parameters. The max_deposit_period units are in nanoseconds.
  Future<InlineResponse2008> govParametersDepositGet() async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/gov/parameters/deposit".replaceAll("{format}","json");

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
          apiClient.deserialize(response.body, 'InlineResponse2008') as InlineResponse2008 ;
    } else {
      return null;
    }
  }
  /// Query governance tally parameters
  ///
  /// Query governance tally parameters
  Future<Object> govParametersTallyingGet() async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/gov/parameters/tallying".replaceAll("{format}","json");

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
  /// Query governance voting parameters
  ///
  /// Query governance voting parameters. The voting_period units are in nanoseconds.
  Future<Object> govParametersVotingGet() async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/gov/parameters/voting".replaceAll("{format}","json");

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
  /// Query proposals
  ///
  /// Query proposals information with parameters
  Future<List<TextProposal>> govProposalsGet({ String voter, String depositor, String status }) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/gov/proposals".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(voter != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "voter", voter));
    }
    if(depositor != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "depositor", depositor));
    }
    if(status != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "status", status));
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
        (apiClient.deserialize(response.body, 'List<TextProposal>') as List).map((item) => item as TextProposal).toList();
    } else {
      return null;
    }
  }
  /// Generate a parameter change proposal transaction
  ///
  /// Generate a parameter change proposal transaction
  Future<StdTx> govProposalsParamChangePost(PostProposalBody1 postProposalBody) async {
    Object postBody = postProposalBody;

    // verify required params are set
    if(postProposalBody == null) {
     throw new ApiException(400, "Missing required param: postProposalBody");
    }

    // create path and map variables
    String path = "/gov/proposals/param_change".replaceAll("{format}","json");

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
  /// Submit a proposal
  ///
  /// Send transaction to submit a proposal
  Future<StdTx> govProposalsPost(PostProposalBody postProposalBody) async {
    Object postBody = postProposalBody;

    // verify required params are set
    if(postProposalBody == null) {
     throw new ApiException(400, "Missing required param: postProposalBody");
    }

    // create path and map variables
    String path = "/gov/proposals".replaceAll("{format}","json");

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
  /// Query deposit
  ///
  /// Query deposit by proposalId and depositor address
  Future<Deposit> govProposalsProposalIdDepositsDepositorGet(String proposalId, String depositor) async {
    Object postBody = null;

    // verify required params are set
    if(proposalId == null) {
     throw new ApiException(400, "Missing required param: proposalId");
    }
    if(depositor == null) {
     throw new ApiException(400, "Missing required param: depositor");
    }

    // create path and map variables
    String path = "/gov/proposals/{proposalId}/deposits/{depositor}".replaceAll("{format}","json").replaceAll("{" + "proposalId" + "}", proposalId.toString()).replaceAll("{" + "depositor" + "}", depositor.toString());

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
          apiClient.deserialize(response.body, 'Deposit') as Deposit ;
    } else {
      return null;
    }
  }
  /// Query deposits
  ///
  /// Query deposits by proposalId
  Future<List<Deposit>> govProposalsProposalIdDepositsGet(String proposalId) async {
    Object postBody = null;

    // verify required params are set
    if(proposalId == null) {
     throw new ApiException(400, "Missing required param: proposalId");
    }

    // create path and map variables
    String path = "/gov/proposals/{proposalId}/deposits".replaceAll("{format}","json").replaceAll("{" + "proposalId" + "}", proposalId.toString());

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
        (apiClient.deserialize(response.body, 'List<Deposit>') as List).map((item) => item as Deposit).toList();
    } else {
      return null;
    }
  }
  /// Deposit tokens to a proposal
  ///
  /// Send transaction to deposit tokens to a proposal
  Future<BroadcastTxCommitResult> govProposalsProposalIdDepositsPost(String proposalId, PostDepositBody postDepositBody) async {
    Object postBody = postDepositBody;

    // verify required params are set
    if(proposalId == null) {
     throw new ApiException(400, "Missing required param: proposalId");
    }
    if(postDepositBody == null) {
     throw new ApiException(400, "Missing required param: postDepositBody");
    }

    // create path and map variables
    String path = "/gov/proposals/{proposalId}/deposits".replaceAll("{format}","json").replaceAll("{" + "proposalId" + "}", proposalId.toString());

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
  /// Query a proposal
  ///
  /// Query a proposal by id
  Future<TextProposal> govProposalsProposalIdGet(String proposalId) async {
    Object postBody = null;

    // verify required params are set
    if(proposalId == null) {
     throw new ApiException(400, "Missing required param: proposalId");
    }

    // create path and map variables
    String path = "/gov/proposals/{proposalId}".replaceAll("{format}","json").replaceAll("{" + "proposalId" + "}", proposalId.toString());

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
          apiClient.deserialize(response.body, 'TextProposal') as TextProposal ;
    } else {
      return null;
    }
  }
  /// Query proposer
  ///
  /// Query for the proposer for a proposal
  Future<Proposer> govProposalsProposalIdProposerGet(String proposalId) async {
    Object postBody = null;

    // verify required params are set
    if(proposalId == null) {
     throw new ApiException(400, "Missing required param: proposalId");
    }

    // create path and map variables
    String path = "/gov/proposals/{proposalId}/proposer".replaceAll("{format}","json").replaceAll("{" + "proposalId" + "}", proposalId.toString());

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
          apiClient.deserialize(response.body, 'Proposer') as Proposer ;
    } else {
      return null;
    }
  }
  /// Get a proposal&#39;s tally result at the current time
  ///
  /// Gets a proposal&#39;s tally result at the current time. If the proposal is pending deposits (i.e status &#39;DepositPeriod&#39;) it returns an empty tally result.
  Future<TallyResult> govProposalsProposalIdTallyGet(String proposalId) async {
    Object postBody = null;

    // verify required params are set
    if(proposalId == null) {
     throw new ApiException(400, "Missing required param: proposalId");
    }

    // create path and map variables
    String path = "/gov/proposals/{proposalId}/tally".replaceAll("{format}","json").replaceAll("{" + "proposalId" + "}", proposalId.toString());

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
          apiClient.deserialize(response.body, 'TallyResult') as TallyResult ;
    } else {
      return null;
    }
  }
  /// Query voters
  ///
  /// Query voters information by proposalId
  Future<List<Vote>> govProposalsProposalIdVotesGet(String proposalId) async {
    Object postBody = null;

    // verify required params are set
    if(proposalId == null) {
     throw new ApiException(400, "Missing required param: proposalId");
    }

    // create path and map variables
    String path = "/gov/proposals/{proposalId}/votes".replaceAll("{format}","json").replaceAll("{" + "proposalId" + "}", proposalId.toString());

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
        (apiClient.deserialize(response.body, 'List<Vote>') as List).map((item) => item as Vote).toList();
    } else {
      return null;
    }
  }
  /// Vote a proposal
  ///
  /// Send transaction to vote a proposal
  Future<BroadcastTxCommitResult> govProposalsProposalIdVotesPost(String proposalId, PostVoteBody postVoteBody) async {
    Object postBody = postVoteBody;

    // verify required params are set
    if(proposalId == null) {
     throw new ApiException(400, "Missing required param: proposalId");
    }
    if(postVoteBody == null) {
     throw new ApiException(400, "Missing required param: postVoteBody");
    }

    // create path and map variables
    String path = "/gov/proposals/{proposalId}/votes".replaceAll("{format}","json").replaceAll("{" + "proposalId" + "}", proposalId.toString());

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
  /// Query vote
  ///
  /// Query vote information by proposal Id and voter address
  Future<Vote> govProposalsProposalIdVotesVoterGet(String proposalId, String voter) async {
    Object postBody = null;

    // verify required params are set
    if(proposalId == null) {
     throw new ApiException(400, "Missing required param: proposalId");
    }
    if(voter == null) {
     throw new ApiException(400, "Missing required param: voter");
    }

    // create path and map variables
    String path = "/gov/proposals/{proposalId}/votes/{voter}".replaceAll("{format}","json").replaceAll("{" + "proposalId" + "}", proposalId.toString()).replaceAll("{" + "voter" + "}", voter.toString());

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
          apiClient.deserialize(response.body, 'Vote') as Vote ;
    } else {
      return null;
    }
  }
}
