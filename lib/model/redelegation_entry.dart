part of swagger.api;

class RedelegationEntry {
  
  int creationHeight = null;
  

  int completionTime = null;
  

  String initialBalance = null;
  

  String balance = null;
  

  String sharesDst = null;
  
  RedelegationEntry();

  @override
  String toString() {
    return 'RedelegationEntry[creationHeight=$creationHeight, completionTime=$completionTime, initialBalance=$initialBalance, balance=$balance, sharesDst=$sharesDst, ]';
  }

  RedelegationEntry.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    creationHeight =
        json['creation_height']
    ;
    completionTime =
        json['completion_time']
    ;
    initialBalance =
        json['initial_balance']
    ;
    balance =
        json['balance']
    ;
    sharesDst =
        json['shares_dst']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'creation_height': creationHeight,
      'completion_time': completionTime,
      'initial_balance': initialBalance,
      'balance': balance,
      'shares_dst': sharesDst
     };
  }

  static List<RedelegationEntry> listFromJson(List<dynamic> json) {
    return json == null ? new List<RedelegationEntry>() : json.map((value) => new RedelegationEntry.fromJson(value)).toList();
  }

  static Map<String, RedelegationEntry> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, RedelegationEntry>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new RedelegationEntry.fromJson(value));
    }
    return map;
  }
}

