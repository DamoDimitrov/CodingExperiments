package kickoff.springframework.figures.domain;

import java.util.List;

public abstract class Figure {
    private String id;
    private List<Point> coordinates;

    protected Figure(String id, List<Point> coordinates) {
        this.id = id;
        this.coordinates = coordinates;
    }

    public String getId(){
        return this.id;
    }

    protected void setId(String id) {
        this.id = id;
    }

    protected void setCoordinates(List<Point> coordinates) {
        this.coordinates = coordinates;
    }

    protected List<Point> getCoordinates() {
        return coordinates;
    }

    public abstract double calculateArea();
    public abstract double calculatePerimeter();
}
