part of swagger.api;

class Block {
  
  BlockHeader header = null;
  

  List<String> txs = [];
  

  List<String> evidence = [];
  

  BlockLastCommit lastCommit = null;
  
  Block();

  @override
  String toString() {
    return 'Block[header=$header, txs=$txs, evidence=$evidence, lastCommit=$lastCommit, ]';
  }

  Block.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    header =
      
      
      new BlockHeader.fromJson(json['header'])
;
    txs =
        (json['txs'] as List).map((item) => item as String).toList()
    ;
    evidence =
        (json['evidence'] as List).map((item) => item as String).toList()
    ;
    lastCommit =
      
      
      new BlockLastCommit.fromJson(json['last_commit'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'header': header,
      'txs': txs,
      'evidence': evidence,
      'last_commit': lastCommit
     };
  }

  static List<Block> listFromJson(List<dynamic> json) {
    return json == null ? new List<Block>() : json.map((value) => new Block.fromJson(value)).toList();
  }

  static Map<String, Block> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Block>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Block.fromJson(value));
    }
    return map;
  }
}

