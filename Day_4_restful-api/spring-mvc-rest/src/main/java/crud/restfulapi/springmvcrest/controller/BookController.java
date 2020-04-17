package crud.restfulapi.springmvcrest.controller;

import crud.restfulapi.springmvcrest.dto.BookDTO;
import crud.restfulapi.springmvcrest.entity.Book;
import crud.restfulapi.springmvcrest.repository.BookRepository;
import crud.restfulapi.springmvcrest.service.BookService;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.stream.Collectors;

@RestController
@RequestMapping("api/books")
public class BookController {

    private final BookService bookService;
    private ModelMapper modelMapper = new ModelMapper();

    @Autowired
    public BookController(BookService bookService) {
        this.bookService = bookService;
    }

    @PostMapping
    public BookDTO create(@RequestBody  BookDTO bookDTO) {
        Book book = modelMapper.map(bookDTO, Book.class);
        return modelMapper.map(bookService.create(book), BookDTO.class);
    }

    @PatchMapping
    //TODO check on the update
    public BookDTO update(@RequestBody BookDTO bookDTO) {
        Book book = modelMapper.map(bookDTO, Book.class);
        return modelMapper.map(bookService.update(book), BookDTO.class);
    }

    @DeleteMapping("/{id}")
    @ResponseStatus(HttpStatus.OK)
    public void delete(@PathVariable Long id) {
        bookService.delete(id);
    }

    @GetMapping("/{id}")
    public BookDTO findById(@PathVariable Long id) {
        return modelMapper.map(bookService.findById(id), BookDTO.class);
    }

    @GetMapping
    public List<BookDTO> findAllBooks() {
        return bookService.findAllBooks().stream()
                .map(book -> modelMapper.map(book, BookDTO.class))
                .collect(Collectors.toList());
    }


}
