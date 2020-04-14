part of swagger.api;

class InlineResponse200NodeInfoOther {
  
  String txIndex = null;
  

  String rpcAddress = null;
  
  InlineResponse200NodeInfoOther();

  @override
  String toString() {
    return 'InlineResponse200NodeInfoOther[txIndex=$txIndex, rpcAddress=$rpcAddress, ]';
  }

  InlineResponse200NodeInfoOther.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    txIndex =
        json['tx_index']
    ;
    rpcAddress =
        json['rpc_address']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'tx_index': txIndex,
      'rpc_address': rpcAddress
     };
  }

  static List<InlineResponse200NodeInfoOther> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse200NodeInfoOther>() : json.map((value) => new InlineResponse200NodeInfoOther.fromJson(value)).toList();
  }

  static Map<String, InlineResponse200NodeInfoOther> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, InlineResponse200NodeInfoOther>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new InlineResponse200NodeInfoOther.fromJson(value));
    }
    return map;
  }
}

