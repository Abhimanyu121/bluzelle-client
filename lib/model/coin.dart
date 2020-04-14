part of swagger.api;

class Coin {
  
  String denom = null;
  

  String amount = null;
  
  Coin();

  @override
  String toString() {
    return 'Coin[denom=$denom, amount=$amount, ]';
  }

  Coin.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    denom =
        json['denom']
    ;
    amount =
        json['amount']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'denom': denom,
      'amount': amount
     };
  }

  static List<Coin> listFromJson(List<dynamic> json) {
    return json == null ? new List<Coin>() : json.map((value) => new Coin.fromJson(value)).toList();
  }

  static Map<String, Coin> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Coin>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Coin.fromJson(value));
    }
    return map;
  }
}

