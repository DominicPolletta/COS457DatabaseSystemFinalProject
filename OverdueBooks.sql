SELECT *
FROM(
    SELECT *
    FROM Books_Out_On_Loan
    LEFT JOIN Reader using(User_ID)
    LEFT JOIN Book using(Book_ID))
WHERE SYSDATE > Return_Date;

