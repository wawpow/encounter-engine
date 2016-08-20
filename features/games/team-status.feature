#language: ru

# Сценарии пройдут после выполнения тикета #37

Функционал: Отмена регистрации на участие в игре
  Капитан команды должен иметь возможность отменить регистрацию команды на участие в игре  

Предыстория:
  Допустим пользователем Костя создана игра "Белые паруса"
  И Костя добавляет задание "Level1" в игру "Белые паруса"
  И зарегистрирована команда "Корабль" под руководством Штурман
  И я залогинен как "Штурман"

Сценарий: Капитан отзывает заявку на регистрацию
  Допустим капитан Штурман подал заявку на участие в игре
  И я нахожусь на странице "Личный кабинет"
  То должен увидеть "Предстоящие игры"
  И должен увидеть следующее:
     |  Предстоит игра Белые паруса   |
     |  Заявка подана                 | 
     |  Отозвать                      |
  Если иду по ссылке "Отозвать"
  То страница перегружается
  И должен увидеть "Подать заявку на регистрацию заново"
  Но не должен видеть "Отозвать"


Сценарий: Капитан отменяет регистрацию
  Допустим капитан Штурман подал заявку на участие в игре
  И автор подтвердил участие команды "Корабль" в игре "Белые паруса"
  И логинюсь как Штурман
  Если я нахожусь на странице "Личный кабинет"
  То должен увидеть следующее:
     |  Предстоящие игры              |
     |  Предстоит игра Белые паруса   |
     |  Отказаться                    |
  
  Если я нахожусь на странице "Комната команды"
  То должен увидеть следующее:
     |  Предстоящие игры              |
     |  Предстоит игра Белые паруса   |
     |  Отказаться                    |
  Если иду по ссылке "Отказаться"
  То страница перегружается
  И должен увидеть "Подать заявку на регистрацию заново"
  Но не должен видеть ссылку "Отказаться"

Сценарий: Капитан не может отменить регистрацию. Игра уже началась
  Допустим капитан "Штурман" зарегистрировал свою команду на участие в игре "Белые паруса"
  И игра "Белые паруса" уже начата
  И логинюсь как Штурман
  Если я нахожусь на странице "Личный кабинет"
  То должен увидеть следующее:
     | Текущие игры домена             |
     | Началась игра "Белые паруса"    |
     | Играть!                         |
  Но не должен видеть ссылку "Отказаться"
  Если я нахожусь на странице "Комната команды"
  То должен увидеть следующее:
     | Текущие игры домена             |
     | Началась игра "Белые паруса"    |
     | Играть!                         |
  Но не должен видеть ссылку "Отказаться"


Сценарий: Автор игры не видит команду которая отозвала заявку на  участие
   Допустим капитан Штурман подал заявку на участие в игре
   И команда "Корабль" отозвала заявку на участие в игре
   И я логинюсь как Костя 
   Если я захожу в профиль игры "Белые паруса"
   То должен увидеть "Заявки на регистрацию"
   И не должен видеть "Корабль"
   И должен увидеть "Участвуют команды"
   И не должен видеть "Корабль"


Сценарий: Автор игры не видит команду, которая отменила регистрацию
   Допустим капитан Штурман подал заявку на участие в игре
   И команда "Корабль" отозвала заявку на участие в игре
   И я логинюсь как Костя
   Если я захожу в профиль игры "Белые паруса"
   То должен увидеть "Заявки на регистрацию"
   И не должен видеть "Корабль"
   И должен увидеть "Участвуют команды"
   И не должен видеть "Корабль"
