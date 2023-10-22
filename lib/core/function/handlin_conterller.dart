import 'package:traders/core/class/stateRequest.dart';

handlinData(response) {
  if (response is StatrRequest) {
    return response;
  } else {
    return StatrRequest.success;
  }
}
