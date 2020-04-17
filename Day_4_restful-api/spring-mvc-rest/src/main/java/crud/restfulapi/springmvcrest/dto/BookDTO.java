package crud.restfulapi.springmvcrest.dto;

import java.io.Serializable;

public class BookDTO implements Serializable {

    private static final long serialVersionUID = 8522851419177287526L;

    private String title;
    private String author;
    private String publisher;
    private int year;

    public BookDTO() {
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public String getPublisher() {
        return publisher;
    }

    public void setPublisher(String publisher) {
        this.publisher = publisher;
    }

    public int getYear() {
        return year;
    }

    public void setYear(int year) {
        this.year = year;
    }
}
