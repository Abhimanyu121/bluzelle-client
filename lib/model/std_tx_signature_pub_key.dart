part of swagger.api;

class StdTxSignaturePubKey {
  
  String type = null;
  

  String value = null;
  
  StdTxSignaturePubKey();

  @override
  String toString() {
    return 'StdTxSignaturePubKey[type=$type, value=$value, ]';
  }

  StdTxSignaturePubKey.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    type =
        json['type']
    ;
    value =
        json['value']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'type': type,
      'value': value
     };
  }

  static List<StdTxSignaturePubKey> listFromJson(List<dynamic> json) {
    return json == null ? new List<StdTxSignaturePubKey>() : json.map((value) => new StdTxSignaturePubKey.fromJson(value)).toList();
  }

  static Map<String, StdTxSignaturePubKey> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, StdTxSignaturePubKey>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new StdTxSignaturePubKey.fromJson(value));
    }
    return map;
  }
}

