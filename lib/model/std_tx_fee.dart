part of swagger.api;

class StdTxFee {
  
  String gas = null;
  

  List<Coin> amount = [];
  
  StdTxFee();

  @override
  String toString() {
    return 'StdTxFee[gas=$gas, amount=$amount, ]';
  }

  StdTxFee.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    gas =
        json['gas']
    ;
    amount =
      Coin.listFromJson(json['amount'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'gas': gas,
      'amount': amount
     };
  }

  static List<StdTxFee> listFromJson(List<dynamic> json) {
    return json == null ? new List<StdTxFee>() : json.map((value) => new StdTxFee.fromJson(value)).toList();
  }

  static Map<String, StdTxFee> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, StdTxFee>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new StdTxFee.fromJson(value));
    }
    return map;
  }
}

