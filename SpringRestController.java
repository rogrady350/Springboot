package thymeleafPublications;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

//unused at this time.
@RestController
@RequestMapping(path="/books")
public class SpringRestController {
	private final BooksService booksService;
	
	public SpringRestController(BooksService booksService) {
		this.booksService = booksService;
	}
	
	//add books to repository
	@PostMapping(path="/add")
	public @ResponseBody String addNewBook (@RequestParam String titleBook, 
											@RequestParam int publicationYr, 
											@RequestParam String author1, 
											@RequestParam String author2, 
											@RequestParam String isbnNum, 
											@RequestParam String publisher) {
		Book b = new Book();
		b.setTitleBook(titleBook);
		b.setPublicationYr(publicationYr);
		b.setAuthor1(author1);
		b.setAuthor2(author2);
		b.setIsbnNum(isbnNum);
		b.setPublisher(publisher);
		booksService.saveBook(b);
		return "Saved";
	}
	
	
	//find functions unused at this time. will be used for searching data
	@GetMapping(path="/{bookId}")
	public Book findById(@PathVariable("bookId") Integer bookId) {
		return booksService.findById(bookId);
	}
	
	@GetMapping("/find/{titleBook}")
	public Book findByTitle(@PathVariable("titleBook") String titleBook) {
		return booksService.findByTitle(titleBook);
	}
	
}
