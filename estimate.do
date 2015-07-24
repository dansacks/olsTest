// estimate
use wageData, clear

describe
correlate lwage educ age

regress lwage educ
regress lwage age
regress lwage age educ
