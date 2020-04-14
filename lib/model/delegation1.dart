part of swagger.api;

class Delegation1 {
  
  BaseReq baseReq = null;
  

  Address delegatorAddress = null;
  

  ValidatorAddress validatorAddress = null;
  

  String shares = null;
  
  Delegation1();

  @override
  String toString() {
    return 'Delegation1[baseReq=$baseReq, delegatorAddress=$delegatorAddress, validatorAddress=$validatorAddress, shares=$shares, ]';
  }

  Delegation1.fromJson(Map<String, dynamic> json) {
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
    shares =
        json['shares']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'base_req': baseReq,
      'delegator_address': delegatorAddress,
      'validator_address': validatorAddress,
      'shares': shares
     };
  }

  static List<Delegation1> listFromJson(List<dynamic> json) {
    return json == null ? new List<Delegation1>() : json.map((value) => new Delegation1.fromJson(value)).toList();
  }

  static Map<String, Delegation1> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Delegation1>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Delegation1.fromJson(value));
    }
    return map;
  }
}

