# Pearson Correlation Student Grades

Projeto em **R** para medir a relação entre horas de estudo e nota de alunos, com teste de significância estatística.

## Problema resolvido

Responder de forma objetiva se o aumento das horas de estudo acompanha a melhora na nota — e se essa relação é estatisticamente sustentada.

## O que o script entrega

- coeficiente de correlação linear de Pearson;
- teste de significância (`cor.test`);
- matriz de correlação;
- gráfico de dispersão com reta de tendência e um corrplot.

## Stack

- R (>= 4.0)
- corrplot

## Estrutura

```text
pearson-correlation-student-grades/
├── README.md
├── packages.R
├── data/
│   └── raw/
│       └── student_grades.txt   # colunas HorasDeEstudo e Nota (decimal com vírgula)
├── outputs/
└── src/
    └── student_grades_correlation.R
```

## Dados

A base (`data/raw/student_grades.txt`) acompanha o projeto e é versionada — não é preciso baixar nada.

## Como executar

A partir da **raiz do projeto**:

```bash
Rscript src/student_grades_correlation.R
```

O `packages.R` instala automaticamente o pacote necessário (`corrplot`) a partir do CRAN.

## Resultado esperado

Arquivos gerados em `outputs/`:

- `correlation_matrix.csv` — matriz de correlação;
- `pearson_test.txt` — resultado do teste de Pearson;
- `student_grades_scatter.png` — dispersão com reta de tendência;
- `student_grades_corrplot.png` — corrplot.
