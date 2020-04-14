part of swagger.api;

class InlineResponse2005 {
  
  String looseTokens = null;
  

  String bondedTokens = null;
  

  String inflationLastTime = null;
  

  String inflation = null;
  

  String dateLastCommissionReset = null;
  

  String prevBondedShares = null;
  
  InlineResponse2005();

  @override
  String toString() {
    return 'InlineResponse2005[looseTokens=$looseTokens, bondedTokens=$bondedTokens, inflationLastTime=$inflationLastTime, inflation=$inflation, dateLastCommissionReset=$dateLastCommissionReset, prevBondedShares=$prevBondedShares, ]';
  }

  InlineResponse2005.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    looseTokens =
        json['loose_tokens']
    ;
    bondedTokens =
        json['bonded_tokens']
    ;
    inflationLastTime =
        json['inflation_last_time']
    ;
    inflation =
        json['inflation']
    ;
    dateLastCommissionReset =
        json['date_last_commission_reset']
    ;
    prevBondedShares =
        json['prev_bonded_shares']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'loose_tokens': looseTokens,
      'bonded_tokens': bondedTokens,
      'inflation_last_time': inflationLastTime,
      'inflation': inflation,
      'date_last_commission_reset': dateLastCommissionReset,
      'prev_bonded_shares': prevBondedShares
     };
  }

  static List<InlineResponse2005> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse2005>() : json.map((value) => new InlineResponse2005.fromJson(value)).toList();
  }

  static Map<String, InlineResponse2005> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, InlineResponse2005>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new InlineResponse2005.fromJson(value));
    }
    return map;
  }
}

