part of swagger.api;

class Supply {
  
  List<Coin> total = [];
  
  Supply();

  @override
  String toString() {
    return 'Supply[total=$total, ]';
  }

  Supply.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    total =
      Coin.listFromJson(json['total'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'total': total
     };
  }

  static List<Supply> listFromJson(List<dynamic> json) {
    return json == null ? new List<Supply>() : json.map((value) => new Supply.fromJson(value)).toList();
  }

  static Map<String, Supply> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Supply>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Supply.fromJson(value));
    }
    return map;
  }
}

