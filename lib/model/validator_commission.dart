part of swagger.api;

class ValidatorCommission {
  
  String rate = null;
  

  String maxRate = null;
  

  String maxChangeRate = null;
  

  String updateTime = null;
  
  ValidatorCommission();

  @override
  String toString() {
    return 'ValidatorCommission[rate=$rate, maxRate=$maxRate, maxChangeRate=$maxChangeRate, updateTime=$updateTime, ]';
  }

  ValidatorCommission.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    rate =
        json['rate']
    ;
    maxRate =
        json['max_rate']
    ;
    maxChangeRate =
        json['max_change_rate']
    ;
    updateTime =
        json['update_time']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'rate': rate,
      'max_rate': maxRate,
      'max_change_rate': maxChangeRate,
      'update_time': updateTime
     };
  }

  static List<ValidatorCommission> listFromJson(List<dynamic> json) {
    return json == null ? new List<ValidatorCommission>() : json.map((value) => new ValidatorCommission.fromJson(value)).toList();
  }

  static Map<String, ValidatorCommission> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ValidatorCommission>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ValidatorCommission.fromJson(value));
    }
    return map;
  }
}

