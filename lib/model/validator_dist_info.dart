part of swagger.api;

class ValidatorDistInfo {
  
  ValidatorAddress operatorAddress = null;
  

  List<Coin> selfBondRewards = [];
  

  List<Coin> valCommission = [];
  
  ValidatorDistInfo();

  @override
  String toString() {
    return 'ValidatorDistInfo[operatorAddress=$operatorAddress, selfBondRewards=$selfBondRewards, valCommission=$valCommission, ]';
  }

  ValidatorDistInfo.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    operatorAddress =
      
      
      new ValidatorAddress.fromJson(json['operator_address'])
;
    selfBondRewards =
      Coin.listFromJson(json['self_bond_rewards'])
;
    valCommission =
      Coin.listFromJson(json['val_commission'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'operator_address': operatorAddress,
      'self_bond_rewards': selfBondRewards,
      'val_commission': valCommission
     };
  }

  static List<ValidatorDistInfo> listFromJson(List<dynamic> json) {
    return json == null ? new List<ValidatorDistInfo>() : json.map((value) => new ValidatorDistInfo.fromJson(value)).toList();
  }

  static Map<String, ValidatorDistInfo> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ValidatorDistInfo>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ValidatorDistInfo.fromJson(value));
    }
    return map;
  }
}

