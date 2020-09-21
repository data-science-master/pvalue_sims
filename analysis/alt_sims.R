###################
## Synopsis: Simulate p-values from alternative
###################
nsamp <- 10
mu <- 1
pnull <- replicate(
  n = 1000,
  expr = {
    t.test(rnorm(nsamp, mean = mu))$p.value
  }
)

saveRDS(object = pnull, file = "./output/palt.RDS")
