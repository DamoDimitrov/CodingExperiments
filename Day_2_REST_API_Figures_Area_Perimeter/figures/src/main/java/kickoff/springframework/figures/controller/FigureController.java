package kickoff.springframework.figures.controller;

import kickoff.springframework.figures.dto.FigureDto;
import kickoff.springframework.figures.dto.ResultDto;
import kickoff.springframework.figures.service.FigureService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("api/v1")
public class FigureController {

    private final FigureService figureService;

    @Autowired
    public FigureController(FigureService figureService) {
        this.figureService = figureService;
    }

    @PostMapping("/figures/")
    public List<ResultDto> calculateAll(@RequestBody List<FigureDto> figures) {
        return this.figureService.calculateAll(figures);
    }
}
