# ETL_Group_project
Extract Transform and Load

### Name
* Ibrahim Abdulrahmon
* Susan Murphey
* Renato Sanchez
* Steve Darby


### Datasets
A	[Senate Election Results](http://elections.nbcnews.com/ns/politics/2012/all/senate/) – CSV
http://elections.nbcnews.com/ns/politics/2012/all/senate/
#Codebook for U.S. Senate Returns 1976–2018
The data file `1976-2018-senate` contains constituency (state-level) returns for elections to the U.S. Senate from 1976 to 2018.  The data source is the document "[Statistics of the Congressional Election](http://history.house.gov/Institution/Election-Statistics/Election-Statistics/)," published biennially by the Clerk of the U.S. House of Representatives. 2018 data comes from official state election websites (in some cases, they are marked as unofficial, and will be updated at a later time).
Year in which election was held; U.S. postal code state abbreviation; Candidate, party, candidate votes, total votes, write-in status; and incumbent status of candidates.
Includes special elections, but excludes a small number of pre-elections where a state's electoral process differs in ways that exceed the current scope of this project.
Parties are as they appear in the House Clerk report.  In states that allow candidates to appear on multiple party lines, separate vote totals are indicated for each party.  
Last column is date when this datum was finalized; some data was finalized by Nov 11, 2017 (2 weeks prior to the election), the rest after the 115th took their seats in Jan 2019.

B	[Cconsumer Debt](https://www.valuepenguin.com/average-credit-card-debt) – XLSX
 https://www.newyorkfed.org/medialibrary/Interactives/householdcredit/data/xls/area_report_by_year.xlsx
Citation: State Level Household Debt Statistics 2003-2018, Federal Reserve Bank of New York, March, 2019
Source: New York Fed Consumer Credit Panel / Equifax     
Note: The data here exclude US Territories like Guam and the US Virgin Islands, as well as certain other areas. In addition, they are subject to sampling variation. As such, national and state totals here may not match those reported in the Quarterly Report on Household Debt and Credit.     
Mortgage Debt Balance per Capita (excluding HELOC) and Percent of Mortgage Debt Balance 90+ Days Delinquent sample sizes represents 5% of the population
Credit Card Debt Balance per Capita and  Percent of Credit Card Debt Balance 90+ Days Delinquent data also represent a sampling of 5% of the population
* Student Loan Debt Balance per Capita and student loan delinquency Percent of Student Loan Debt Balance 90+ Days Delinquent (and in default) values reflect a sample size representing only 1% of the population.

C	 Congressional Bills ( https://www.govinfo.gov/bulkdata/BILLS.html )
using this web address:
https://www.govinfo.gov/app/search/%7B%22offset%22%3A0%2C%22query%22%3A%22collection%3A(BILLS)%20AND%20publishdate%3Arange(%2C2019-05-04)%20AND%20congress%3A(115)%20AND%20chamber%3A(Senate%20or%20Joint)%20AND%20content%3A(student%20or%20education%20and%20debt%20or%20loan)%22%2C%22historical%22%3Atrue%7D
informed by these search terms:
collection:(BILLS) AND publishdate:range(,2019-05-04) AND congress:(115) AND chamber:(Senate or Joint) AND content:(student or education and debt or loan)

Time periods/ Dates normalization: 
Election results are mostly announced November 6t.
Congress takes their seats January 3rd.
Federal Reserve indebtedness data is reported for 4th quarter (approx. last 90days) of a calendar year, ending December 31st. 
All 3 time periods functionally concur in reference to the 2-year period of activity of the 115th Congress.
* Election data from earlier years (2014, 2012, 2010) was included to determine incumbent candidates.


### What useful investigation could be done with the final database

Candidates want to prioritize whether to campaign on a wide variety of topics;
Office-holders want to prioritize using political capital to support legislation on a variety of topics. 
Whether they need to take a stand depends often on a topic's impact on their constituency.
It would be helpful to consider how much legislative time has been spent (represented by bills introduced)
on a topic such as consumer (credit card), mortgage, or student loan (educational) debt; this can be searched using keywords at GPO's legislative record website. 

Our data gathering attempts to address 3 factors and their impact on an election:
Legislation proposed during the 115th Congress on the subject of student/ educational debt;
including proposal by an incumbent individual  Senator (1 in 100) and an incumbent party (1 in 2);
the vote distribution of the subsequent election (Nov2018) esp. for/against the incumbent individual and party;
quantification of student loan debt, by state (key to incumbent senator) for that period per the Federal Reserve. 


### Justification for relational or nonrelational
We are going to build a non-relational database
*	No huge amount of data (500 rows)
*	Little to gain from normalization as we are looking at state-level data


Footnotes if helpful:
SUDOC numbers are applied to all congressional public documents -- 
Relevant to www.govinfo.gov website, a service of the GPO -- 
The système universitaire de documentation or SUDOC is a system used by the libraries of French universities and higher education establishments to identify, track and manage the documents in their possession. The catalog, which contains more than 10 million references, allows students and researcher to search for bibliographical and location information in over 3,400 documentation centers. It is maintained by the Bibliographic Agency for Higher Education [fr] (ABES).
The United States Government Publishing Office (GPO) (formerly the United States Government Printing Office) is an agency of the legislative branch of the United States federal government. The office produces and distributes information products and services for all three branches of the Federal Government, including U.S. passports for the Department of State as well as the official publications of the Supreme Court, the Congress, the Executive Office of the President, executive departments, and independent agencies.
The Superintendent of Documents (SuDocs) is in charge of the dissemination of information at the GPO. This is accomplished through the Federal Depository Library Program (FDLP), the Cataloging and Indexing Program and the Publication Sales Program, as well as operation of the Federal Citizen Information Center in Pueblo, Colorado. 
With demand for print publications falling and a move underway to digital document production and preservation, the name of the GPO was officially changed to "Government Publishing Office" in a provision of an omnibus government funding bill passed by Congress in December 2014.[6] Following signature of this legislation by President Barack Obama, the name change took place on December 17, 2014.[3]

Citations to Congressional legislative reports should include the name of the house, the number of the Congress with the number of the report, the part or page number, and the year of publication. Legislative reports, like reports from the Congressional Research Service, are cited as reports with institutional authors according to rule 15.1(c).Sep 27, 2018
