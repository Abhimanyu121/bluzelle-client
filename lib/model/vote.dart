part of swagger.api;

class Vote {
  
  String voter = null;
  

  String proposalId = null;
  

  String option = null;
  
  Vote();

  @override
  String toString() {
    return 'Vote[voter=$voter, proposalId=$proposalId, option=$option, ]';
  }

  Vote.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    voter =
        json['voter']
    ;
    proposalId =
        json['proposal_id']
    ;
    option =
        json['option']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'voter': voter,
      'proposal_id': proposalId,
      'option': option
     };
  }

  static List<Vote> listFromJson(List<dynamic> json) {
    return json == null ? new List<Vote>() : json.map((value) => new Vote.fromJson(value)).toList();
  }

  static Map<String, Vote> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Vote>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Vote.fromJson(value));
    }
    return map;
  }
}

