import static spark.Spark.get;
import static spark.Spark.port;

import java.io.File;
import java.io.FileWriter;
import java.io.StringWriter;
import java.util.HashMap;
import java.util.Map;

import freemarker.template.Configuration;
import freemarker.template.Template;
import freemarker.template.TemplateExceptionHandler;

public class Main {

    public static void main(String[] args) {
        Generator gen = new Generator();
        port(8080);
        get("/", (req, res) -> {
            FileWriter writer = new FileWriter("numbers.txt", true);
            int val = gen.generateNum();
            writer.write(val + "\n");
            writer.close();
            String result = val + "";
            while (result.length() < 3)
                result = "0" + result;

            String newStr = "";
            for (char c : result.toCharArray())
                newStr += c + " ";
            
            newStr = newStr.substring(0, newStr.length() - 1);

            System.out.println(result);

            return setUpTemplate(newStr);
        });
    }

    static String setUpTemplate(String num) throws Exception {
        Configuration cfg = new Configuration(Configuration.VERSION_2_3_27);
        cfg.setDirectoryForTemplateLoading(new File("src/main/res"));
        cfg.setDefaultEncoding("UTF-8");
        cfg.setTemplateExceptionHandler(TemplateExceptionHandler.RETHROW_HANDLER);
        cfg.setLogTemplateExceptions(false);
        cfg.setWrapUncheckedExceptions(true);

        Map<String, Object> map = new HashMap<String, Object>();
        map.put("num", num);

        Template temp = cfg.getTemplate("index.ftlh");
        StringWriter writer = new StringWriter();
        temp.process(map, writer);
       // System.out.println(writer.toString());
        return writer.toString();
    }

}