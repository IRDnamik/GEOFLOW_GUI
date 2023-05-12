import 'package:geoflow_gui/extension/string.dart';

class ErrorType {
  checkMailAdress(String? value) {
    String? errorType;

    if (value == null || value.isEmpty || value.isNotNull == false) {
      errorType = "Cannot be Empty";
    } else if (!value.isValidEmail) {
      errorType = "You should provide a valid gmail adress";
    }
    return errorType;
  }

  checkDB(String? value) {
    String? errorType;

    if (value == null || value.isEmpty || value.isNotNull == false) {
      errorType = "Cannot be Empty";
    }
    return errorType;
  }
}
