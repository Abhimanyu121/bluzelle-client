part of swagger.api;

class InlineResponse200NodeInfo {
  
  String id = null;
  

  String moniker = null;
  

  InlineResponse200NodeInfoProtocolVersion protocolVersion = null;
  

  String network = null;
  

  String channels = null;
  

  String listenAddr = null;
  
/* Tendermint version */
  String version = null;
  

  InlineResponse200NodeInfoOther other = null;
  
  InlineResponse200NodeInfo();

  @override
  String toString() {
    return 'InlineResponse200NodeInfo[id=$id, moniker=$moniker, protocolVersion=$protocolVersion, network=$network, channels=$channels, listenAddr=$listenAddr, version=$version, other=$other, ]';
  }

  InlineResponse200NodeInfo.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id =
        json['id']
    ;
    moniker =
        json['moniker']
    ;
    protocolVersion =
      
      
      new InlineResponse200NodeInfoProtocolVersion.fromJson(json['protocol_version'])
;
    network =
        json['network']
    ;
    channels =
        json['channels']
    ;
    listenAddr =
        json['listen_addr']
    ;
    version =
        json['version']
    ;
    other =
      
      
      new InlineResponse200NodeInfoOther.fromJson(json['other'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'moniker': moniker,
      'protocol_version': protocolVersion,
      'network': network,
      'channels': channels,
      'listen_addr': listenAddr,
      'version': version,
      'other': other
     };
  }

  static List<InlineResponse200NodeInfo> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse200NodeInfo>() : json.map((value) => new InlineResponse200NodeInfo.fromJson(value)).toList();
  }

  static Map<String, InlineResponse200NodeInfo> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, InlineResponse200NodeInfo>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new InlineResponse200NodeInfo.fromJson(value));
    }
    return map;
  }
}

