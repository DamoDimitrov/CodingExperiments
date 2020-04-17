package crud.restfulapi.springmvcrest.repository;

import crud.restfulapi.springmvcrest.entity.Book;
import org.springframework.data.jpa.repository.JpaRepository;

public interface BookRepository extends JpaRepository<Book, Long> {
    //TODO
}
