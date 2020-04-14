part of swagger.api;

class CheckTxResult {
  
  int code = null;
  

  String data = null;
  

  int gasUsed = null;
  

  int gasWanted = null;
  

  String info = null;
  

  String log = null;
  

  List<KVPair> tags = [];
  
  CheckTxResult();

  @override
  String toString() {
    return 'CheckTxResult[code=$code, data=$data, gasUsed=$gasUsed, gasWanted=$gasWanted, info=$info, log=$log, tags=$tags, ]';
  }

  CheckTxResult.fromJson(Map<String, dynamic> json) {
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

  static List<CheckTxResult> listFromJson(List<dynamic> json) {
    return json == null ? new List<CheckTxResult>() : json.map((value) => new CheckTxResult.fromJson(value)).toList();
  }

  static Map<String, CheckTxResult> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CheckTxResult>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new CheckTxResult.fromJson(value));
    }
    return map;
  }
}

