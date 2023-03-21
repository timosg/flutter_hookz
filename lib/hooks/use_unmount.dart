import 'package:flutter_hooks/flutter_hooks.dart';

void useUnmount(void Function() effect) {
  useEffect(
    () {
      return () {
        effect();
      };
    },
    [],
  );
}
