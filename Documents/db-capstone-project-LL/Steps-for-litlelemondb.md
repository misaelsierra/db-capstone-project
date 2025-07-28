Project: Little Lemon Database

Description
This repository contains the core assets for the Little Lemon database model, developed for a fictional restaurant chain. It centers on a well-normalized relational structure, complemented by visual documentation, stored procedures, analytics scripts, and interactive dashboards for comprehensive technical delivery.

Included Files
| File | Description | |------|-------------| | LittleLemonDB.sql | SQL script with table definitions, relationships, constraints, and sample data | | LittleLemonDM.mwb | Editable model in MySQL Workbench for visualization and refinement | | LittleLemonDM.png | Exported ER diagram for documentation and presentation | | LittleLemonProcedures.sql | Set of implemented stored procedures as specified (e.g., AddBooking, CancelBooking, GetMaxQuantity) | | GeOrderDetails | Written project statement describing goals, design rationale, and scope | | LittleLemon_Jupyter.ipynb | Python notebook with SQL connector setup, queries, and analytics outputs | | LittleLemon_Tableau.twbx | Tableau file containing data visualizations such as bar charts, calculated fields, and dashboards for customer insights |

Requirements
- MySQL Workbench (recommended for viewing/editing .mwb models)
- SQL-compliant server or local environment
- Jupyter Notebook with Python connector packages (e.g., mysql.connector)
- Tableau Desktop or Reader for viewing dashboards
- Image viewer to review the ER diagram

Installation / Execution
Clone the repository:
git clone [<repository-URL>](https://github.com/misaelsierra/db-capstone-project.git)


Deploy the database:
- Open MySQL Workbench
- Run LittleLemonDB.sql to create and populate the database
- Review LittleLemonProcedures.sql to explore and test stored procedures
Explore analytics:
- Open LittleLemon_Jupyter.ipynb to run queries and generate insights from the database
- Open LittleLemon_Tableau.twbx for interactive visualizations and business reporting
Technical Notes
- The database model follows best practices in normalization and modularity
- Stored procedures implement transactional logic for booking management and validation
- Python integration enables query testing and data retrieval for analytics workflows
- Tableau dashboards visualize customer data, profitability, and trends for actionable insights
- All components are documented for peer review and knowledge sharing
Credits
Developed by @misaelsierra as part of a database modeling capstone. Includes modeling artifacts, scripting, analytics, and professional documentation for technical evaluation and presentation.


