package thymeleafPublications;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

//create chapter entity
@Entity
@Table(name = "book_chapters")
public class BookChapter {
	//column variables
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	
	@Column(name = "chapter_id")
	private Integer chapterId;
	
	@Column(name = "catigory_catigory")
	private String catigory;
	
	@Column(name = "title_chapter")
	private String titleChapter;
	@Column(name = "title_book")
	private String titleBook;
	@Column(name = "publication_yr")
	private Integer publicationYr;
	@Column(name = "author_1")
	private String author1;
	@Column(name = "author_2")
	private String author2;
	@Column(name = "publisher")
	private String publisher;
	
	protected BookChapter() {}
	
	//BookChapters constructor
	public BookChapter(Integer chapterId, String titleChapter, String titleBook, 
			Integer publicationYr, String author1, String author2, String publisher) {
		this.chapterId = chapterId;
		this.titleChapter = titleChapter;
		this.titleBook = titleBook;
		this.publicationYr = publicationYr;
		this.author1 = author1;
		this.author2 = author2;
		this.publisher = publisher;	
	}

	//getters, setters
	public Integer getChapterId() {
		return chapterId;
	}
	public void setChapterId(Integer chapterId) {
		this.chapterId = chapterId;
	}

	public String getCatigory() {
		return catigory;
	}
	public void setCatigory(String catigory) {
		this.catigory = catigory;
	}

	public String getTitleChapter() {
		return titleChapter;
	}
	public void setTitleChapter(String titleChapter) {
		this.titleChapter = titleChapter;
	}

	public String getTitleBook() {
		return titleBook;
	}
	public void setTitleBook(String titleBook) {
		this.titleBook = titleBook;
	}

	public Integer getPublicationYr() {
		return publicationYr;
	}
	public void setPublicationYr(Integer publicationYr) {
		this.publicationYr = publicationYr;
	}

	public String getAuthor1() {
		return author1;
	}
	public void setAuthor1(String author1) {
		this.author1 = author1;
	}

	public String getAuthor2() {
		return author2;
	}
	public void setAuthor2(String author2) {
		this.author2 = author2;
	}

	public String getPublisher() {
		return publisher;
	}
	public void setPublisher(String publisher) {
		this.publisher = publisher;
	}
	
}
