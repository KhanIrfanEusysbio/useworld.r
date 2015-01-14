rm(list = ls());

# Control 
get <-3

# library(XLConnect)
require(xlsx)

# table<-read.table(file.choose(),skip=1) 
# temp <-file.choose()
fileList <-list.files(path = "./data");    # get file list from data folder

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
#     if(i==5){ # break point
#         break;
#     }
    print(i);
}

# matrix initialization
out.mat <- matrix(nrow=len.max, ncol=fileList.len)


for(j in 1:fileList.len){ # number of file
#     if(j==5){ # break point
#         break;
#     }
    for(i in 1:nrow(tables[[j]]) ){ # table row
        out.mat[i,j] <- tables[[j]][i,get];
    }
    
}
out.fr <- data.frame(out.mat); # matrix to data.frame
write.xlsx(x = out.fr, file = "out.xlsx")

# add 0 data amount len.max into data which has less length.

