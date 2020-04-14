part of swagger.api;

class Msg {
    Msg();

  @override
  String toString() {
    return 'Msg[]';
  }

  Msg.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<Msg> listFromJson(List<dynamic> json) {
    return json == null ? new List<Msg>() : json.map((value) => new Msg.fromJson(value)).toList();
  }

  static Map<String, Msg> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Msg>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Msg.fromJson(value));
    }
    return map;
  }
}

