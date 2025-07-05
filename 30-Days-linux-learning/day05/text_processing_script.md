
# Real-Time Bash Script Using All Text Processing Commands

This script demonstrates a real-world use case combining all the following commands:
- `expand`
- `unexpand`
- `join`
- `split`
- `sort`
- `tr`
- `uniq`

### 📝 Use Case:
Imagine you're processing employee records from two files:
- `employees.txt`: contains employee ID, name, and department.
- `departments.txt`: contains department ID and department name.

You want to:
1. Normalize spacing (expand/unexpand),
2. Join department names to employee records,
3. Split large result files,
4. Sort employees by department,
5. Replace all spaces with commas,
6. Remove duplicate records.

---

## 🔧 Bash Script: `process_employees.sh`

```bash
#!/bin/bash

# Step 1: Convert tabs to spaces in employees.txt
expand employees.txt > employees_exp.txt

# Step 2: Convert spaces to tabs in departments.txt
unexpand -a departments.txt > departments_tab.txt

# Step 3: Sort both files on the first field for join
sort -k1,1 employees_exp.txt > employees_sorted.txt
sort -k1,1 departments_tab.txt > departments_sorted.txt

# Step 4: Join files on the department ID (assume it's the third column in employees)
# Extract employee ID, name, and dept ID (1,2,3), join with department name (1: dept ID)
cut -f1,2,3 employees_sorted.txt | join -1 3 -2 1 - departments_sorted.txt > joined.txt

# Step 5: Split joined output into multiple files of 5 lines each
split -l 5 joined.txt joined_part_

# Step 6: Sort the joined result by department name
sort -k4 joined.txt > sorted_by_department.txt

# Step 7: Translate spaces to commas
tr ' ' ',' < sorted_by_department.txt > comma_separated.csv

# Step 8: Remove duplicate lines
uniq comma_separated.csv > unique_employees.csv

echo "✅ Employee processing complete. Output: unique_employees.csv"
```

---

## 🗂 Example Input Files

### `employees.txt`
```
101	John Doe	10
102	Jane Smith	20
103	Alice Jones	10
104	Bob Ray	30
```

### `departments.txt`
```
10	HR
20	Engineering
30	Marketing
```

---

## 📤 Final Output File: `unique_employees.csv`

```
101,John,Doe,HR
103,Alice,Jones,HR
102,Jane,Smith,Engineering
104,Bob,Ray,Marketing
```

> Note: This script assumes tab-separated input files. You may adapt it as needed for your data format.
