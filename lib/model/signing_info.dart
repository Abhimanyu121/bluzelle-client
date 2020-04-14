part of swagger.api;

class SigningInfo {
  
  String startHeight = null;
  

  String indexOffset = null;
  

  String jailedUntil = null;
  

  String missedBlocksCounter = null;
  
  SigningInfo();

  @override
  String toString() {
    return 'SigningInfo[startHeight=$startHeight, indexOffset=$indexOffset, jailedUntil=$jailedUntil, missedBlocksCounter=$missedBlocksCounter, ]';
  }

  SigningInfo.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    startHeight =
        json['start_height']
    ;
    indexOffset =
        json['index_offset']
    ;
    jailedUntil =
        json['jailed_until']
    ;
    missedBlocksCounter =
        json['missed_blocks_counter']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'start_height': startHeight,
      'index_offset': indexOffset,
      'jailed_until': jailedUntil,
      'missed_blocks_counter': missedBlocksCounter
     };
  }

  static List<SigningInfo> listFromJson(List<dynamic> json) {
    return json == null ? new List<SigningInfo>() : json.map((value) => new SigningInfo.fromJson(value)).toList();
  }

  static Map<String, SigningInfo> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, SigningInfo>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new SigningInfo.fromJson(value));
    }
    return map;
  }
}

