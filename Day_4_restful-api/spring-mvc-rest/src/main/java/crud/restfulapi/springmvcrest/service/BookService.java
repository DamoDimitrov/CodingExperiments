package crud.restfulapi.springmvcrest.service;

import crud.restfulapi.springmvcrest.entity.Book;

import java.util.List;

public interface BookService {

    Book create(Book book);

    Book update(Book book);

    void delete(Long id);

    Book findById(Long id);

    List<Book> findAllBooks();
}
