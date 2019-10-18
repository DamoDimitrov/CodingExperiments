import java.io.*;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

public class Main {
    public static void main(String[] args) throws IOException {

        //TODO make it write AT ALL
        //TODO make the deleting work AT ALL

        String userDir = System.getProperty("user.dir");
        String path = userDir + "/res/output.txt";

        long rows = 0;

        Readers reader = new Readers();

        try {
            reader.newFilePath(path);
            String input = "";
            writingInFile(path, reader);

//           noneExistingFileChecker(path, reader);
        } catch (Exception e) {
            e.printStackTrace();
        }
        try {
            rows = reader.fileReader(path).lines().count();
        } catch (Exception e) {
            e.printStackTrace();
        }
        String newFilePath = userDir + "/res/newOutput.txt";
        File newFile = new File(newFilePath);
        try{
            reader.newFilePath(newFilePath);
            String line = "";
            if (reader.fileReader(path).readLine() != null) {
                line = reader.fileReader(path).readLine();
            }
            if (line.contains("Rows written : ")) {
                rows--;
                line = reader.fileReader(path).readLine();
            }
            reader.fileWriter(newFilePath).write(String.format("Rows written : %d", rows));
            reader.fileWriter(newFilePath).newLine();

            while (rows-- > 0) {
                reader.fileWriter(newFilePath).write(line);
                reader.fileWriter(newFilePath).newLine();
                line = reader.fileReader(path).readLine();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        reader.close();
        File file = new File(path);
        file.delete();
        newFile.renameTo(new File(path));

    }

    private static void writingInFile(String path, Readers reader) throws IOException {
        String input;
        while (!"stop".equalsIgnoreCase(input = reader.inputReader().readLine())) {
            reader.fileWriter(path).write(input);
            reader.fileWriter(path).newLine();

        }
    }

    private static void noneExistingFileChecker(String path, Readers reader) throws IOException {
        if (reader.fileReader(path).readLine() == null) {
            reader.fileWriter(path).close();
            reader.fileReader(path).close();
            Files.delete(Paths.get(path));
            System.exit(0);
        }
    }
}

