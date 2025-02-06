SELECT
    CustomerID, CompanyName, Region,
Case  
    when Region is null
    then 0
    else 1
End orderx
From Customers
ORDER BY `orderx` DESC, `Region` ASC