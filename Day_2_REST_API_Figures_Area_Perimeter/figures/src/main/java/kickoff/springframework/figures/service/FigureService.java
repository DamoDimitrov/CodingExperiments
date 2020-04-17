package kickoff.springframework.figures.service;

import kickoff.springframework.figures.dto.FigureDto;
import kickoff.springframework.figures.dto.ResultDto;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface FigureService {
    List<ResultDto> calculateAll(List<FigureDto> figures);
}
