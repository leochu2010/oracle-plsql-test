CREATE OR REPLACE TRIGGER need_restock
AFTER UPDATE OF stock ON books
FOR EACH ROW
WHEN (NEW.stock = 0)
DECLARE
BEGIN
   dbms_output.put_line(:NEW.book_id||'is out of stock!!!');
END;
/