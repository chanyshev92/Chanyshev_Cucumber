Feature: Тестирование при YandexMarket помощи Selenide
  Scenario Outline: В Смартфонах при выборе производителярезультаты содержат сматрфоны только этого производителя
    Given Открыть браузер на странице yandex.ru
    When Перейти к странице market.yandex.ru
    When Перейти на страницу Смартфоны
    Then Выбрать производителя '<Производитель>'
    Then Проверить что все результаты содержат '<Производитель>'

    Examples:
      | Производитель |
      | Apple         |
      | HONOR         |
      | Nokia         |