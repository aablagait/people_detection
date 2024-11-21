# Проект для Резидентов Сколково 
## Система детектирования людей в реальном времени 
Проект написан с использованием yoloV8. 

### Быстрый старт 

```bash
pip install -r requirements.txt

python3 main.py
```
P.s. при работе используется библиотека PyTorch, которая не 
устанавливается на 32-x разрядные системы (например устаревшие версии RPI)


Открывается окно с изображение с вебкамеры, в котором детектируются люди 
и другие объекты, содержащиеся в модели [yolov8n.pt](yolo-Weights%2Fyolov8n.pt).

### Пример работы:

![img.png](screenshots/img.png)
вывод в терминале
![img2.png](screenshots/img2.png)
