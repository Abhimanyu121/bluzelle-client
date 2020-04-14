part of swagger.api;

class TendermintValidator {
  
  ValidatorAddress address = null;
  

  String pubKey = null;
  

  String votingPower = null;
  

  String proposerPriority = null;
  
  TendermintValidator();

  @override
  String toString() {
    return 'TendermintValidator[address=$address, pubKey=$pubKey, votingPower=$votingPower, proposerPriority=$proposerPriority, ]';
  }

  TendermintValidator.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    address =
      
      
      new ValidatorAddress.fromJson(json['address'])
;
    pubKey =
        json['pub_key']
    ;
    votingPower =
        json['voting_power']
    ;
    proposerPriority =
        json['proposer_priority']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'address': address,
      'pub_key': pubKey,
      'voting_power': votingPower,
      'proposer_priority': proposerPriority
     };
  }

  static List<TendermintValidator> listFromJson(List<dynamic> json) {
    return json == null ? new List<TendermintValidator>() : json.map((value) => new TendermintValidator.fromJson(value)).toList();
  }

  static Map<String, TendermintValidator> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, TendermintValidator>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new TendermintValidator.fromJson(value));
    }
    return map;
  }
}

