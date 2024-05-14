mixin ValidationMixin {
  bool isFieldEmpty(String? fieldValue) => fieldValue?.isEmpty ?? true;

  bool validateFullName(String name) {
    if (name.isNotEmpty) {
      return RegExp(r'^(?![ .]+$)[a-zA-Z .]*$').hasMatch(name);
    }
    return true;
  }

  bool validateEmailAddress(String email) {
    if (email.isNotEmpty) {
      return RegExp(r'^[\w-]+(\.[\w-]+)*@([a-z0-9-]+\.)+[a-z]{2,}$')
          .hasMatch(email);
    }

    return true;
  }

  bool validateMobileNumber(String phone) {
    if (phone.isNotEmpty) {
      return RegExp(r'(^[+]?[(]?[0-9]{3}[)]?[-\s.]?[0-9]{3}[-\s.]?[0-9]{4,6}$)')
          .hasMatch(phone);
    }

    return true;
  }

  bool validateAddress(String address) {
    if (address.isNotEmpty) {
      return RegExp(r"^[0-9a-zA-Z\s,'-/]+$").hasMatch(address);
    }

    return true;
  }
}
