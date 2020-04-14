part of swagger.api;

class PublicKey {
  
  String type = null;
  

  String value = null;
  
  PublicKey();

  @override
  String toString() {
    return 'PublicKey[type=$type, value=$value, ]';
  }

  PublicKey.fromJson(Map<String, dynamic> json) {
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

  static List<PublicKey> listFromJson(List<dynamic> json) {
    return json == null ? new List<PublicKey>() : json.map((value) => new PublicKey.fromJson(value)).toList();
  }

  static Map<String, PublicKey> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PublicKey>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new PublicKey.fromJson(value));
    }
    return map;
  }
}

