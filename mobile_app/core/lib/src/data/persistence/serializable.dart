typedef JsonFactory<T> = T Function(Map<String, dynamic> json);

abstract interface class Serializable<T> {
  Map<String, dynamic> toJson();
}
