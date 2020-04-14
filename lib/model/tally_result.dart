part of swagger.api;

class TallyResult {
  
  String yes = null;
  

  String abstain = null;
  

  String no = null;
  

  String noWithVeto = null;
  
  TallyResult();

  @override
  String toString() {
    return 'TallyResult[yes=$yes, abstain=$abstain, no=$no, noWithVeto=$noWithVeto, ]';
  }

  TallyResult.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    yes =
        json['yes']
    ;
    abstain =
        json['abstain']
    ;
    no =
        json['no']
    ;
    noWithVeto =
        json['no_with_veto']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'yes': yes,
      'abstain': abstain,
      'no': no,
      'no_with_veto': noWithVeto
     };
  }

  static List<TallyResult> listFromJson(List<dynamic> json) {
    return json == null ? new List<TallyResult>() : json.map((value) => new TallyResult.fromJson(value)).toList();
  }

  static Map<String, TallyResult> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, TallyResult>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new TallyResult.fromJson(value));
    }
    return map;
  }
}

