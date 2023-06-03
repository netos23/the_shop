import 'package:core/core.dart';

class AsyncDependency implements AsyncInitLifecycleComponent {
  final List<AsyncLifecycleComponent> components;

  AsyncDependency(this.components);

  @override
  Future<void> asyncInit() async {
    for (final c in components) {
      await c.asyncInit();
    }
  }

}
