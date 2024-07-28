import mysql.connector

try:
    # Connect to the MySQL server
    db = mysql.connector.connect(
        host="localhost",
        user="your_username",
        password="your_password"
    )

    # Get the cursor
    cursor = db.cursor()

    # Create the database if it doesn't exist
    cursor.execute("CREATE DATABASE IF NOT EXISTS alx_book_store")
    print("Database 'alx_book_store' created successfully!")

except mysql.connector.Error as err:
    print(f"Error: {err}")

finally:
    # Close the connection
    db.close()