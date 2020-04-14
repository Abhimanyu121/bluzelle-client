part of swagger.api;

class TextProposal {
  
  int proposalId = null;
  

  String title = null;
  

  String description = null;
  

  String proposalType = null;
  

  String proposalStatus = null;
  

  TallyResult finalTallyResult = null;
  

  String submitTime = null;
  

  List<Coin> totalDeposit = [];
  

  String votingStartTime = null;
  
  TextProposal();

  @override
  String toString() {
    return 'TextProposal[proposalId=$proposalId, title=$title, description=$description, proposalType=$proposalType, proposalStatus=$proposalStatus, finalTallyResult=$finalTallyResult, submitTime=$submitTime, totalDeposit=$totalDeposit, votingStartTime=$votingStartTime, ]';
  }

  TextProposal.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    proposalId =
        json['proposal_id']
    ;
    title =
        json['title']
    ;
    description =
        json['description']
    ;
    proposalType =
        json['proposal_type']
    ;
    proposalStatus =
        json['proposal_status']
    ;
    finalTallyResult =
      
      
      new TallyResult.fromJson(json['final_tally_result'])
;
    submitTime =
        json['submit_time']
    ;
    totalDeposit =
      Coin.listFromJson(json['total_deposit'])
;
    votingStartTime =
        json['voting_start_time']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'proposal_id': proposalId,
      'title': title,
      'description': description,
      'proposal_type': proposalType,
      'proposal_status': proposalStatus,
      'final_tally_result': finalTallyResult,
      'submit_time': submitTime,
      'total_deposit': totalDeposit,
      'voting_start_time': votingStartTime
     };
  }

  static List<TextProposal> listFromJson(List<dynamic> json) {
    return json == null ? new List<TextProposal>() : json.map((value) => new TextProposal.fromJson(value)).toList();
  }

  static Map<String, TextProposal> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, TextProposal>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new TextProposal.fromJson(value));
    }
    return map;
  }
}

