# Social Buzz Analysis
Below is the description of the datasets provided for the purpose of this analysis. The dataset is located in the RawData folder here. https://github.com/JennyOtomi/Data-Analysis-Portfolio/tree/main/Excel/SocialBuzzAnalysis/RawData

## Content 
ID: Unique ID of the content that was uploaded (automatically generated) <br/>
User ID: Unique ID of a user that exists in the User table <br/>
Type: A string detailing the type of content that was uploaded <br/>
Category: A string detailing the category that this content is relevant to <br/>
URL: Link to the location where this content is stored 

## Reaction 
Content ID: Unique ID of a piece of content that was uploaded <br/>
User ID: Unique ID of a user that exists in the User table who reacted to this piece of content <br/>
Type: A string detailing the type of reaction this user gave <br/>
Datetime: The date and time of this reaction 

## ReactionTypes 
Type: A string detailing the type of reaction this user gave <br/>
Sentiment: A string detailing whether this type of reaction is considered as positive, negative or neutral <br/>
Score: This is a number calculated by Social Buzz that quantifies how “popular” each reaction is. A reaction type with a higher score should be considered as a more popular reaction.

## Goal/Aim
An analysis of their content categories that highlights the top 5 categories with the largest aggregate popularity

## STEPS TAKEN TO SOLVE THE PROBLEM
Step 1 – Cleaned the datasets by removing blank and unwanted data. <br/>
Step 2 – Used the VLOOKUP function to pick some columns from the other files to have a standard dataset to work with. <br/>
•	The VLOOKUP function below was used to pick the category from the ContentType datatset. <br/>
=VLOOKUP(B2,'C:\Users\xxxx\Documents\foldername\subfoldername\[ContentType.xls]ContentType'!$B$2:$D1001,3,FALSE) <br/>
•	To get sentiments column, we used VLOOKUP function below to pick the sentiments from the ReactionTypes dataset <br/>
=VLOOKUP(C2, 'C:\Users\xxxx\Documents\foldername\subfoldername\[ReactionTypes.xls]ReactionTypes'!$B$2:$D$17,2,FALSE) <br/>
•	We used the below function to populate the ReactionType column.<br/>
=VLOOKUP(B2,ContentType!$B$2:$D$1001,2,FALSE) <br/>
•	To populate the Score column, we used the function below. <br/>
=VLOOKUP(C2, 'C:\Users\xxxx\Documents\foldername\subfoldername\[ReactionTypes.xls]ReactionTypes'!$B$2:$D$17,3,FALSE)

# CONCLUSION
From the dashboard here, we can see that we have 16 categories, a total of 973,645 Score reactions. Photo reaction type received more reactions, and the top five(5) categories with the largest aggregate popularity are Animals, science, healthy eating, technology and food.

