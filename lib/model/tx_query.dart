part of swagger.api;

class TxQuery {
  
  String hash = null;
  

  num height = null;
  

  StdTx tx = null;
  

  TxQueryResult result = null;
  
  TxQuery();

  @override
  String toString() {
    return 'TxQuery[hash=$hash, height=$height, tx=$tx, result=$result, ]';
  }

  TxQuery.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    hash =
        json['hash']
    ;
    height =
        json['height']
    ;
    tx =
      
      
      new StdTx.fromJson(json['tx'])
;
    result =
      
      
      new TxQueryResult.fromJson(json['result'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'hash': hash,
      'height': height,
      'tx': tx,
      'result': result
     };
  }

  static List<TxQuery> listFromJson(List<dynamic> json) {
    return json == null ? new List<TxQuery>() : json.map((value) => new TxQuery.fromJson(value)).toList();
  }

  static Map<String, TxQuery> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, TxQuery>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new TxQuery.fromJson(value));
    }
    return map;
  }
}

