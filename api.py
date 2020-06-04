
from models import DummyModel


dummy_model = DummyModel()


def getscore(values):
    score = dummy_model.predict(values)
    return score, 200
