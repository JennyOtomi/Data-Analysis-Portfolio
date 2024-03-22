# Social Buzz Analysis
Below is the description of the datasets provided for the purpose of this analysis. The dataset is located in the RawData folder here. https://github.com/JennyOtomi/Data-Analysis-Portfolio/tree/main/Excel/SocialBuzzAnalysis/RawData

## Content 
ID: Unique ID of the content that was uploaded (automatically generated) 
User ID: Unique ID of a user that exists in the User table 
Type: A string detailing the type of content that was uploaded 
Category: A string detailing the category that this content is relevant to 
URL: Link to the location where this content is stored 

## Reaction 
Content ID: Unique ID of a piece of content that was uploaded 
User ID: Unique ID of a user that exists in the User table who reacted to this piece of content 
Type: A string detailing the type of reaction this user gave 
Datetime: The date and time of this reaction 

## ReactionTypes 
Type: A string detailing the type of reaction this user gave 
Sentiment: A string detailing whether this type of reaction is considered as positive, negative or neutral 
Score: This is a number calculated by Social Buzz that quantifies how “popular” each reaction is. A reaction type with a higher score should be considered as a more popular reaction.

## Goal/Aim
An analysis of their content categories that highlights the top 5 categories with the largest aggregate popularity

## STEPS TAKEN TO SOLVE THE PROBLEM
Step 1 – Cleaned the datasets by removing blank and unwanted data.
Step 2 – Used the VLOOKUP function to pick some columns from the other files to have a standard dataset to work with.
•	The VLOOKUP function below was used to pick the category from the ContentType datatset.
=VLOOKUP(B2,'C:\Users\xxxx\Documents\foldername\subfoldername\[ContentType.xls]ContentType'!$B$2:$D1001,3,FALSE)
•	To get sentiments column, we used VLOOKUP function below to pick the sentiments from the ReactionTypes dataset
=VLOOKUP(C2, 'C:\Users\xxxx\Documents\foldername\subfoldername\[ReactionTypes.xls]ReactionTypes'!$B$2:$D$17,2,FALSE)
•	We used the below function to populate the ReactionType column.
=VLOOKUP(B2,ContentType!$B$2:$D$1001,2,FALSE)
•	To populate the Score column, we used the function below.
=VLOOKUP(C2, 'C:\Users\xxxx\Documents\foldername\subfoldername\[ReactionTypes.xls]ReactionTypes'!$B$2:$D$17,3,FALSE)

