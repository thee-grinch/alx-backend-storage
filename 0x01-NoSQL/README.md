import pymongo

# Connect to MongoDB
client = pymongo.MongoClient("mongodb://localhost:27017/")

# Access a database
db = client["mydatabase"]

# Access a collection
collection = db["mycollection"]

# Insert a document
document = {"name": "John", "age": 30}
inserted_document = collection.insert_one(document)
print("Inserted document ID:", inserted_document.inserted_id)

# Find documents
query = {"name": "John"}
results = collection.find(query)
for result in results:
    print(result)

# Update a document
query = {"name": "John"}
new_values = {"$set": {"age": 35}}
collection.update_one(query, new_values)
print("Document updated successfully")

# Delete a document
query = {"name": "John"}
collection.delete_one(query)
print("Document deleted successfully")1-use_or_create_database