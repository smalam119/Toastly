# Toastly

Show customisable Toast on your app 

# Features

1. Toast can be shown at different positions:

    Top: 

    `showToast(message: "This is an inedible Toast", position: .top)`

    ![Alt Text](https://media.giphy.com/media/v1.Y2lkPTc5MGI3NjExZmE2OTdkMjdkMWZjZTJlOWEzMTEzYzg5OTI4MjEzZTU1Mjk2MjI3YSZlcD12MV9pbnRlcm5hbF9naWZzX2dpZklkJmN0PWc/reZFs1BmGioX4UWO9V/giphy.gif)

    Bottom: 

    `showToast(message: "This is an inedible Toast", position: .bottom)`

    ![Alt Text](https://media.giphy.com/media/v1.Y2lkPTc5MGI3NjExMzkxYTg1ZTlmYzc0N2Y3MDU1Njg2MjdmYWU4M2JiOWE2YjA4OWI1YiZlcD12MV9pbnRlcm5hbF9naWZzX2dpZklkJmN0PWc/Y6Nnc1OxTksFgymI36/giphy.gif)

    Center: 

    `showToast(message: "This is an inedible Toast", position: .center)`

    ![Alt Text](https://media.giphy.com/media/v1.Y2lkPTc5MGI3NjExODU5NTQ5ZDhiZmY4OTlhMzkyOWU2N2E2YjBmMWIxNzZkOWYzMjY2ZiZlcD12MV9pbnRlcm5hbF9naWZzX2dpZklkJmN0PWc/aBQIFggtU57LSkLUJ8/giphy.gif)

    Custom: 

    `showToast(message: "This is an inedible Toast", position: .custom(x: 30, y:200))`

  

    ![Alt Text](https://media.giphy.com/media/v1.Y2lkPTc5MGI3NjExZDIxZTAwYTRjYWEwNDA5MTU5YjI5MzYzNGFmOGRhYzA1NDBiMjAyOCZlcD12MV9pbnRlcm5hbF9naWZzX2dpZklkJmN0PWc/iI2O2h8kpvA49H0g11/giphy.gif)

  

2. Add duration of your choice

    Short:

     `showToast(message: "This is a fine Toast", duration: .short)`

    ![Alt Text](https://media.giphy.com/media/v1.Y2lkPTc5MGI3NjExYmJmZDA3MzQ0YjA2Njg2ZjM2ZDNiZDkyN2Q2NzAzOWE5MDczNzgwYiZlcD12MV9pbnRlcm5hbF9naWZzX2dpZklkJmN0PWc/CIDW0gRX6aY2IqMXOv/giphy.gif)

    Long:

    `showToast(message: "This is a fine Toast", duration: .long)`

    ![Alt Text](https://media.giphy.com/media/v1.Y2lkPTc5MGI3NjExOWQ2OTliMGFmNjAyZjI2ODI0NjYwZjEwY2ZmNmM0MDUzMmQwYTJmNSZlcD12MV9pbnRlcm5hbF9naWZzX2dpZklkJmN0PWc/pgWT8dTeSUmhJvCEQc/giphy.gif)

    Custom:

    `showToast(message: "This is a fine Toast", duration: .custom(duration: 5.0))`

    ![Alt Text](https://media.giphy.com/media/v1.Y2lkPTc5MGI3NjExZmNjNzhhNzY0Y2E3ZWJjNzdmODlmN2Y0YzMwODA4OTE0ZGI5MWQyYiZlcD12MV9pbnRlcm5hbF9naWZzX2dpZklkJmN0PWc/mhTM36wFZZnLWXvVFM/giphy.gif)

  

3. Customise the UI as you like

    Orange:

      `showToast(message: "This is a fine Toast", toastStyle: .init(backgroundColor: .orange, textColor: .black))`

    ![Alt Text](https://media.giphy.com/media/v1.Y2lkPTc5MGI3NjExMDEyZDQ0NTU1ZTY1Yzk3MGY3ZGU4NDNhNmRmYmVhN2VmMGM3MjM1YyZlcD12MV9pbnRlcm5hbF9naWZzX2dpZklkJmN0PWc/GPeXgnhT6zFMf0uhfg/giphy.gif)

    Blue:

      `showToast(message: "This is a fine Toast", toastStyle: .init(backgroundColor: .blue, textColor: .white))`

    ![Alt Text](https://media.giphy.com/media/v1.Y2lkPTc5MGI3NjExZGFmNzRjNGVlNTUyODYxYWZjNjIyOTA3Yjc3YjM1MzVhZTEwMjRlYiZlcD12MV9pbnRlcm5hbF9naWZzX2dpZklkJmN0PWc/ya46fKIB3zZfiezg6T/giphy.gif)

# Installation

### Swift Package Manager

Currently, Toastly is available only through  [Swift Package Manager](https://swift.org/package-manager/) 

Go to Xcode -> File -> Add Packages and use below url to search for the package.

```swift
https://github.com/smalam119/Toastly
```

## License

Toastly is released under the MIT license. [See LICENSE](https://github.com/smalam119/Toastly/blob/main/LICENSE) for details.
