part of swagger.api;

class DelegationDelegatorReward {
  
  ValidatorAddress validatorAddress = null;
  

  List<Coin> reward = [];
  
  DelegationDelegatorReward();

  @override
  String toString() {
    return 'DelegationDelegatorReward[validatorAddress=$validatorAddress, reward=$reward, ]';
  }

  DelegationDelegatorReward.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    validatorAddress =
      
      
      new ValidatorAddress.fromJson(json['validator_address'])
;
    reward =
      Coin.listFromJson(json['reward'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'validator_address': validatorAddress,
      'reward': reward
     };
  }

  static List<DelegationDelegatorReward> listFromJson(List<dynamic> json) {
    return json == null ? new List<DelegationDelegatorReward>() : json.map((value) => new DelegationDelegatorReward.fromJson(value)).toList();
  }

  static Map<String, DelegationDelegatorReward> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, DelegationDelegatorReward>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new DelegationDelegatorReward.fromJson(value));
    }
    return map;
  }
}

