import java.io.*;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class Readers implements Closeable {

    private Closeable bfr;
    private BufferedReader ir;
    private Closeable bfw;
    private Map<String, List<Closeable>> readersAndWriters;

    public Readers() {
        readersAndWriters = new HashMap<>();
        bfr = null;
        bfw = null;
        ir = new BufferedReader(new InputStreamReader(System.in));
    }

    public void newFilePath(String path) {
        List<Closeable> list = new ArrayList<>();
        try {
            list.add(new BufferedWriter(new FileWriter(path)));
            list.add(new BufferedReader(new FileReader(path)));

            readersAndWriters.put(path, list);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public BufferedReader inputReader() {
        return ir;
    }

    public BufferedReader fileReader(String path) {
        return (BufferedReader) readersAndWriters.get(path).get(1);
    }

    public BufferedWriter fileWriter(String path) {
        return (BufferedWriter) readersAndWriters.get(path).get(0);
    }

    @Override
    public void close() throws IOException {
        bfr = null;
        bfw = null;
        ir = null;
        readersAndWriters = null;
    }
}
