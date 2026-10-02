Fill out this <strong>[form](https://www.mathworks.com/academia/student-challenge/mathworks-excellence-in-innovation-signup.html?tfa_1=AI-Based%20Analysis%20of%20Oil%20and%20Gas%20Fatal%20Incident%20Reports&tfa_2=260)</strong> to <strong>register</strong> your intent to complete this project.

Fill out this <strong>[form](https://www.mathworks.com/academia/student-challenge/mathworks-excellence-in-innovation-submission-form.html?tfa_1=AI-Based%20Analysis%20of%20Oil%20and%20Gas%20Fatal%20Incident%20Reports&tfa_2=260)</strong> to <strong>submit</strong> your solution to this project and qualify for the rewards.

<table>
<td><img src="https://gist.githubusercontent.com/robertogl/e0115dc303472a9cfd52bbbc8edb7665/raw/oil_gas_engineer.jpg"  width=500 /></td>
<td><p><h1>AI-Based Analysis of Oil and Gas Fatal Incident Reports</h1></p>
<p>Turn published fatal incident reports into structured data and visualizations, then use AI to classify accidents as human acts or process design.</p>
</table>

**_Industry Partner_:**<br>
<br>
<a href="https://www.iogp.org/" target="_blank" style="display: inline-block; text-align: center;">
    <img src="https://gist.githubusercontent.com/robertogl/e0115dc303472a9cfd52bbbc8edb7665/raw/iogpLogo.jpg" width="300" style="display: block; margin: 0 auto;"><br>
</a>

## Motivation

Each year the [International Association of Oil \& Gas Producers (IOGP)](https&#58;//www.iogp.org/) publishes the fatal incident reports submitted by its member companies. Every record gives the date, country, number of deaths, activity, cause, the Life-Saving Rules involved, a narrative of what happened, the corrective actions and recommendations, and a coded list of causal factors. It is a detailed public record of how people die at work in this industry published as a PDF which can reveal some trends and insights if further data analysis and visualizations are performed.

Behind the data problem sits the question the industry argues about constantly. When an investigation concludes that a worker was &quot;in the line of fire&quot;, is that a finding about a person or about a plant that allowed a person to stand there? The answer decides what the organization does next&#58; a training campaign, or an engineering change. The reports make this measurable, because they already sort every causal factor into PEOPLE (ACTS) and PROCESS (CONDITIONS).

## Project Description

Build a workflow in [MATLAB](https://www.mathworks.com/products/matlab.html) and the [Text Analytics Toolbox](https://www.mathworks.com/products/text-analytics.html) that takes a published IOGP fatal incident report from PDF to insight: load the report, extract the incidents into a table, visualize what the data shows, and classify how each incident was attributed. The basic work is a self-contained data analysis and visualization project. The advanced work adds topic modelling, supervised machine learning, and large language models.

The dataset is the [Safety performance indicators – 2025 data: fatal incident reports](https://www.iogp.org/bookstore/product/safety-performance-indicators-2025-data-fatal-incident-reports/) from the IOGP bookstore: roughly forty incidents across every producing region, in which every record repeats the same labelled fields — DATE, COUNTRY, NUMBER OF DEATHS, CAUSE, ACTIVITY, PRIMARY LIFE-SAVING RULE, then NARRATIVE, WHAT WENT WRONG, CORRECTIVE ACTIONS AND RECOMMENDATIONS and CAUSAL FACTORS. That regularity is what makes the extraction tractable for a first text analytics project.

You can leverage [MATLAB Copilot](https://www.mathworks.com/products/matlab-copilot.html), [AI Chat Playground](https://www.mathworks.com/matlabcentral/playground/presets/assistant) or [MATLAB Agentic AI Toolkit](https://www.mathworks.com/products/matlab-agentic-toolkit.html) as assistant to complete your project.


Suggested steps:


1. **Load the report and inspect the text.**

   * Read the PDF with [extractFileText](https://www.mathworks.com/help/textanalytics/ref/extractfiletext.html), then check what the extraction did to the page layout, headings, and bulleted lists.
2. **Extract one row per incident.**

   * Split the text into records using the repeating date field as the delimiter, and use [regexp](https://www.mathworks.com/help/matlab/ref/regexp.html) to pull out date, country, number of deaths, cause, activity, and primary Life-Saving Rule.
   * Assemble a [table](https://www.mathworks.com/help/matlab/ref/table.html), carrying the region and onshore/offshore section headings down as extra columns.
   * Check your incident and fatality totals against the report before going further.
3. **Clean the narrative text.**

   * Build a [tokenizedDocument](https://www.mathworks.com/help/textanalytics/ref/tokenizeddocument.html) array, then lowercase, erase punctuation, remove stop words, normalise, and drop short words. The [Preprocess Text Data Live Task](https://www.mathworks.com/help/textanalytics/ug/preprocess-text-data-in-live-editor.html) does this interactively if you prefer.
   * Create a [bagOfWords](https://www.mathworks.com/help/textanalytics/ref/bagofwords.html) model and remove infrequent words.
4. **Visualize the data.** This is the main deliverable of the basic project.

   * Start with a [wordcloud](https://www.mathworks.com/help/textanalytics/ref/wordcloud.html) of the narratives and a bar chart of [topkwords](https://www.mathworks.com/help/textanalytics/ref/bagofwords.topkwords.html).
   * Then go beyond a single global view: [tiledlayout](https://www.mathworks.com/help/matlab/ref/tiledlayout.html) to compare word clouds by region or cause, sorted bar charts of fatalities by cause and activity, a [heatmap](https://www.mathworks.com/help/matlab/ref/heatmap.html) of cause against activity, a [geobubble](https://www.mathworks.com/help/matlab/ref/geobubble.html) map by country, stacked bars for onshore against offshore. Use [groupsummary](https://www.mathworks.com/help/matlab/ref/groupsummary.html) for the tables behind them.
   * For every figure, state in one sentence what it shows. A chart that supports no claim does not belong in your report.
5. **Classify by keyword, then measure how well it worked.**

   * Assign each narrative a theme by keyword matching, and compare against the report's own CAUSE field with [confusionchart](https://www.mathworks.com/help/stats/confusionchart.html).
   * List the narratives the rules get wrong and explain why; those mentioning both a fire and a vehicle are a good place to start.
6. **Count the human versus process attribution.**

   * Extract the CAUSAL FACTORS block, count the entries under PEOPLE (ACTS) and PROCESS (CONDITIONS), and label each incident People-dominant, Process-dominant, or Mixed. Handle the records where no causal factors were allocated.
   * Chart the split by cause and activity, report the most frequent factor on each side, and discuss what you would need in order to be confident in the conclusion.
7. **Export and report.**

   * Save the incident table with [writetable](https://www.mathworks.com/help/matlab/ref/writetable.html) and export the [Live Script](https://www.mathworks.com/help/matlab/matlab_prog/what-is-the-live-editor.html) to PDF or HTML as your submission.


Extensions to the basic work:


* Add earlier years. Substitute the year in the bookstore address — for example the [2020 edition](https://www.iogp.org/bookstore/product/safety-performance-indicators-2020-data-fatal-incident-reports/) — for any value from 2015 to 2025, and build a combined multi-year table. Plot fatalities per year by cause and region, and ask whether the People and Process balance has shifted. Layout varies between years, so make the parser tolerant and report which years it handles.
* Wrap the analysis in [Live Controls](https://www.mathworks.com/help/matlab/matlab_prog/add-interactive-controls-to-a-live-script.html) via live script or develop an app using [App Designer](https://www.mathworks.com/products/matlab/app-designer.html) so a reader can filter by region, year, or cause.
* Compare your figures against the aggregate indicators at [data.iogp.org](https://data.iogp.org).

Advanced project work:

Automating the classification of incidents by PEOPLE (ACTS) and PROCESS (CONDITIONS) is of great interest as manually labelling the incidents based on narratives takes time.

Four tracks, each self-contained. Pick one or combine them.

* **Find the structure the labels do not show.** Fit a topic model with [fitlda](https://www.mathworks.com/help/textanalytics/ref/fitlda.html) on a [tfidf](https://www.mathworks.com/help/textanalytics/ref/bagofwords.tfidf.html)-weighted model, choosing the number of topics by held-out perplexity or [logp](https://www.mathworks.com/help/textanalytics/ref/ldamodel.logp.html) rather than guessing, and compare the topics against the report's own CAUSE taxonomy. Then embed the narratives with [bert](https://www.mathworks.com/help/textanalytics/ref/bert.html) from [Deep Learning Toolbox](https://www.mathworks.com/products/deep-learning.html), cluster with [tsne](https://www.mathworks.com/help/stats/tsne.html) and [dbscan](https://www.mathworks.com/help/stats/dbscan.html), and flag near-identical incidents — the 2025 data alone contains several similar dropped-load lifting fatalities.
* **Train a model to predict the attribution.** Using [Statistics and Machine Learning Toolbox](https://www.mathworks.com/products/statistics.html), split the data with [cvpartition](https://www.mathworks.com/help/stats/cvpartition.html) and train [fitcecoc](https://www.mathworks.com/help/stats/fitcecoc.html) or [fitclinear](https://www.mathworks.com/help/stats/fitclinear.html) to predict CAUSE and the People or Process attribution from the narrative alone. Beat a majority-class baseline, then apply [lime](https://www.mathworks.com/help/stats/lime.html) and [shapley](https://www.mathworks.com/help/stats/shapley.html) to see which phrases drive the verdict — and ask whether the model learned about causation or about how investigators write.
* **Do the same job with a large language model.** With [LLMs with MATLAB](https://github.com/matlab-deep-learning/llms-with-matlab), use schema-constrained output to extract the structured fields from the free narrative, and score the result against your step 2 parser. Compare zero-shot classification against your trained model, and audit how often the model invents a value where the report says the investigation is pending. Repeat with a locally hosted open-weight model: real incident data rarely leaves the corporate network, so this is often the only option in industry.
* **Test whether the remedy matches the diagnosis.** The CORRECTIVE ACTIONS AND RECOMMENDATIONS field is free text with no coding at all. Classify each recommendation onto the [hierarchy of controls](https://www.cdc.gov/niosh/hierarchy-of-controls/), then test whether incidents attributed to human acts receive predominantly administrative remedies — the weakest tier. Quantify the association and report an effect size.

As a deliverable for any of the above, build a lessons-learned assistant in [App Designer](https://www.mathworks.com/products/matlab/app-designer.html): an engineer pastes a draft job safety analysis and gets back the most similar historical fatalities, the Life-Saving Rules at stake, and citations to specific records. Store the narrative embeddings in a vector-enabled database with [Database Toolbox](https://www.mathworks.com/products/database.html) so retrieval scales beyond a single year, and make the app refuse to answer when retrieval finds nothing relevant.

## Background Material

* [Safety performance indicators – 2025 data: fatal incident reports](https://www.iogp.org/bookstore/product/safety-performance-indicators-2025-data-fatal-incident-reports/) — the dataset for this project
* [IOGP bookstore](https://www.iogp.org/bookstore/) for earlier editions, and [data.iogp.org](https://data.iogp.org) for aggregate indicators
* IOGP Report 459, Life-Saving Rules
* [Text Analytics Toolbox examples](https://www.mathworks.com/help/textanalytics/examples.html), including [Analyze Text Data Using Topic Models](https://www.mathworks.com/help/textanalytics/ug/analyze-text-data-using-topic-models.html) and [Classify Text Data Using Deep Learning](https://www.mathworks.com/help/textanalytics/ug/classify-text-data-using-deep-learning.html)
* [MATLAB Copilot documentation](https://www.mathworks.com/help/matlab-copilot/index.html) and [LLMs with MATLAB](https://github.com/matlab-deep-learning/llms-with-matlab), [MATLAB Agentic AI Toolkit](https://www.mathworks.com/products/matlab-agentic-toolkit.html)
* [MATLAB Academy](https://matlabacademy.mathworks.com/?page=1&sort=featured) — self-paced online training courses (for this project, start with [MATLAB Onramp](https://matlabacademy.mathworks.com/details/matlab-onramp/gettingstarted), [App Building Onramp](https://matlabacademy.mathworks.com/details/app-building-onramp/orab), [AI and Statistics](https://matlabacademy.mathworks.com/?page=1&fq=ai-and-statistics&sort=featured) courses)
* [NIOSH Hierarchy of Controls](https://www.cdc.gov/niosh/hierarchy-of-controls/)

Suggested readings:

1. J. Reason, *Human Error*, Cambridge University Press, 1990.
2. S. Dekker, *The Field Guide to Understanding 'Human Error'*, 3rd ed., CRC Press, 2014.
3. E. Hollnagel, *Safety-I and Safety-II: The Past and Future of Safety Management*, Ashgate, 2014.
4. Center for Chemical Process Safety, *Guidelines for Investigating Process Safety Incidents*, 3rd ed., Wiley, 2019.
5. [Process Safety Fundamentals - IOGP](https://www.iogp.org/workstreams/safety/safety/process-safety/fundamentals/)
6. [Center for Chemical Process Safety - AIChE](https://ccps.aiche.org/)
7. Crowl, Daniel A., and Joseph F. Louvar. *Chemical Process Safety: Fundamentals with Applications*. 4th ed., Pearson Education, 2019.



## Impact

Transform fatal incident reports into evidence that aligns industry safety remedies with their true causes.

## Expertise Gained 

Artificial Intelligence, Text Analytics, Natural Language Processing

## Project Difficulty

Bachelor, Master's

## Project Discussion

[Dedicated discussion forum](https://github.com/mathworks/MATLAB-Simulink-Challenge-Project-Hub/discussions/183) to ask/answer questions, comment, or share your ideas for solutions for this project.

## Project Number

260
