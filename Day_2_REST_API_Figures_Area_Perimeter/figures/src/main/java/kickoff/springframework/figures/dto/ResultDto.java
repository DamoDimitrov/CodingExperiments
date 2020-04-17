package kickoff.springframework.figures.dto;

import java.io.Serializable;

public class ResultDto implements Serializable {

    private String id;
    private double area;
    private double perimeter;

    public ResultDto() {
    }

    public ResultDto(String id, double area, double perimeter) {
        this.id = id;
        this.area = area;
        this.perimeter = perimeter;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public double getArea() {
        return area;
    }

    public void setArea(double area) {
        this.area = area;
    }

    public double getPerimeter() {
        return perimeter;
    }

    public void setPerimeter(double perimeter) {
        this.perimeter = perimeter;
    }
}
