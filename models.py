
import numpy as np


class DummyModel:
    def predict(self, vals):
        """
        returns dummy prediction
        :param vals: list or np.array, model features
        :return: score from 0 to 1
        """
        return 1. / (1. + np.exp(-np.sum(vals)))
