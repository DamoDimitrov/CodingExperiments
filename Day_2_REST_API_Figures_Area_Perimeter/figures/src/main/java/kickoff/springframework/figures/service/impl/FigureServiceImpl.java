package kickoff.springframework.figures.service.impl;

import kickoff.springframework.figures.domain.Figure;
import kickoff.springframework.figures.domain.Rectangle;
import kickoff.springframework.figures.domain.Triangle;
import kickoff.springframework.figures.dto.FigureDto;
import kickoff.springframework.figures.dto.ResultDto;
import kickoff.springframework.figures.service.FigureService;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class FigureServiceImpl implements FigureService {


    @Override
    public List<ResultDto> calculateAll(List<FigureDto> figures) {
        List<ResultDto> results = new ArrayList<>();
        List<Figure> convertedFigures = convertToFigure(figures);

        for (Figure convertedFigure : convertedFigures) {
            ResultDto currentResultDto = new ResultDto();

            currentResultDto.setId(convertedFigure.getId());
            currentResultDto.setArea(convertedFigure.calculateArea());
            currentResultDto.setPerimeter(convertedFigure.calculatePerimeter());

            results.add(currentResultDto);
        }
        return results;
    }

    public List<Figure> convertToFigure(List<FigureDto> figures) {
        List<Figure> convertedFigures = new ArrayList<>();

        for (FigureDto figure : figures) {
            switch (figure.getType()) {
                case "triangle":
                    Figure triangle = new Triangle(figure.getId(), figure.getCoordinates());
                    convertedFigures.add(triangle);
                    break;
                case "rectangle":
                    Figure rectangle = new Rectangle(figure.getId(), figure.getCoordinates());
                    convertedFigures.add(rectangle);
                    break;
                default:
                    break;
            }
        }
        return convertedFigures;
    }
}
