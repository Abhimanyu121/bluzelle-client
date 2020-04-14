part of swagger.api;

class UnbondingDelegationPair {
  
  String delegatorAddress = null;
  

  String validatorAddress = null;
  

  List<UnbondingEntries> entries = [];
  
  UnbondingDelegationPair();

  @override
  String toString() {
    return 'UnbondingDelegationPair[delegatorAddress=$delegatorAddress, validatorAddress=$validatorAddress, entries=$entries, ]';
  }

  UnbondingDelegationPair.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    delegatorAddress =
        json['delegator_address']
    ;
    validatorAddress =
        json['validator_address']
    ;
    entries =
      UnbondingEntries.listFromJson(json['entries'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'delegator_address': delegatorAddress,
      'validator_address': validatorAddress,
      'entries': entries
     };
  }

  static List<UnbondingDelegationPair> listFromJson(List<dynamic> json) {
    return json == null ? new List<UnbondingDelegationPair>() : json.map((value) => new UnbondingDelegationPair.fromJson(value)).toList();
  }

  static Map<String, UnbondingDelegationPair> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, UnbondingDelegationPair>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new UnbondingDelegationPair.fromJson(value));
    }
    return map;
  }
}

