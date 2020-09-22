###################
## Synopsis: Simulate p-values from alternative
###################
nsamp <- 10
mu <- 1
palt <- replicate(
  n = 1000,
  expr = {
    t.test(rnorm(nsamp, mean = mu))$p.value
  }
)

pnull <- readRDS("./output/pnull.RDS")

pdat <- data.frame(null = pnull, alt = palt)

write.csv(x = pdat, file = "./output/pdat.csv", row.names = FALSE)
