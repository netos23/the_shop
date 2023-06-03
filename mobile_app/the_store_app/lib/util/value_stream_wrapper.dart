import 'dart:async';

class ValueStreamWrapper<T>{
  final StreamController<T> _controller = StreamController.broadcast();
  T? _value;

  T get value => _value!;
  T? get valueOrNull => _value;

  Stream<T> get stream => _controller.stream;

  ValueStreamWrapper();

  void add(T value) {
    _value = value;
    _controller.add(value);
  }

  void dispose() {
    _controller.close();
  }
}