part of swagger.api;

class Withdraw request body3 {
  
  BaseReq baseReq = null;
  
  Withdraw request body3();

  @override
  String toString() {
    return 'Withdraw request body3[baseReq=$baseReq, ]';
  }

  Withdraw request body3.fromJson(Map<String, dynamic> json) {
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

  static List<Withdraw request body3> listFromJson(List<dynamic> json) {
    return json == null ? new List<Withdraw request body3>() : json.map((value) => new Withdraw request body3.fromJson(value)).toList();
  }

  static Map<String, Withdraw request body3> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Withdraw request body3>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Withdraw request body3.fromJson(value));
    }
    return map;
  }
}

