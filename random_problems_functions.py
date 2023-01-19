import mysql.connector


TRACK_DB_CONFIG = {
"host":"localhost",
"port":"3306",
"user":"root",
"password":"Qwer!234",
"database": problem_tracking
}

sql_wait_timeout = 432000 #Equivalent to 5 days(5*24*60*60)


tracking_connection = mysql.connector.connect(**RECO_DB_CONFIG)
if(tracking_connection.is_connected()):
	cursor = tracking_connection.cursor()
	#Set session wait timeout equivalent to 5 days
	print("\nConnection established with Recommendation database! Setting wait timeout to {} seconds...\n".format(tracking_conf.sql_wait_timeout))
	set_wait_timeout_query = "SET SESSION wait_timeout={}".format(sql_wait_timeout)
	cursor.execute(set_wait_timeout_query)
else:
	print("\nERROR connecting to the problems database! Make sure the config is correct and MySQL server is running! Exiting...")
	exit(-1)




query = "SELECT * FROM problem_inventory where probID='{}' ".format(probID)
print("\nSQL query: {}".format(query))
cursor.execute(query)
selected_problem = cursor.fetchone()