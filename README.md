

Project 2: Crowdfunding_ETL


CREATE THE CATEGORY AND SUBCATEGORY DATA FRAMES

First, I extracted crowdfunding.xlsx data to form a category dataframe with a category_id and a category. I saved this as a category.csv

Next, I did the same with the subcategory data (transforming it to a dataframe and saving it to a subcategory.csv)


CREATE THE CAMPAIGN DATAFRAME

I created an overall campaign dataframe that renamed column names, converted columns to their correct data types, dropped unwanted columns, and merged the category and subcategories with this dataframe so all the data would be accessible in one location.

This dataframe was exported to campaign.csv

CREATE THE CONTACTS DATAFRAME

Using regular expression, I extracted the contact_id, name, and email columns and ensured to extraneous information was included.

I converted the contact_id column to an int64 data type, reordered the columns for clarity, and exported this info to a contacts.csv. 

