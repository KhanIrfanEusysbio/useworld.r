rm(list = ls());

# library(XLConnect)
require(xlsx)


# table<-read.table(file.choose(),skip=1) 
# temp <-file.choose()
fileList <-list.files(path = "./data/");    # get file list from data folder

fileList.len <-length(fileList);    # get number of files.
tables <- numeric(fileList.len);    # declare

for (i in 1:fileList.len) {
#     print(fileList[i]);
    dir <- "./data/";
    dir.temp <-paste(dir, fileList[i], sep = "");   # 
    tables[i] <- read.xlsx(dir.temp, sheetName = "Sheet1");
#     tables[i] <- readWorksheet(loadWorkbook(dir.temp),sheet=1)
}

