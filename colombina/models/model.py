import torch.nn as nn
import torch.nn.functional as F

class Model(nn.Module):
    def __init__(self, classes):
        super(Model, self).__init__()
        self.classes = classes
        self.conv_layer_1 = nn.Conv2d(3, 6, 5)
        self.pool = nn.MaxPool2d(2, 2)
        self.conv_layer_2 = nn.Conv2d(6, 16, 5)

