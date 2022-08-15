void main() {
  var fm = FileManager();

  fm.secureFile(AlgoAES());
  fm.secureFile(AlgoRSA());
  
  //The usage of abstractions gives the freedom to be independent from the implementation.
  //The point is that anyone using the EncryptionAlgorithm only knows about the encrypt()
  //method and the other internal details of the class don 't matter at all!
}

abstract class EncryptionAlgorithm {
  const EncryptionAlgorithm();

  String encrypt();
}

class AlgoAES implements EncryptionAlgorithm {
  String encrypt() {
    return "";
  }
}

class AlgoRSA implements EncryptionAlgorithm {
  String encrypt() {
    return "";
  }
}

class AlgoSHA implements EncryptionAlgorithm {
  String encrypt() {
    return "";
  }
}

class FileManager {
  void secureFile(EncryptionAlgorithm algo) {
    algo.encrypt();
  }
}
