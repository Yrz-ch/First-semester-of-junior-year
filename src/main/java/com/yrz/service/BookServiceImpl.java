package com.yrz.service;

import com.yrz.dao.BookDao;
import com.yrz.pojo.Books;

import java.util.List;

public class BookServiceImpl implements BookService{
    private BookDao bookDao;

    //调用dao层的操作，设置一个set接口，方便Spring管理


    public void setBookDao(BookDao bookDao) {
        this.bookDao = bookDao;
    }

    public int addBook(Books book) {
        return bookDao.addBook(book);
    }

    public int deleteBookById(int id) {
        return bookDao.deleteBookById(id);
    }

    public int updateBook(Books books) {
        return bookDao.updateBook(books);
    }

    public Books queryBookById(int id) {
        return bookDao.queryBookById(id);
    }

    public List<Books> queryAllBook() {
        return bookDao.queryAllBook();
    }

    public List<Books> queryBookByName(String bookName) {
        return bookDao.queryBookByName(bookName);
    }




}
