# a
Gestione e analisi di grandi quantità di dati forniti da Kaggle tramite l'utilizzo di Excel, SQL (postgreSQL), Visual Studio (Python) e Microsoft Power BI.

ENG: Management and analysis of large amounts of data provided by Kaggle using Excel, SQL (PostgreSQL), Visual Studio (Python) and Microsoft Power BI.

1) Sono stati ottenuti dati relativi allo stile di vita, alimentazione e attività fisica dal seguente dataset su Kaggle: https://www.kaggle.com/datasets/jockeroika/life-style-data
Il dataset comprende informazioni su individui, le loro abitudini alimentari, di allenamento e parametri fisici come peso, altezza e frequenza cardiaca.
Alcune delle principali colonne presenti nel file sono:

- Età
- Genere
- Peso (kg)
- Altezza (m)
- Frequenza cardiaca massima, media e a riposo
- Durata della sessione di allenamento (ore)
- Calorie bruciate
- Percentuale di grasso e massa magra
- Tipo di allenamento e livello di esperienza
- Frequenza di allenamento settimanale
- Dieta seguita e tipologia di pasto
- Macro nutrienti (carboidrati, proteine, grassi)
- Metodo di cottura, tempi di preparazione e cottura
- Livello di difficoltà dell’allenamento e muscoli coinvolti

L’obiettivo del progetto è analizzare le correlazioni tra l’indice di massa corporea (BMI) e diversi fattori legati allo stile di vita, all’alimentazione e al tipo di attività fisica.
Lo scopo finale è fornire una visione analitica delle variabili che maggiormente influenzano il BMI, evidenziando potenziali relazioni utili per ottimizzare programmi di allenamento o piani nutrizionali.

2) Il file è stato inizialmente aperto e controllato tramite Excel, per analizzare il contenuto e verificare la presenza di eventuali elementi da “pulire” prima dell’importazione nel database.
Il file è stato nominato "Final_data.csv" per questo progetto.

3) È stato creato un database in PostgreSQL, importando al suo interno tutti i dati del dataset tramite le seguenti query SQL:
- DB.sql → definisce la struttura della tabella lifestyle, comprendente oltre 50 colonne per i diversi parametri legati ad attività fisica, alimentazione e caratteristiche corporee.
- InserimentoDati.sql → consente di importare i dati dal file CSV all’interno del database con il comando COPY.
- Count.sql → verifica che l’importazione sia avvenuta correttamente, restituendo il numero totale di record presenti nella tabella.

4) Dopo l’importazione, i dati sono stati elaborati tramite Python (in Visual Studio Code) e ulteriori query SQL eseguite su PostgreSQL per estrarre e mettere in relazione i parametri di interesse.
Le analisi si sono concentrate principalmente sul rapporto tra BMI e altre variabili significative, per individuare pattern o correlazioni visive.

5) Infine, sono stati generati diversi grafici di tipo lineare e ad area, che mettono in relazione il BMI con altri aspetti del dataset:

- BMI-benefit.png → grafico a linee che mette in relazione l’indice di massa corporea con i benefici dichiarati degli esercizi.

- BMI-cooking_method.png → grafico ad area che mostra la relazione tra BMI e metodo di cottura.

- BMI-dieta.png → grafico ad area che analizza la distribuzione del BMI rispetto al tipo di dieta.

- BMI-equipment+MuscleGroup.png → grafico a linee che collega il BMI con il tipo di attrezzatura utilizzata e il gruppo muscolare allenato.

- BMI-equipment+MuscleGroup-difficulty.png → grafico a linee che aggiunge al confronto precedente il livello di difficoltà.

- BMI-equipment-difficulty.png → analisi lineare della relazione tra attrezzatura e livello di difficoltà in funzione del BMI.

- BMI-MuscleType-difficulty.png → grafico a linee che mostra la correlazione tra tipo di muscolo, difficoltà e BMI.

- BMI-workout-TypeOfMuscle.png → analisi lineare del BMI in relazione al tipo di allenamento e al muscolo coinvolto.

- BMI-workout-TypeOfMuscle-MuscleGroup.png → grafico a linee che integra più variabili (allenamento, tipo di muscolo e gruppo muscolare) in rapporto al BMI.

6) Risultati e conclusioni:
Dall’analisi emerge che il BMI risente in modo evidente di fattori combinati quali tipo di allenamento, gruppo muscolare coinvolto, livello di difficoltà e dieta seguita.
I grafici mostrano andamenti coerenti e pattern costanti, utili per comprendere come l’equilibrio tra esercizio fisico, alimentazione e intensità possa influenzare la composizione corporea.


// ENGLISH VERION

1) Dataset Overview
Data regarding lifestyle, diet, and physical activity were obtained from the following Kaggle dataset: https://www.kaggle.com/datasets/jockeroika/life-style-data.
The dataset includes information about individuals, their eating and training habits, and physical parameters such as weight, height, and heart rate.
Some of the main columns included in the file are:

- Age
- Gender
- Weight (kg)
- Height (m)
- Maximum, average, and resting heart rate
- Workout session duration (hours)
- Calories burned
- Fat percentage and lean mass
- Type of training and experience level
- Weekly training frequency
- Followed diet and meal type
- Macronutrients (carbohydrates, proteins, fats)
- Cooking method, preparation and cooking time
- Workout difficulty level and muscles involved

The goal of the project is to analyze the correlations between the Body Mass Index (BMI) and various lifestyle, diet, and physical activity factors.
The ultimate purpose is to provide an analytical overview of the variables that most influence BMI, highlighting potential relationships useful for optimizing training programs or nutritional plans.

2) Data Preprocessing
The file was initially opened and inspected in Excel to analyze its content and check for any elements that needed cleaning before importing into the database.
For this project, the file was renamed "Final_data.csv".

3) Database Creation and Data Import
A PostgreSQL database was created, and all dataset records were imported into it using the following SQL scripts:
"DB.sql" → defines the structure of the lifestyle table, which includes over 50 columns for various physical activity, nutrition, and body composition parameters.
"InserimentoDati.sql" → imports the data from the CSV file into the database using the COPY command.
"Count.sql" → verifies that the import was successful by returning the total number of records in the table.

4) Data Processing and Analysis
After import, the data were processed using Python (in Visual Studio Code) and additional SQL queries executed in PostgreSQL to extract and relate the variables of interest.
The analyses focused primarily on the relationship between BMI and other significant variables, aiming to identify visual patterns or correlations.

5) Data Visualization
Several line and area charts were generated to visualize the relationship between BMI and other aspects of the dataset:

- "BMI-benefit.png" → line chart showing the relationship between BMI and the reported exercise benefits.

- "BMI-cooking_method.png" → area chart illustrating the relationship between BMI and cooking method.

- "BMI-dieta.png" → area chart analyzing BMI distribution by diet type.

- "BMI-equipment+MuscleGroup.png" → line chart linking BMI with equipment type and muscle group trained.

- "BMI-equipment+MuscleGroup-difficulty.png" → line chart adding the difficulty level to the previous comparison.

- "BMI-equipment-difficulty.png" → line analysis of the relationship between equipment and difficulty level as a function of BMI.

- "BMI-MuscleType-difficulty.png" → line chart showing the correlation between muscle type, difficulty, and BMI.

- "BMI-workout-TypeOfMuscle.png" → line analysis of BMI in relation to workout type and muscle involved.

- "BMI-workout-TypeOfMuscle-MuscleGroup.png" → line chart integrating multiple variables (workout, muscle type, and muscle group) in relation to BMI.

6) Results and Conclusions
The analysis shows that BMI is significantly influenced by a combination of factors such as type of training, muscle group involved, difficulty level, and diet followed.
The charts reveal consistent trends and patterns that help to understand how the balance between exercise, nutrition, and intensity can affect body composition.
