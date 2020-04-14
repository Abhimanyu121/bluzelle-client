part of swagger.api;

class Withdraw request body1 {
  
  BaseReq baseReq = null;
  
  Withdraw request body1();

  @override
  String toString() {
    return 'Withdraw request body1[baseReq=$baseReq, ]';
  }

  Withdraw request body1.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    baseReq =
      
      
      new BaseReq.fromJson(json['base_req'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'base_req': baseReq
     };
  }

  static List<Withdraw request body1> listFromJson(List<dynamic> json) {
    return json == null ? new List<Withdraw request body1>() : json.map((value) => new Withdraw request body1.fromJson(value)).toList();
  }

  static Map<String, Withdraw request body1> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Withdraw request body1>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Withdraw request body1.fromJson(value));
    }
    return map;
  }
}

