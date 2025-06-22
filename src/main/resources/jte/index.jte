@param String message
@param String userName
@param int age
@param java.util.List<String> items
@param java.util.Map<String, String> userInfo

@template.layout(title = "Головна сторінка")
@content
<h1>${message}</h1>
<p>Привіт, ${userName}! Тобі ${age} років.</p>
@if(age > 18)
    <p>Ти повнолітній.</p>
@else
    <p>Ти неповнолітній.</p>
@endif

<h2>Список фруктів:</h2>
<ul>
    @for(String item : items)
        <li>${item}</li>
    @endfor
</ul>

<h2>Інформація про користувача:</h2>
<ul>
    @for(java.util.Map.Entry<String, String> entry : userInfo.entrySet())
        <li>${entry.getKey()}: ${entry.getValue()}</li>
    @endfor
</ul>

<h2>Приклад виклику компонента:</h2>
@template.components.greeting(name = "Анна", greetingMessage = "Доброго дня")

<h2>Приклад з параметрами за замовчуванням:</h2>
@template.components.greeting() // <--- Змінено
@template.components.greeting(name = "Петро") // <--- Змінено
@template.components.greeting(greetingMessage = "Здоровенькі були")

<h2>Список з varargs:</h2>
@template.components.list_items("Один", "Два", "Три", "Чотири")
<br>
@template.components.list_items("А", "Б", "В")

<h2>Приклад змінних у шаблоні:</h2>
@var String city = "Чернівці"
<p>Ви знаходитесь у місті: ${city}</p>

@var int year = 2025
@var String greeting = "Привіт, " + userName + "! Рік " + year + "."
<p>${greeting}</p>

<p><a href="/another">Перейти на іншу сторінку</a></p>
@endcontent