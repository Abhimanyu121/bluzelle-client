part of swagger.api;

class Proposer {
  
  String proposalId = null;
  

  String proposer = null;
  
  Proposer();

  @override
  String toString() {
    return 'Proposer[proposalId=$proposalId, proposer=$proposer, ]';
  }

  Proposer.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    proposalId =
        json['proposal_id']
    ;
    proposer =
        json['proposer']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'proposal_id': proposalId,
      'proposer': proposer
     };
  }

  static List<Proposer> listFromJson(List<dynamic> json) {
    return json == null ? new List<Proposer>() : json.map((value) => new Proposer.fromJson(value)).toList();
  }

  static Map<String, Proposer> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Proposer>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Proposer.fromJson(value));
    }
    return map;
  }
}

