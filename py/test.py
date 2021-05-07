import irisnative
import json
fObj = open('/home/jovyan/connection.json',)
vars = json.load(fObj)
print(vars)
connection = irisnative.createConnection(vars["host"], vars["port"], vars["namespace"], vars["login"], vars["password"])
iris = irisnative.createIris(connection)