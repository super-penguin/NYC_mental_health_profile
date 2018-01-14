#DATA CLEANING -----------------------------------------------------------------

# The dataset has too many columns, some of them could be removed since 
# They are not used in the analysis
rm.col<- c("APR.Medical.Surgical.Description", "Payment.Typology.2",
           "Payment.Typology.3", "Payment.Topology.2" , "Payment.Typology.3",
           "Source.of.Payment.2", "Source.of.Payment.3","Birth.Weight", 
           "Abortion.Edit.Indicator",
           "Attending.Provider.License.Number",
           "Operating.Provider.License.Number",
           "Other.Provider.License.Number") 

# Unified county name
County <- c("Bronx","Kings", "Manhattan", "Queens", "Richmond")

Mental.Code<- c(740, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760)
# Pregency related APR.DRG code are not listed. (561,566)


df14 <- 
    read.csv("./Data/Hospital_Inpatient_Discharges__SPARCS_De-Identified___2014.csv")
df13 <- 
    read.csv("./Data/Hospital_Inpatient_Discharges__SPARCS_De-Identified___2013.csv")
df12 <- 
    read.csv("./Data/Hospital_Inpatient_Discharges__SPARCS_De-Identified___2012.csv")
df11 <- 
    read.csv("./Data/Hospital_Inpatient_Discharges__SPARCS_De-Identified___2011.csv")
df10 <- 
    read.csv("./Data/Hospital_Inpatient_Discharges__SPARCS_De-Identified___2010.csv")
df09 <- 
    read.csv("./Data/Hospital_Inpatient_Discharges__SPARCS_De-Identified___2009.csv")


names(df09)[names(df09) == "Source.of.Payment.1"] <- 
    "Payment.Typology.1"
names(df10)[names(df10) == "Source.of.Payment.1"] <- 
    "Payment.Typology.1"
names(df11)[names(df11) == "Facility.ID"] <- "Facility.Id"


df14.mental<- subset(df14[,!(names(df14) %in% rm.col)],
                     (Hospital.County %in% County) & 
                         (APR.DRG.Code %in% Mental.Code))

df13.mental<- subset(df13[,!(names(df13) %in% rm.col)],
                     (Hospital.County %in% County) &
                         (APR.DRG.Code %in% Mental.Code))

df12.mental<- subset(df12[,!(names(df12) %in% rm.col)],
                     (Hospital.County %in% County) &
                         (APR.DRG.Code %in% Mental.Code))

df11.mental<- subset(df11[,!(names(df11) %in% rm.col)],
                     (Hospital.County %in% County) &
                         (APR.DRG.Code %in% Mental.Code))

df10.mental<- subset(df10[,!(names(df10) %in% rm.col)],
                     (Hospital.County %in% County) &
                         (APR.DRG.Code %in% Mental.Code))

df09.mental<- subset(df09[,!(names(df09) %in% rm.col)],
                     (Hospital.County %in% County) &
                         (APR.DRG.Code %in% Mental.Code))

df.n <- c('df14.mental','df13.mental','df12.mental', 
          "df11.mental", "df10.mental", "df09.mental")

x.list <- lapply(df.n, get)
NYC.mental<- do.call(rbind, x.list)

NYC.mental$X<- NULL
write.csv(NYC.mental, "NYC2009_2014_inpatient_discharge_mental.csv")