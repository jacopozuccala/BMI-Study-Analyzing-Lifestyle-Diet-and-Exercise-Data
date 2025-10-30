COPY lifestyle(
    age, gender, weight_kg, height_m, max_bpm, avg_bpm, resting_bpm, session_duration_hours,
    calories_burned, workout_type, fat_percentage, water_intake_liters, workout_frequency_days_week,
    experience_level, bmi, daily_meals_frequency, physical_exercise, carbs, proteins, fats, calories,
    meal_name, meal_type, diet_type, sugar_g, sodium_mg, cholesterol_mg, serving_size_g, cooking_method,
    prep_time_min, cook_time_min, rating, name_of_exercise, sets, reps, benefit, burns_calories_per_30min,
    target_muscle_group, equipment_needed, difficulty_level, body_part, type_of_muscle, workout, bmi_calc,
    cal_from_macros, pct_carbs, protein_per_kg, pct_hrr, pct_maxhr, cal_balance, lean_mass_kg, expected_burn,
    burns_calories_per_30min_bc, burns_calories_bin
)
FROM -- inserire il proprio percorso per il file -- enter your own path to the file
DELIMITER ','
CSV HEADER
ENCODING 'UTF8';
