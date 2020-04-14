part of swagger.api;

class TxBroadcast {
  
  StdTx tx = null;
  

  String mode = null;
  
  TxBroadcast();

  @override
  String toString() {
    return 'TxBroadcast[tx=$tx, mode=$mode, ]';
  }

  TxBroadcast.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    tx =
      
      
      new StdTx.fromJson(json['tx'])
;
    mode =
        json['mode']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'tx': tx,
      'mode': mode
     };
  }

  static List<TxBroadcast> listFromJson(List<dynamic> json) {
    return json == null ? new List<TxBroadcast>() : json.map((value) => new TxBroadcast.fromJson(value)).toList();
  }

  static Map<String, TxBroadcast> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, TxBroadcast>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new TxBroadcast.fromJson(value));
    }
    return map;
  }
}

