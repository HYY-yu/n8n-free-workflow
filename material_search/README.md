# Material Search Automation Workflow

This directory contains an n8n workflow for material searching and its related database configurations, designed for quick setup by beginners.

## Steps to Use

### 1. Install and Configure PostgreSQL
- **Installation**: Ensure PostgreSQL is installed on your machine.
- **Import SQL**: 
  - Create a new database.
  - Use a database management tool (e.g., pgAdmin, DBeaver) or the command line to import the `pg.sql` file from this directory into your database.

### 2. Install and Import n8n
- **Installation**: If you haven't installed n8n, refer to the [n8n official documentation](https://docs.n8n.io/getting-started/installation/) for installation instructions.
- **Import JSON**:
  - Open the n8n dashboard.
  - Click the menu in the top right corner and select **"Import from File"**.
  - Choose the `MaterialSearch.json` file from this directory to import the workflow.

### 3. Configure Credentials and Tokens
After importing, you need to manually configure the following:
- **PostgreSQL Configuration**:
  - Locate the database connection nodes (e.g., "PG-CreateLogs") in the workflow.
  - In the Credentials section, enter your PostgreSQL connection details (Host, Port, Database name, User, and Password).
- **Missing Tokens**:
  - Check for nodes requiring API configuration (e.g., Open AI or HTTP Request nodes).
  - Provide the necessary API Tokens (such as OpenAI API Key) or other required authorization info in the respective credential settings.

Once configured, click **"Execute Workflow"** to test and start using it!
