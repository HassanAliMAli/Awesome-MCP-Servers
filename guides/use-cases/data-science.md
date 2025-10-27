# Data Science with MCP

## 🎯 What You'll Accomplish

In this guide, you'll learn to:
- ✅ Analyze data and build machine learning models
- ✅ Query databases and process large datasets
- ✅ Visualize insights and create reports
- ✅ Automate data workflows

---

## 🚀 Quick Setup

### Required MCP Servers

```json
{
  "mcpServers": {
    "postgres": {
      "command": "npx",
      "args": ["-y", "@modelcontextprotocol/server-postgres", "${POSTGRES_CONNECTION_STRING}"]
    },
    "memory": {
      "command": "npx",
      "args": ["-y", "@modelcontextprotocol/server-memory"]
    },
    "sequential-thinking": {
      "command": "npx",
      "args": ["-y", "@modelcontextprotocol/server-sequential-thinking"]
    },
    "filesystem": {
      "command": "npx",
      "args": ["-y", "@modelcontextprotocol/server-filesystem", "${workspaceFolder}"]
    }
  }
}
```

---

## 🛠️ Data Analysis Workflow

### 1. Data Exploration

Ask your AI assistant:
```
"Connect to my PostgreSQL database and show me the schema"
```

AI will:
- Connect to your database
- List all tables and columns
- Show sample data
- Identify relationships

### 2. Query Generation

Ask:
```
"Show me the top 10 customers by total revenue this quarter"
```

AI will:
- Generate optimized SQL query
- Execute and fetch results
- Format output for readability
- Suggest visualizations

### 3. Statistical Analysis

Ask:
```
"Analyze the correlation between customer age and purchase frequency"
```

AI will:
- Generate statistical queries
- Calculate correlation coefficients
- Identify trends and patterns
- Provide insights

---

## 📊 Machine Learning Workflows

### 1. Model Development

Ask:
```
"Create a Python script for customer churn prediction using scikit-learn"
```

AI will:
- Generate data preprocessing code
- Implement model training
- Add evaluation metrics
- Include visualization

### 2. Feature Engineering

Ask:
```
"Based on this dataset, what features would be most predictive for churn?"
```

AI will:
- Analyze data distributions
- Suggest feature transformations
- Identify interaction terms
- Recommend feature selection methods

### 3. Model Evaluation

Ask:
```
"Evaluate this model's performance and suggest improvements"
```

AI will:
- Calculate accuracy metrics
- Generate confusion matrix
- Analyze feature importance
- Suggest hyperparameter tuning

---

## 📈 Advanced Analytics

### 1. Time Series Analysis

Ask:
```
"Analyze sales trends over the past year and forecast next quarter"
```

AI will:
- Generate time series queries
- Apply forecasting models
- Create trend visualizations
- Provide confidence intervals

### 2. A/B Testing Analysis

Ask:
```
"Analyze the results of our latest A/B test on checkout conversion"
```

AI will:
- Calculate statistical significance
- Generate conversion rates
- Create comparison charts
- Provide recommendations

### 3. Cohort Analysis

Ask:
```
"Perform cohort analysis on user retention by signup month"
```

AI will:
- Generate cohort queries
- Calculate retention rates
- Create retention matrices
- Identify retention patterns

---

## 💡 Pro Tips

### 1. Data Context
```
"Remember that:
- Our database uses PostgreSQL
- Customer data is in the 'customers' table
- Sales data is in the 'transactions' table
- We're using Python 3.9 with pandas and scikit-learn"
```

### 2. Query Optimization
```
"For large datasets, always:
- Use LIMIT clauses for sampling
- Add appropriate indexes
- Avoid SELECT * queries
- Use EXPLAIN to analyze performance"
```

### 3. Result Interpretation
```
"When analyzing results:
- Always check for statistical significance
- Consider practical significance
- Look for confounding variables
- Validate assumptions"
```

---

## 🎯 Example Prompts

### Data Exploration
- *"Show me the first 100 rows of the sales table"*
- *"What are the data types of each column in customers?"*
- *"Find any missing values in the transactions table"*

### Statistical Analysis
- *"Calculate the mean, median, and standard deviation of order values"*
- *"Test if there's a significant difference in conversion rates between two groups"*
- *"Identify outliers in customer spending patterns"*

### Visualization
- *"Create a bar chart of sales by product category"*
- *"Generate a scatter plot of age vs income with trend line"*
- *"Create a heatmap of correlation matrix for all numeric variables"*

### Reporting
- *"Generate a monthly sales report with key metrics"*
- *"Create an executive summary of customer analytics"*
- *"Build a dashboard for real-time sales monitoring"*

---

## 📊 Performance Benefits

| Task | Time Saved | Improvement |
|------|------------|-------------|
| **Data Exploration** | 70% | Instant schema understanding |
| **Query Writing** | 80% | No manual SQL coding |
| **Statistical Analysis** | 60% | Automated calculations |
| **Report Generation** | 90% | Instant report creation |
| **Model Development** | 50% | Faster prototyping |

---

## 🔧 Troubleshooting

### "Database Connection Failed"
- Verify connection string format
- Check database is running
- Ensure network access
- Validate credentials

### "Query Timeout"
- Optimize the query
- Add appropriate indexes
- Reduce result set size
- Check database performance

### "Memory Issues"
- Break large datasets into chunks
- Use streaming processing
- Optimize data types
- Increase system memory

---

## 📚 Related Resources

- **[Platform Setup Guides](../platforms/)** - Configure for your IDE
- **[PostgreSQL Server](../../mcp-servers/third-party/postgres.md)** - Database integration
- **[Sequential Thinking](../../mcp-servers/official/sequential-thinking.md)** - Complex analysis

---

**Next:** Explore [AI/LLM Development](ai-development.md) workflows!
