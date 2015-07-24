// simulate.do
clear
set obs 1000

gen educRV = uniform()
gen educ = 10 * (educRV <= 0.1)
replace educ = 12 if inrange(educRV, 0.1, 0.55)
replace educ = 14 if inrange(educRV, 0.55, 0.65) 
replace educ = 16 if inrange(educRV, 0.65, 0.95) 
replace educ = 18 if educRV >= 0.95

gen ageRV = 25 + round(10*uniform())

gen lwage = 2.5 + 0.06 * educ + 0.02*(age - educ) + invnormal(uniform())

keep educ age lwage
save wageData, replace

