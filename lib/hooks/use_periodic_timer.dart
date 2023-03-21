import 'dart:async';

import 'package:flutter_hooks/flutter_hooks.dart';

void usePeriodicTimer<T>({
  required Future<void> Function() callback,
  bool fireImmediately = false,
}) {
  useEffect(
    () {
      if (fireImmediately) {
        callback();
      }
      final timer = Timer.periodic(const Duration(seconds: 30), (_) async {
        callback();
      });
      return () {
        timer.cancel();
      };
    },
    [],
  );
}
