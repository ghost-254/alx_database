# Importing the mysql-connector-python library to list the databases
import mysql.connector

# MySQL server details
host = 1e456a5f2ef0.dd860876.alx-cod.online
user = 1e456a5f2ef0
password = 523e081667aab6198723

try:
    # Connect to the MySQL server
    connection = mysql.connector.connect(
        host=host,
        user=user,
        password=password
    )

    # Create a cursor object to execute SQL commands
    cursor = connection.cursor()

    # Execute the SHOW DATABASES statement
    cursor.execute("SHOW DATABASES")

    # Fetch all the rows (databases)
    databases = cursor.fetchall()

    # Print the list of databases
    print("List of databases:")
    for db in databases:
        print(db[0])

except mysql.connector.Error as err:
    print(f"Error: {err}")

finally:
    # Close the cursor and connection
    if cursor:
        cursor.close()
    if connection:
        connection.close()
