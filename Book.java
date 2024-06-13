package thymeleafPublications;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

//create book entity
@Entity
@Table(name = "books")
public class Book {
	//column variables
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	
	@Column(name = "id_book")
	private Integer bookId;
	
	@Column(name = "catigory_catigory")
	private String catigory;

	@Column(name = "title_book")
	private String titleBook;
	@Column(name = "publication_yr")
	private Integer publicationYr;
	@Column(name = "author_1")
	private String author1;
	@Column(name = "author_2")
	private String author2;
	@Column(name = "ISBN_num")
	private String isbnNum;
	@Column(name = "publisher")
	private String publisher;
	
	protected Book() {}
		
	//Book constructor
	public Book(Integer bookId, String titleBook, Integer publicationYr, String author1, String author2, String isbnNum, String publisher) {
			this.bookId = bookId;
			this.titleBook = titleBook;
			this.publicationYr = publicationYr;
			this.author1 = author1;
			this.author2 = author2;
			this.isbnNum = isbnNum;
			this.publisher = publisher;			
	}

	//getters, setters	
	public String getCatigory() {
		return catigory;
	}
	public void setCatigory(String catigory) {
		this.catigory = catigory;
	}

	public int getBookId() {
		return bookId;
	}
	public void setBookId(Integer bookId) {
		this.bookId = bookId;
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
	public String getIsbnNum() {
		return isbnNum;
	}
	public void setIsbnNum(String isbnNum) {
		this.isbnNum = isbnNum;
	}
	public String getPublisher() {
		return publisher;
	}
	public void setPublisher(String publisher) {
		this.publisher = publisher;
	}

}
