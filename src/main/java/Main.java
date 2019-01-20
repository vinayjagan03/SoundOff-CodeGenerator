import static spark.Spark.*;

import java.io.FileWriter;

public class Main {

    public static void main(String[] args) {
        Generator gen = new Generator();
        port(getHerokuAssignedPort());
        get("/", (req, res) -> {
            FileWriter writer = new FileWriter("numbers.txt", true);
            int val = gen.generateNum();
            writer.write(val + "\n");
            writer.close();
            String result = val + "";
            while (result.length() < 3)
                result = "0" + result;
            return result;
        });
    }

    static int getHerokuAssignedPort() {
        ProcessBuilder processBuilder = new ProcessBuilder();
        if (processBuilder.environment().get("PORT") != null) {
            return Integer.parseInt(processBuilder.environment().get("PORT"));
        }
        return 4567;
    }


}