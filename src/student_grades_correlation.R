source("packages.R")

dir.create("outputs", showWarnings = FALSE, recursive = TRUE)

grades <- read.delim(file.path("data", "raw", "student_grades.txt"), dec = ",")

correlation_value <- cor(grades$HorasDeEstudo, grades$Nota)
correlation_test <- cor.test(grades$HorasDeEstudo, grades$Nota, method = "pearson")
correlation_matrix <- cor(grades)

write.csv(correlation_matrix, file.path("outputs", "correlation_matrix.csv"))
capture.output(correlation_test, file = file.path("outputs", "pearson_test.txt"))

png(file.path("outputs", "student_grades_scatter.png"), width = 1200, height = 800)
plot(
  grades$HorasDeEstudo,
  grades$Nota,
  main = sprintf("Horas de Estudo x Nota (r = %.3f)", correlation_value),
  xlab = "Horas de Estudo",
  ylab = "Nota",
  pch = 19,
  col = "steelblue"
)
abline(lm(Nota ~ HorasDeEstudo, data = grades), col = "firebrick", lwd = 2)
dev.off()

png(file.path("outputs", "student_grades_corrplot.png"), width = 1200, height = 800)
corrplot::corrplot(correlation_matrix, method = "number", type = "lower", diag = FALSE)
dev.off()

cat("Correlacao calculada com sucesso. Resultados em outputs/.\n")
