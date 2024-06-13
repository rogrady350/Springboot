package thymeleafPublications;

import java.util.List;

import org.springframework.stereotype.Service;

@Service
public class BooksServiceImpl implements BooksService {
	//repository to store book data from database
	private final BooksRepository booksRepository;

	public BooksServiceImpl(BooksRepository booksRepository) {
		this.booksRepository = booksRepository;
	}

	//find functions unused at this time
	@Override
	public Book findById(Integer bookId) {
		return booksRepository.findByID(bookId);
	}

	@Override
	public Book findByTitle(String titleBook) {
		return booksRepository.findByTitle(titleBook);
	}

	//save books to repository
	@Override
	public Book saveBook(Book book) {
		return booksRepository.save(book);
	}

	//display full list of books
	@Override
	public List<Book> findAllBooks() {
		return booksRepository.findAll();
	}

}
