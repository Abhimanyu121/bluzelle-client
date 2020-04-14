part of swagger.api;

class Account {
  
  BaseReq baseReq = null;
  

  List<Coin> amount = [];
  
  Account();

  @override
  String toString() {
    return 'Account[baseReq=$baseReq, amount=$amount, ]';
  }

  Account.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    baseReq =
      
      
      new BaseReq.fromJson(json['base_req'])
;
    amount =
      Coin.listFromJson(json['amount'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'base_req': baseReq,
      'amount': amount
     };
  }

  static List<Account> listFromJson(List<dynamic> json) {
    return json == null ? new List<Account>() : json.map((value) => new Account.fromJson(value)).toList();
  }

  static Map<String, Account> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Account>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Account.fromJson(value));
    }
    return map;
  }
}

