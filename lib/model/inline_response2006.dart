part of swagger.api;

class InlineResponse2006 {
  
  String inflationRateChange = null;
  

  String inflationMax = null;
  

  String inflationMin = null;
  

  String goalBonded = null;
  

  String unbondingTime = null;
  

  int maxValidators = null;
  

  String bondDenom = null;
  
  InlineResponse2006();

  @override
  String toString() {
    return 'InlineResponse2006[inflationRateChange=$inflationRateChange, inflationMax=$inflationMax, inflationMin=$inflationMin, goalBonded=$goalBonded, unbondingTime=$unbondingTime, maxValidators=$maxValidators, bondDenom=$bondDenom, ]';
  }

  InlineResponse2006.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    inflationRateChange =
        json['inflation_rate_change']
    ;
    inflationMax =
        json['inflation_max']
    ;
    inflationMin =
        json['inflation_min']
    ;
    goalBonded =
        json['goal_bonded']
    ;
    unbondingTime =
        json['unbonding_time']
    ;
    maxValidators =
        json['max_validators']
    ;
    bondDenom =
        json['bond_denom']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'inflation_rate_change': inflationRateChange,
      'inflation_max': inflationMax,
      'inflation_min': inflationMin,
      'goal_bonded': goalBonded,
      'unbonding_time': unbondingTime,
      'max_validators': maxValidators,
      'bond_denom': bondDenom
     };
  }

  static List<InlineResponse2006> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse2006>() : json.map((value) => new InlineResponse2006.fromJson(value)).toList();
  }

  static Map<String, InlineResponse2006> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, InlineResponse2006>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new InlineResponse2006.fromJson(value));
    }
    return map;
  }
}

