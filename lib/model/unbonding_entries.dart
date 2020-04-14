part of swagger.api;

class UnbondingEntries {
  
  String initialBalance = null;
  

  String balance = null;
  

  String creationHeight = null;
  

  String minTime = null;
  
  UnbondingEntries();

  @override
  String toString() {
    return 'UnbondingEntries[initialBalance=$initialBalance, balance=$balance, creationHeight=$creationHeight, minTime=$minTime, ]';
  }

  UnbondingEntries.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
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
      'initial_balance': initialBalance,
      'balance': balance,
      'creation_height': creationHeight,
      'min_time': minTime
     };
  }

  static List<UnbondingEntries> listFromJson(List<dynamic> json) {
    return json == null ? new List<UnbondingEntries>() : json.map((value) => new UnbondingEntries.fromJson(value)).toList();
  }

  static Map<String, UnbondingEntries> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, UnbondingEntries>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new UnbondingEntries.fromJson(value));
    }
    return map;
  }
}

