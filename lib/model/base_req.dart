part of swagger.api;

class BaseReq {
  /* Sender address or Keybase name to generate a transaction */
  String from = null;
  

  String memo = null;
  

  String chainId = null;
  

  String accountNumber = null;
  

  String sequence = null;
  

  String gas = null;
  

  String gasAdjustment = null;
  

  List<Coin> fees = [];
  
/* Estimate gas for a transaction (cannot be used in conjunction with generate_only) */
  bool simulate = null;
  
  BaseReq();

  @override
  String toString() {
    return 'BaseReq[from=$from, memo=$memo, chainId=$chainId, accountNumber=$accountNumber, sequence=$sequence, gas=$gas, gasAdjustment=$gasAdjustment, fees=$fees, simulate=$simulate, ]';
  }

  BaseReq.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    from =
        json['from']
    ;
    memo =
        json['memo']
    ;
    chainId =
        json['chain_id']
    ;
    accountNumber =
        json['account_number']
    ;
    sequence =
        json['sequence']
    ;
    gas =
        json['gas']
    ;
    gasAdjustment =
        json['gas_adjustment']
    ;
    fees =
      Coin.listFromJson(json['fees'])
;
    simulate =
        json['simulate']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'from': from,
      'memo': memo,
      'chain_id': chainId,
      'account_number': accountNumber,
      'sequence': sequence,
      'gas': gas,
      'gas_adjustment': gasAdjustment,
      'fees': fees,
      'simulate': simulate
     };
  }

  static List<BaseReq> listFromJson(List<dynamic> json) {
    return json == null ? new List<BaseReq>() : json.map((value) => new BaseReq.fromJson(value)).toList();
  }

  static Map<String, BaseReq> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, BaseReq>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new BaseReq.fromJson(value));
    }
    return map;
  }
}

