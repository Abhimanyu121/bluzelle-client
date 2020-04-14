part of swagger.api;

class BlockLastCommitPrecommits {
  
  String validatorAddress = null;
  

  String validatorIndex = null;
  

  String height = null;
  

  String round = null;
  

  String timestamp = null;
  

  num type = null;
  

  BlockID blockId = null;
  

  String signature = null;
  
  BlockLastCommitPrecommits();

  @override
  String toString() {
    return 'BlockLastCommitPrecommits[validatorAddress=$validatorAddress, validatorIndex=$validatorIndex, height=$height, round=$round, timestamp=$timestamp, type=$type, blockId=$blockId, signature=$signature, ]';
  }

  BlockLastCommitPrecommits.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    validatorAddress =
        json['validator_address']
    ;
    validatorIndex =
        json['validator_index']
    ;
    height =
        json['height']
    ;
    round =
        json['round']
    ;
    timestamp =
        json['timestamp']
    ;
    type =
        json['type']
    ;
    blockId =
      
      
      new BlockID.fromJson(json['block_id'])
;
    signature =
        json['signature']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'validator_address': validatorAddress,
      'validator_index': validatorIndex,
      'height': height,
      'round': round,
      'timestamp': timestamp,
      'type': type,
      'block_id': blockId,
      'signature': signature
     };
  }

  static List<BlockLastCommitPrecommits> listFromJson(List<dynamic> json) {
    return json == null ? new List<BlockLastCommitPrecommits>() : json.map((value) => new BlockLastCommitPrecommits.fromJson(value)).toList();
  }

  static Map<String, BlockLastCommitPrecommits> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, BlockLastCommitPrecommits>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new BlockLastCommitPrecommits.fromJson(value));
    }
    return map;
  }
}

