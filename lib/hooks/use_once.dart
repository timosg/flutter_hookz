import 'package:flutter_hooks/flutter_hooks.dart';

void useOnce(void Function()? Function() effect) {
  useEffect(
    () {
      final call = effect();
      return () => {
            if (call != null) call(),
          };
    },
    [],
  );
}
