part of swagger.api;

class BlockLastCommit {
  
  BlockID blockId = null;
  

  List<BlockLastCommitPrecommits> precommits = [];
  
  BlockLastCommit();

  @override
  String toString() {
    return 'BlockLastCommit[blockId=$blockId, precommits=$precommits, ]';
  }

  BlockLastCommit.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    blockId =
      
      
      new BlockID.fromJson(json['block_id'])
;
    precommits =
      BlockLastCommitPrecommits.listFromJson(json['precommits'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'block_id': blockId,
      'precommits': precommits
     };
  }

  static List<BlockLastCommit> listFromJson(List<dynamic> json) {
    return json == null ? new List<BlockLastCommit>() : json.map((value) => new BlockLastCommit.fromJson(value)).toList();
  }

  static Map<String, BlockLastCommit> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, BlockLastCommit>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new BlockLastCommit.fromJson(value));
    }
    return map;
  }
}

