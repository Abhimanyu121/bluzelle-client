part of swagger.api;

class BlockQuery {
  
  BlockQueryBlockMeta blockMeta = null;
  

  Block block = null;
  
  BlockQuery();

  @override
  String toString() {
    return 'BlockQuery[blockMeta=$blockMeta, block=$block, ]';
  }

  BlockQuery.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    blockMeta =
      
      
      new BlockQueryBlockMeta.fromJson(json['block_meta'])
;
    block =
      
      
      new Block.fromJson(json['block'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'block_meta': blockMeta,
      'block': block
     };
  }

  static List<BlockQuery> listFromJson(List<dynamic> json) {
    return json == null ? new List<BlockQuery>() : json.map((value) => new BlockQuery.fromJson(value)).toList();
  }

  static Map<String, BlockQuery> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, BlockQuery>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new BlockQuery.fromJson(value));
    }
    return map;
  }
}

