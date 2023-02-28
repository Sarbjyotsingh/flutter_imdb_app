// Debouncer Class, which uses a timer to delay the search request until it stops receiving text changes for half a second, or any duration that you set.
import 'dart:async';
import 'dart:ui';

class Debouncer {
  final int milliseconds;
  VoidCallback? action;
  Timer? _timer;

  Debouncer({
    required this.milliseconds,
  });

  run(VoidCallback action) {
    if (null != _timer) {
      _timer?.cancel();
    }

    _timer = Timer(Duration(milliseconds: milliseconds), action);
  }
}
