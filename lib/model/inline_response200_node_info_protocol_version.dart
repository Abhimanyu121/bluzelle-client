part of swagger.api;

class InlineResponse200NodeInfoProtocolVersion {
  
  String p2p = null;
  

  String block = null;
  

  String app = null;
  
  InlineResponse200NodeInfoProtocolVersion();

  @override
  String toString() {
    return 'InlineResponse200NodeInfoProtocolVersion[p2p=$p2p, block=$block, app=$app, ]';
  }

  InlineResponse200NodeInfoProtocolVersion.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    p2p =
        json['p2p']
    ;
    block =
        json['block']
    ;
    app =
        json['app']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'p2p': p2p,
      'block': block,
      'app': app
     };
  }

  static List<InlineResponse200NodeInfoProtocolVersion> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse200NodeInfoProtocolVersion>() : json.map((value) => new InlineResponse200NodeInfoProtocolVersion.fromJson(value)).toList();
  }

  static Map<String, InlineResponse200NodeInfoProtocolVersion> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, InlineResponse200NodeInfoProtocolVersion>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new InlineResponse200NodeInfoProtocolVersion.fromJson(value));
    }
    return map;
  }
}

