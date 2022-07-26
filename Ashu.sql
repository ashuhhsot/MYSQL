show databases
Use ashutosh
`linear regression - sheet1`

SELECT * FROM ashutosh.linear_regression

select b1 , b2 , AY - b1*AX - b2*AZ as b0 from 
(select * ,  
((Szz*Szz)*(Sxy) - (Sxz)*(Szy))/((Sxx*Sxx)*(Szz*Szz) - (Sxz)*(Sxz)) as b1 ,
((Sxx*Sxx)*(Szy) - (Sxz)*(Sxy))/((Sxx*Sxx)*(Szz*Szz) - (Sxz)*(Sxz)) as b2 from
(select 
sum(X*X) as Sxx , 
Sum(Z*Z) as Szz , 
sum(X*Y) as Sxy , 
sum(X*Z) as Sxz , 
sum(Z*Y) as Szy ,
avg(Y) as AY,
avg(X) as AX,
avg(Z) as AZ
from 
ashutosh.linear_regression) as T1) as T2
