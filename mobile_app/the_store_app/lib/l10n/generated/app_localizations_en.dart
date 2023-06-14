import 'app_localizations.dart';

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get loginByPhone => 'Login by phone';

  @override
  String get loginByEmail => 'Login by e-mail';

  @override
  String get loginBySocialNetwork => 'Login by social network';

  @override
  String get forgotPassword => 'Forgot password?';

  @override
  String get restorePassword => 'Restore password';

  @override
  String get logoutTitle => 'Do you realy\nwant to log out?';

  @override
  String get logoutYes => 'Yes';

  @override
  String get logoutNo => 'No';

  @override
  String get nameIsRequired => 'Name is required';

  @override
  String get technology => 'technology';

  @override
  String get byLoggingIn => 'By Logging In, I agree to the terms';

  @override
  String get password => 'Password';

  @override
  String get error => 'Error';

  @override
  String get wantGoToSiteNo => 'No';

  @override
  String get wantGoToSiteYes => 'Yes';

  @override
  String get ok => 'Ok';

  @override
  String get skip => 'Skip';

  @override
  String get email => 'E-mail';

  @override
  String get profile => 'Profile';

  @override
  String get yourEmail => 'Your e-mail';

  @override
  String get userAgreementTitle => 'User agreement';

  @override
  String get userAgreement => 'user agreement';

  @override
  String get and => ' and ';

  @override
  String get offerAgreement => 'offer contract';

  @override
  String get yourPhone => 'Your phone';

  @override
  String get sendCode => 'Send code';

  @override
  String get checkSms => 'Check sms-code';

  @override
  String get checkCart => 'ORDER VERIFICATION';

  @override
  String get weSentCodeViaSms => 'We have sent you a code via SMS. Enter it in the box below.';

  @override
  String get checkEmail => 'Check your email';

  @override
  String get weSentCodeViaEmail => 'We have sent you a code via email. Enter it in the box below.';

  @override
  String get weSentCode => 'We have sent you a code via SMS. Enter it in the box below.';

  @override
  String get resendCode => 'Resend code';

  @override
  String get resendCodeWait => 'Wait';

  @override
  String get resendCodeSec => 'sec';

  @override
  String get confirm => 'Confirm';

  @override
  String get personalData => 'Personal data';

  @override
  String get man => 'Man';

  @override
  String get woman => 'Woman';

  @override
  String get yourName => 'Your name';

  @override
  String get yourAge => 'Your age';

  @override
  String get over51 => 'over 51';

  @override
  String get goToScan => 'Go to scan';

  @override
  String get goToProducts => 'OPEN CATALOG';

  @override
  String get emptyBasket => 'The basket is still empty :(\n Waiting for you to fill it!';

  @override
  String minimalPrice(String moneyMin) {
    return 'Minimum order amount $moneyMin';
  }

  @override
  String expectedPrice(String moneyMin) {
    return 'Add products for another $moneyMin';
  }

  @override
  String discount(String moneyMin) {
    return 'Discount: $moneyMin';
  }

  @override
  String get description => 'Description';

  @override
  String get specifications => 'Specifications';

  @override
  String get choseCityName => 'Enter the name of the city';

  @override
  String get emptyProductsSearch => 'We can\'t find what you\'re looking for :(\nTry changing the request.';

  @override
  String get emptySearch => 'No products were found for your request';

  @override
  String get historySearch => 'Search history';

  @override
  String get clear => 'Clear';

  @override
  String get oftenSearch => 'Often looking for';

  @override
  String get toFavourites => 'ADD TO FAVORITES';

  @override
  String get inFavourites => 'FAVORITE';

  @override
  String get inBasket => 'IN BASKET';

  @override
  String get total => 'Total: ';

  @override
  String get promoCode => 'PROMO CODE';

  @override
  String get applyPromoCode => 'APPLY';

  @override
  String get weNeedThisData => 'We need this data in order to give you better sizing guidelines';

  @override
  String get models => 'Models';

  @override
  String get basket => 'Basket';

  @override
  String get catalog => 'Catalog';

  @override
  String get save => 'Save';

  @override
  String get youNeedToScan => 'You need to scan';

  @override
  String get aRoomWithUniformLighting => 'A room with uniform lighting';

  @override
  String get newNotCrumpledA4Sheet => 'New, not crumpled A4 sheet';

  @override
  String get newUpdateRespect => 'A new version of the STREET BEAT is available';

  @override
  String get smoothFloorDarkerThanA4Sheet => 'Smooth floor darker than A4 sheet';

  @override
  String get blackSocksOrTights => 'Black socks or tights';

  @override
  String get beforeScan => 'Before scan';

  @override
  String get wearBlackSocksOrTights => 'Wear black socks or tights';

  @override
  String get openMap => 'Open the map';

  @override
  String get openYourShinToTheKnee => 'Open your shin to the knee';

  @override
  String get placeYourFoot => 'Place your foot in the center of A4 paper along the long side (the foot should not go over the edges of the sheet) and do not move it';

  @override
  String get forAccurateScanning => 'For accurate scanning';

  @override
  String get freeUpSpace => 'Free up space around A4 sheet (remove foreign objects so that nothing bothers you)';

  @override
  String get doNotMoveYourFoot => 'Do not move your foot on A4 paper while scanning';

  @override
  String get downloadLastVersion => 'Download the latest version';

  @override
  String get downloadUpdate => 'Download update';

  @override
  String get shiftYourBody => 'Shift your body weight onto the foot you are scanning';

  @override
  String get scan => 'Scan';

  @override
  String get toScan => 'To scan, you need to photograph the foot from 5 angles, starting from 1';

  @override
  String get startScanning => 'Start scanning';

  @override
  String get start => 'Start';

  @override
  String get next => 'Next';

  @override
  String get footSelection => 'Foot selection';

  @override
  String get chooseTheFoot => 'Choose the foot with which it will be more convenient for you to start';

  @override
  String get scanLeftFoot => 'Scan the left foot';

  @override
  String get scanRightFoot => 'Scan the right foot';

  @override
  String get scanningWillStart => 'Scanning will start immediately after your choice';

  @override
  String get continueWithLeftFoot => 'Put the left foot on a paper, press the button and continue scanning';

  @override
  String get continueWithRightFoot => 'Put the right foot on a paper, press the button and continue scanning';

  @override
  String get clickIfYouWantToEdit => 'Click if you want to edit';

  @override
  String get findPerfectMath => 'Find your perfect match';

  @override
  String get whatIsYourName => 'What is your name?';

  @override
  String get modelsFrom => 'Models from';

  @override
  String get update => 'Update Scan';

  @override
  String get linearFootLength => 'Linear foot length';

  @override
  String get linearWidthOfFoot => 'Linear width of the foot';

  @override
  String get footGirthInBunches => 'Foot girth in bunches';

  @override
  String get liftingGirth => 'Lifting girth';

  @override
  String get left => 'Left';

  @override
  String get right => 'Right';

  @override
  String get parameters => 'Parameters';

  @override
  String get rescan => 'Rescan';

  @override
  String get modelNotBuilt => 'Model not built';

  @override
  String get errorWithModels => 'An error occurred while building. Re-scan';

  @override
  String get processing => 'Processing the photo...';

  @override
  String get makeModels => 'Your foot model is being built and will be ready in less than a minute';

  @override
  String get infoAbout => 'About developers';

  @override
  String get offerContract => 'Offer contract';

  @override
  String get settings => 'Settings';

  @override
  String get deliveryTerms => 'Delivery terms';

  @override
  String get historyOrders => 'History of orders';

  @override
  String get aboutDevelopers => 'About developers';

  @override
  String get noNetworkError => 'No network';

  @override
  String get unauthProfile => 'Register or login';

  @override
  String get unauthCatalog => 'Register or login';

  @override
  String get noModelCatalog => 'Scan your legs';

  @override
  String get wantScan => 'I want scan my legs!';

  @override
  String get searchCaps => 'SEARCH';

  @override
  String get search => 'Search';

  @override
  String get registerForBonus => 'Log in to use the bonus program';

  @override
  String get showFullCatalog => 'Show full catalog';

  @override
  String get filter => 'Filters';

  @override
  String get popular => 'Popular';

  @override
  String get sort => 'Sorting';

  @override
  String get showFullItems => 'Show all';

  @override
  String get cancel => 'cancel';

  @override
  String get possibleTypesDelivery => 'Delivery method';

  @override
  String get changeCity => 'CHANGE CITY';

  @override
  String get deliveryAddress => 'Delivery address';

  @override
  String get address => 'Address';

  @override
  String get feedbackCall => 'Request an operator call';

  @override
  String get comment => 'Here you can leave\ncomment\n(but this is optional)';

  @override
  String get payment => 'Payment method';

  @override
  String get orderAgreementPart0 => 'By clicking the button, you agree to';

  @override
  String get orderAgreementPart1 => 'the Company\'s Privacy Policy';

  @override
  String get orderAgreementPart2 => ' and ';

  @override
  String get orderAgreementPart3 => 'the Public Offer Agreement';

  @override
  String get street => 'Street, house, apartment';

  @override
  String get orderProcessing => 'Processing the order...';

  @override
  String get products => 'Products';

  @override
  String get delivery => 'Delivery';

  @override
  String get orderAvailableSoon => 'Your order will be processed soon';

  @override
  String get ordering => 'PLACE AN ORDER';

  @override
  String get orderingScreen => 'Order checkout';

  @override
  String get phone => 'Phone';

  @override
  String get required => 'This field must be filled in';

  @override
  String get fullname => 'Full name';

  @override
  String get forMen => 'Men';

  @override
  String get forWomen => 'Women';

  @override
  String get tighter => 'Tighter';

  @override
  String get freer => 'Freer';

  @override
  String get greatSize => 'Great';

  @override
  String get neuralNetwork => 'Neural network determined: good fit in all zones of both legs';

  @override
  String get favorite => 'To favorite';

  @override
  String get tobasket => 'TO BASKET';

  @override
  String get gender => 'Gender';

  @override
  String get aboutScanning => 'About scanning';

  @override
  String get mainOffice => 'Main Office';

  @override
  String get writeToTechSupport => 'Write to technical support';

  @override
  String get legalInfo => 'Legal information';

  @override
  String get loyaltyProgram => 'Loyalty program';

  @override
  String get loyaltyProgramDescription => 'Specify discounts and delivery conditions when confirming the order with the operator';

  @override
  String get addressInfo => 'Voronezh region, Voronezh city,\nTekstilshchikov street, 5B, \nindex 394026v';

  @override
  String get registerDescriptionShowCase => 'Register to try on shoes online';

  @override
  String get respect => 'STREET BEAT';

  @override
  String get requiredFields => 'required fields';

  @override
  String get confirmed => 'Confirmed';

  @override
  String get agreement => 'Agreement';

  @override
  String get incorrectPhone => 'Incorrect phone';

  @override
  String get incorrectEmail => 'Incorrect email';

  @override
  String get incorrectDate => 'Incorrect date';

  @override
  String get camera => 'Camera';

  @override
  String get gallery => 'Gallery';

  @override
  String get showCase => 'Show Case';

  @override
  String get favorites => 'Favorites';

  @override
  String get sendAppRating => 'Send Review';

  @override
  String get pleaseRateOurApp => 'Please, rate our app';

  @override
  String get goodRate => 'Good';

  @override
  String get badRate => 'Bad';

  @override
  String get perfect => 'Perfect';

  @override
  String get perfectFootSize => 'In our service, we calculate the degree of fit of the shoe to the foot and, based on machine learning algorithms, we display the gradations of sensations of your particular foot in the selected shoe model.';

  @override
  String get aboutService => 'Choosing the size, our service will tell you how suitable the option you have chosen and how the shoes will fit the foot.';

  @override
  String get aboutScanningAlgorithm => 'Our algorithm automatically detects two suitable sizes by enclosing them with a green border. The first will fit closer to your leg and the second will hold more loosely.';

  @override
  String get aboutScanningInfo => 'Thanks to our algorithm, you have a unique opportunity to appreciate the sensations Your feet in every shoe size, and make the final choice on your own according to how you prefer to wear shoes, denser or looser.';

  @override
  String get differentSizes => 'Each user has the parameters of each leg may differ, so the sensations in one and the same size may be different.';

  @override
  String get availableInOneProductShop => 'Available in 1 shop';

  @override
  String availableProductShopsCount(Object count) {
    return 'Available in $count shops';
  }

  @override
  String get all => 'All';

  @override
  String get allProducts => 'All products';

  @override
  String get infoDetail => 'Detail info';

  @override
  String get inShop => 'Go to shop';

  @override
  String get buyFavoriteMarket => 'Buy from your favorite marketplaces';

  @override
  String get buyShoesAtRespect => 'Buy shoes at STREET BEAT';

  @override
  String get prepositionWith => 'with';

  @override
  String get withService => 'service';

  @override
  String get tryOnOnline => 'try on online';

  @override
  String get doScan => 'Scan';

  @override
  String get scanAtRespect => 'Scan your feet at STREET BEAT stores';

  @override
  String get scanAtRespectDescription => 'Come and we will find the perfect shoes!';

  @override
  String get scaning => 'Scaning';

  @override
  String get aboutGoToScan => 'About go to scan';

  @override
  String get turnOnSound => 'Turn on the sound, there are voice prompts in the app';

  @override
  String get nothingToShow => 'Nothing to show';

  @override
  String get couldNotFindAnything => 'Couldn\'t find anything for your request';

  @override
  String get disableFilters => 'Disable filters';

  @override
  String get reset => 'Reset';

  @override
  String get allFilters => 'All filters';

  @override
  String get activeFilters => 'Active filters';

  @override
  String get showProducts => 'Show products';

  @override
  String get versionAbout => 'Application version';

  @override
  String get myInfo => 'My information';

  @override
  String get legModel3d => '3D leg model';

  @override
  String get aboutUs => 'About us';

  @override
  String get empty => 'There\'s nothing here yet';

  @override
  String get addToFavorites => 'To add a product to favorites, click on the heart in the product card';

  @override
  String get addFavorite => 'Product added to favorites';

  @override
  String get removeFavorite => 'The product was removed from favorites';

  @override
  String get errorFavorite => 'Couldn\'t change favorites';

  @override
  String get watchedRecently => 'Watched recently';

  @override
  String get recommended => 'Recommended products';

  @override
  String get exchange => 'Refund and Exchange';

  @override
  String get notificationHistory => 'Notification History';

  @override
  String get storeMap => 'Store map';

  @override
  String get scannerLocations => 'Scanner locations';

  @override
  String get emptyProducts => 'We\'re sorry, but we couldn\'t \n find anything for your request';

  @override
  String get lookSomethingElse => 'Look for something else';

  @override
  String get appVersion => 'Version:';

  @override
  String get appUpdate => 'App update';

  @override
  String get loginOrRegister => 'Login / Register';

  @override
  String get serverVersion => 'Server version';

  @override
  String get scanServerVersion => 'Scan server version';

  @override
  String get testAccount => 'Test account';

  @override
  String get smsCodeInsert => 'Code insert automaticly.';

  @override
  String get noNetwork => 'No network connection';

  @override
  String get howToScanLegs => 'How to scan legs';

  @override
  String get howToScanLegsText1 => 'Shift your body weight and bend the scanned leg at the knee';

  @override
  String get howToScanLegsText2 => 'Combine the frames with a sheet of paper in a circle';

  @override
  String get angleIndicator => 'Angle indicator';

  @override
  String get angleIndicatorText => 'Start scanning from the inside of the foot, as indicated by the flashing indicator.';

  @override
  String get leftFoot => 'Left foot';

  @override
  String get rightFoot => 'Right foot';

  @override
  String get flashing => 'flashing';

  @override
  String get publicOfferAgreement => 'publicOfferAgreement';

  @override
  String get finalPrice => 'Total:';

  @override
  String get unableToAddMoreProducts => 'Unable to add\n more products';

  @override
  String get itHasOnly => 'It has only';

  @override
  String get okay => 'Okay';

  @override
  String get promotionalCodeIsApplied => 'Promotional code is applied:';

  @override
  String get bonuses => 'Bonuses';

  @override
  String get willReceive => 'Will receive';

  @override
  String get availableForDebiting => 'Available for debiting';

  @override
  String get willBeDebited => 'Will be debited';

  @override
  String get cancelCaps => 'CANCEL';

  @override
  String get writeOffBonusesForPurchase => 'WRITE OFF BONUSES FOR PURCHASE';

  @override
  String get isNotAvailable => 'Is not available';

  @override
  String get order => 'Order';

  @override
  String get forFree => 'For free';

  @override
  String get orderDate => 'Order date';

  @override
  String get orderStatus => 'Order status:';

  @override
  String get paymentStatus => 'Payment status';

  @override
  String get payForTheOrder => 'PAY FOR THE ORDER';

  @override
  String get repeatAnOrder => 'REPEAT THE ORDER';

  @override
  String get myOrders => 'My Orders';

  @override
  String get youHaventBoughtAnythingYet => 'You haven’t bought anything yet';

  @override
  String get goToShopping => 'GO TO SHOPPING';

  @override
  String get recommendedProducts => 'Recommended products';

  @override
  String get youDontHaveAnyNewNotifications => 'You don\'t have any new notifications';

  @override
  String get goToTheShowcase => 'Go to the showcase';

  @override
  String get customUrl => 'Кастомный url';

  @override
  String get doYouReallyWantToLogOutOfYourProfile => 'Do you really want to log out of your profile?';

  @override
  String get exit => 'EXIT';

  @override
  String get doYouReallyWantToDeleteYourAccount => 'Do you really want to delete your account?';

  @override
  String get delete => 'DELETE';

  @override
  String get deleteYourAccount => 'Delete your account';

  @override
  String get loyaltyProgramStatus => 'Loyalty Program Status';

  @override
  String get myBalance => 'My balance';

  @override
  String get bonusesOf => 'bonuses';

  @override
  String get deliveryAndPayment => 'Delivery and payment';

  @override
  String get messageSMS => 'Message SMS';

  @override
  String get messageEmail => 'Message Email';

  @override
  String get getTheCode => 'Get the code';

  @override
  String get login => 'Login';

  @override
  String get thankYou => 'Thank you';

  @override
  String get yourOrderHasBeenConfirmed => 'Your order has been confirmed';

  @override
  String get orderDetailsCanBeFoundInTheProfile => 'Order details can be found in the profile';

  @override
  String get toOrder => 'To order';

  @override
  String get paymentNotMadePleasePayTheOrder => 'Payment not made, please pay the order';

  @override
  String get pleaseSelectOneOfThem => 'Please select one of them';

  @override
  String get noResult => 'no result';

  @override
  String get sendYourDeliveryTime => 'Send your delivery time';

  @override
  String get selectTheOption => 'Select the option';

  @override
  String get settelment => 'settelment';

  @override
  String get theDeliveryDate => 'The delivery date';

  @override
  String get select => 'Select';

  @override
  String get post => 'Post';

  @override
  String get selectAAddressOfThatStore => 'Select a address of that store';

  @override
  String get selectAFacility => 'Select a facility';

  @override
  String get selectTheAddressOfThePickupPoint => 'Select the address of the pickup point';

  @override
  String get myDetails => 'My details';

  @override
  String get nameAndSurname => 'Name and surname';

  @override
  String get birthday => 'Birthday';

  @override
  String get selectDate => 'Select date';

  @override
  String get male => 'male';

  @override
  String get female => 'female';

  @override
  String get callAConsultant => 'CALL A CONSULTANT';

  @override
  String get whatsapp => 'WRITE TO WHATSAPP';

  @override
  String get onlinePayment => 'Online payment';

  @override
  String get show => 'Show';

  @override
  String get product => 'product';

  @override
  String get product5 => 'products';

  @override
  String get product2 => 'products';

  @override
  String get workInProgress => 'This page will be available in production';

  @override
  String get sendCodeTimer => 'Send the code again via';

  @override
  String get checkEnterCode => 'Check the entered code or try';

  @override
  String get enter => 'LOGIN';

  @override
  String get rateApp => 'Please rate our app';

  @override
  String get whatImprove => 'Tell us what to improve?';

  @override
  String get yourComments => 'Your comment';

  @override
  String get sendComment => 'SEND';

  @override
  String get ascPrice => 'Ascending prices';

  @override
  String get descPrice => 'Descending prices';

  @override
  String get none => 'Sort';

  @override
  String get descDiscount => 'Discount';

  @override
  String get authRequired => 'To use the profile, you need to log in or register.';

  @override
  String get registration => 'Registration';

  @override
  String get userIsAlreadyExists => 'User with the same name already exists';

  @override
  String get userIsNotRegistered => 'This account does not exist.';

  @override
  String get blog => 'Blog';
}
