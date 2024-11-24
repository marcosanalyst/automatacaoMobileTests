from robot.api.deco import keyword
from pymongo import MongoClient

client = MongoClient('mongodb+srv://marcos:mavds10nfs@cluster0.bmp88.mongodb.net/markX2?retryWrites=true&w=majority&appName=Cluster0')

db = client['markX2']

@keyword('Remove task from database')
def remove_task_by_name(task_name):
    collection = db['tasks']
    collection.delete_many({'text': task_name})
    print('Removendo a tarefa' + task_name)

