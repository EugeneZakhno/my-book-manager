package com.heroku.my_book_manage.model;

import javax.persistence.*;

@Entity
@Table(name = "BOOKS")
public class Book {
    @Id
    @Column(name = "ID")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @Column(name = "BOOK_SERIAL_NUMBER")
    private int bookSerialNumber;

    @Column(name = "BOOK_AUTHOR")
    private String bookAuthor;

    @Column(name = "PUBLISHING_HOUSE")
    private String publishingHouse;

    @Column(name = "BOOK_YEAR")
    private int bookYear;

    @Column(name = "BOOK_LANG")
    private String bookLang;

    @Column(name = "BOOK_TITLE")
    private String bookTitle;

    @Column(name = "BOOK_TOPICS")
    private String topics;

    @Column(name = "BOOK_LINKS")
    private String links;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
    public int getBookSerialNumber() {
        return bookSerialNumber;
    }

    public void setBookSerialNumber(int bookSerialNumber) {
        this.bookSerialNumber = bookSerialNumber;
    }
    public String getBookTitle() {
        return bookTitle;
    }

    public void setBookTitle(String bookTitle) {
        this.bookTitle = bookTitle;
    }

    public int getBookYear() {
        return bookYear;         //
    }
    public void setBookYear(int bookYear) {
        this.bookYear = bookYear;
    }

    public String getBookLang() {
        return bookLang;
    }

    public void setBookLang(String bookLang) {
        this.bookLang = bookLang;
    }

    public String getBookAuthor() {
        return bookAuthor;
    }

    public void setBookAuthor(String bookAuthor) {
        this.bookAuthor = bookAuthor;
    }
    public String getPublishingHouse() {
        return publishingHouse;
    }

    public void setPublishingHouse(String publishingHouse) {
        this.publishingHouse = publishingHouse;
    }

    public String getTopics() {
        return topics;
    }

    public void setTopics(String topics) {
        this.topics = topics;
    }
    public String getLinks() {
        return links;
    }

    public void setLinks(String links) {
        this.links = links;
    }
    @Override
    public String toString() {
        return "Book {" +
                "id=" + id +
                ", bookSerialNumber='" + bookSerialNumber + '\'' +
                ", bookTitle='" + bookTitle + '\'' +
                ", bookLang='" + bookLang + '\'' +
                ", bookAuthor='" + bookAuthor + '\'' +
                ", topics=" + topics +
                ", links=" + links +
                '}';
    }
}
