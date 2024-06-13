package thymeleafPublications;

import java.util.List;

import org.springframework.stereotype.Service;

//interface of book chapters functions
@Service
public interface BookChaptersService {
	BookChapter findById(Integer chapterId);
	BookChapter findByTitle(String titleBook);
	BookChapter saveBookChapter(BookChapter bookChapters);
	List<BookChapter>findAllBookChapters();
}
