part of swagger.api;

class ValidatorAddress {
    ValidatorAddress();

  @override
  String toString() {
    return 'ValidatorAddress[]';
  }

  ValidatorAddress.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<ValidatorAddress> listFromJson(List<dynamic> json) {
    return json == null ? new List<ValidatorAddress>() : json.map((value) => new ValidatorAddress.fromJson(value)).toList();
  }

  static Map<String, ValidatorAddress> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ValidatorAddress>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ValidatorAddress.fromJson(value));
    }
    return map;
  }
}

