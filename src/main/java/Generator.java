import java.io.File;
import java.util.HashSet;
import java.util.Scanner;

public class Generator {

    public HashSet<Integer> set;
    private File file;

    public Generator() {
        try {
            file = new File("numbers.txt");
            if (!file.exists()) {
                file.createNewFile();
            }
            Scanner reader = new Scanner(file);
            set = new HashSet<Integer>();
            while (reader.hasNextLine())
                set.add(Integer.parseInt(reader.nextLine()));
            reader.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public int generateNum() {
        while (true) {
            String result = "";
            for (int i = 0; i < 3; i++) {
                String num = ((int) (Math.random() * 10.0)) + "";
                if (!result.contains(num))
                    result += num;
            }
            int val = Integer.parseInt(result);
            if (!set.contains(val)) {
                set.add(val);
                try {
                } catch (Exception e) {
                    e.printStackTrace();
                }
                return val;
            }
        }
    }

}