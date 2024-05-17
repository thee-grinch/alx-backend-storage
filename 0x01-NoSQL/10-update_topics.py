#!/usr/bin/env python3
"""a function that changes all topics of a school document based on the name"""


def update_topics(mongo_collection, name, topics):
    """a function that changes all topics of a school document based on the name"""
    mongo_collection.update({"name": name}, {"$set": {"topics": topics}}, multi=True)
