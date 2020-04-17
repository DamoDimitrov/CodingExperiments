package kickoff.springframework.figures.domain;

import java.util.List;

public class FigureUtil {
    private FigureUtil() {
    }

    public static double calculateArea(List<Point> coordinates) {
        int numberOfPoints = coordinates.size();
        double area = 0.0;

        int j = numberOfPoints - 1;
        for (int i = 0; i < numberOfPoints; i++) {

            int x1 = coordinates.get(j).getX();
            int y1 = coordinates.get(j).getY();
            int x2 = coordinates.get(i).getX();
            int y2 = coordinates.get(i).getY();

            area += (x1 + x2) * (y1 - y2);

            j = i;
        }
        return Math.abs(area / 2.0);
    }
    public static double calculatePerimeter(List<Point> coordinates) {
        double perimeter = 0.0;
        int previousPoint = coordinates.size() - 1;
        for (int i = 0; i < coordinates.size(); i++) {
           perimeter += getDistance(coordinates.get(previousPoint), coordinates.get(i));
           previousPoint = i;
        }
        return perimeter;
    }

    private static double getDistance(Point a, Point b) {
        int x1 = a.getX();
        int y1 = a.getY();
        int x2 = b.getX();
        int y2 = b.getY();

        return Math.sqrt(Math.pow(x1 - x2, 2) + Math.pow(y1 - y2, 2));
    }
}
