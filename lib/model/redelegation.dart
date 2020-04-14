part of swagger.api;

class Redelegation {
  
  String delegatorAddress = null;
  

  String validatorSrcAddress = null;
  

  String validatorDstAddress = null;
  

  List<Redelegation> entries = [];
  
  Redelegation();

  @override
  String toString() {
    return 'Redelegation[delegatorAddress=$delegatorAddress, validatorSrcAddress=$validatorSrcAddress, validatorDstAddress=$validatorDstAddress, entries=$entries, ]';
  }

  Redelegation.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    delegatorAddress =
        json['delegator_address']
    ;
    validatorSrcAddress =
        json['validator_src_address']
    ;
    validatorDstAddress =
        json['validator_dst_address']
    ;
    entries =
      Redelegation.listFromJson(json['entries'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'delegator_address': delegatorAddress,
      'validator_src_address': validatorSrcAddress,
      'validator_dst_address': validatorDstAddress,
      'entries': entries
     };
  }

  static List<Redelegation> listFromJson(List<dynamic> json) {
    return json == null ? new List<Redelegation>() : json.map((value) => new Redelegation.fromJson(value)).toList();
  }

  static Map<String, Redelegation> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Redelegation>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Redelegation.fromJson(value));
    }
    return map;
  }
}

