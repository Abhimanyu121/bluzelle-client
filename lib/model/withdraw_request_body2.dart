part of swagger.api;

class Withdraw request body2 {
  
  BaseReq baseReq = null;
  

  Address withdrawAddress = null;
  
  Withdraw request body2();

  @override
  String toString() {
    return 'Withdraw request body2[baseReq=$baseReq, withdrawAddress=$withdrawAddress, ]';
  }

  Withdraw request body2.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    baseReq =
      
      
      new BaseReq.fromJson(json['base_req'])
;
    withdrawAddress =
      
      
      new Address.fromJson(json['withdraw_address'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'base_req': baseReq,
      'withdraw_address': withdrawAddress
     };
  }

  static List<Withdraw request body2> listFromJson(List<dynamic> json) {
    return json == null ? new List<Withdraw request body2>() : json.map((value) => new Withdraw request body2.fromJson(value)).toList();
  }

  static Map<String, Withdraw request body2> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Withdraw request body2>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Withdraw request body2.fromJson(value));
    }
    return map;
  }
}

