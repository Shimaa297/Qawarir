
String? validatorEmail(String? value) {
  const String pattern =
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+";

  final RegExp regExp = RegExp(pattern);
  if (value == null || value.isEmpty) {
    return "requiredEmail";
  } else if (!regExp.hasMatch(value)) {
    return "notValidEmail";
  }
  return null;
}
