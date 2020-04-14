part of swagger.api;

class QueryParam {
  String name;
  String value;

  QueryParam(this.name, this.value);
}

class ApiClient {

  String basePath;
  var client = new BrowserClient();

  Map<String, String> _defaultHeaderMap = {};
  Map<String, Authentication> _authentications = {};

  final _RegList = new RegExp(r'^List<(.*)>$');
  final _RegMap = new RegExp(r'^Map<String,(.*)>$');

  ApiClient({this.basePath: "https://stargate.cosmos.network"}) {
    // Setup authentications (key: authentication name, value: authentication).
    _authentications['kms'] = new HttpBasicAuth();
  }

  void addDefaultHeader(String key, String value) {
     _defaultHeaderMap[key] = value;
  }

  dynamic _deserialize(dynamic value, String targetType) {
    try {
      switch (targetType) {
        case 'String':
          return '$value';
        case 'int':
          return value is int ? value : int.parse('$value');
        case 'bool':
          return value is bool ? value : '$value'.toLowerCase() == 'true';
        case 'double':
          return value is double ? value : double.parse('$value');
        case 'Account':
          return new Account.fromJson(value);
        case 'Address':
          return new Address.fromJson(value);
        case 'BaseReq':
          return new BaseReq.fromJson(value);
        case 'Block':
          return new Block.fromJson(value);
        case 'BlockHeader':
          return new BlockHeader.fromJson(value);
        case 'BlockHeaderVersion':
          return new BlockHeaderVersion.fromJson(value);
        case 'BlockID':
          return new BlockID.fromJson(value);
        case 'BlockIDParts':
          return new BlockIDParts.fromJson(value);
        case 'BlockLastCommit':
          return new BlockLastCommit.fromJson(value);
        case 'BlockLastCommitPrecommits':
          return new BlockLastCommitPrecommits.fromJson(value);
        case 'BlockQuery':
          return new BlockQuery.fromJson(value);
        case 'BlockQueryBlockMeta':
          return new BlockQueryBlockMeta.fromJson(value);
        case 'BroadcastTxCommitResult':
          return new BroadcastTxCommitResult.fromJson(value);
        case 'CheckTxResult':
          return new CheckTxResult.fromJson(value);
        case 'Coin':
          return new Coin.fromJson(value);
        case 'Delegation':
          return new Delegation.fromJson(value);
        case 'Delegation1':
          return new Delegation1.fromJson(value);
        case 'Delegation2':
          return new Delegation2.fromJson(value);
        case 'DelegationDelegatorReward':
          return new DelegationDelegatorReward.fromJson(value);
        case 'DelegatorTotalRewards':
          return new DelegatorTotalRewards.fromJson(value);
        case 'DeliverTxResult':
          return new DeliverTxResult.fromJson(value);
        case 'Deposit':
          return new Deposit.fromJson(value);
        case 'Hash':
          return new Hash.fromJson(value);
        case 'InlineResponse200':
          return new InlineResponse200.fromJson(value);
        case 'InlineResponse2001':
          return new InlineResponse2001.fromJson(value);
        case 'InlineResponse2002':
          return new InlineResponse2002.fromJson(value);
        case 'InlineResponse2003':
          return new InlineResponse2003.fromJson(value);
        case 'InlineResponse2004':
          return new InlineResponse2004.fromJson(value);
        case 'InlineResponse2004Value':
          return new InlineResponse2004Value.fromJson(value);
        case 'InlineResponse2005':
          return new InlineResponse2005.fromJson(value);
        case 'InlineResponse2006':
          return new InlineResponse2006.fromJson(value);
        case 'InlineResponse2007':
          return new InlineResponse2007.fromJson(value);
        case 'InlineResponse2008':
          return new InlineResponse2008.fromJson(value);
        case 'InlineResponse200ApplicationVersion':
          return new InlineResponse200ApplicationVersion.fromJson(value);
        case 'InlineResponse200NodeInfo':
          return new InlineResponse200NodeInfo.fromJson(value);
        case 'InlineResponse200NodeInfoOther':
          return new InlineResponse200NodeInfoOther.fromJson(value);
        case 'InlineResponse200NodeInfoProtocolVersion':
          return new InlineResponse200NodeInfoProtocolVersion.fromJson(value);
        case 'KVPair':
          return new KVPair.fromJson(value);
        case 'Msg':
          return new Msg.fromJson(value);
        case 'PaginatedQueryTxs':
          return new PaginatedQueryTxs.fromJson(value);
        case 'ParamChange':
          return new ParamChange.fromJson(value);
        case 'PostDepositBody':
          return new PostDepositBody.fromJson(value);
        case 'PostProposalBody':
          return new PostProposalBody.fromJson(value);
        case 'PostProposalBody1':
          return new PostProposalBody1.fromJson(value);
        case 'PostVoteBody':
          return new PostVoteBody.fromJson(value);
        case 'Proposer':
          return new Proposer.fromJson(value);
        case 'PublicKey':
          return new PublicKey.fromJson(value);
        case 'Redelegation':
          return new Redelegation.fromJson(value);
        case 'RedelegationEntry':
          return new RedelegationEntry.fromJson(value);
        case 'SigningInfo':
          return new SigningInfo.fromJson(value);
        case 'StdTx':
          return new StdTx.fromJson(value);
        case 'StdTxFee':
          return new StdTxFee.fromJson(value);
        case 'StdTxSignature':
          return new StdTxSignature.fromJson(value);
        case 'StdTxSignaturePubKey':
          return new StdTxSignaturePubKey.fromJson(value);
        case 'Supply':
          return new Supply.fromJson(value);
        case 'TallyResult':
          return new TallyResult.fromJson(value);
        case 'TendermintValidator':
          return new TendermintValidator.fromJson(value);
        case 'TextProposal':
          return new TextProposal.fromJson(value);
        case 'Tx':
          return new Tx.fromJson(value);
        case 'Tx1':
          return new Tx1.fromJson(value);
        case 'TxBroadcast':
          return new TxBroadcast.fromJson(value);
        case 'TxQuery':
          return new TxQuery.fromJson(value);
        case 'TxQueryResult':
          return new TxQueryResult.fromJson(value);
        case 'UnbondingDelegation':
          return new UnbondingDelegation.fromJson(value);
        case 'UnbondingDelegationPair':
          return new UnbondingDelegationPair.fromJson(value);
        case 'UnbondingEntries':
          return new UnbondingEntries.fromJson(value);
        case 'UnjailBody':
          return new UnjailBody.fromJson(value);
        case 'Validator':
          return new Validator.fromJson(value);
        case 'ValidatorAddress':
          return new ValidatorAddress.fromJson(value);
        case 'ValidatorCommission':
          return new ValidatorCommission.fromJson(value);
        case 'ValidatorDescription':
          return new ValidatorDescription.fromJson(value);
        case 'ValidatorDistInfo':
          return new ValidatorDistInfo.fromJson(value);
        case 'Vote':
          return new Vote.fromJson(value);
        case 'Withdraw request body':
          return new Withdraw request body.fromJson(value);
        case 'Withdraw request body1':
          return new Withdraw request body1.fromJson(value);
        case 'Withdraw request body2':
          return new Withdraw request body2.fromJson(value);
        case 'Withdraw request body3':
          return new Withdraw request body3.fromJson(value);
        default:
          {
            Match match;
            if (value is List &&
                (match = _RegList.firstMatch(targetType)) != null) {
              var newTargetType = match[1];
              return value.map((v) => _deserialize(v, newTargetType)).toList();
            } else if (value is Map &&
                (match = _RegMap.firstMatch(targetType)) != null) {
              var newTargetType = match[1];
              return new Map.fromIterables(value.keys,
                  value.values.map((v) => _deserialize(v, newTargetType)));
            }
          }
      }
    } catch (e, stack) {
      throw new ApiException.withInner(500, 'Exception during deserialization.', e, stack);
    }
    throw new ApiException(500, 'Could not find a suitable class for deserialization');
  }

  dynamic deserialize(String jsonVal, String targetType) {
    // Remove all spaces.  Necessary for reg expressions as well.
    targetType = targetType.replaceAll(' ', '');

    if (targetType == 'String') return jsonVal;

    var decodedJson = json.decode(jsonVal);
    return _deserialize(decodedJson, targetType);
  }

  String serialize(Object obj) {
    String serialized = '';
    if (obj == null) {
      serialized = '';
    } else {
      serialized = json.encode(obj);
    }
    return serialized;
  }

  // We don't use a Map<String, String> for queryParams.
  // If collectionFormat is 'multi' a key might appear multiple times.
  Future<Response> invokeAPI(String path,
                             String method,
                             Iterable<QueryParam> queryParams,
                             Object body,
                             Map<String, String> headerParams,
                             Map<String, String> formParams,
                             String contentType,
                             List<String> authNames) async {

    _updateParamsForAuth(authNames, queryParams, headerParams);

    var ps = queryParams.where((p) => p.value != null).map((p) => '${p.name}=${p.value}');
    String queryString = ps.isNotEmpty ?
                         '?' + ps.join('&') :
                         '';

    String url = basePath + path + queryString;

    headerParams.addAll(_defaultHeaderMap);
    headerParams['Content-Type'] = contentType;

    if(body is MultipartRequest) {
      var request = new MultipartRequest(method, Uri.parse(url));
      request.fields.addAll(body.fields);
      request.files.addAll(body.files);
      request.headers.addAll(body.headers);
      request.headers.addAll(headerParams);
      var response = await client.send(request);
      return Response.fromStream(response);
    } else {
      var msgBody = contentType == "application/x-www-form-urlencoded" ? formParams : serialize(body);
      switch(method) {
        case "POST":
          return client.post(url, headers: headerParams, body: msgBody);
        case "PUT":
          return client.put(url, headers: headerParams, body: msgBody);
        case "DELETE":
          return client.delete(url, headers: headerParams);
        case "PATCH":
          return client.patch(url, headers: headerParams, body: msgBody);
        default:
          return client.get(url, headers: headerParams);
      }
    }
  }

  /// Update query and header parameters based on authentication settings.
  /// @param authNames The authentications to apply
  void _updateParamsForAuth(List<String> authNames, List<QueryParam> queryParams, Map<String, String> headerParams) {
    authNames.forEach((authName) {
      Authentication auth = _authentications[authName];
      if (auth == null) throw new ArgumentError("Authentication undefined: " + authName);
      auth.applyToParams(queryParams, headerParams);
    });
  }

  void setAccessToken(String accessToken) {
    _authentications.forEach((key, auth) {
      if (auth is OAuth) {
        auth.setAccessToken(accessToken);
      }
    });
  }
}
