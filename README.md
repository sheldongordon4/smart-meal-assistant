# Meal Suggestion App
#### Video Demo: <https://youtu.be/ootRjQlvovo>

---

## Description
The **Meal Suggestion App** is a Python-based tool designed to make meal planning and recipe discovery easy, interactive, and convenient. With this app, users can explore a "database" of recipes by searching for a specific meal, viewing the required ingredients and preparation steps, or exploring alternative meal suggestions. The app also provides the option to email recipes directly to the user’s inbox, ensuring easy access and sharing as well as saving the results.

Key features include:

- **Meal Search**: Users can input a desired meal, and if the recipe is available, they receive step-by-step instructions and ingredient lists.
- **Alternative Suggestions**: If the requested meal is not in the database, the app suggests up to three random alternatives to inspire users and a fourth option, which prompt the user for their choice.
- **Email Functionality**: Recipes can, optionally, be emailed directly to users, with email validation to ensure proper formatting.


The app leverages libraries like pandas for efficient data handling, random for generating meal suggestions, re for email validation and smtplib for email functionality. It is designed to provide a seamless and enjoyable user experience while encouraging culinary exploration.

---

### Files

#### main.py
The main Python script that contains all the functions for the Meal Suggestion App. This file includes:
- **'access_csv(file_path)'**: Reads the recipe data from a CSV file and returns it as a pandas DataFrame. Handles errors like missing or invalid files.
- **'create_recipe_dict(d)'**: Converts the recipe DataFrame into a dictionary, where each key is a meal name and the value is the recipe details.
- **'meal_choice(recipe_dict)'**: The core function for handling user interactions. It takes user input, checks if the recipe is available, and either displays the recipe or offers alternative suggestions.
- **'suggest_alternatives(recipe_dict)'**: Provides random recipe suggestions if the user’s desired meal is not available.
- **'prompt_for_email(recipe_name, recipe)'**: Asks the user if they’d like the recipe emailed and collects email details if needed.
- **'validate_email(email)'**: Validates the email format using regex to ensure accuracy.
- **'send_email(email, recipe_name, recipe)'**: Sends the selected recipe to the user’s email using SMTP.

#### recipe_data.csv
A CSV file containing a database of recipes. Each row represents a recipe with fields like:
- recipe_name: The name of the meal.
- ingredients: A list of ingredients required for the recipe.
- directions: Step-by-step instructions for preparing the meal.

---

### Design Choices

#### User Interaction
The app is designed to be conversational and user-friendly. Instead of requiring users to navigate a menu, the app interacts directly through prompts, making it simple for users of all technical levels.

#### Data Storage
Recipes are stored in a CSV file for easy access and modification. This approach was chosen for its simplicity and compatibility with Python’s pandas library. The initial idea was to connect to a database using sqlalchemy but that approach was not compatible with the platform used.

#### Email Functionality
The decision to include email functionality enhances the app's practicality by allowing users to access recipes outside the app and save the results of searches. Regex validation was added to ensure email addresses are properly formatted.

#### Error Handling
To improve reliability, the app includes error handling for scenarios like missing files, invalid inputs, and email errors. This ensures a smooth user experience even in unexpected situations.

---

### How to Run

1. Install Python 3.7 or higher.
2. Install the required libraries:
3. Save the main.py and recipe_data.csv files in the same directory.
4. Run the app


### Future Improvements

- **Enhanced Search**: Adding search filters like cuisine type, dietary restrictions, or cooking time.
- **Keyword Search**: Search recipes by keywords, which will show all matches. Eg. Input pasta and all pasta options displayed.
- **GUI**: Building a graphical user interface for improved user interaction.
- **Database Integration**: Transitioning from CSV to a more robust database for larger datasets.
- **User Accounts**: Allowing users to save favorite recipes or add their own.
