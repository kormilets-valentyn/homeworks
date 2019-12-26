<?php

namespace controllers;

class BookController extends HomeController
{
    public $book;
    public function __construct()
    {
        parent::__construct();
    }

    public function getBooks()
    {
       $this->loadModel("Book", "book");

       $books = $this->book->getList();

       $this->data("books", $books);
       $this->display("index");
    }
}