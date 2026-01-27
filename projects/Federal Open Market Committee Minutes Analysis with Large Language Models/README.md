Fill out this <strong>[form](https://www.mathworks.com/academia/student-challenge/mathworks-excellence-in-innovation-signup.html?tfa_1=Federal%20Open%20Market%20Committee%20Minutes%20Analysis%20with%20Large%20Language%20Models&tfa_2=258)</strong> to <strong>register</strong> your intent to complete this project.

Fill out this <strong>[form](https://www.mathworks.com/academia/student-challenge/mathworks-excellence-in-innovation-submission-form.html?tfa_1=Federal%20Open%20Market%20Committee%20Minutes%20Analysis%20with%20Large%20Language%20Models&tfa_2=258)</strong> to <strong>submit</strong> your solution to this project and qualify for the rewards.

<table>
<td><img src="https://gist.githubusercontent.com/robertogl/e0115dc303472a9cfd52bbbc8edb7665/raw/fomc.jpg"  width=500 /></td>
<td><p><h1>Federal Open Market Committee Minutes Analysis with Large Language Models</h1></p>
<p>Use large language models in MATLAB to extract insights from central bank policy documents.</p>
</table>

## Motivation

Understanding central bank communication is a competitive edge in today’s data-driven financial industry. The Federal Open Market Committee (FOMC) plays a pivotal role in shaping U.S. monetary policy, and its meeting minutes offer valuable insights into interest rate decisions, inflation expectations, and the broader economic outlook. These documents are essential reading for economists, analysts, and institutional investors, who use them to refine forecasts, adjust risk models, and anticipate market movements across equities, bonds, currencies, and commodities.
In this project, you will build tools that go beyond manual analysis, applying modern AI techniques to extract and interpret key signals from FOMC communications. This kind of automation is increasingly used in hedge funds, investment banks, fintech companies, and central banks to stay ahead of the curve. By working at the intersection of financial policy and machine learning, you will gain skills that are highly valuable for careers in quantitative finance, data science, and applied economics.

## Project Description

Build a MATLAB-based system that uses large language models (LLMs) to analyze and extract insights from the minutes of the Federal Open Market Committee (FOMC), a key source of information about U.S. monetary policy. The project implements a retrieval-augmented generation (RAG) workflow: FOMC documents are processed into vector embeddings, stored in a vector-capable PostgreSQL database, and queried using semantic similarity. When a user submits a question, the system retrieves the most relevant text segments and combines them with the query to construct a prompt for an LLM, which then generates a context-aware response.

This project offers hands-on experience with natural language processing, vector search, database integration, and LLM APIs, providing a practical introduction to AI-driven financial document analysis. While the focus is on FOMC data, the same workflow can be applied to other financial text sources such as earnings call transcripts, SEC filings, or market research reports.

Begin by exploring the workflow provided [here](https://github.com/ydong9107/RAGinFinance) and expand it to incorporate additional financial data and generate deeper insights. Work with the [Text Analytic Toolbox™](https://www.mathworks.com/help/textanalytics/index.html), [Database Toolbox™](https://www.mathworks.com/products/datafeed.html), [Statistics and Machine Learning Toolbox™](https://www.mathworks.com/products/statistics.html) and [Deep Learning Toolbox™](https://www.mathworks.com/products/deep-learning.html) to retrieve the [FOMC meeting minutes](https://www.federalreserve.gov/monetarypolicy/fomccalendars.htm), convert the text into numeric representations, store them in a vector database, and query them using LLMs to generate responses.

Suggested steps:
1.	Familiarize with Tools and Background
    -	Review examples of text analytics and RAG workflows in MATLAB (see Background Material).
    -	Understand how LLMs can be integrated via API and how to use the [PostgreSQL native interface](https://www.mathworks.com/help/database/postgresql-native-interface.html) in MATLAB via the Database Toolbox.
    -	Test example workflows using the GitHub repository: [LLMs with MATLAB](https://github.com/matlab-deep-learning/llms-with-matlab).
2.	Retrieve the current and historical FOMC files from the website of Federal Reserve System 
    -	Visit the [FOMC website](https://www.federalreserve.gov/monetarypolicy/fomccalendars.htm) and programmatically download meeting transcripts and statements (typically in HTML or PDF)
    -	Convert these documents to plain text using MATLAB’s text processing functions (e.g., extractFileText, convertCharsToStrings, webread or similar functions)
3.	Preprocess the text data and convert them into numeric representations 
    -	Clean up formatting and remove unnecessary characters using the [Preprocess Text Data Live Task](https://www.mathworks.com/help/textanalytics/ug/preprocess-text-data-in-live-editor.html)
    -	Split documents into paragraphs or full sentences
    -	Convert them into numeric representations using the add-on embedding model for MATLAB [all-MiniLM](https://www.mathworks.com/matlabcentral/fileexchange/156394-text-analytics-toolbox-model-for-all-minilm-l12-v2-network).
4.	Create a vector database in [PostgresSQL](https://www.postgresql.org/), 
    -	Install the [pgvector](https://github.com/pgvector/pgvector) extension to enable vector similarity search. 
    -	Store the cleaned vectors into the database
5.	Generate prompts and compute the similarities between the stored vectors
    -	Write your question and use it as a query for the database and use functions from the Database Toolbox such as fetch to perform similarity score between the quesry and the vectors stored in the database
    -	Fetch the sentences with the highest similarity scores and include them, along with your query, in the prompt to the LLM
6.	Use MATLAB with an LLM API to connect to a model of your choice, and generate answers based on the retrieved similar text segments


Project variations:
-	Apply the same workflow to other financial documents like earnings calls, SEC filings, news articles, etc.

Advanced project work:
-	Create an interactive app, ensuring it aligns with the established project workflow
-	Develop a validation framework for assessing the accuracy of responses generated by LLMs
    -	Based on past data and past events
    -	Based on existing quantitative financial models like [GDP forecasting](https://www.mathworks.com/help/econ/modeling-the-united-states-economy.html)
-	Integrate diverse data sources, including SEC filings, real-time market data, financial news outlets, and social media platforms, to enrich analysis and insights.


## Background Material

-	Board of Governors of the Federal Reserve System – Federal Open Market Committee: https://www.federalreserve.gov/monetarypolicy/fomccalendars.htm 
-	LLMs with MATLAB: https://github.com/matlab-deep-learning/llms-with-matlab 
-	PostgreSQL Native Interface: https://www.mathworks.com/help/database/postgresql-native-interface.html 
-	B. Pisaneschi, RAG for Finance: Automating Document Analysis with LLMs, https://rpc.cfainstitute.org/research/the-automation-ahead-content-series/retrieval-augmented-generation
-  LLM Retrieve-Augmented Generation in Finance using MATLAB: https://github.com/ydong9107/RAGinFinance


## Impact

Harness AI to revolutionize financial text analysis and unlock deeper insights from real-world monetary policy documents.

## Expertise Gained 

Artificial Intelligence, Computational Finance, Natural Language Processing, Text Analytics, Neural Networks

## Project Difficulty

Doctoral, Master's

## Project Discussion

[Dedicated discussion forum](https://github.com/mathworks/MATLAB-Simulink-Challenge-Project-Hub/discussions/156) to ask/answer questions, comment, or share your ideas for solutions for this project.

## Project Number

258
