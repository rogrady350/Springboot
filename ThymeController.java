package thymeleafPublications;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(path="/books")
public class ThymeController {
	private BooksService booksService;
	private BookChaptersService bookChaptersService;
	
	public ThymeController(BooksService booksService, BookChaptersService bookChaptersService) {
		this.booksService = booksService;
		this.bookChaptersService = bookChaptersService;
	}
	
	//full list of publications display
	@GetMapping("/publications")
	public String getAllPublications(Model model) {
		List<Book> books = booksService.findAllBooks();
		List<BookChapter> bookChapters = bookChaptersService.findAllBookChapters();
		model.addAttribute("books", books);
		model.addAttribute("bookChapters", bookChapters);
		
		return "publications";
	}
	
	//form for adding books to database
	@GetMapping("/newBook")
	public String showAddBookForm(Model model) {
		Book book = new Book();
		model.addAttribute("book", book);
		return "newBook";
	}
	
	//method to add book to database
	@PostMapping("/addBook")
	public String addBook(@ModelAttribute Book book) {
		book.setCatigory("Books"); //bookCatigory is always "Books" since it is a relationship
		booksService.saveBook(book);
		return "redirect:/books/publications";
	}

}
