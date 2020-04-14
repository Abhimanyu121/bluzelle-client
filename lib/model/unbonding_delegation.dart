part of swagger.api;

class UnbondingDelegation {
  
  String delegatorAddress = null;
  

  String validatorAddress = null;
  

  String initialBalance = null;
  

  String balance = null;
  

  int creationHeight = null;
  

  int minTime = null;
  
  UnbondingDelegation();

  @override
  String toString() {
    return 'UnbondingDelegation[delegatorAddress=$delegatorAddress, validatorAddress=$validatorAddress, initialBalance=$initialBalance, balance=$balance, creationHeight=$creationHeight, minTime=$minTime, ]';
  }

  UnbondingDelegation.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    delegatorAddress =
        json['delegator_address']
    ;
    validatorAddress =
        json['validator_address']
    ;
    initialBalance =
        json['initial_balance']
    ;
    balance =
        json['balance']
    ;
    creationHeight =
        json['creation_height']
    ;
    minTime =
        json['min_time']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'delegator_address': delegatorAddress,
      'validator_address': validatorAddress,
      'initial_balance': initialBalance,
      'balance': balance,
      'creation_height': creationHeight,
      'min_time': minTime
     };
  }

  static List<UnbondingDelegation> listFromJson(List<dynamic> json) {
    return json == null ? new List<UnbondingDelegation>() : json.map((value) => new UnbondingDelegation.fromJson(value)).toList();
  }

  static Map<String, UnbondingDelegation> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, UnbondingDelegation>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new UnbondingDelegation.fromJson(value));
    }
    return map;
  }
}

