package thymeleafPublications;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

//repository interface for books
@Repository
public interface BooksRepository extends JpaRepository<Book, Integer> {
	
	//JPQL
	@Query(value = "select b from Book b where b.bookId=?1")
	Book findByID(Integer bookId);
	
	//Native Query
	@Query(value = "select * from Book where title_book=?1", nativeQuery = true)
	Book findByTitle(String titleBook);
}
