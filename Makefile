# A very basic Makefile for organizing some simple simulations of p-values

all: sims

.PHONY: sims
sims: output/panal.html

output/panal.html: analysis/panal.qmd output/pdat.csv
	quarto render ./analysis/panal.qmd
	mv ./analysis/panal.html ./output/panal.html

output/pnull.RDS: analysis/null_sims.R
	R CMD BATCH --no-save --no-restore analysis/null_sims.R output/null_sims.Rout

output/pdat.csv: analysis/add_alt_sims.R output/pnull.RDS
	R CMD BATCH --no-save --no-restore analysis/add_alt_sims.R output/add_alt_sims.Rout

.PHONY : clean
clean:
	rm -f ./output/panal.html
	rm -f ./output/pnull.RDS
	rm -f ./output/pdat.csv
