class FieldValidation {
  static String? nameValidator(String? value, String? value2) {
    if (value?.isEmpty ?? false) {
      return "First name cannot be blank!!!";
    }
    return "";
  }

  static String? emailValidator(String? value, String? value2) {
    if (value == null ||
        !RegExp(r'^[\w-_\.]+@([\w-].)+[a-z]{2,5}').hasMatch(value)) {
      return 'Enter valid email id!!';
    }
    return null;
  }

  static String? passwordValidator(String? value, String? value2) {
    if (value == null) {
      return "Please enter password!!";
    }
    if ((value.length) > 6) {
      return 'Password should be 6 characters long!!!';
    }
    return null;
  }

  static String? confirmPasswordValidator(
      String? value, String? passwordValue) {
    if (value != passwordValue) {
      return "Please check the password!!";
    }
    return null;
  }

  static String? MobileValidator(String? value, String? passwordValue) {
    if (value?.length != 10) {
      return "Please valid mobile number!!!";
    }
    return null;
  }
}
