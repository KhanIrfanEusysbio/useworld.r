rm(list = ls());

# library(XLConnect)
require(xlsx)


# table<-read.table(file.choose(),skip=1) 
# temp <-file.choose()
fileList <-list.files(path = "./data/");    # get file list from data folder

fileList.len <-length(fileList);    # get number of files.
tables <- list(fileList.len);    # declare
len.max <-0;    # default data row lwngth
for (i in 1:fileList.len) {
#     print(fileList[i]);
    dir <- "./data/";
    dir.temp <-paste(dir, fileList[i], sep = "");   # 
    tables[i] <- list(tbl=read.xlsx(dir.temp, sheetName = "Sheet1"));
    temp <- read.xlsx(dir.temp, sheetName = "Sheet1");
#     tables[i] <- readWorksheet(loadWorkbook(dir.temp),sheet=1)
    len.temp <- nrow(tables[[i]]);
    if(len.max < len.temp){ # find the maximum row length of data
        len.max <- len.temp;
    }
    
    len.max    
    if(i==4){
        break;
    }
    print(i);
}

out <- data.frame (id=1:len.max)

for(j in 1:fileList.len){
    out$s <- tables[[j]][3]
}
# add 0 data amount len.max into data which has less length.