# Research Plan

## Project Title

Factors Associated with University Student Mental Health and Well-Being

## Research Objective

This project investigates relationships between university students'
financial, social, and demographic experiences and self-reported mental
health and well-being.

The goal is to identify population-level patterns and associations rather
than diagnose mental health conditions or make clinical predictions about
individual students.

## Primary Research Question

What financial, social, and demographic factors are associated with
mental health and well-being among university students?

## Outcome Variables

The project will examine three outcomes separately:

- `flourish`: flourishing and positive well-being
- `deprawsc`: depression symptom score
- `anx_score`: anxiety symptom score

## Main Factors

The primary explanatory factors are:

- `fincur`: current financial stress
- `finpast`: financial situation while growing up
- `belong1`: sense of belonging to the campus community
- `discrim_race`, `discrim_culture`, `discrim_gender`, and `discrim_sexual`: experiences of racial, cultural, gender, and sexual-orientation discrimination respectively
- `alc_any`: recent alcohol use

## Control Variables

The analysis will also consider:

- `age`: age
- `international`: international student status
- `educ_par1` and `educ_par2`: education of first and second parent respectively
- `enroll`: enrollment status
- `survey_year`: survey year

The HMS non-response weight `nrweight` will be retained for analyses
where weighted estimates are appropriate.

## Research Questions

- How is current financial stress associated with depression, anxiety, and flourishing?
- How is students' financial background associated with mental health and well-being?
- How is campus belonging associated with mental health and well-being?
- Are experiences of discrimination associated with differences in mental health and well-being?
- How is recent alcohol use associated with the three outcomes?
- Do these relationships vary across survey years or student characteristics?
- Which available factors are most useful for explaining or predicting each outcome?

## Planned Analysis

1. Data understanding and cleaning
2. SQL-based descriptive analysis and filtering
3. Exploratory data analysis
4. Statistical analysis
5. Predictive modelling
6. Model evaluation and interpretation
7. Ethics and limitations

## Important Considerations

The Healthy Minds Study is observational survey data. Associations identified
in this project should not be interpreted as causal evidence.

The three mental health and well-being outcomes will be analyzed separately
rather than combined into a single score.

Missing data will be handled according to the variables required for each
analysis. Respondents missing all three outcome variables are excluded from
the analytical dataset, while respondents with at least one observed outcome
are retained.

Survey design and module selection may affect the availability of some
variables, particularly `alc_any`, so missing values should not automatically
be interpreted as negative responses.