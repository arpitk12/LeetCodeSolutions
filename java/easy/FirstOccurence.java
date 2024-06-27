public class FirstOccurence {

    public static int strStr(String haystack, String needle) {
        int desired=haystack.length()-needle.length();
        for(int i=0;i<desired;i++){
            if ((haystack).startsWith(needle, i)){
                return i;
            }

        }
        return -1;
    }

    public static void main(String[] args) {
        System.out.println(strStr("sadbutsad","sad"));
    }
}
