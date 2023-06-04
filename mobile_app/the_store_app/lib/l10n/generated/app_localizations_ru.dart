import 'app_localizations.dart';

/// The translations for Russian (`ru`).
class AppLocalizationsRu extends AppLocalizations {
  AppLocalizationsRu([String locale = 'ru']) : super(locale);

  @override
  String get loginByPhone => 'Войти с помощью телефона';

  @override
  String get loginByEmail => 'Войти с помощью e-mail';

  @override
  String get loginBySocialNetwork => 'Войти с помощью социальных сетей';

  @override
  String get forgotPassword => 'Забыли пароль?';

  @override
  String get restorePassword => 'Восстановление пароля';

  @override
  String get logoutTitle => 'Вы действительно хотите\nвыйти из аккаунта?';

  @override
  String get logoutYes => 'Да';

  @override
  String get logoutNo => 'Нет';

  @override
  String get nameIsRequired => 'Необходимо указать имя';

  @override
  String get technology => 'технология';

  @override
  String get byLoggingIn => 'Регистрируясь, я соглашаюсь с условиями';

  @override
  String get password => 'Пароль';

  @override
  String get error => 'Ошибка';

  @override
  String get wantGoToSiteNo => 'Нет';

  @override
  String get wantGoToSiteYes => 'Да';

  @override
  String get ok => 'ОК';

  @override
  String get skip => 'Пропустить';

  @override
  String get email => 'Email';

  @override
  String get profile => 'Профиль';

  @override
  String get yourEmail => 'Ваш e-mail';

  @override
  String get userAgreementTitle => 'Политика конфиденциальности';

  @override
  String get userAgreement => 'политики конфиденциальности';

  @override
  String get and => ' и ';

  @override
  String get offerAgreement => 'договором оферты';

  @override
  String get yourPhone => 'Ваш телефон';

  @override
  String get sendCode => 'Получить код';

  @override
  String get checkSms => 'Проверьте СМС-сообщения';

  @override
  String get checkCart => 'ПРОВЕРЯЕМ КОРЗИНУ';

  @override
  String get weSentCodeViaSms => 'Мы отправили вам код с помощью СМС. Введите его в поле ниже.';

  @override
  String get checkEmail => 'Проверьте свой email';

  @override
  String get weSentCodeViaEmail => 'Мы отправили вам код с помощью email. Введите его в поле ниже.';

  @override
  String get weSentCode => 'Мы отправили вам код по SMS. Введите его в поле ниже.';

  @override
  String get resendCode => 'Получить код повторно';

  @override
  String get resendCodeWait => 'Подождите';

  @override
  String get resendCodeSec => 'сек.';

  @override
  String get confirm => 'Подтвердить';

  @override
  String get personalData => 'Личные данные';

  @override
  String get man => 'Мужчина';

  @override
  String get woman => 'Женщина';

  @override
  String get yourName => 'Ваше имя';

  @override
  String get yourAge => 'Возраст';

  @override
  String get over51 => 'старше 51';

  @override
  String get goToScan => 'Перейти к сканированию';

  @override
  String get goToProducts => 'ПЕРЕЙТИ К ТОВАРАМ';

  @override
  String get emptyBasket => 'Корзина пока пустая :( \n Ждем, когда ты ее наполнишь!';

  @override
  String minimalPrice(String moneyMin) {
    return 'Минимальная сумма заказа $moneyMin';
  }

  @override
  String expectedPrice(String moneyMin) {
    return 'Добавьте товаров еще на $moneyMin';
  }

  @override
  String discount(String moneyMin) {
    return 'Скидка: $moneyMin';
  }

  @override
  String get description => 'Описание';

  @override
  String get specifications => 'Характеристики';

  @override
  String get choseCityName => 'Введите название города';

  @override
  String get emptyProductsSearch => 'Мы не можем найти то, что ты ищешь :(\nПопробуй изменить запрос.';

  @override
  String get emptySearch => 'По Вашему запросу товаров не найдено';

  @override
  String get historySearch => 'История поиска';

  @override
  String get clear => 'Очистить';

  @override
  String get oftenSearch => 'Часто ищут';

  @override
  String get toFavourites => 'В ИЗБРАННОЕ';

  @override
  String get inFavourites => 'В ИЗБРАННОМ';

  @override
  String get inBasket => 'В КОРЗИНЕ';

  @override
  String get total => 'Итого: ';

  @override
  String get promoCode => 'ПРОМОКОД';

  @override
  String get applyPromoCode => 'ПРИМЕНИТЬ';

  @override
  String get weNeedThisData => 'Эти данные нужны нам для того, чтобы давать вам более качественные рекомендации по выбору размера';

  @override
  String get models => '3D Модель';

  @override
  String get basket => 'Корзина';

  @override
  String get catalog => 'Каталог';

  @override
  String get save => 'Сохранить';

  @override
  String get youNeedToScan => 'Для сканирования понадобятся';

  @override
  String get aRoomWithUniformLighting => 'Помещение с равномерным освещением';

  @override
  String get newNotCrumpledA4Sheet => 'Новый, не мятый лист А4';

  @override
  String get newUpdateRespect => 'Вышло новое обновление приложения STREET BEAT';

  @override
  String get smoothFloorDarkerThanA4Sheet => 'Ровный пол темнее листа А4';

  @override
  String get blackSocksOrTights => 'Чёрные носки или колготки';

  @override
  String get beforeScan => 'Перед сканированием';

  @override
  String get wearBlackSocksOrTights => 'Наденьте чёрные высокие носки или колготки';

  @override
  String get openMap => 'Открыть карту';

  @override
  String get openYourShinToTheKnee => 'Откройте голень до колена';

  @override
  String get placeYourFoot => 'Поставьте ногу по центру листа A4 вдоль длинной стороны (стопа не должна выходить за края листа) и не шевелите ей';

  @override
  String get forAccurateScanning => 'Для точного сканирования';

  @override
  String get freeUpSpace => 'Освободите пространство вокруг листа А4 (уберите посторонние предметы, чтобы Вам ничего не мешало)';

  @override
  String get doNotMoveYourFoot => 'Во время сканирования не шевелите стопой, стоящей на листе А4';

  @override
  String get downloadLastVersion => 'Скачайте последнюю версию';

  @override
  String get downloadUpdate => 'Скачать обновление';

  @override
  String get shiftYourBody => 'Перенесите вес тела на сканируемую ногу';

  @override
  String get scan => 'Сканирование';

  @override
  String get toScan => 'Для сканирования необходимо сфотографировать стопу с 5 ракурсов, начиная с 1';

  @override
  String get startScanning => 'Начать сканирование';

  @override
  String get start => 'Начать';

  @override
  String get next => 'Далее';

  @override
  String get footSelection => 'Выбор ноги';

  @override
  String get chooseTheFoot => 'Выберите ногу, с которой вам будет удобнее начать';

  @override
  String get scanLeftFoot => 'Отсканируйте левую ногу';

  @override
  String get scanRightFoot => 'Отсканируйте правую ногу';

  @override
  String get scanningWillStart => 'Сканирование начнётся сразу после вашего выбора';

  @override
  String get continueWithLeftFoot => 'Поставьте левую ногу на бумагу, нажмите кнопку и продолжайте сканирование.';

  @override
  String get continueWithRightFoot => 'Поставьте правую ногу на бумагу, нажмите кнопку и продолжайте сканирование.';

  @override
  String get clickIfYouWantToEdit => 'Нажмите, чтобы изменить';

  @override
  String get findPerfectMath => 'Найди свою идеальную пару';

  @override
  String get whatIsYourName => 'Как вас зовут?';

  @override
  String get modelsFrom => 'Модель построена';

  @override
  String get update => 'Обновить сканирование';

  @override
  String get linearFootLength => 'Линейная длина стопы';

  @override
  String get linearWidthOfFoot => 'Линейная ширина стопы';

  @override
  String get footGirthInBunches => 'Обхват стопы в пучках';

  @override
  String get liftingGirth => 'Обхват в подъёме';

  @override
  String get left => 'Левая';

  @override
  String get right => 'Правая';

  @override
  String get parameters => 'Параметры (мм)';

  @override
  String get rescan => 'Повторить сканирование';

  @override
  String get modelNotBuilt => 'Модель не построена';

  @override
  String get errorWithModels => 'При построении возникла ошибка.\nПовторите сканирование';

  @override
  String get processing => 'Обрабатываем фото...';

  @override
  String get makeModels => 'Модель ваших ног строится и будет готова\nменее чем через минуту';

  @override
  String get infoAbout => 'О разработчиках';

  @override
  String get offerContract => 'Договор оферты';

  @override
  String get settings => 'Настройки';

  @override
  String get deliveryTerms => 'Условия доставки';

  @override
  String get historyOrders => 'История заказов';

  @override
  String get aboutDevelopers => 'Информация о разработчиках';

  @override
  String get noNetworkError => 'Нет сети';

  @override
  String get unauthProfile => 'Для перехода в профиль войдите или зарегистрируйтесь';

  @override
  String get unauthCatalog => 'Online примерка будет доступна после сканирования ног и регистрации';

  @override
  String get noModelCatalog => 'Scan your legs';

  @override
  String get wantScan => 'Хочу сделать сканирование!';

  @override
  String get searchCaps => 'ПОИСК';

  @override
  String get search => 'Поиск';

  @override
  String get registerForBonus => 'Войдите, чтобы воспользоваться бонусной программой ';

  @override
  String get showFullCatalog => 'Показать весь каталог';

  @override
  String get filter => 'Фильтры';

  @override
  String get popular => 'По популярности';

  @override
  String get sort => 'Сортировка товаров';

  @override
  String get showFullItems => 'Показать всё';

  @override
  String get cancel => 'отменить';

  @override
  String get possibleTypesDelivery => 'Cпособ доставки';

  @override
  String get changeCity => 'УКАЗАТЬ ДРУГОЙ ГОРОД';

  @override
  String get deliveryAddress => 'Адрес доставки';

  @override
  String get address => 'Адрес';

  @override
  String get feedbackCall => 'Нужен звонок оператора';

  @override
  String get comment => 'Здесь можно оставить \nкомментарий\n(но это необязательно)';

  @override
  String get payment => 'Способ оплаты';

  @override
  String get orderAgreementPart0 => 'Нажимая кнопку, Вы соглашаетесь c ';

  @override
  String get orderAgreementPart1 => 'Политикой конфиденциальности Компании';

  @override
  String get orderAgreementPart2 => ' и ';

  @override
  String get orderAgreementPart3 => 'Договором публичной оферты';

  @override
  String get street => 'Улица, дом, квартира';

  @override
  String get orderProcessing => 'Обрабатываем заказ...';

  @override
  String get products => 'Товары';

  @override
  String get delivery => 'Доставка';

  @override
  String get orderAvailableSoon => 'Ваш заказ скоро поступит в обработку';

  @override
  String get ordering => 'ОФОРМИТЬ ЗАКАЗ';

  @override
  String get orderingScreen => 'Оформление заказа';

  @override
  String get phone => 'Телефон';

  @override
  String get required => 'Это поле необходимо заполнить';

  @override
  String get fullname => 'Полное имя';

  @override
  String get forMen => 'Мужчинам';

  @override
  String get forWomen => 'Женщинам';

  @override
  String get tighter => 'Плотнее';

  @override
  String get freer => 'Свободнее';

  @override
  String get greatSize => 'Отлично';

  @override
  String get neuralNetwork => 'Нейросеть определила: хорошее прилегание во всех зонах обеих ног';

  @override
  String get favorite => 'В избранное';

  @override
  String get tobasket => 'В корзину';

  @override
  String get gender => 'Пол';

  @override
  String get aboutScanning => 'Информация о сканировании';

  @override
  String get mainOffice => 'Главный офис';

  @override
  String get writeToTechSupport => 'Написать в техподдержку';

  @override
  String get legalInfo => 'Юридическая финормация';

  @override
  String get loyaltyProgram => 'Программа лояльности';

  @override
  String get loyaltyProgramDescription => 'Скидки и условия доставки уточняйте при подтверждении заказа у оператора';

  @override
  String get addressInfo => 'Воронежская область, г. Воронеж,\nул. Текстильщиков, 5Б,\nиндекс 394026';

  @override
  String get registerDescriptionShowCase => 'Зарегистрируйся, чтобы примерить обувь онлайн.';

  @override
  String get respect => 'STREET BEAT';

  @override
  String get requiredFields => 'поля обязательные для заполнения';

  @override
  String get confirmed => 'Подтверждено';

  @override
  String get agreement => 'Соглашение';

  @override
  String get incorrectPhone => 'Некорректный телефон';

  @override
  String get incorrectEmail => 'Некорректный email';

  @override
  String get incorrectDate => 'Incorrect date';

  @override
  String get camera => 'Камера';

  @override
  String get gallery => 'Галерея';

  @override
  String get showCase => 'Витрина';

  @override
  String get favorites => 'Избранное';

  @override
  String get sendAppRating => 'Отправить отзыв';

  @override
  String get pleaseRateOurApp => 'Вам нравится\nнаше приложение?';

  @override
  String get goodRate => 'Хорошо';

  @override
  String get badRate => 'Плохо';

  @override
  String get perfect => 'Отлично';

  @override
  String get perfectFootSize => 'В нашем сервисе мы рассчитываем степень прилегания обуви к ноге и на основании алгоритмов машинного обучения выводим градации ощущений именно Вашей ноги в выбранной модели обуви.';

  @override
  String get aboutService => 'Выбирая размер, наш сервис подскажет насколько  подходит выбранный Вами вариант и как обувь будет прилегать к ноге.';

  @override
  String get aboutScanningAlgorithm => 'Наш алгоритм автоматически определяет два подходящих размера обводя их зеленой рамкой. Первый будет плотнее прилегать к Вашей ноге а второй держаться свободнее.';

  @override
  String get aboutScanningInfo => 'Благодаря нашему алгоритму у Вас есть уникальная возможность оценить, ощущения Ваших ног в каждом размере обуви, и самостоятельно сделать окончательный выбор с учетом того, как Вы предпочитаете носить обувь, плотнее или свободнее.';

  @override
  String get differentSizes => 'У каждого пользователя параметры каждой ноги может отличаться, поэтому ощущения в одном и том же размере могут быть разными.';

  @override
  String get availableInOneProductShop => 'Доступно в 1 мамркетплейсе';

  @override
  String availableProductShopsCount(Object count) {
    return 'Доступно в $count маркетплейсах';
  }

  @override
  String get all => 'Все';

  @override
  String get allProducts => 'Все товары';

  @override
  String get infoDetail => 'Инфо о товаре';

  @override
  String get inShop => 'В магазин';

  @override
  String get buyFavoriteMarket => 'Покупайте в любимых маркетплейсах';

  @override
  String get buyShoesAtRespect => 'Покупайте обувь в STREET BEAT';

  @override
  String get prepositionWith => 'с';

  @override
  String get withService => 'помощью сервиса';

  @override
  String get tryOnOnline => 'примеряйте online';

  @override
  String get doScan => 'Сканировать';

  @override
  String get scanAtRespect => 'Сканируй ноги в магазинах STREET BEAT';

  @override
  String get scanAtRespectDescription => 'Приходите, и мы подберем идеальную обувь!';

  @override
  String get scaning => 'Сканирование';

  @override
  String get aboutGoToScan => 'Пройти сканирование';

  @override
  String get turnOnSound => 'Включите звук, в приложении есть голосовые подсказки';

  @override
  String get nothingToShow => 'Ничего не найдено';

  @override
  String get couldNotFindAnything => 'Ничего не смогли найти по вашему запросу';

  @override
  String get disableFilters => 'Отключить фильтры';

  @override
  String get reset => 'Сбросить';

  @override
  String get allFilters => 'Все фильтры';

  @override
  String get activeFilters => 'Активные фильтры';

  @override
  String get showProducts => 'Показать товары';

  @override
  String get versionAbout => 'Версия приложения';

  @override
  String get myInfo => 'Моя информация';

  @override
  String get legModel3d => '3D модель ног';

  @override
  String get aboutUs => 'О нас';

  @override
  String get empty => 'Здесь пока ничего нет';

  @override
  String get addToFavorites => 'Чтобы добавить товар в избранное, нажмите на сердечко в карточке товара';

  @override
  String get addFavorite => 'Товар добавлен в избранное';

  @override
  String get removeFavorite => 'Товар удален из избранного';

  @override
  String get errorFavorite => 'Не удалось изменить избранное';

  @override
  String get watchedRecently => 'Вы недавно смотрели';

  @override
  String get recommended => 'Рекомендуемые товары';

  @override
  String get exchange => 'Возрат и обмен';

  @override
  String get notificationHistory => 'История уведомлений';

  @override
  String get storeMap => 'Карта магазинов';

  @override
  String get scannerLocations => 'Места сканирования';

  @override
  String get emptyProducts => 'Нам жаль, но мы ничего не смогли \n найти по вашему запросу';

  @override
  String get lookSomethingElse => 'Поискать что-то другое';

  @override
  String get appVersion => 'Версия:';

  @override
  String get appUpdate => 'Обновление приложения';

  @override
  String get loginOrRegister => 'Войти / Зарегистрироваться';

  @override
  String get serverVersion => 'Версия сервера';

  @override
  String get scanServerVersion => 'Scan server version';

  @override
  String get testAccount => 'Test account';

  @override
  String get smsCodeInsert => 'Код был вставлен автоматически.';

  @override
  String get noNetwork => 'Нет подключения к сети';

  @override
  String get howToScanLegs => 'Как сканировать ноги';

  @override
  String get howToScanLegsText1 => 'Перенесите вес тела и согните сканируемую ногу в колене';

  @override
  String get howToScanLegsText2 => 'Совмещайте рамки с листом бумаги по кругу';

  @override
  String get angleIndicator => 'Индикатор ракурса';

  @override
  String get angleIndicatorText => 'Начните сканирование с внутренней стороны стопы, как показывает мигающий индикатор.';

  @override
  String get leftFoot => 'Левая нога';

  @override
  String get rightFoot => 'Правая нога';

  @override
  String get flashing => 'мигающий';

  @override
  String get publicOfferAgreement => 'publicOfferAgreement';

  @override
  String get finalPrice => 'Итого';

  @override
  String get unableToAddMoreProducts => 'Невозможно добавить\n больше товаров';

  @override
  String get itHasOnly => 'В наличии только';

  @override
  String get okay => 'Понятно';

  @override
  String get promotionalCodeIsApplied => 'Применен промокод:';

  @override
  String get bonuses => 'Бонусы';

  @override
  String get willReceive => 'Будет начисленно';

  @override
  String get availableForDebiting => 'Доступно для списания';

  @override
  String get willBeDebited => 'Будет списано';

  @override
  String get cancelCaps => 'ОТМЕНИТЬ';

  @override
  String get writeOffBonusesForPurchase => 'СПИСАТЬ БОНУСЫ ЗА ПОКУПКУ';

  @override
  String get isNotAvailable => 'Нет в наличии';

  @override
  String get order => 'Заказ';

  @override
  String get forFree => 'Бесплатно';

  @override
  String get orderDate => 'Order date';

  @override
  String get orderStatus => 'Статус заказа:';

  @override
  String get paymentStatus => 'Статус оплаты';

  @override
  String get payForTheOrder => 'ОПЛАТИТЬ ЗАКАЗ';

  @override
  String get repeatAnOrder => 'ПОВТОРИТЬ ЗАКАЗ';

  @override
  String get myOrders => 'Мои заказы';

  @override
  String get youHaventBoughtAnythingYet => 'Вы ещё ничего не купили';

  @override
  String get goToShopping => 'ПЕРЕЙТИ К ПОКУПКАМ';

  @override
  String get recommendedProducts => 'Рекомендуемые товары';

  @override
  String get youDontHaveAnyNewNotifications => 'У вас нет новых уведомлений';

  @override
  String get goToTheShowcase => 'Перейти на витрину';

  @override
  String get customUrl => 'Кастомный url';

  @override
  String get doYouReallyWantToLogOutOfYourProfile => 'Вы действительно хотите выйти из профиля?';

  @override
  String get exit => 'ВЫЙТИ';

  @override
  String get doYouReallyWantToDeleteYourAccount => 'Вы действительно хотите удалить свой аккаунт?';

  @override
  String get delete => 'УДАЛИТЬ';

  @override
  String get deleteYourAccount => 'Удалить свой аккаунт';

  @override
  String get loyaltyProgramStatus => 'Статус программы лояльности';

  @override
  String get myBalance => 'Мой баланс';

  @override
  String get bonusesOf => 'бонусов';

  @override
  String get deliveryAndPayment => 'Доставка и оплата';

  @override
  String get messageSMS => 'Отправить смс';

  @override
  String get messageEmail => 'Отправить сообщение';

  @override
  String get getTheCode => 'Получить код';

  @override
  String get login => 'Войти';

  @override
  String get thankYou => 'Спасибо';

  @override
  String get yourOrderHasBeenConfirmed => 'Your order has been confirmed';

  @override
  String get orderDetailsCanBeFoundInTheProfile => 'Детали заказа находятся в профиле';

  @override
  String get toOrder => 'К заказу';

  @override
  String get paymentNotMadePleasePayTheOrder => 'Заказ не оплачен, пожалуйста оплатите заказ';

  @override
  String get pleaseSelectOneOfThem => 'Please select one of them';

  @override
  String get noResult => 'Нет результат';

  @override
  String get sendYourDeliveryTime => 'Укажите время доставки';

  @override
  String get selectTheOption => 'Select the option';

  @override
  String get settelment => 'Населенный пункт';

  @override
  String get theDeliveryDate => 'Дата доставки';

  @override
  String get select => 'Выбрать';

  @override
  String get post => 'Почта';

  @override
  String get selectAAddressOfThatStore => 'Выберите адрес магазина';

  @override
  String get selectAFacility => 'Выберите объект';

  @override
  String get selectTheAddressOfThePickupPoint => 'Выберите адрес пункта выдачи';

  @override
  String get myDetails => 'Мои данные';

  @override
  String get nameAndSurname => 'Имя и фамилия';

  @override
  String get birthday => 'день рождения';

  @override
  String get selectDate => 'Выберите дату';

  @override
  String get male => 'муж';

  @override
  String get female => 'жен';

  @override
  String get callAConsultant => 'ПОЗВОНИТЬ КОНСУЛЬТАНТУ';

  @override
  String get whatsapp => 'writeToWhatsApp';

  @override
  String get onlinePayment => 'Онлайн оплата';

  @override
  String get show => 'Показать';

  @override
  String get product => 'продукт';

  @override
  String get product5 => 'продуктов';

  @override
  String get product2 => 'продукта';

  @override
  String get workInProgress => 'Эта страница находится в разработке';

  @override
  String get sendCodeTimer => 'Отправить код повторно через';

  @override
  String get checkEnterCode => 'Проверьте введенный код или попробуйте';

  @override
  String get enter => 'ВОЙТИ';

  @override
  String get rateApp => 'Пожалуйста, оцените наше приложение';

  @override
  String get whatImprove => 'Расскажите, что улучшить?';

  @override
  String get yourComments => 'Ваш комментарий';

  @override
  String get sendComment => 'ОТПРАВИТЬ';

  @override
  String get ascPrice => 'По возрастанию цены';

  @override
  String get descPrice => 'По убыванию цены';

  @override
  String get none => 'Сортировать';

  @override
  String get descDiscount => 'По размеру скидки';

  @override
  String get authRequired => 'Чтобы воспользоваться профилем, Вам необходимо войти или зарегистрироваться.';

  @override
  String get registration => 'Регистрация';

  @override
  String get userIsAlreadyExists => 'Пользователь с таким именем уже существует';

  @override
  String get userIsNotRegistered => 'Данный пользователь не был зарегистрирован';

  @override
  String get blog => 'Блог';
}
