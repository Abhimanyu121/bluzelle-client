part of swagger.api;

class InlineResponse2002 {
  
  String blockHeight = null;
  

  List<TendermintValidator> validators = [];
  
  InlineResponse2002();

  @override
  String toString() {
    return 'InlineResponse2002[blockHeight=$blockHeight, validators=$validators, ]';
  }

  InlineResponse2002.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    blockHeight =
        json['block_height']
    ;
    validators =
      TendermintValidator.listFromJson(json['validators'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'block_height': blockHeight,
      'validators': validators
     };
  }

  static List<InlineResponse2002> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse2002>() : json.map((value) => new InlineResponse2002.fromJson(value)).toList();
  }

  static Map<String, InlineResponse2002> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, InlineResponse2002>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new InlineResponse2002.fromJson(value));
    }
    return map;
  }
}

