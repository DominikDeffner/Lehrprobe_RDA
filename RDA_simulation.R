
###########################################################################################
## Lehrprobe Regressions-Diskontinuitäts-Analysen
## Dominik Deffner (email: deffner@mpib-berlin.mpg.de)
###########################################################################################

#Lade package 
library(rdrobust)

###
##
# Parameterwerte
##
###

N <- 200      #Stichprobengröße
c0 <- 0       #Cutoff Wert
b_X <- 1      #Effekt von Haushaltseinkommen
b_I <- 1      #Effekt der Intervention
order = 1     #Funktionale Form der Regression (order = 1 bedeutet linear, order = 2 quadratisch, usw.)
var_res = 1   #(Residual-)Varianz in Schulleistung, die nicht durch Einkommen oder die Intervention erklärt wird

N_sim <- 100  #Anzahl unabhängiger Simulationen (mehr Simuationen führen zu schlechter Lesbarkeit des Plots)


#Vektor für geschätzte Interventionseffekte
b_I_est <- c()

#Matrix für Konfidenzintervalle
b_I_CI <- matrix(NA, nrow = N_sim, ncol = 2)

#Wiederhole für jede der N_sim Simulationen
for (i in 1:N_sim) {
  print(i)
  
  #Generiere Daten
  X <- rnorm(N)                         #Simuliere Haushaltseinkommen
  I <- ifelse(X < c0, 1, 0)             #Dummy Variable für Intervention
  Y <- rnorm(N,b_X*X + b_I*I, var_res)  #Simuliere Schulleistung
  
  #Schätze LATE
  fit <- rdrobust(Y,X,c = c0,p=order, kernel = "tri",bwselect = "mserd")
  
  #Speichere Schätzung und Konfidenzintervalle
  b_I_est[i]   <- fit$Estimate[1]
  b_I_CI[i,1] <- fit$ci[3,1]
  b_I_CI[i,2] <- fit$ci[3,2]
}

#Plot der Simulationsergebnisse
par(mfrow = c(1,2),mar = c(4,4,2,0.5))
plot(X, Y, col = "indianred", cex = 1.5, xlab = "Haushaltseinkommen", ylab = "Schulleistung", main = "Beispielsdaten einer Simulation", xlim = c(-3,3))
abline(v = c0, lty = 2, col = "darkgrey")
color_sig <- ifelse(b_I_CI[,1] <= 0 & 0 < b_I_CI[,2], "darkgrey","darkgreen")
Proportion_significant <- round(1-length(which(b_I_CI[,1] <= 0 & 0 < b_I_CI[,2]))/N_sim, 2)
plot(1:10,type = "n", xlab = "Geschätzter Interventionseffekt", ylab = "Simulation", main = paste0("Effekt-Recovery ", "(Prop. sig = ", Proportion_significant, ")"),ylim = c(1, N_sim), xlim = c(min(b_I_CI[,1]),max(b_I_CI[,2])))
abline(v = 0, lwd = 1, lty = 2, col = "darkgrey")
abline(v = -b_I, lty = 1, col = "darkgreen", lwd = 2)
segments(b_I_CI[,1],1:N_sim , b_I_CI[,2], 1:N_sim, col = color_sig)
points(b_I_est, 1:N_sim, pch = 16, col = color_sig)

###########################################################################################

