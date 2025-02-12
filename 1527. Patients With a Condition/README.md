# 1527. Patients With a Condition
**Status:** Solved  
**Difficulty:** Easy  
**Topics:** SQL, String Matching, Filtering  

---

### Table: Patients

| Column Name  | Type    |
|--------------|---------|
| patient_id   | int     |
| patient_name | varchar |
| conditions   | varchar |

- `patient_id` is the unique identifier for each patient.
- `patient_name` represents the name of the patient.
- `conditions` contains **0 or more** condition codes separated by spaces.

---

### Problem Description
Find all patients who have **Type I Diabetes**, which is identified by **conditions that start with "DIAB1"**.

Return the result **in any order**.

---

### Example

#### **Input**
Patients table:

| patient_id | patient_name | conditions   |
|------------|--------------|--------------|
| 1          | Daniel       | YFEV COUGH   |
| 2          | Alice        |              |
| 3          | Bob          | DIAB100 MYOP |
| 4          | George       | ACNE DIAB100 |
| 5          | Alain        | DIAB201      |

#### **Output**
| patient_id | patient_name | conditions   |
|------------|--------------|--------------|
| 3          | Bob          | DIAB100 MYOP |
| 4          | George       | ACNE DIAB100 |

#### **Explanation**
- **Bob (patient_id = 3)** has **"DIAB100 MYOP"**, which contains a condition that starts with **DIAB1**.
- **George (patient_id = 4)** has **"ACNE DIAB100"**, which contains a condition that starts with **DIAB1**.
- **Daniel, Alice, and Alain** do not have any condition starting with **DIAB1**, so they are excluded.
