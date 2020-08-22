# api.R

model <- readRDS("transmission-model.rds")

#* Plot a histogram of the manual transmission
#* @png
#* @get /plotam
plot_am <- function(){
  barplot(table(mtcars$am))
}

#* Returns the probability whether the car has a manual transmission
#* @param hp Gross horsepower
#* @param wt Weight (1000 lbs)
#* @post /manualtransmission
model_predict <- function(hp, wt){
  newdata <- data.frame(hp = as.numeric(hp), wt = as.numeric(wt))
  predict(model, newdata, type = "response")
}
