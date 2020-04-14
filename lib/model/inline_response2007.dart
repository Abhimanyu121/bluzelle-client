part of swagger.api;

class InlineResponse2007 {
  
  String maxEvidenceAge = null;
  

  String signedBlocksWindow = null;
  

  String minSignedPerWindow = null;
  

  String doubleSignUnbondDuration = null;
  

  String downtimeUnbondDuration = null;
  

  String slashFractionDoubleSign = null;
  

  String slashFractionDowntime = null;
  
  InlineResponse2007();

  @override
  String toString() {
    return 'InlineResponse2007[maxEvidenceAge=$maxEvidenceAge, signedBlocksWindow=$signedBlocksWindow, minSignedPerWindow=$minSignedPerWindow, doubleSignUnbondDuration=$doubleSignUnbondDuration, downtimeUnbondDuration=$downtimeUnbondDuration, slashFractionDoubleSign=$slashFractionDoubleSign, slashFractionDowntime=$slashFractionDowntime, ]';
  }

  InlineResponse2007.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    maxEvidenceAge =
        json['max_evidence_age']
    ;
    signedBlocksWindow =
        json['signed_blocks_window']
    ;
    minSignedPerWindow =
        json['min_signed_per_window']
    ;
    doubleSignUnbondDuration =
        json['double_sign_unbond_duration']
    ;
    downtimeUnbondDuration =
        json['downtime_unbond_duration']
    ;
    slashFractionDoubleSign =
        json['slash_fraction_double_sign']
    ;
    slashFractionDowntime =
        json['slash_fraction_downtime']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'max_evidence_age': maxEvidenceAge,
      'signed_blocks_window': signedBlocksWindow,
      'min_signed_per_window': minSignedPerWindow,
      'double_sign_unbond_duration': doubleSignUnbondDuration,
      'downtime_unbond_duration': downtimeUnbondDuration,
      'slash_fraction_double_sign': slashFractionDoubleSign,
      'slash_fraction_downtime': slashFractionDowntime
     };
  }

  static List<InlineResponse2007> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse2007>() : json.map((value) => new InlineResponse2007.fromJson(value)).toList();
  }

  static Map<String, InlineResponse2007> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, InlineResponse2007>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new InlineResponse2007.fromJson(value));
    }
    return map;
  }
}

