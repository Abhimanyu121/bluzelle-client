part of swagger.api;

class ValidatorDescription {
  
  String moniker = null;
  

  String identity = null;
  

  String website = null;
  

  String securityContact = null;
  

  String details = null;
  
  ValidatorDescription();

  @override
  String toString() {
    return 'ValidatorDescription[moniker=$moniker, identity=$identity, website=$website, securityContact=$securityContact, details=$details, ]';
  }

  ValidatorDescription.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    moniker =
        json['moniker']
    ;
    identity =
        json['identity']
    ;
    website =
        json['website']
    ;
    securityContact =
        json['security_contact']
    ;
    details =
        json['details']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'moniker': moniker,
      'identity': identity,
      'website': website,
      'security_contact': securityContact,
      'details': details
     };
  }

  static List<ValidatorDescription> listFromJson(List<dynamic> json) {
    return json == null ? new List<ValidatorDescription>() : json.map((value) => new ValidatorDescription.fromJson(value)).toList();
  }

  static Map<String, ValidatorDescription> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ValidatorDescription>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ValidatorDescription.fromJson(value));
    }
    return map;
  }
}

