part of swagger.api;

class InlineResponse200 {
  
  InlineResponse200ApplicationVersion applicationVersion = null;
  

  InlineResponse200NodeInfo nodeInfo = null;
  
  InlineResponse200();

  @override
  String toString() {
    return 'InlineResponse200[applicationVersion=$applicationVersion, nodeInfo=$nodeInfo, ]';
  }

  InlineResponse200.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    applicationVersion =
      
      
      new InlineResponse200ApplicationVersion.fromJson(json['application_version'])
;
    nodeInfo =
      
      
      new InlineResponse200NodeInfo.fromJson(json['node_info'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'application_version': applicationVersion,
      'node_info': nodeInfo
     };
  }

  static List<InlineResponse200> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse200>() : json.map((value) => new InlineResponse200.fromJson(value)).toList();
  }

  static Map<String, InlineResponse200> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, InlineResponse200>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new InlineResponse200.fromJson(value));
    }
    return map;
  }
}

