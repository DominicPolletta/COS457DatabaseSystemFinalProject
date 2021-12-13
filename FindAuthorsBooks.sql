SELECT Book.*
FROM Book
WHERE author_id = (Select Author_ID
    FROM Author
    WHERE Author_First='Neil' AND Author_Last='Gaiman')
    
