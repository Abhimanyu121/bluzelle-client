part of swagger.api;

class StdTx {
  
  List<Msg> msg = [];
  

  StdTxFee fee = null;
  

  String memo = null;
  

  StdTxSignature signature = null;
  
  StdTx();

  @override
  String toString() {
    return 'StdTx[msg=$msg, fee=$fee, memo=$memo, signature=$signature, ]';
  }

  StdTx.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    msg =
      Msg.listFromJson(json['msg'])
;
    fee =
      
      
      new StdTxFee.fromJson(json['fee'])
;
    memo =
        json['memo']
    ;
    signature =
      
      
      new StdTxSignature.fromJson(json['signature'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'msg': msg,
      'fee': fee,
      'memo': memo,
      'signature': signature
     };
  }

  static List<StdTx> listFromJson(List<dynamic> json) {
    return json == null ? new List<StdTx>() : json.map((value) => new StdTx.fromJson(value)).toList();
  }

  static Map<String, StdTx> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, StdTx>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new StdTx.fromJson(value));
    }
    return map;
  }
}

