part of swagger.api;

class BlockQueryBlockMeta {
  
  BlockHeader header = null;
  

  BlockID blockId = null;
  
  BlockQueryBlockMeta();

  @override
  String toString() {
    return 'BlockQueryBlockMeta[header=$header, blockId=$blockId, ]';
  }

  BlockQueryBlockMeta.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    header =
      
      
      new BlockHeader.fromJson(json['header'])
;
    blockId =
      
      
      new BlockID.fromJson(json['block_id'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'header': header,
      'block_id': blockId
     };
  }

  static List<BlockQueryBlockMeta> listFromJson(List<dynamic> json) {
    return json == null ? new List<BlockQueryBlockMeta>() : json.map((value) => new BlockQueryBlockMeta.fromJson(value)).toList();
  }

  static Map<String, BlockQueryBlockMeta> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, BlockQueryBlockMeta>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new BlockQueryBlockMeta.fromJson(value));
    }
    return map;
  }
}

