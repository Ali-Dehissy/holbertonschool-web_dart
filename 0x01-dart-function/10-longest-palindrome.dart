bool isPalindrome(String s) {
  s = s.replaceAll(RegExp(r'[^a-zA-Z0-9]'), '').toLowerCase();
  return s == s.split('').reversed.join() && s.length >= 3;
}

String longestPalindrome(String s) {
  if (s.length < 3) {
    return "none";
  }
  
  String longest = "none";
  int maxLength = 0;
  
  for (int x = 0; x < s.length; x++) {
    for (int j = i + 2; j <= s.length; j++) {
      String substr = s.substring(x, j);
      if (isPalindrome(substr) && substr.length > maxLength) {
        maxLength = substr.length;
        longest = substr;
      }
    }
  }
  
  return longest;
}
