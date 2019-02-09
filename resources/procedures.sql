CREATE OR REPLACE FUNCTION get_book_info(b_id in varchar2)
	RETURN varchar2
AS
	book_info varchar2(200);
BEGIN
	select book_id || ':' || title || ':' || stock into book_info
		from books b
		where b.book_id = b_id;
	return book_info;
END;
/

CREATE OR REPLACE PROCEDURE restock (book_type in varchar2)
AS
	b_id books.book_id%type;
	b_title books.title%type;
	cursor required_books is
		select book_id, title from books b
		inner join book_type t on (b.book_type_id = t.book_type_id)
		where t.name = book_type;
BEGIN
  	open required_books;
  	LOOP
	FETCH required_books into b_id, b_title;
      EXIT WHEN required_books%notfound;
      dbms_output.put_line(get_book_info(b_id));
      update books b set stock = stock + 1 where b.book_id = b_id;
   END LOOP;
   CLOSE required_books;
END;
/

