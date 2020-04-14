part of swagger.api;

class ParamChange {
  
  String subspace = null;
  

  String key = null;
  

  String subkey = null;
  

  Object value = null;
  
  ParamChange();

  @override
  String toString() {
    return 'ParamChange[subspace=$subspace, key=$key, subkey=$subkey, value=$value, ]';
  }

  ParamChange.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    subspace =
        json['subspace']
    ;
    key =
        json['key']
    ;
    subkey =
        json['subkey']
    ;
    value =
      
      
      new Object.fromJson(json['value'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'subspace': subspace,
      'key': key,
      'subkey': subkey,
      'value': value
     };
  }

  static List<ParamChange> listFromJson(List<dynamic> json) {
    return json == null ? new List<ParamChange>() : json.map((value) => new ParamChange.fromJson(value)).toList();
  }

  static Map<String, ParamChange> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ParamChange>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ParamChange.fromJson(value));
    }
    return map;
  }
}

