part of swagger.api;

class BlockHeaderVersion {
  
  String block = null;
  

  String app = null;
  
  BlockHeaderVersion();

  @override
  String toString() {
    return 'BlockHeaderVersion[block=$block, app=$app, ]';
  }

  BlockHeaderVersion.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    block =
        json['block']
    ;
    app =
        json['app']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'block': block,
      'app': app
     };
  }

  static List<BlockHeaderVersion> listFromJson(List<dynamic> json) {
    return json == null ? new List<BlockHeaderVersion>() : json.map((value) => new BlockHeaderVersion.fromJson(value)).toList();
  }

  static Map<String, BlockHeaderVersion> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, BlockHeaderVersion>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new BlockHeaderVersion.fromJson(value));
    }
    return map;
  }
}

