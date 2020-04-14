part of swagger.api;

class PostProposalBody {
  
  BaseReq baseReq = null;
  

  String title = null;
  

  String description = null;
  

  String proposalType = null;
  

  Address proposer = null;
  

  List<Coin> initialDeposit = [];
  
  PostProposalBody();

  @override
  String toString() {
    return 'PostProposalBody[baseReq=$baseReq, title=$title, description=$description, proposalType=$proposalType, proposer=$proposer, initialDeposit=$initialDeposit, ]';
  }

  PostProposalBody.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    baseReq =
      
      
      new BaseReq.fromJson(json['base_req'])
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
    proposer =
      
      
      new Address.fromJson(json['proposer'])
;
    initialDeposit =
      Coin.listFromJson(json['initial_deposit'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'base_req': baseReq,
      'title': title,
      'description': description,
      'proposal_type': proposalType,
      'proposer': proposer,
      'initial_deposit': initialDeposit
     };
  }

  static List<PostProposalBody> listFromJson(List<dynamic> json) {
    return json == null ? new List<PostProposalBody>() : json.map((value) => new PostProposalBody.fromJson(value)).toList();
  }

  static Map<String, PostProposalBody> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PostProposalBody>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new PostProposalBody.fromJson(value));
    }
    return map;
  }
}

