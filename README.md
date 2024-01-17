# Lehrprobe_RDA

Liebe Studierende, 

hier finden Sie die begleitenden Aufgaben zur Regressions-Diskontinuitäts-Analyse. 

Öffnen Sie das Skript "RDA_simulation" in R Studio und installieren Sie das Package "rdrobust" ("install.packages("rdrobust")" in der Konsole ausführen).

Bearbeiten Sie bitte selbstständig folgende Aufgaben. Dazu müssen Sie die Parameterwerte im oberen Teil des Skripts ändern, das gesamte Skript laufen lassen, und dann die Ergebnisgraphik interpretieren. Setzen Sie bitte nach jeder Aufgabe die Parameter wieder auf ihre Ursprungswerte zurück.

(1) Bedeutung der Stichprobengröße: Variieren Sie systematisch "N" und beschreiben Sie, was das für die Schätzung des Interventionseffekts bedeutet.

(2) Bedeutung das Cutoffs: Variieren Sie c0 im Intervall [-1.5, 1.5]. Hat der Cutoff einen Einfluss auf die Schätzung?

(3) Bedeutung des Interventionseffekts: Wie groß muss der Interventionseffekt b_I sein, damit er in mindestens 95% der Fälle gefunden wird?

(4) Bedeutung des Einflusses des Haushaltseinkommens: Wird die Schätzung des Interventionseffekts beeinflusst von der Stärke des Einkommenseffekts b_X?

(Optional) Wenn Sie fertig sind, variieren Sie mehrere Parameter auf einmal und explorieren Sie die Interaktionen verschiedener Variablen!