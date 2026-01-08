Media Spend Reconciliation: Identifying Budget Leakages with SQL
📌 Why I Built This
Working in media analysis, I've seen how easily platform data can drift from actual financial records. I created this project to move away from manual Excel checks and build a more robust, automated way to audit media spend. It’s not just about the numbers; it’s about making sure every pound we plan to spend is actually going where it’s supposed to.

🛠 How It Works
I used two separate datasets, one from the ad platforms (Platform Spend) and one from our internal accounting (Approved Invoices).

The Logic: I joined these datasets on Campaign_ID using SQL to ensure a 1:1 match for every campaign.

Automated Audit: Instead of hunting for errors line by line, I wrote a CASE WHEN statement to instantly flag any discrepancy over £100 as "Investigation Required".

 Key Findings
The analysis immediately flagged some serious issues that would usually stay hidden in large spreadsheets:

The Google_Hot Outlier: Found a massive -£50,001.24 variance. Catching this in a real business scenario means preventing a significant overpayment or identifying a tracking failure before it hits the bottom line.

Visual Visibility: By visualizing these gaps in Tableau, I turned dry SQL tables into a clear "red-flag" report, making it easy for stakeholders to see exactly where the budget needs attention.
