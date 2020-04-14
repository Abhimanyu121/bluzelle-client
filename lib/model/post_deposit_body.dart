part of swagger.api;

class PostDepositBody {
  
  BaseReq baseReq = null;
  

  Address depositor = null;
  

  List<Coin> amount = [];
  
  PostDepositBody();

  @override
  String toString() {
    return 'PostDepositBody[baseReq=$baseReq, depositor=$depositor, amount=$amount, ]';
  }

  PostDepositBody.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    baseReq =
      
      
      new BaseReq.fromJson(json['base_req'])
;
    depositor =
      
      
      new Address.fromJson(json['depositor'])
;
    amount =
      Coin.listFromJson(json['amount'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'base_req': baseReq,
      'depositor': depositor,
      'amount': amount
     };
  }

  static List<PostDepositBody> listFromJson(List<dynamic> json) {
    return json == null ? new List<PostDepositBody>() : json.map((value) => new PostDepositBody.fromJson(value)).toList();
  }

  static Map<String, PostDepositBody> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PostDepositBody>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new PostDepositBody.fromJson(value));
    }
    return map;
  }
}

