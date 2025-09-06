String? phoneValidator(String? value) {
  if (value == null || value.isEmpty) {
    return "Phone number is required";
  }
  // Simple regex for 10-digit numbers
  final regex = RegExp(r'^\d{10}$');
  if (!regex.hasMatch(value)) {
    return "Enter a valid 10-digit phone number";
  }
  return null;
}
