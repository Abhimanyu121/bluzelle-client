part of swagger.api;

class InlineResponse200ApplicationVersion {
  
  String buildTags = null;
  

  String clientName = null;
  

  String commit = null;
  

  String go = null;
  

  String name = null;
  

  String serverName = null;
  

  String version = null;
  
  InlineResponse200ApplicationVersion();

  @override
  String toString() {
    return 'InlineResponse200ApplicationVersion[buildTags=$buildTags, clientName=$clientName, commit=$commit, go=$go, name=$name, serverName=$serverName, version=$version, ]';
  }

  InlineResponse200ApplicationVersion.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    buildTags =
        json['build_tags']
    ;
    clientName =
        json['client_name']
    ;
    commit =
        json['commit']
    ;
    go =
        json['go']
    ;
    name =
        json['name']
    ;
    serverName =
        json['server_name']
    ;
    version =
        json['version']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'build_tags': buildTags,
      'client_name': clientName,
      'commit': commit,
      'go': go,
      'name': name,
      'server_name': serverName,
      'version': version
     };
  }

  static List<InlineResponse200ApplicationVersion> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse200ApplicationVersion>() : json.map((value) => new InlineResponse200ApplicationVersion.fromJson(value)).toList();
  }

  static Map<String, InlineResponse200ApplicationVersion> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, InlineResponse200ApplicationVersion>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new InlineResponse200ApplicationVersion.fromJson(value));
    }
    return map;
  }
}

