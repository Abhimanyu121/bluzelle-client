part of swagger.api;

class BlockHeader {
  
  String chainId = null;
  

  num height = null;
  

  String time = null;
  

  num numTxs = null;
  

  BlockID lastBlockId = null;
  

  num totalTxs = null;
  

  Hash lastCommitHash = null;
  

  Hash dataHash = null;
  

  Hash validatorsHash = null;
  

  Hash nextValidatorsHash = null;
  

  Hash consensusHash = null;
  

  Hash appHash = null;
  

  Hash lastResultsHash = null;
  

  Hash evidenceHash = null;
  

  Address proposerAddress = null;
  

  BlockHeaderVersion version = null;
  
  BlockHeader();

  @override
  String toString() {
    return 'BlockHeader[chainId=$chainId, height=$height, time=$time, numTxs=$numTxs, lastBlockId=$lastBlockId, totalTxs=$totalTxs, lastCommitHash=$lastCommitHash, dataHash=$dataHash, validatorsHash=$validatorsHash, nextValidatorsHash=$nextValidatorsHash, consensusHash=$consensusHash, appHash=$appHash, lastResultsHash=$lastResultsHash, evidenceHash=$evidenceHash, proposerAddress=$proposerAddress, version=$version, ]';
  }

  BlockHeader.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    chainId =
        json['chain_id']
    ;
    height =
        json['height']
    ;
    time =
        json['time']
    ;
    numTxs =
        json['num_txs']
    ;
    lastBlockId =
      
      
      new BlockID.fromJson(json['last_block_id'])
;
    totalTxs =
        json['total_txs']
    ;
    lastCommitHash =
      
      
      new Hash.fromJson(json['last_commit_hash'])
;
    dataHash =
      
      
      new Hash.fromJson(json['data_hash'])
;
    validatorsHash =
      
      
      new Hash.fromJson(json['validators_hash'])
;
    nextValidatorsHash =
      
      
      new Hash.fromJson(json['next_validators_hash'])
;
    consensusHash =
      
      
      new Hash.fromJson(json['consensus_hash'])
;
    appHash =
      
      
      new Hash.fromJson(json['app_hash'])
;
    lastResultsHash =
      
      
      new Hash.fromJson(json['last_results_hash'])
;
    evidenceHash =
      
      
      new Hash.fromJson(json['evidence_hash'])
;
    proposerAddress =
      
      
      new Address.fromJson(json['proposer_address'])
;
    version =
      
      
      new BlockHeaderVersion.fromJson(json['version'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'chain_id': chainId,
      'height': height,
      'time': time,
      'num_txs': numTxs,
      'last_block_id': lastBlockId,
      'total_txs': totalTxs,
      'last_commit_hash': lastCommitHash,
      'data_hash': dataHash,
      'validators_hash': validatorsHash,
      'next_validators_hash': nextValidatorsHash,
      'consensus_hash': consensusHash,
      'app_hash': appHash,
      'last_results_hash': lastResultsHash,
      'evidence_hash': evidenceHash,
      'proposer_address': proposerAddress,
      'version': version
     };
  }

  static List<BlockHeader> listFromJson(List<dynamic> json) {
    return json == null ? new List<BlockHeader>() : json.map((value) => new BlockHeader.fromJson(value)).toList();
  }

  static Map<String, BlockHeader> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, BlockHeader>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new BlockHeader.fromJson(value));
    }
    return map;
  }
}

