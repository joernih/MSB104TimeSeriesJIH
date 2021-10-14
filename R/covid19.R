#' This is a function for producing Covid-19 time series plot
#' @importFrom magrittr %>%
#' @export
plot19ts <- function(sel_cou=NULL,covid19df=NULL, yvar='hosp'){
	
	c_cdf <- sel_cou %>% purrr::map(function(x,df_c=covid19df){
		out <- df_c %>% dplyr::filter(id==x)
		gout <- ggplot(out, aes_string(x='dayofyear',y=yvar, color='year')) + 
			geom_point() + 
			geom_line() + 
			labs(title=x,"Day during the year", y=yvar)
	})
}
### data(package='MSB104TimeSeriesJIH')
#library(ggplot2)
#library(dplyr)
#covidts <- MSB104TimeSeriesJIH::COVID19
#sel_cou <- c('NOR','ITA','SWE','GBR','ISR','FIN','CZE','ESP','USA','CAN','SVK')
#covhos <- plot19ts(sel_cou=sel_cou,covid19df=covidts,yvar='hosp')
#covhos <- plot19ts(sel_cou=sel_cou,covid19df=covidts,yvar='ma_deaths')
#covhos <- plot19ts(sel_cou=sel_cou,covid19df=covidts,yvar='ma_deaths_perc')
#gridExtra::grid.arrange(grobs=covhos,)
