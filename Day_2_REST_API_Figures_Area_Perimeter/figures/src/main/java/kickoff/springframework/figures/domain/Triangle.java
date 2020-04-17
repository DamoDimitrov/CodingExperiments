package kickoff.springframework.figures.domain;

import java.util.List;

public class Triangle extends Figure {

    public Triangle(String id, List<Point> coordinates) {
        super(id, coordinates);
    }

    @Override
    public double calculateArea() {
        return FigureUtil.calculateArea(getCoordinates());
    }


    @Override
    public double calculatePerimeter() {
        return FigureUtil.calculatePerimeter(getCoordinates());
    }
}
