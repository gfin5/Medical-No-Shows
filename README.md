# Medical No-Shows Analysis

Analysis of Hospital Data using Excel and BigQuery/SQL.

This is a personal project to demonstrate proficiencey with Bigquery, SQL, and Excel Dashboards. The data is from Kaggle and can be found in the 'data' folder. It covers the appointments made at a Brazilian hospital over 40 days and over 10,000 appointments. The data includes personal information, details of their appointment, and whether they showed up to their appointment. The goal of the analysis was to find which factors contributed the most to patients not showing up to their appointments and make recommendations to the hospital to mitigate these factors.

The data was cleaned on Excel, including removing a row where the patient's age was listed as -1 and making the Handicap column only have 0 and 1 values for true and false.

The Data was analyzed on BigQuery first. The SQL queries can be found in the 'queries' tab and their results are in a folder in the 'data' folder. Notably, the age query has dynamic groupic using a "CASE WHEN" and the condition query has a "UNION ALL" to include all of the patients' conditions.

The results were then exported to an Excel Dashboard. I used a mixed approach where half of the charts are generated from pivot tables and modular with slicers while the other half are static charts from the more complex SQL queries.

# Results

- The age group most likely to miss their appointments are young adults, likely because they aren't used to being in their own care. With the exception of children, who have parents to manage their appointments for them, likelyhood to miss your appointment goes down with age.
- Generally, there is no significant difference between people with Hypertension, Diabetes, or a Handicap to miss their appointments, however people with no listed conditions or Alcoholism are more likely to miss their appointments.
- The Bottom 10 neighborhoods in terms of attendance are featured on the Dashboard and you should use it to see the neighborhoods with the most no-shows but some of the top include Santos Dumont, Santa Ceca, and Itarara. Consider more outreach to these groups and focus on sending them an SMS reminder.
- SMS reminders are very effective, decreasing no-show rate from 27.5% without to 16.7% with SMS reminders. These should be implemented for all patients.
- The delay between scheduling the appointment and the appointment itself also has a big impact. Appointments that are made the same day are very infrequently missed. Anything over a week away has a high no-show rate. encourage patients to schedule their appointments as early as possible or design reminders (cards or emails or multiple SMS) for later appointments.
