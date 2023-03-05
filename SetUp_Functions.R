#python set up

library(reticulate)
library(kaggler)

KAGGLE_CREDENTIALS <- 'C:/Users/benja/0_DataScience/kaggle.json'

#Function to import data from Kaggle
import_Kaggle <- function(KaggleCreds, OwnerDataset, FileImportPath){
  
  #Kaggle Credentials, saved as kaggle.json
  kaggler::kgl_auth(creds_file = KaggleCreds)

  
  response <- kgl_datasets_download_all(owner_dataset = OwnerDataset)
  download.file(response[["url"]], FileImportPath, mode="wb")
  #import data to temporary zip file
  unzip_result <- unzip(paste0(FileImportPath,"data.zip"), exdir = FileImportPath, overwrite = TRUE)
  #delete temporary zip file
  unlink(paste0(FileImportPath,"data.zip"))
  
}





