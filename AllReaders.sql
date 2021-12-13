Select *
FROM Reader
LEFT JOIN Reader_Phone_Numbers using(User_ID)
LEFT JOIN Reader_Emails using(User_ID)
LEFT JOIN Reader_Addresses using(User_ID)