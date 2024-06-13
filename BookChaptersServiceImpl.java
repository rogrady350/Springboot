package thymeleafPublications;

import java.util.List;

import org.springframework.stereotype.Service;

@Service
public class BookChaptersServiceImpl implements BookChaptersService{
	//repository to store book chapters data from database
	private final BookChaptersRepository bookChaptersRepository;

	public BookChaptersServiceImpl(BookChaptersRepository bookChaptersRepository) {
		this.bookChaptersRepository = bookChaptersRepository;
	}

	//find functions unused at this time
	@Override
	public BookChapter findById(Integer chapterId) {
		return bookChaptersRepository.findByID(chapterId);
	}

	@Override
	public BookChapter findByTitle(String titleBook) {
		return bookChaptersRepository.findByTitle(titleBook);
	}

	//save books chapters to this repository. unimplemented at this time
	@Override
	public BookChapter saveBookChapter(BookChapter bookChapters) {
		return bookChaptersRepository.save(bookChapters);
	}
	
	//display full list of book chapters
	@Override
	public List<BookChapter> findAllBookChapters() {
		return bookChaptersRepository.findAll();
	}

}
