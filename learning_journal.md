# Day 06 Learning Journal: Data Cleaning Reflection

## 19. What surprised you about the messy dataset? Did you expect data to look like this?

I was genuinely surprised by how many different forms the same data could take in a single table. While I expected some inconsistencies, the variety was striking—seeing "cebu city," "MAKATI," and "Cagayan de oro" all in the same column made me realize that data entry has far fewer guardrails than I assumed. I didn't expect to find completely junk data (like order_id 26) mixed in with legitimate records, which was a humbling reminder that real-world databases are rarely as clean as textbook examples.

## 20. Which cleaning method do you prefer so far — Power Query or SQL? Why?

I prefer SQL for this type of bulk standardization because it's more transparent and auditable. With SQL, every transformation is explicitly written in a query that can be reviewed, version-controlled, and re-run if needed. Power Query's visual interface is intuitive and great for exploratory analysis, but SQL gives me confidence that I can document exactly what changed and why—which feels critical in a professional setting where data governance matters.

## 21. What was the hardest data quality issue to fix? What made it challenging?

The hardest issue was inconsistent casing combined with extra whitespace in customer names. It required using both TRIM() and case standardization, and I had to think carefully about the order of operations—should I trim first or standardize case first? This was challenging because unlike city names where I could do exact string matching, inconsistent whitespace could hide in places I didn't initially check, making it easy to miss some records.

## 22. Why is it important to DOCUMENT your cleaning steps? How would you explain this to a manager?

Documenting cleaning steps is essential because it creates an auditable trail of what changed and why. To a manager, I'd explain it this way: "If someone questions our data or finds an anomaly three months from now, we need to know exactly which records were modified and what business rule we applied. Without documentation, we can't defend our decisions or reproduce the cleaning process if new data arrives."

## 23. How do you think data cleaning skills will help you in a real job?

Data cleaning skills are foundational to being a trustworthy data professional. In a real job, I'll likely spend 60-70% of my time cleaning and validating data before I can even do meaningful analysis. These skills show employers I understand that garbage data leads to garbage insights, and that I'm disciplined enough to spend time on unglamorous but critical foundation work. This attention to data quality will make me valuable to any organization because decision-makers depend on clean, reliable data.
