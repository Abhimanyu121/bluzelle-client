part of swagger.api;

class InlineResponse2004Value {
  
  String accountNumber = null;
  

  String address = null;
  

  List<Coin> coins = [];
  

  PublicKey publicKey = null;
  

  String sequence = null;
  
  InlineResponse2004Value();

  @override
  String toString() {
    return 'InlineResponse2004Value[accountNumber=$accountNumber, address=$address, coins=$coins, publicKey=$publicKey, sequence=$sequence, ]';
  }

  InlineResponse2004Value.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    accountNumber =
        json['account_number']
    ;
    address =
        json['address']
    ;
    coins =
      Coin.listFromJson(json['coins'])
;
    publicKey =
      
      
      new PublicKey.fromJson(json['public_key'])
;
    sequence =
        json['sequence']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'account_number': accountNumber,
      'address': address,
      'coins': coins,
      'public_key': publicKey,
      'sequence': sequence
     };
  }

  static List<InlineResponse2004Value> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse2004Value>() : json.map((value) => new InlineResponse2004Value.fromJson(value)).toList();
  }

  static Map<String, InlineResponse2004Value> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, InlineResponse2004Value>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new InlineResponse2004Value.fromJson(value));
    }
    return map;
  }
}

