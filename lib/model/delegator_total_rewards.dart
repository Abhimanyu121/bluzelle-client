part of swagger.api;

class DelegatorTotalRewards {
  
  List<DelegationDelegatorReward> rewards = [];
  

  List<Coin> total = [];
  
  DelegatorTotalRewards();

  @override
  String toString() {
    return 'DelegatorTotalRewards[rewards=$rewards, total=$total, ]';
  }

  DelegatorTotalRewards.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    rewards =
      DelegationDelegatorReward.listFromJson(json['rewards'])
;
    total =
      Coin.listFromJson(json['total'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'rewards': rewards,
      'total': total
     };
  }

  static List<DelegatorTotalRewards> listFromJson(List<dynamic> json) {
    return json == null ? new List<DelegatorTotalRewards>() : json.map((value) => new DelegatorTotalRewards.fromJson(value)).toList();
  }

  static Map<String, DelegatorTotalRewards> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, DelegatorTotalRewards>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new DelegatorTotalRewards.fromJson(value));
    }
    return map;
  }
}

