class ValidationMixin {

  String validateEmail(String value) {
    if (!value.contains('@')) {
      return 'Must contain @';
    }
    return null;
  }


  String validatePassword(String value) {
    if (value.length < 4) {
      return 'At least 4 characters';
    }
    return null;
  }
}
