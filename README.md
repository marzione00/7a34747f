# TempClim: a smart way to plot and analyze the EPICA DOME C [6] data


# Introduction  

This package allows to plot and analyze the EPICA DOME C [1,6] data about the temperature and CO2 time series (more data about other gases maybe provided in future update of the package). Also the data taken from the Milankovitch cycles are reported although the real effect on Earth temperature is contested among the scientific community [1]. 

# Install 

```R
devtools::install_github("unimi-dse/7a34747f")  
```
# Usage

```R
require(TempClim)  
GUI()    
```
Please wait until the the graphic interface is loaded. 

# Description of the application       

The first window allows to select the data the will be plotted, please choose also the color as well as the size of plot. The second panel, that consists in two plot, give the partial autocorrelation and the autocorellation [2,3] of the data loaded in the first panel. The user can choose the number of lag that he is interested to plot (be aware that for a large number of lags the elaboration time becomes large).The user can also choose the parameters of a generic ARIMA model [2,3] for the fitting, once you have choose the parameter please wait until the residual output will be given (last part of the right panel).The Granger causality test [2] is currently on building (please note the the use of the granger causality test for CO2 -> Temperature is contested in the scientific literature [4], however here it has been included only for didactic proposes). A better approach require to consider the Information Flow technique [5], but its implementation is below the aim of this package. 

# References

[1] BENNETT, K. D. Milankovitch cycles and their effects on species in ecological and evolutionary time. Paleobiology, 1990, 16.1: 11-21.

[2] HAMILTON, James D. Time series analysis. New Jersey: Princeton, 1994.

[3] SHUMWAY, Robert H.; STOFFER, David S. Time series analysis and its applications: with R examples. Springer, 2017.

[4] TRIACCA, U. Is Granger causality analysis appropriate to investigate the relationship between atmospheric concentration of carbon dioxide and global surface air temperature?. Theoretical and applied climatology, 2005, 81.3-4: 133-135.

[5] STIPS, Adolf, et al. On the causal structure between CO2 and global temperature. Scientific reports, 2016, 6.1: 1-9.

[6] http://www.ncdc.noaa.gov/paleo/indexice.html








