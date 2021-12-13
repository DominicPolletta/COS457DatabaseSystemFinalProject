SELECT *
FROM Books_Out_On_Loan
LEFT JOIN Book using(Book_ID);
