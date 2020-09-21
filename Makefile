# A very basic Makefile for organizing some simple simulations of p-values

all : sims

.PHONY : sims
sims : analysis/panal.html

analysis/panal.html : analysis/panal.Rmd output/pnull.RDS output/palt.RDS
	Rscript -e "rmarkdown::render('analysis/panal.Rmd')"

output/pnull.RDS : analysis/null_sims.R
	R CMD BATCH --no-save --no-restore analysis/null_sims.R output/null_sims.Rout

output/palt.RDS : analysis/alt_sims.R
	R CMD BATCH --no-save --no-restore analysis/alt_sims.R output/alt_sims.Rout

