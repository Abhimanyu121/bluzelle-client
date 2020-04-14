part of swagger.api;

class BlockID {
  
  Hash hash = null;
  

  BlockIDParts parts = null;
  
  BlockID();

  @override
  String toString() {
    return 'BlockID[hash=$hash, parts=$parts, ]';
  }

  BlockID.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    hash =
      
      
      new Hash.fromJson(json['hash'])
;
    parts =
      
      
      new BlockIDParts.fromJson(json['parts'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'hash': hash,
      'parts': parts
     };
  }

  static List<BlockID> listFromJson(List<dynamic> json) {
    return json == null ? new List<BlockID>() : json.map((value) => new BlockID.fromJson(value)).toList();
  }

  static Map<String, BlockID> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, BlockID>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new BlockID.fromJson(value));
    }
    return map;
  }
}

