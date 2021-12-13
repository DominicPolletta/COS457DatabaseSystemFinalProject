Select *
FROM Book
LEFT JOIN Author using(Author_Id)
LEFT JOIN Publishers using(Publisher_Id)
LEFT JOIN Publication_Cities using(Publishing_City_Id)