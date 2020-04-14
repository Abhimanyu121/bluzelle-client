part of swagger.api;

class Delegation {
  
  BaseReq baseReq = null;
  

  Address delegatorAddress = null;
  

  ValidatorAddress validatorAddress = null;
  

  Coin delegation = null;
  
  Delegation();

  @override
  String toString() {
    return 'Delegation[baseReq=$baseReq, delegatorAddress=$delegatorAddress, validatorAddress=$validatorAddress, delegation=$delegation, ]';
  }

  Delegation.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    baseReq =
      
      
      new BaseReq.fromJson(json['base_req'])
;
    delegatorAddress =
      
      
      new Address.fromJson(json['delegator_address'])
;
    validatorAddress =
      
      
      new ValidatorAddress.fromJson(json['validator_address'])
;
    delegation =
      
      
      new Coin.fromJson(json['delegation'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'base_req': baseReq,
      'delegator_address': delegatorAddress,
      'validator_address': validatorAddress,
      'delegation': delegation
     };
  }

  static List<Delegation> listFromJson(List<dynamic> json) {
    return json == null ? new List<Delegation>() : json.map((value) => new Delegation.fromJson(value)).toList();
  }

  static Map<String, Delegation> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Delegation>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Delegation.fromJson(value));
    }
    return map;
  }
}

