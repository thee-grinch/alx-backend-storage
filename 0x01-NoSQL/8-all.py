#!/usr/bin/env python3
"""a function that lists all documents in a collection:"""


def list_all(mongo_collection):
    """return an empty list if no document in the collection"""
    return list(mongo_collection.find())
