#DATA SUMMARY -----------------------------------------------------------------

# We are only focused on the economic burden of mental health treatments in NYC.
# The data is summarized and grouped for easier loading duirng visualization.
library(taRifx)
library(tidyr)
library(dplyr)

NYC.mental<- read.csv("NYC2009_2014_inpatient_discharge_mental.csv")

NYC.mental$Total.Charges<- destring(NYC.mental$Total.Charges)
NYC.mental$Total.Costs<- destring(NYC.mental$Total.Costs)

# Group data
NYC.mental.county <- NYC.mental %>%
  filter(!is.na(Hospital.County)) %>%
  group_by(Hospital.County, Discharge.Year) %>%
  summarise(mean_charges = mean(as.numeric(Total.Charges)),
            sum_charges = sum(as.numeric(Total.Charges)),
            mean_costs = mean(as.numeric(Total.Costs)),
            sum_costs = sum(as.numeric(Total.Costs)),
            patient_numbers = n()) %>%
  arrange(Hospital.County)

# Add the population in NYC by county (the data is from 2010 Census)
# The population fluctuates for around 0.2-0.4% from 2009 to 2014. We did not consider the population 
# fluctuation here.
# https://www1.nyc.gov/site/planning/data-maps/nyc-population/current-future-populations.page

Population.Profile<- data.frame(County = c("Bronx", "Kings",
                                           "Manhattan", "Queens", "Richmond"),
                                Population = c(1385108, 2504700,
                                               1585873, 2230722, 468730))


NYC.mental.county<- merge(NYC.mental.county, Population.Profile,
                          by.x = "Hospital.County", by.y = "County")


NYC.mental.county$Hospital.County<- c(rep("Bronx",6), rep("Brooklyn",6), rep("Manhattan",6),
                                      rep("Queens",6), rep("Staten Island",6))

colnames(NYC.mental.county)[1]<- "BoroName"

NYC.mental.county$Patents_10K <- NYC.mental.county$patient_numbers*10000/NYC.mental.county$Population

write.csv(NYC.mental.county, "NYC_mental_summary.csv")

NYC.eco.2014<- NYC.mental.county[ which(NYC.mental.county$Discharge.Year == 2014),]
myvars <- names(NYC.eco.2014) %in% c("BoroName","sum_costs", "mean_charges", "Population", "Patents_10K") 
NYC.eco.2014 <- NYC.eco.2014[myvars]

write.csv(NYC.eco.2014, "NYC_mental_2014.csv")
