import 'package:flutter_hooks/flutter_hooks.dart';

void useDidUpdate(void Function() effect, [List<Object?>? keys]) {
  final isMounted = useIsMounted();
  useEffect(
    () {
      if (isMounted()) {
        effect();
      }
      return () {};
    },
    [keys],
  );
}
