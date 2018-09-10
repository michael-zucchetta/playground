import cv2


class Dataset():
    def __init__():
        imagenet_data = torchvision.datasets.ImageFolder('path/to/imagenet_root/')
        data_loader = torch.utils.data.DataLoader(imagenet_data,
                                          batch_size=4,
                                          shuffle=True,
                                          num_workers=args.nThreads)
        ()
