part of swagger.api;

class Validator {
  
  ValidatorAddress operatorAddress = null;
  

  String consensusPubkey = null;
  

  bool jailed = null;
  

  int status = null;
  

  String tokens = null;
  

  String delegatorShares = null;
  

  ValidatorDescription description = null;
  

  String bondHeight = null;
  

  int bondIntraTxCounter = null;
  

  String unbondingHeight = null;
  

  String unbondingTime = null;
  

  ValidatorCommission commission = null;
  
  Validator();

  @override
  String toString() {
    return 'Validator[operatorAddress=$operatorAddress, consensusPubkey=$consensusPubkey, jailed=$jailed, status=$status, tokens=$tokens, delegatorShares=$delegatorShares, description=$description, bondHeight=$bondHeight, bondIntraTxCounter=$bondIntraTxCounter, unbondingHeight=$unbondingHeight, unbondingTime=$unbondingTime, commission=$commission, ]';
  }

  Validator.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    operatorAddress =
      
      
      new ValidatorAddress.fromJson(json['operator_address'])
;
    consensusPubkey =
        json['consensus_pubkey']
    ;
    jailed =
        json['jailed']
    ;
    status =
        json['status']
    ;
    tokens =
        json['tokens']
    ;
    delegatorShares =
        json['delegator_shares']
    ;
    description =
      
      
      new ValidatorDescription.fromJson(json['description'])
;
    bondHeight =
        json['bond_height']
    ;
    bondIntraTxCounter =
        json['bond_intra_tx_counter']
    ;
    unbondingHeight =
        json['unbonding_height']
    ;
    unbondingTime =
        json['unbonding_time']
    ;
    commission =
      
      
      new ValidatorCommission.fromJson(json['commission'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'operator_address': operatorAddress,
      'consensus_pubkey': consensusPubkey,
      'jailed': jailed,
      'status': status,
      'tokens': tokens,
      'delegator_shares': delegatorShares,
      'description': description,
      'bond_height': bondHeight,
      'bond_intra_tx_counter': bondIntraTxCounter,
      'unbonding_height': unbondingHeight,
      'unbonding_time': unbondingTime,
      'commission': commission
     };
  }

  static List<Validator> listFromJson(List<dynamic> json) {
    return json == null ? new List<Validator>() : json.map((value) => new Validator.fromJson(value)).toList();
  }

  static Map<String, Validator> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Validator>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Validator.fromJson(value));
    }
    return map;
  }
}

