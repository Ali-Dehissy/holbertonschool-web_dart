String longestUniqueSubstring(String str) {
  int n = str.length;
  String longestSubstring = "";
  int left = 0;
  int right = 0;
  Set<String> uniqueChars = {};

  while (right < n) {
    String currentChar = str[right];
    if (!uniqueChars.contains(currentChar)) {
      uniqueChars.add(currentChar);
      right++;
      if (right - left > longestSubstring.length) {
        longestSubstring = str.substring(left, right);
      }
    } else {
      uniqueChars.remove(str[left]);
      left++;
    }
  }

  return longestSubstring;
}
