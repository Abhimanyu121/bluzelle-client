part of swagger.api;

class Withdraw request body {
  
  BaseReq baseReq = null;
  
  Withdraw request body();

  @override
  String toString() {
    return 'Withdraw request body[baseReq=$baseReq, ]';
  }

  Withdraw request body.fromJson(Map<String, dynamic> json) {
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

  static List<Withdraw request body> listFromJson(List<dynamic> json) {
    return json == null ? new List<Withdraw request body>() : json.map((value) => new Withdraw request body.fromJson(value)).toList();
  }

  static Map<String, Withdraw request body> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Withdraw request body>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Withdraw request body.fromJson(value));
    }
    return map;
  }
}

