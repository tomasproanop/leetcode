class Solution {
    public boolean isAnagram(String s, String t) {
        if (s.length() != t.length()) {
            return false;
        }

        int freq[] = new int[128]; // Extend the size to 128 for ASCII characters

        for (int i = 0; i < s.length(); i++) {
            if (Character.isLetter(s.charAt(i))) {
                freq[s.charAt(i)]++;
            }
        }

        for (int i = 0; i < t.length(); i++) {
            if (Character.isLetter(t.charAt(i))) {
                freq[t.charAt(i)]--;
            }
        }

        for (int i = 0; i < 128; i++) {
            if (freq[i] != 0) {
                return false;
            }
        }
        
        return true;
    }
}
