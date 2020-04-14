part of swagger.api;

class PostVoteBody {
  
  BaseReq baseReq = null;
  

  Address voter = null;
  

  String option = null;
  
  PostVoteBody();

  @override
  String toString() {
    return 'PostVoteBody[baseReq=$baseReq, voter=$voter, option=$option, ]';
  }

  PostVoteBody.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    baseReq =
      
      
      new BaseReq.fromJson(json['base_req'])
;
    voter =
      
      
      new Address.fromJson(json['voter'])
;
    option =
        json['option']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'base_req': baseReq,
      'voter': voter,
      'option': option
     };
  }

  static List<PostVoteBody> listFromJson(List<dynamic> json) {
    return json == null ? new List<PostVoteBody>() : json.map((value) => new PostVoteBody.fromJson(value)).toList();
  }

  static Map<String, PostVoteBody> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PostVoteBody>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new PostVoteBody.fromJson(value));
    }
    return map;
  }
}

