part of swagger.api;

class Tx1 {
  
  String tx = null;
  
  Tx1();

  @override
  String toString() {
    return 'Tx1[tx=$tx, ]';
  }

  Tx1.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    tx =
        json['tx']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'tx': tx
     };
  }

  static List<Tx1> listFromJson(List<dynamic> json) {
    return json == null ? new List<Tx1>() : json.map((value) => new Tx1.fromJson(value)).toList();
  }

  static Map<String, Tx1> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Tx1>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Tx1.fromJson(value));
    }
    return map;
  }
}

