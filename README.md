# Lehrprobe_RDA

Liebe Studierende, 

hier finden Sie die Folien und begleitenden Aufgaben zur Regressions-Diskontinuitäts-Analyse. 

Öffnen Sie das Skript "RDA_simulation" in R Studio und installieren Sie das Package "rdrobust" ("install.packages("rdrobust")" in der Konsole ausführen).

Bearbeiten Sie bitte selbstständig folgende Aufgaben. Dazu müssen Sie die Parameterwerte im oberen Teil des Skripts ändern, das gesamte Skript laufen lassen, und dann die Ergebnisgraphik interpretieren. Setzen Sie bitte nach jeder Aufgabe die Parameter wieder auf ihre Ursprungswerte zurück.

(1) Bedeutung der Stichprobengröße: Variieren Sie systematisch "N" und beschreiben Sie, was das für die Schätzung des Interventionseffekts bedeutet.

(2) Bedeutung der Residualvarianz: Ändern Sie die Variation in Schulleistung, die nicht durch Einkommen oder die Intervention erklärt wird, var_res, und beschreiben Sie die Auswirkung auf die Schätzung.

(3) Bedeutung das Cutoffs: Variieren Sie c0 schrittweise zwischen -1 und 1. Hat der Cutoff einen Einfluss auf die Schätzung?

(4) Bedeutung des Interventionseffekts: Wie groß muss der Interventionseffekt b_I sein, damit er in mindestens 95% der Fälle gefunden wird (bei N=200)?

(5) Bedeutung des Haushaltseinkommens: Wird die Schätzung des Interventionseffekts beeinflusst von der Stärke des Einkommenseffekts b_X?

(6) Bedeutung der funktionalen Form: Wird die Schätzung besser oder schlechter, wenn wir quadratische (order = 2) oder kubische (order = 3) statt linearer (order = 1) Trends benutzen?

(Optional) Wenn Sie fertig sind, variieren Sie mehrere Parameter auf einmal und explorieren Sie die Interaktionen verschiedener Variablen!
