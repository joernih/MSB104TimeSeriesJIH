#' This is a function for producing Covid-19 time series plot
#' @importFrom magrittr %>%
#' @export
plot19ts <- function(sel_cou=NULL,covid19df=NULL, yvar='hosp'){
	
	c_cdf <- sel_cou %>% purrr::map(function(x,df_c=covid19df){
		out <- df_c %>% dplyr::filter(id==x)
		gout <- ggplot(out, aes(x=dayofyear,y=hosp, color=year)) + 
			geom_point() + 
			geom_line() + 
			labs(title=x,"Day during the year", y="Hospitlalized")
	})
}


