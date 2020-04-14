part of swagger.api;

class StdTxSignature {
  
  String signature = null;
  

  StdTxSignaturePubKey pubKey = null;
  

  String accountNumber = null;
  

  String sequence = null;
  
  StdTxSignature();

  @override
  String toString() {
    return 'StdTxSignature[signature=$signature, pubKey=$pubKey, accountNumber=$accountNumber, sequence=$sequence, ]';
  }

  StdTxSignature.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    signature =
        json['signature']
    ;
    pubKey =
      
      
      new StdTxSignaturePubKey.fromJson(json['pub_key'])
;
    accountNumber =
        json['account_number']
    ;
    sequence =
        json['sequence']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'signature': signature,
      'pub_key': pubKey,
      'account_number': accountNumber,
      'sequence': sequence
     };
  }

  static List<StdTxSignature> listFromJson(List<dynamic> json) {
    return json == null ? new List<StdTxSignature>() : json.map((value) => new StdTxSignature.fromJson(value)).toList();
  }

  static Map<String, StdTxSignature> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, StdTxSignature>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new StdTxSignature.fromJson(value));
    }
    return map;
  }
}

