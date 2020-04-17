package kickoff.springframework.figures.dto;

import kickoff.springframework.figures.domain.Point;

import java.io.Serializable;
import java.util.List;

public class FigureDto implements Serializable {

    private String id;

    private String type;

    private List<Point> coordinates;

    public FigureDto() {
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public List<Point> getCoordinates() {
        return coordinates;
    }

    public void setCoordinates(List<Point> coordinates) {
        this.coordinates = coordinates;
    }
}
