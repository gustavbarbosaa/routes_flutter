class AuthController {
  bool validarEmail(String email) {
    bool status = false;

    String pattern = r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$';

    RegExp regExp = new RegExp(pattern);

    if (email.isNotEmpty && regExp.hasMatch(email)) {
      status = true;
      return status;
    }

    return status;
  }
}
