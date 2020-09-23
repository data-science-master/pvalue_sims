# A very basic Makefile for organizing some simple simulations of p-values

all : sims

.PHONY : sims
sims : analysis/panal.html

analysis/panal.html : analysis/panal.Rmd output/pdat.csv
	Rscript -e "library(rmarkdown);render('analysis/panal.Rmd')"

output/pnull.RDS : analysis/null_sims.R
	R CMD BATCH --no-save --no-restore analysis/null_sims.R output/null_sims.Rout

output/pdat.csv : analysis/add_alt_sims.R output/pnull.RDS
	R CMD BATCH --no-save --no-restore analysis/add_alt_sims.R output/add_alt_sims.Rout

