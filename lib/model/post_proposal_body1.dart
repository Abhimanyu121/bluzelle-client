part of swagger.api;

class PostProposalBody1 {
  
  BaseReq baseReq = null;
  

  String title = null;
  

  String description = null;
  

  Address proposer = null;
  

  List<Coin> deposit = [];
  

  List<ParamChange> changes = [];
  
  PostProposalBody1();

  @override
  String toString() {
    return 'PostProposalBody1[baseReq=$baseReq, title=$title, description=$description, proposer=$proposer, deposit=$deposit, changes=$changes, ]';
  }

  PostProposalBody1.fromJson(Map<String, dynamic> json) {
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
    proposer =
      
      
      new Address.fromJson(json['proposer'])
;
    deposit =
      Coin.listFromJson(json['deposit'])
;
    changes =
      ParamChange.listFromJson(json['changes'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'base_req': baseReq,
      'title': title,
      'description': description,
      'proposer': proposer,
      'deposit': deposit,
      'changes': changes
     };
  }

  static List<PostProposalBody1> listFromJson(List<dynamic> json) {
    return json == null ? new List<PostProposalBody1>() : json.map((value) => new PostProposalBody1.fromJson(value)).toList();
  }

  static Map<String, PostProposalBody1> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PostProposalBody1>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new PostProposalBody1.fromJson(value));
    }
    return map;
  }
}

