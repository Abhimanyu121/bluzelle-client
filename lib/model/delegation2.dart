part of swagger.api;

class Delegation2 {
  
  BaseReq baseReq = null;
  

  Address delegatorAddress = null;
  

  ValidatorAddress validatorSrcAddressess = null;
  

  ValidatorAddress validatorDstAddress = null;
  

  String shares = null;
  
  Delegation2();

  @override
  String toString() {
    return 'Delegation2[baseReq=$baseReq, delegatorAddress=$delegatorAddress, validatorSrcAddressess=$validatorSrcAddressess, validatorDstAddress=$validatorDstAddress, shares=$shares, ]';
  }

  Delegation2.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    baseReq =
      
      
      new BaseReq.fromJson(json['base_req'])
;
    delegatorAddress =
      
      
      new Address.fromJson(json['delegator_address'])
;
    validatorSrcAddressess =
      
      
      new ValidatorAddress.fromJson(json['validator_src_addressess'])
;
    validatorDstAddress =
      
      
      new ValidatorAddress.fromJson(json['validator_dst_address'])
;
    shares =
        json['shares']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'base_req': baseReq,
      'delegator_address': delegatorAddress,
      'validator_src_addressess': validatorSrcAddressess,
      'validator_dst_address': validatorDstAddress,
      'shares': shares
     };
  }

  static List<Delegation2> listFromJson(List<dynamic> json) {
    return json == null ? new List<Delegation2>() : json.map((value) => new Delegation2.fromJson(value)).toList();
  }

  static Map<String, Delegation2> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Delegation2>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Delegation2.fromJson(value));
    }
    return map;
  }
}

