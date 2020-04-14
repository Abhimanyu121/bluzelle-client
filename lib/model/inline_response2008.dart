part of swagger.api;

class InlineResponse2008 {
  
  List<Coin> minDeposit = [];
  

  String maxDepositPeriod = null;
  
  InlineResponse2008();

  @override
  String toString() {
    return 'InlineResponse2008[minDeposit=$minDeposit, maxDepositPeriod=$maxDepositPeriod, ]';
  }

  InlineResponse2008.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    minDeposit =
      Coin.listFromJson(json['min_deposit'])
;
    maxDepositPeriod =
        json['max_deposit_period']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'min_deposit': minDeposit,
      'max_deposit_period': maxDepositPeriod
     };
  }

  static List<InlineResponse2008> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse2008>() : json.map((value) => new InlineResponse2008.fromJson(value)).toList();
  }

  static Map<String, InlineResponse2008> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, InlineResponse2008>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new InlineResponse2008.fromJson(value));
    }
    return map;
  }
}

