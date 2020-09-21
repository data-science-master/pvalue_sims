###################
## Synopsis: Simulate p-values from null
###################
nsamp <- 10
pnull <- replicate(
  n = 1000,
  expr = {
    t.test(rnorm(nsamp))$p.value
  }
)

saveRDS(object = pnull, file = "./output/pnull.RDS")
