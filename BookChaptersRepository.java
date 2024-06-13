package thymeleafPublications;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

//repository interface for book chapters
public interface BookChaptersRepository extends JpaRepository<BookChapter, Integer> {
	//JPQL
	@Query(value = "select c from BookChapter c where c.chapterId=?1")
	BookChapter findByID(Integer bookId);
	
	//Native Query
	@Query(value = "select * from BookChapter where title_book=?1", nativeQuery = true)
	BookChapter findByTitle(String titleBook);
}
