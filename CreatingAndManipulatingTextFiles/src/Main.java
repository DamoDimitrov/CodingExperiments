import java.io.*;

public class Main {
    public static void main(String[] args) {

        //TODO create different classes and refactor the code

        String userDir = System.getProperty("user.dir");
        String path = userDir + "/res/output.txt";

        long rows = 0;

        try (BufferedWriter bfw = new BufferedWriter(new FileWriter(path, true));
             BufferedReader bfr = new BufferedReader(new InputStreamReader(System.in))) {
            String input = "";
            while (!"stop".equalsIgnoreCase(input = bfr.readLine())) {
                bfw.write(input);
                bfw.newLine();
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
        try (BufferedReader bfr = new BufferedReader(new FileReader(path))){
            rows = bfr.lines().count();
        } catch (IOException e) {
            e.printStackTrace();
        }
        String newFilePath = userDir + "/res/newOutput.txt";
        File newFile = new File(newFilePath);
        try (BufferedReader reader = new BufferedReader(new FileReader(path));
            BufferedWriter writer = new BufferedWriter(new FileWriter(newFile))){
            String line = "";
            line = reader.readLine();
            if (line.contains("Rows written : ")) {
                rows--;
                line = reader.readLine();
            }
            writer.write(String.format("Rows written : %d", rows));
            writer.newLine();
            while (rows-- > 0) {
                writer.write(line);
                writer.newLine();
                line = reader.readLine();
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
        File oldFile = new File(path);
        oldFile.delete();
        newFile.renameTo(new File(path));
    }
}

