import java.util.HashMap;

public class Hashmatique {
    public static void Challange() {
        HashMap<String, String> map = new HashMap<String, String>();
        map.put("Moons", "Astrology");
        map.put("Stuff", "And Things!");
        map.put("ASDF", "QWERTY");
        map.put("Not imaginitive", "Nope, still not imaginitive");

        String val = map.get("ASDF");

        for (String key : map.keySet()) {
            System.out.println(String.format("Track: %s: Lyrics: %s", key, map.get(key)));
        }


    }
}