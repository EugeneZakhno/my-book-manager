package com.heroku.my_book_manage.service;
import com.heroku.my_book_manage.model.Book;
import java.util.List;

public interface BookService {

    public void addBook(Book book);

    public void updateBook(Book book);

    public void removeBook(int id);

    public Book getBookById(int id);

    public List<Book> listBooks();
}
