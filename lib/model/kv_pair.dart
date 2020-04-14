part of swagger.api;

class KVPair {
  
  String key = null;
  

  String value = null;
  
  KVPair();

  @override
  String toString() {
    return 'KVPair[key=$key, value=$value, ]';
  }

  KVPair.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    key =
        json['key']
    ;
    value =
        json['value']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'key': key,
      'value': value
     };
  }

  static List<KVPair> listFromJson(List<dynamic> json) {
    return json == null ? new List<KVPair>() : json.map((value) => new KVPair.fromJson(value)).toList();
  }

  static Map<String, KVPair> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, KVPair>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new KVPair.fromJson(value));
    }
    return map;
  }
}

