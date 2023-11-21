bool isPalindrome(String s) {
  s = s.replaceAll(RegExp(r'[^a-zA-Z0-9]'), '').toLowerCase();
    return s == s.split('').reversed.join() && s.length >= 3;
}
