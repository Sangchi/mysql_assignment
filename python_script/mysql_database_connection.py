import mysql.connector
from mysql.connector import Error
from dotenv import load_dotenv
import os


load_dotenv()

try:

    host = os.getenv('DB_HOST')
    user = os.getenv('DB_USER')
    password = os.getenv('DB_PASSWORD')
    database = os.getenv('DB_NAME')

    connection = mysql.connector.connect(
        host=host,
        user=user,
        password=password,
        database=database
    )

    if connection.is_connected():
        print("Successfully connected to the database")

        cursor = connection.cursor()
        cursor.execute("SELECT * FROM userdata")
        rows = cursor.fetchall()


        if rows:

            column_description = cursor.description
            column_names = []
            for column in column_description:
                column_names.append(column[0])

            column_names_output = " | ".join(column_names)
            print(column_names_output)


            for row in rows:
                row_output = []
                for cell in row:
                    row_output.append(str(cell))
                print(" | ".join(row_output))

        else:

            print("No data found in the table.")
        cursor.close()
    connection.close()

except Error as e:

    print(f"Error: {e}")

