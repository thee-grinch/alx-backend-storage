#!/usr/bin/env python3
"""a function that provides some stats about Nginx logs stored in MongoDB stats"""
from pymongo import MongoClient


db = MongoClient().logs.nginx

print(f"{db.count_documents({})} logs")
print("Methods:")
methods = ["GET", "POST", "PUT", "PATCH", "DELETE"]
for method in methods:
    count = db.count_documents({"method": method})
    print(f"\tmethod {method}: {count}")

status_check = db.count_documents({"method": "GET", "path": "/status"})
print(f"{status_check} status check")