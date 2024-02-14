//
//  CourseData.swift
//  DemoSwiftUI
//
//  Created by Serge Kotov on 08.02.2024.
//

enum CourseData {
    
    static let partData = [
            CoursePart(id: "01", title: "Введение в фреймворк"),
            CoursePart(id: "02", title: "Архитектура SwiftUI"),
            CoursePart(id: "03", title: "Модификаторы и реакция на события"),
            CoursePart(id: "04", title: "Интеграция с другими фреймворками"),
            CoursePart(id: "05", title: "Анимация и графика в SwiftUI"),
        ]
    
    static let cellData = [
            "01": [CourseCell(title: "1. Принципы и преимущества SwiftUI", keywords: ["WWDC", "Кросс—платформенная-разработка)"]),
                   CourseCell(title: "2. Структура приложения SwiftUI ", keywords: ["#Preview", "@main", "App", "Scene", "WindowGroup"]),
                   CourseCell(title: "3. Использование протокола View", keywords: ["body", "View", "композиция-Views"]),
                   CourseCell(title: "4. Контейнеры для включения компонентов", keywords: ["HStack", "VStack", "ZStack"]),
                   CourseCell(title: "5. Основные визуальные компоненты", keywords: ["Text", "TextField", "SecureField", "Label", "Button", "Image", "Toggle"]),
                   CourseCell(title: "6. Коллекции", keywords: ["List", "ScrollView", "ForEach"]),
                   CourseCell(title: "7. Позиционирование элементов на экране", keywords: ["Spacer", "GeometryReader", ".padding", ".ignoresSafeArea"]),
                  ],
            
            "02": [CourseCell(title: "1. Декларативный и императивный подходы", keywords: ["declarative", "imperative"]),
                   CourseCell(title: "2. Архитектура State-Model-View", keywords: ["MV", "SMV", "MVVM"]),
                   CourseCell(title: "3. Обертки свойств", keywords: ["@State", "@FocusState", "@AppStorage"]),
                   CourseCell(title: "4. Связывание переменных", keywords: ["@Binding"]),
                   CourseCell(title: "5. Переменные окружения", keywords: ["@Environment", "@EnvironmentObject"]),
                   CourseCell(title: "6. Компоненты для организации интерфейса", keywords: ["TabView", "NavigationView", "NavigationLink", ".sheet", ".alert"]),
                  ],
            
            "03": [CourseCell(title: "1. Модификаторы", keywords: [".font", ".background", ".frame", ".padding", ".overlay", ".foregroundColor", ".border"]),
                   CourseCell(title: "2. Создание собственных модификаторов", keywords: ["ViewModifier", "Content", ".modifier"]),
                   CourseCell(title: "3. Реакция на события с использованием модификаторов", keywords: ["onTapGesture", "onAppear", "task"]),
                   CourseCell(title: "4. Использование паттерна наблюдатель в SwiftUI", keywords: ["Observation", "@Observable", "@Environment", "@Bindable", "Combine"]),
                  ],
            
            "04": [CourseCell(title: "1. Использование компонентов UIKit в SwiftUI", keywords: ["SpriteKit", "UIViewRepresentable", "makeUIView", "updateUIView"]),
                   CourseCell(title: "2. Использование Views с UIKit", keywords: ["UIHostingController"]),
                   CourseCell(title: "3. Интеграция с SpriteKit", keywords: ["SpriteView"]),
                   CourseCell(title: "4. Интеграция с SceneKit", keywords: ["SceneView"]),
                  ],
            
            "05": [CourseCell(title: "1. Цвет и градиенты", keywords: ["Color", "Gradient", "AngularGradient", "RadialGradient", ".shadow"]),
                   CourseCell(title: "2. Визуализация геометрических фигур", keywords: ["Rectangle", "RoundedRectangle", "Capsule", "Ellipse", "Circle"]),
                   CourseCell(title: "3. Создание собственных фигур", keywords: ["Shape", "Path", "CGRect", "UIBezierPath"]),
                   CourseCell(title: "4. Встроенные анимации", keywords: [".animation", ".effect", ".scaleEffect", "withAnimation"]),
                   CourseCell(title: "5. Продвинутая анимация и шейдеры", keywords: [".colorEffect", ".layerEffect", "Shader"]),
                   CourseCell(title: "6. Графики и диаграммы с фреймворком Charts", keywords: ["Chart", "BarMark", "LineMark"]),
                  ],
        ]
    
    static let quizData = [
            "01": [CourseQuestion(text: "В каком году на конференции Apple WWDC был впервые представлен разработчикам фреймворк SwiftUI?", correct: [1], answers: ["2017", "2019", "2021", "а что это?"]),
                   CourseQuestion(text: "Что по мнению маркетологов Apple принципиально отличает фреймворк SwiftUI от UIKit?", correct: [1], answers: ["Императивный подход", "Декларативный подход", "Отказ от протоколов", "Отказ от классов"]),
                   CourseQuestion(text: "К какому типу данных относится View (фреймворк SwiftUI)?", correct: [3], answers: ["Struct", "Class", "Enum", "Protocol"]),
                   CourseQuestion(text: "Какая концепция используется в SwiftUI для конструирования собственных типов с их визуализацией на экране?", correct: [1], answers: ["Объектно - ориентированное программирование", "Протокольное - ориентированное программирование", "Функциональное - ориентированное программирование"]),
                   CourseQuestion(text: "Какой протокол необходимо использовать для визуализации объектов на экране в SwiftUI?", correct: [0], answers: ["View", "UIView", "VisualRepresentable"]),
                   CourseQuestion(text: "Как нужно именовать вычисляемое свойство, чтобы структура соответствовала требованиям протокола View?", correct: [3], answers: ["view", "content", "shape", "body"]),
                   CourseQuestion(text: "Как называется функциональный аналог UITableView в SwiftUI?", correct: [0], answers: ["List", "ListView", "TableView", "Table"]),
                   CourseQuestion(text: "Что лишнее в этом списке?", correct: [3], answers: ["HStack", "VStack", "ZStack", "WStack"]),
                   CourseQuestion(text: "Для чего используется компонент 'GeometryReader' в SwiftUI?", correct: [0], answers: ["Предоставляет доступный размер по ширине и высоте для размещения вложенных в него компонентов на экране", "Предоставляет размер геометрии ширины и высоты экрана устройства в пикселях", ""]),
                   CourseQuestion(text: "Какой 'тип' имеет вычисляемое свойство body?", correct: [0, 1], answers: ["View", "some View", "Any", "AnyObject"]),
                  ],
            
            "02": [CourseQuestion(text: "Сколько максимально элементов можно включить в состав стека View (SwiftUI)?", correct: [2], answers: ["1", "4", "10", "100", "Неограниченно"]),
                   CourseQuestion(text: "Как разработчик может использовать сущность ViewController в фреймворке SwiftUI?", correct: [2], answers: ["Может добавить новый дочерний экран для NavigationView", "Может изменить поведение встроенных анимаций для Views", "Никак"]),
                   CourseQuestion(text: "Если View передает в дочерний View связанную переменную, какой property wrapper нужно использовать для дочернего View, чтобы отслеживать изменения значения этой переменной?", correct: [1], answers: ["@State", "@Binding", "@Object", "@Parent"]),
                   CourseQuestion(text: "Каково назначение @ViewBuilder?", correct: [0], answers: ["Атрибут для указания возврата нескольких View в замыкании", "Фабрика для генерации View", "Абстрактный класс - строитель для визуализации"]),
                   CourseQuestion(text: "Какой property wrapper НЕ используется в SwiftUI?", correct: [0], answers: ["@BindingObject", "@AppStorage", "@State", "@StateObject"]),
                   CourseQuestion(text: "Для чтения переменных среды iOS, например, текущей цветовой схемы, мы используем...", correct: [3], answers: ["UITraitCollection", "синглтон UIWindow", "ios_settings", "@Environment"]),
                   CourseQuestion(text: "Что означает присутствие 'state' в наименовании оберток свойств в SwiftUI?", correct: [0], answers: ["что View является единственным владельцем состояния свойства", "что свойство может быть изменено только в этом View", "что View отслеживает изменение его состояния"]),
                   CourseQuestion(text: "Как в SwiftUI отобразить алерт на экране?", correct: [1], answers: ["Через метод делегата для View", "С использованием модификатора .alert", "Сделав экземпляр класса UIAlertController с вызовом метода present"]),
                   CourseQuestion(text: "Как программно сделать активным tab item для TabView?", correct: [0, 2], answers: ["Используя свойство selection в инициализаторе TabView и с модификатором .tag для items", "Используя switch для выбора item в TabView", "Это мы не проходили, это нам не задавали"]),
                   CourseQuestion(text: "Что лишнее для темы архитектуры SwiftUI?", correct: [1, 3], answers: ["MVVM", "MVC", "StateModelView", "Viper"]),
                  ],
            
            "03": [CourseQuestion(text: "Принцип действия модификаторов в SwiftUI?", correct: [1], answers: ["Принимает на вход экземпляр View, модифирует его свойства и возвращает", "Принимает на вход один View -> возвращает другой", "Модифицирует одно из свойств экземпляра View"]),
                   CourseQuestion(text: "Какой модификатор используется для указания точных размеров View по ширине и/или высоте?", correct: [0], answers: [".frame", ".bounds", ".size", ".rectOf"]),
                   CourseQuestion(text: "Протокол для кастомных модификаторов?", correct: [2], answers: ["CustomModifier", "View", "ViewModifier"]),
                   CourseQuestion(text: "Для кастомных модификаторов необходимо реализовать...", correct: [1], answers: ["свойство body", "метод body", "дочерний класс от ViewModifier"]),
                   CourseQuestion(text: "Начиная с iOS 17 для реализации паттерна Observer удобно использовать...", correct: [0], answers: ["макрос @Observable", "фреймворк Combine", "протокол ObservableObject", "пакет ImagePublisher из пятого ДЗ модуля IOSINT"]),
                   CourseQuestion(text: "Для исполнения блока кода в асинхронном режиме удобно использовать модификатор...", correct: [0], answers: [".task", ".onAppear", ".async", ".run"]),
                   CourseQuestion(text: "Для реакции на двойной тап на экране предназначен модификатор...", correct: [1], answers: [".onDoubleTapGesture", ".onTapGesture(count: 2)", ".tapTap"]),
                   CourseQuestion(text: "Что лишнее в этом списке, когда мы говорим об использовании паттерна Наблюдатель в SwiftUI?", correct: [3], answers: ["@Observable", "@Environment", "@Bindable", "@Operator"]),
                   CourseQuestion(text: "Какой слоган для фреймворка Combine придумали в Apple?", correct: [2], answers: ["doing things just in time", "make events easy again", "processing values over time"]),
                   CourseQuestion(text: "В UIKit для UIViewController есть метод жизненного цикла viewDidDisappear. Есть ли аналог этого метода в SwiftUI?", correct: [2], answers: ["Нет, так как в SwiftUI нет вьюконтроллеров", "Нет, так как в SwiftUI для Views используются структуры вместо классов", "Да, это модификатор .onDisappear", "Да, одноименный метод viewDidDisappear"]),
                  ],
            
            "04": [CourseQuestion(text: "Можно ли в SwiftUI использовать классы визуальных компонентов из UIKit?", correct: [0], answers: ["Да, через структуру с протоколом UIViewRepresentable", "Да, через дочерний класс от абстрактного класса SwiftUIView", "Да, с использованием библиотеки UILegacy", "Нет"]),
                   CourseQuestion(text: "Можно ли в приложение на SwiftUI добавить кастомный AppDelegate из UIKit?", correct: [2], answers: ["Нет", "Да, добавив к атрибуту @main атрибут @UIApplicationDelegate", "Да, через кастомный класс с реализацией протокола UIApplicationDelegate"]),
                   CourseQuestion(text: "Вам нужно добавить в приложение UIKit визуальный компонент SwiftUI. Необходимо использовать...", correct: [0], answers: ["экземпляр класса UIHostingController", "кастомный класс UIView, подписанный на протокол View", "extension UIViewController для реализации делегата метода SwiftUIRepresentable"]),
                   CourseQuestion(text: "Чтобы вернуть управление в приложение UIKit из компонента SWiftUI необходимо", correct: [1], answers: ["использовать модификатор .onDisappear для View", "передать из UIKit в компонент SWiftUI ссылку на экземпляр UINavigationController и вызвать его метод popViewController", "переопределить метод жизненного цикла viewWillDisappear для View"]),
                   CourseQuestion(text: "Какую возможность НЕ предоставляет использование фреймворков SpriteKit и SceneKit для приложения SwiftUI?", correct: [3], answers: ["Визуализация графических объектов в 2D (SpriteKit) или 3D (SceneKit)", "Физический движок моделирования объектов: гравитация, масса, движения, инерция, столкновения", "Визуальные эффекты с эмиттером: фейерверки, дым, туман, снег, дождь", "Подключение к конструктору игровых сцен для визуальных объектов"]),
                   CourseQuestion(text: "Чтобы интегрировать императивную архитектуру UIKit для структуры по протоколу UIViewRepresentable нужно...", correct: [0], answers: ["добавить реализацию методов makeUIView и updateUIView", "добавить свойство - экземпляр UINavigationController"]),
                   CourseQuestion(text: "Можно ли в SwiftUI напрямую использовать динамические эффекты на базе шейдеров?", correct: [1], answers: ["Нет, это есть только в игровых движках", "Можно, начиная с iOS17", "Можно, начиная с iOS13"]),
                   CourseQuestion(text: "Вам нужно добавить в приложение простую 3D-игру. Что будете использовать?", correct: [1, 2], answers: ["SpriteKit", "SceneKit", "Unity", "SwiftUI с кастомными 3D-моделями"]),
                  ],
            
            "05": [CourseQuestion(text: "Имеет ли Swift фреймворк от Apple для рисования графиков и диаграмм?", correct: [0, 1], answers: ["SwiftCharts", "Charts", "Graphics", "SwiftData"]),
                   CourseQuestion(text: "Для рисования геометрических фигур есть вьюшки Ellipse и Circle. Можно ли вместо Ellipse использовать Circle, а всесто Circle применить Ellipse?", correct: [2], answers: ["Только Ellipse вместо Circle", "Только Circle вместо Ellipse", "Да в обеих случаях"]),
                   CourseQuestion(text: "Чтобы разместить надпись на геометрической фигуре можно...", correct: [0, 1, 2], answers: ["использовать модификатор .overlay", "сделать кастомный View с фигурой и надписью", "применить контейнер ZStack"]),
                   CourseQuestion(text: "Для рисования собственных фигур со сложной геометрией целесообразно...", correct: [1, 2], answers: ["Определить структуру по протоколу View с вычисляемым свойством body", "Определить структуру по протоколу Shape с методом path", "Использовать UIBezierPath"]),
                   CourseQuestion(text: "Где находится начало координат при рисовании с UIBezierPath?", correct: [0], answers: ["Верхний левый угол", "Верхний правый угол", "Нижний левый угол", "Нижний правый угол", "Центр экрана"]),
                   CourseQuestion(text: "Можно ли в SwiftUI плавно анимировать изменение БИНАРНОЙ переменной?", correct: [1], answers: ["Нет, только целые или вещественные пременные", "Да, без проблем!"]),
                   CourseQuestion(text: "Для использования фрагментных шейдеров предназначен модификатор...", correct: [0, 1], answers: [".colorEffect", ".layerEffect", ".shaderEffect", ".metalEffect"]),
                   CourseQuestion(text: "Какого типа диаграммы пока нет в SwiftCharts?", correct: [7], answers: ["Линейный график", "Гистограмма", "Пузырьковая диаграмма", "Диаграмма Гантта", "Закрашенная область", "Круговая диаграмма", "Диаграмма - бублик", "Есть все указанные выше"]),
                  ],
        ]
}
