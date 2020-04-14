part of swagger.api;

class UnjailBody {
  
  StdTx baseReq = null;
  
  UnjailBody();

  @override
  String toString() {
    return 'UnjailBody[baseReq=$baseReq, ]';
  }

  UnjailBody.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    baseReq =
      
      
      new StdTx.fromJson(json['base_req'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'base_req': baseReq
     };
  }

  static List<UnjailBody> listFromJson(List<dynamic> json) {
    return json == null ? new List<UnjailBody>() : json.map((value) => new UnjailBody.fromJson(value)).toList();
  }

  static Map<String, UnjailBody> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, UnjailBody>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new UnjailBody.fromJson(value));
    }
    return map;
  }
}

