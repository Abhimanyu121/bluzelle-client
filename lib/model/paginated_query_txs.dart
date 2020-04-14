part of swagger.api;

class PaginatedQueryTxs {
  
  num totalCount = null;
  

  num count = null;
  

  num pageNumber = null;
  

  num pageTotal = null;
  

  num limit = null;
  

  List<TxQuery> txs = [];
  
  PaginatedQueryTxs();

  @override
  String toString() {
    return 'PaginatedQueryTxs[totalCount=$totalCount, count=$count, pageNumber=$pageNumber, pageTotal=$pageTotal, limit=$limit, txs=$txs, ]';
  }

  PaginatedQueryTxs.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    totalCount =
        json['total_count']
    ;
    count =
        json['count']
    ;
    pageNumber =
        json['page_number']
    ;
    pageTotal =
        json['page_total']
    ;
    limit =
        json['limit']
    ;
    txs =
      TxQuery.listFromJson(json['txs'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'total_count': totalCount,
      'count': count,
      'page_number': pageNumber,
      'page_total': pageTotal,
      'limit': limit,
      'txs': txs
     };
  }

  static List<PaginatedQueryTxs> listFromJson(List<dynamic> json) {
    return json == null ? new List<PaginatedQueryTxs>() : json.map((value) => new PaginatedQueryTxs.fromJson(value)).toList();
  }

  static Map<String, PaginatedQueryTxs> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PaginatedQueryTxs>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new PaginatedQueryTxs.fromJson(value));
    }
    return map;
  }
}

