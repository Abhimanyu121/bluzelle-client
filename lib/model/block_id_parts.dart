part of swagger.api;

class BlockIDParts {
  
  num total = null;
  

  Hash hash = null;
  
  BlockIDParts();

  @override
  String toString() {
    return 'BlockIDParts[total=$total, hash=$hash, ]';
  }

  BlockIDParts.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    total =
        json['total']
    ;
    hash =
      
      
      new Hash.fromJson(json['hash'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'total': total,
      'hash': hash
     };
  }

  static List<BlockIDParts> listFromJson(List<dynamic> json) {
    return json == null ? new List<BlockIDParts>() : json.map((value) => new BlockIDParts.fromJson(value)).toList();
  }

  static Map<String, BlockIDParts> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, BlockIDParts>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new BlockIDParts.fromJson(value));
    }
    return map;
  }
}

