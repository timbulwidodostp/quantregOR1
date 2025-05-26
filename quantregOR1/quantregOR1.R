# Olah Data Semarang
# WhatsApp : +6285227746673
# IG : @olahdatasemarang_
# Bayesian quantile regression in the OR1 model Use quantregOR1 (bqror) With (In) R Software
install.packages("bqror")
library("bqror")
quantregOR1 = read.csv("https://raw.githubusercontent.com/timbulwidodostp/quantregOR1/main/quantregOR1/quantregOR1.csv",sep = ";")
# Estimation Bayesian quantile regression in the OR1 model Use quantregOR1 (bqror) With (In) R Software
y <- quantregOR1$y
quantregOR1$x <- cbind(quantregOR1$x.1, quantregOR1$x.2, quantregOR1$x.3)
xMat <- quantregOR1$x
k <- dim(xMat)[2]
J <- dim(as.array(unique(y)))[1]
b0 <- array(rep(0, k), dim = c(k, 1))
B0 <- 10*diag(k)
d0 <- array(0, dim = c(J-2, 1))
D0 <- 0.25*diag(J - 2)
quantregOR1 <- quantregOR1(y = y, x = xMat, b0, B0, d0, D0, burn = 11, mcmc = 45, p = 0.25, tune = 1, accutoff = 0.5, verbose = TRUE)
# Bayesian quantile regression in the OR1 model Use quantregOR1 (bqror) With (In) R Software
# Olah Data Semarang
# WhatsApp : +6285227746673
# IG : @olahdatasemarang_
# Finished