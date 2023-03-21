import 'package:flutter_hooks/flutter_hooks.dart';

void useMount(void Function() effect) {
  useEffect(
    () {
      effect();
      return () => {};
    },
    [],
  );
}
