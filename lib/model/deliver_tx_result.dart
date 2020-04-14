part of swagger.api;

class DeliverTxResult {
  
  int code = null;
  

  String data = null;
  

  int gasUsed = null;
  

  int gasWanted = null;
  

  String info = null;
  

  String log = null;
  

  List<KVPair> tags = [];
  
  DeliverTxResult();

  @override
  String toString() {
    return 'DeliverTxResult[code=$code, data=$data, gasUsed=$gasUsed, gasWanted=$gasWanted, info=$info, log=$log, tags=$tags, ]';
  }

  DeliverTxResult.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    code =
        json['code']
    ;
    data =
        json['data']
    ;
    gasUsed =
        json['gas_used']
    ;
    gasWanted =
        json['gas_wanted']
    ;
    info =
        json['info']
    ;
    log =
        json['log']
    ;
    tags =
      KVPair.listFromJson(json['tags'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'code': code,
      'data': data,
      'gas_used': gasUsed,
      'gas_wanted': gasWanted,
      'info': info,
      'log': log,
      'tags': tags
     };
  }

  static List<DeliverTxResult> listFromJson(List<dynamic> json) {
    return json == null ? new List<DeliverTxResult>() : json.map((value) => new DeliverTxResult.fromJson(value)).toList();
  }

  static Map<String, DeliverTxResult> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, DeliverTxResult>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new DeliverTxResult.fromJson(value));
    }
    return map;
  }
}

