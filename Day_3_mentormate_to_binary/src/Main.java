public class Main {
    public static void main(String[] args) {
        final String WORD = "mentormate";

        char[] letters = WORD.toCharArray();

        StringBuilder sb = new StringBuilder();

        for (int i = 0; i < letters.length; i++) {
            String letter = Integer.toBinaryString(letters[i]);
            sb.append(addMissingDigits(letter));
        }
        System.out.println(sb.toString());
    }

    private static String addMissingDigits(String letter) {
        while(letter.length() < 8) {
            letter = "0" + letter;
        }
        return letter;
    }
}
