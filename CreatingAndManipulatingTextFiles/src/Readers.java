import java.io.*;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class Readers implements Closeable {

    private BufferedReader ir;
    private Map<String, List<Closeable>> readersAndWriters;

    public Readers() {
        this.readersAndWriters = new HashMap<>();
        this.ir = new BufferedReader(new InputStreamReader(System.in));
    }

    public void newFilePath(String path) {
        List<Closeable> list = new ArrayList<>();
        BufferedWriter bfw = null;
        BufferedReader bfr = null;

        try {
            bfw = new BufferedWriter(new FileWriter(path));
            bfr = new BufferedReader(new FileReader(path));
        } catch (IOException e) {
            e.printStackTrace();
        }
            if(bfw != null && bfr != null) {
                list.add(bfw);
                list.add(bfr);
            }

            this.readersAndWriters.put(path, list);
    }

    public BufferedReader inputReader() {
        return this.ir;
    }

    public BufferedReader fileReader(String path) {
        if (this.readersAndWriters.containsKey(path)) {
            return (BufferedReader) this.readersAndWriters.get(path).get(1);
        } else {
            throw new NullPointerException("No such file");
        }
    }

    public BufferedWriter fileWriter(String path) {
        if (this.readersAndWriters.containsKey(path)) {
            return (BufferedWriter) this.readersAndWriters.get(path).get(0);
        } else {
            throw new NullPointerException("No such file");
        }
    }

    @Override
    public void close() throws IOException {
        this.ir = null;
        this.readersAndWriters = null;
    }
}
