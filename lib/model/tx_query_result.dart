part of swagger.api;

class TxQueryResult {
  
  String log = null;
  

  String gasWanted = null;
  

  String gasUsed = null;
  

  List<KVPair> tags = [];
  
  TxQueryResult();

  @override
  String toString() {
    return 'TxQueryResult[log=$log, gasWanted=$gasWanted, gasUsed=$gasUsed, tags=$tags, ]';
  }

  TxQueryResult.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    log =
        json['log']
    ;
    gasWanted =
        json['gas_wanted']
    ;
    gasUsed =
        json['gas_used']
    ;
    tags =
      KVPair.listFromJson(json['tags'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'log': log,
      'gas_wanted': gasWanted,
      'gas_used': gasUsed,
      'tags': tags
     };
  }

  static List<TxQueryResult> listFromJson(List<dynamic> json) {
    return json == null ? new List<TxQueryResult>() : json.map((value) => new TxQueryResult.fromJson(value)).toList();
  }

  static Map<String, TxQueryResult> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, TxQueryResult>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new TxQueryResult.fromJson(value));
    }
    return map;
  }
}

