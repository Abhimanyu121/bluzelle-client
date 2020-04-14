part of swagger.api;

class Tx {
  
  StdTx tx = null;
  
  Tx();

  @override
  String toString() {
    return 'Tx[tx=$tx, ]';
  }

  Tx.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    tx =
      
      
      new StdTx.fromJson(json['tx'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'tx': tx
     };
  }

  static List<Tx> listFromJson(List<dynamic> json) {
    return json == null ? new List<Tx>() : json.map((value) => new Tx.fromJson(value)).toList();
  }

  static Map<String, Tx> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Tx>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Tx.fromJson(value));
    }
    return map;
  }
}

