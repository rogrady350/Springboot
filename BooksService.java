package thymeleafPublications;

import java.util.List;

import org.springframework.stereotype.Service;

//interface of book functions
@Service
public interface BooksService {
	Book findById(Integer bookId);
	Book findByTitle(String titleBook);
	Book saveBook(Book book);
	List<Book>findAllBooks();
}
