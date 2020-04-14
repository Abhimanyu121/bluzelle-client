part of swagger.api;

class Deposit {
  
  List<Coin> amount = [];
  

  String proposalId = null;
  

  Address depositor = null;
  
  Deposit();

  @override
  String toString() {
    return 'Deposit[amount=$amount, proposalId=$proposalId, depositor=$depositor, ]';
  }

  Deposit.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    amount =
      Coin.listFromJson(json['amount'])
;
    proposalId =
        json['proposal_id']
    ;
    depositor =
      
      
      new Address.fromJson(json['depositor'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'amount': amount,
      'proposal_id': proposalId,
      'depositor': depositor
     };
  }

  static List<Deposit> listFromJson(List<dynamic> json) {
    return json == null ? new List<Deposit>() : json.map((value) => new Deposit.fromJson(value)).toList();
  }

  static Map<String, Deposit> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Deposit>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Deposit.fromJson(value));
    }
    return map;
  }
}

