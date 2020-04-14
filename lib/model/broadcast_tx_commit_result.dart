part of swagger.api;

class BroadcastTxCommitResult {
  
  CheckTxResult checkTx = null;
  

  DeliverTxResult deliverTx = null;
  

  Hash hash = null;
  

  int height = null;
  
  BroadcastTxCommitResult();

  @override
  String toString() {
    return 'BroadcastTxCommitResult[checkTx=$checkTx, deliverTx=$deliverTx, hash=$hash, height=$height, ]';
  }

  BroadcastTxCommitResult.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    checkTx =
      
      
      new CheckTxResult.fromJson(json['check_tx'])
;
    deliverTx =
      
      
      new DeliverTxResult.fromJson(json['deliver_tx'])
;
    hash =
      
      
      new Hash.fromJson(json['hash'])
;
    height =
        json['height']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'check_tx': checkTx,
      'deliver_tx': deliverTx,
      'hash': hash,
      'height': height
     };
  }

  static List<BroadcastTxCommitResult> listFromJson(List<dynamic> json) {
    return json == null ? new List<BroadcastTxCommitResult>() : json.map((value) => new BroadcastTxCommitResult.fromJson(value)).toList();
  }

  static Map<String, BroadcastTxCommitResult> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, BroadcastTxCommitResult>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new BroadcastTxCommitResult.fromJson(value));
    }
    return map;
  }
}

