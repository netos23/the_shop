import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_ru.dart';

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'generated/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('ru')
  ];

  /// No description provided for @loginByPhone.
  ///
  /// In en, this message translates to:
  /// **'Login by phone'**
  String get loginByPhone;

  /// No description provided for @loginByEmail.
  ///
  /// In en, this message translates to:
  /// **'Login by e-mail'**
  String get loginByEmail;

  /// No description provided for @loginBySocialNetwork.
  ///
  /// In en, this message translates to:
  /// **'Login by social network'**
  String get loginBySocialNetwork;

  /// No description provided for @forgotPassword.
  ///
  /// In en, this message translates to:
  /// **'Forgot password?'**
  String get forgotPassword;

  /// No description provided for @restorePassword.
  ///
  /// In en, this message translates to:
  /// **'Restore password'**
  String get restorePassword;

  /// No description provided for @logoutTitle.
  ///
  /// In en, this message translates to:
  /// **'Do you realy\nwant to log out?'**
  String get logoutTitle;

  /// No description provided for @logoutYes.
  ///
  /// In en, this message translates to:
  /// **'Yes'**
  String get logoutYes;

  /// No description provided for @logoutNo.
  ///
  /// In en, this message translates to:
  /// **'No'**
  String get logoutNo;

  /// No description provided for @nameIsRequired.
  ///
  /// In en, this message translates to:
  /// **'Name is required'**
  String get nameIsRequired;

  /// No description provided for @technology.
  ///
  /// In en, this message translates to:
  /// **'technology'**
  String get technology;

  /// No description provided for @byLoggingIn.
  ///
  /// In en, this message translates to:
  /// **'By Logging In, I agree to the terms'**
  String get byLoggingIn;

  /// No description provided for @password.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get password;

  /// No description provided for @error.
  ///
  /// In en, this message translates to:
  /// **'Error'**
  String get error;

  /// No description provided for @wantGoToSiteNo.
  ///
  /// In en, this message translates to:
  /// **'No'**
  String get wantGoToSiteNo;

  /// No description provided for @wantGoToSiteYes.
  ///
  /// In en, this message translates to:
  /// **'Yes'**
  String get wantGoToSiteYes;

  /// No description provided for @ok.
  ///
  /// In en, this message translates to:
  /// **'Ok'**
  String get ok;

  /// No description provided for @skip.
  ///
  /// In en, this message translates to:
  /// **'Skip'**
  String get skip;

  /// No description provided for @email.
  ///
  /// In en, this message translates to:
  /// **'E-mail'**
  String get email;

  /// No description provided for @profile.
  ///
  /// In en, this message translates to:
  /// **'Profile'**
  String get profile;

  /// No description provided for @yourEmail.
  ///
  /// In en, this message translates to:
  /// **'Your e-mail'**
  String get yourEmail;

  /// No description provided for @userAgreementTitle.
  ///
  /// In en, this message translates to:
  /// **'User agreement'**
  String get userAgreementTitle;

  /// No description provided for @userAgreement.
  ///
  /// In en, this message translates to:
  /// **'user agreement'**
  String get userAgreement;

  /// No description provided for @and.
  ///
  /// In en, this message translates to:
  /// **' and '**
  String get and;

  /// No description provided for @offerAgreement.
  ///
  /// In en, this message translates to:
  /// **'offer contract'**
  String get offerAgreement;

  /// No description provided for @yourPhone.
  ///
  /// In en, this message translates to:
  /// **'Your phone'**
  String get yourPhone;

  /// No description provided for @sendCode.
  ///
  /// In en, this message translates to:
  /// **'Send code'**
  String get sendCode;

  /// No description provided for @checkSms.
  ///
  /// In en, this message translates to:
  /// **'Check sms-code'**
  String get checkSms;

  /// No description provided for @checkCart.
  ///
  /// In en, this message translates to:
  /// **'ORDER VERIFICATION'**
  String get checkCart;

  /// No description provided for @weSentCodeViaSms.
  ///
  /// In en, this message translates to:
  /// **'We have sent you a code via SMS. Enter it in the box below.'**
  String get weSentCodeViaSms;

  /// No description provided for @checkEmail.
  ///
  /// In en, this message translates to:
  /// **'Check your email'**
  String get checkEmail;

  /// No description provided for @weSentCodeViaEmail.
  ///
  /// In en, this message translates to:
  /// **'We have sent you a code via email. Enter it in the box below.'**
  String get weSentCodeViaEmail;

  /// No description provided for @weSentCode.
  ///
  /// In en, this message translates to:
  /// **'We have sent you a code via SMS. Enter it in the box below.'**
  String get weSentCode;

  /// No description provided for @resendCode.
  ///
  /// In en, this message translates to:
  /// **'Resend code'**
  String get resendCode;

  /// No description provided for @resendCodeWait.
  ///
  /// In en, this message translates to:
  /// **'Wait'**
  String get resendCodeWait;

  /// No description provided for @resendCodeSec.
  ///
  /// In en, this message translates to:
  /// **'sec'**
  String get resendCodeSec;

  /// No description provided for @confirm.
  ///
  /// In en, this message translates to:
  /// **'Confirm'**
  String get confirm;

  /// No description provided for @personalData.
  ///
  /// In en, this message translates to:
  /// **'Personal data'**
  String get personalData;

  /// No description provided for @man.
  ///
  /// In en, this message translates to:
  /// **'Man'**
  String get man;

  /// No description provided for @woman.
  ///
  /// In en, this message translates to:
  /// **'Woman'**
  String get woman;

  /// No description provided for @yourName.
  ///
  /// In en, this message translates to:
  /// **'Your name'**
  String get yourName;

  /// No description provided for @yourAge.
  ///
  /// In en, this message translates to:
  /// **'Your age'**
  String get yourAge;

  /// No description provided for @over51.
  ///
  /// In en, this message translates to:
  /// **'over 51'**
  String get over51;

  /// No description provided for @goToScan.
  ///
  /// In en, this message translates to:
  /// **'Go to scan'**
  String get goToScan;

  /// No description provided for @goToProducts.
  ///
  /// In en, this message translates to:
  /// **'OPEN CATALOG'**
  String get goToProducts;

  /// No description provided for @emptyBasket.
  ///
  /// In en, this message translates to:
  /// **'The basket is still empty :(\n Waiting for you to fill it!'**
  String get emptyBasket;

  /// No description provided for @minimalPrice.
  ///
  /// In en, this message translates to:
  /// **'Minimum order amount {moneyMin}'**
  String minimalPrice(String moneyMin);

  /// No description provided for @expectedPrice.
  ///
  /// In en, this message translates to:
  /// **'Add products for another {moneyMin}'**
  String expectedPrice(String moneyMin);

  /// No description provided for @discount.
  ///
  /// In en, this message translates to:
  /// **'Discount: {moneyMin}'**
  String discount(String moneyMin);

  /// No description provided for @description.
  ///
  /// In en, this message translates to:
  /// **'Description'**
  String get description;

  /// No description provided for @specifications.
  ///
  /// In en, this message translates to:
  /// **'Specifications'**
  String get specifications;

  /// No description provided for @choseCityName.
  ///
  /// In en, this message translates to:
  /// **'Enter the name of the city'**
  String get choseCityName;

  /// No description provided for @emptyProductsSearch.
  ///
  /// In en, this message translates to:
  /// **'We can\'t find what you\'re looking for :(\nTry changing the request.'**
  String get emptyProductsSearch;

  /// No description provided for @emptySearch.
  ///
  /// In en, this message translates to:
  /// **'No products were found for your request'**
  String get emptySearch;

  /// No description provided for @historySearch.
  ///
  /// In en, this message translates to:
  /// **'Search history'**
  String get historySearch;

  /// No description provided for @clear.
  ///
  /// In en, this message translates to:
  /// **'Clear'**
  String get clear;

  /// No description provided for @oftenSearch.
  ///
  /// In en, this message translates to:
  /// **'Often looking for'**
  String get oftenSearch;

  /// No description provided for @toFavourites.
  ///
  /// In en, this message translates to:
  /// **'ADD TO FAVORITES'**
  String get toFavourites;

  /// No description provided for @inFavourites.
  ///
  /// In en, this message translates to:
  /// **'FAVORITE'**
  String get inFavourites;

  /// No description provided for @inBasket.
  ///
  /// In en, this message translates to:
  /// **'IN BASKET'**
  String get inBasket;

  /// No description provided for @total.
  ///
  /// In en, this message translates to:
  /// **'Total: '**
  String get total;

  /// No description provided for @promoCode.
  ///
  /// In en, this message translates to:
  /// **'PROMO CODE'**
  String get promoCode;

  /// No description provided for @applyPromoCode.
  ///
  /// In en, this message translates to:
  /// **'APPLY'**
  String get applyPromoCode;

  /// No description provided for @weNeedThisData.
  ///
  /// In en, this message translates to:
  /// **'We need this data in order to give you better sizing guidelines'**
  String get weNeedThisData;

  /// No description provided for @models.
  ///
  /// In en, this message translates to:
  /// **'Models'**
  String get models;

  /// No description provided for @basket.
  ///
  /// In en, this message translates to:
  /// **'Basket'**
  String get basket;

  /// No description provided for @catalog.
  ///
  /// In en, this message translates to:
  /// **'Catalog'**
  String get catalog;

  /// No description provided for @save.
  ///
  /// In en, this message translates to:
  /// **'Save'**
  String get save;

  /// No description provided for @youNeedToScan.
  ///
  /// In en, this message translates to:
  /// **'You need to scan'**
  String get youNeedToScan;

  /// No description provided for @aRoomWithUniformLighting.
  ///
  /// In en, this message translates to:
  /// **'A room with uniform lighting'**
  String get aRoomWithUniformLighting;

  /// No description provided for @newNotCrumpledA4Sheet.
  ///
  /// In en, this message translates to:
  /// **'New, not crumpled A4 sheet'**
  String get newNotCrumpledA4Sheet;

  /// No description provided for @newUpdateRespect.
  ///
  /// In en, this message translates to:
  /// **'A new version of the STREET BEAT is available'**
  String get newUpdateRespect;

  /// No description provided for @smoothFloorDarkerThanA4Sheet.
  ///
  /// In en, this message translates to:
  /// **'Smooth floor darker than A4 sheet'**
  String get smoothFloorDarkerThanA4Sheet;

  /// No description provided for @blackSocksOrTights.
  ///
  /// In en, this message translates to:
  /// **'Black socks or tights'**
  String get blackSocksOrTights;

  /// No description provided for @beforeScan.
  ///
  /// In en, this message translates to:
  /// **'Before scan'**
  String get beforeScan;

  /// No description provided for @wearBlackSocksOrTights.
  ///
  /// In en, this message translates to:
  /// **'Wear black socks or tights'**
  String get wearBlackSocksOrTights;

  /// No description provided for @openMap.
  ///
  /// In en, this message translates to:
  /// **'Open the map'**
  String get openMap;

  /// No description provided for @openYourShinToTheKnee.
  ///
  /// In en, this message translates to:
  /// **'Open your shin to the knee'**
  String get openYourShinToTheKnee;

  /// No description provided for @placeYourFoot.
  ///
  /// In en, this message translates to:
  /// **'Place your foot in the center of A4 paper along the long side (the foot should not go over the edges of the sheet) and do not move it'**
  String get placeYourFoot;

  /// No description provided for @forAccurateScanning.
  ///
  /// In en, this message translates to:
  /// **'For accurate scanning'**
  String get forAccurateScanning;

  /// No description provided for @freeUpSpace.
  ///
  /// In en, this message translates to:
  /// **'Free up space around A4 sheet (remove foreign objects so that nothing bothers you)'**
  String get freeUpSpace;

  /// No description provided for @doNotMoveYourFoot.
  ///
  /// In en, this message translates to:
  /// **'Do not move your foot on A4 paper while scanning'**
  String get doNotMoveYourFoot;

  /// No description provided for @downloadLastVersion.
  ///
  /// In en, this message translates to:
  /// **'Download the latest version'**
  String get downloadLastVersion;

  /// No description provided for @downloadUpdate.
  ///
  /// In en, this message translates to:
  /// **'Download update'**
  String get downloadUpdate;

  /// No description provided for @shiftYourBody.
  ///
  /// In en, this message translates to:
  /// **'Shift your body weight onto the foot you are scanning'**
  String get shiftYourBody;

  /// No description provided for @scan.
  ///
  /// In en, this message translates to:
  /// **'Scan'**
  String get scan;

  /// No description provided for @toScan.
  ///
  /// In en, this message translates to:
  /// **'To scan, you need to photograph the foot from 5 angles, starting from 1'**
  String get toScan;

  /// No description provided for @startScanning.
  ///
  /// In en, this message translates to:
  /// **'Start scanning'**
  String get startScanning;

  /// No description provided for @start.
  ///
  /// In en, this message translates to:
  /// **'Start'**
  String get start;

  /// No description provided for @next.
  ///
  /// In en, this message translates to:
  /// **'Next'**
  String get next;

  /// No description provided for @footSelection.
  ///
  /// In en, this message translates to:
  /// **'Foot selection'**
  String get footSelection;

  /// No description provided for @chooseTheFoot.
  ///
  /// In en, this message translates to:
  /// **'Choose the foot with which it will be more convenient for you to start'**
  String get chooseTheFoot;

  /// No description provided for @scanLeftFoot.
  ///
  /// In en, this message translates to:
  /// **'Scan the left foot'**
  String get scanLeftFoot;

  /// No description provided for @scanRightFoot.
  ///
  /// In en, this message translates to:
  /// **'Scan the right foot'**
  String get scanRightFoot;

  /// No description provided for @scanningWillStart.
  ///
  /// In en, this message translates to:
  /// **'Scanning will start immediately after your choice'**
  String get scanningWillStart;

  /// No description provided for @continueWithLeftFoot.
  ///
  /// In en, this message translates to:
  /// **'Put the left foot on a paper, press the button and continue scanning'**
  String get continueWithLeftFoot;

  /// No description provided for @continueWithRightFoot.
  ///
  /// In en, this message translates to:
  /// **'Put the right foot on a paper, press the button and continue scanning'**
  String get continueWithRightFoot;

  /// No description provided for @clickIfYouWantToEdit.
  ///
  /// In en, this message translates to:
  /// **'Click if you want to edit'**
  String get clickIfYouWantToEdit;

  /// No description provided for @findPerfectMath.
  ///
  /// In en, this message translates to:
  /// **'Find your perfect match'**
  String get findPerfectMath;

  /// No description provided for @whatIsYourName.
  ///
  /// In en, this message translates to:
  /// **'What is your name?'**
  String get whatIsYourName;

  /// No description provided for @modelsFrom.
  ///
  /// In en, this message translates to:
  /// **'Models from'**
  String get modelsFrom;

  /// No description provided for @update.
  ///
  /// In en, this message translates to:
  /// **'Update Scan'**
  String get update;

  /// No description provided for @linearFootLength.
  ///
  /// In en, this message translates to:
  /// **'Linear foot length'**
  String get linearFootLength;

  /// No description provided for @linearWidthOfFoot.
  ///
  /// In en, this message translates to:
  /// **'Linear width of the foot'**
  String get linearWidthOfFoot;

  /// No description provided for @footGirthInBunches.
  ///
  /// In en, this message translates to:
  /// **'Foot girth in bunches'**
  String get footGirthInBunches;

  /// No description provided for @liftingGirth.
  ///
  /// In en, this message translates to:
  /// **'Lifting girth'**
  String get liftingGirth;

  /// No description provided for @left.
  ///
  /// In en, this message translates to:
  /// **'Left'**
  String get left;

  /// No description provided for @right.
  ///
  /// In en, this message translates to:
  /// **'Right'**
  String get right;

  /// No description provided for @parameters.
  ///
  /// In en, this message translates to:
  /// **'Parameters'**
  String get parameters;

  /// No description provided for @rescan.
  ///
  /// In en, this message translates to:
  /// **'Rescan'**
  String get rescan;

  /// No description provided for @modelNotBuilt.
  ///
  /// In en, this message translates to:
  /// **'Model not built'**
  String get modelNotBuilt;

  /// No description provided for @errorWithModels.
  ///
  /// In en, this message translates to:
  /// **'An error occurred while building. Re-scan'**
  String get errorWithModels;

  /// No description provided for @processing.
  ///
  /// In en, this message translates to:
  /// **'Processing the photo...'**
  String get processing;

  /// No description provided for @makeModels.
  ///
  /// In en, this message translates to:
  /// **'Your foot model is being built and will be ready in less than a minute'**
  String get makeModels;

  /// No description provided for @infoAbout.
  ///
  /// In en, this message translates to:
  /// **'About developers'**
  String get infoAbout;

  /// No description provided for @offerContract.
  ///
  /// In en, this message translates to:
  /// **'Offer contract'**
  String get offerContract;

  /// No description provided for @settings.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settings;

  /// No description provided for @deliveryTerms.
  ///
  /// In en, this message translates to:
  /// **'Delivery terms'**
  String get deliveryTerms;

  /// No description provided for @historyOrders.
  ///
  /// In en, this message translates to:
  /// **'History of orders'**
  String get historyOrders;

  /// No description provided for @aboutDevelopers.
  ///
  /// In en, this message translates to:
  /// **'About developers'**
  String get aboutDevelopers;

  /// No description provided for @noNetworkError.
  ///
  /// In en, this message translates to:
  /// **'No network'**
  String get noNetworkError;

  /// No description provided for @unauthProfile.
  ///
  /// In en, this message translates to:
  /// **'Register or login'**
  String get unauthProfile;

  /// No description provided for @unauthCatalog.
  ///
  /// In en, this message translates to:
  /// **'Register or login'**
  String get unauthCatalog;

  /// No description provided for @noModelCatalog.
  ///
  /// In en, this message translates to:
  /// **'Scan your legs'**
  String get noModelCatalog;

  /// No description provided for @wantScan.
  ///
  /// In en, this message translates to:
  /// **'I want scan my legs!'**
  String get wantScan;

  /// No description provided for @searchCaps.
  ///
  /// In en, this message translates to:
  /// **'SEARCH'**
  String get searchCaps;

  /// No description provided for @search.
  ///
  /// In en, this message translates to:
  /// **'Search'**
  String get search;

  /// No description provided for @registerForBonus.
  ///
  /// In en, this message translates to:
  /// **'Log in to use the bonus program'**
  String get registerForBonus;

  /// No description provided for @showFullCatalog.
  ///
  /// In en, this message translates to:
  /// **'Show full catalog'**
  String get showFullCatalog;

  /// No description provided for @filter.
  ///
  /// In en, this message translates to:
  /// **'Filters'**
  String get filter;

  /// No description provided for @popular.
  ///
  /// In en, this message translates to:
  /// **'Popular'**
  String get popular;

  /// No description provided for @sort.
  ///
  /// In en, this message translates to:
  /// **'Sorting'**
  String get sort;

  /// No description provided for @showFullItems.
  ///
  /// In en, this message translates to:
  /// **'Show all'**
  String get showFullItems;

  /// No description provided for @cancel.
  ///
  /// In en, this message translates to:
  /// **'cancel'**
  String get cancel;

  /// No description provided for @possibleTypesDelivery.
  ///
  /// In en, this message translates to:
  /// **'Delivery method'**
  String get possibleTypesDelivery;

  /// No description provided for @changeCity.
  ///
  /// In en, this message translates to:
  /// **'CHANGE CITY'**
  String get changeCity;

  /// No description provided for @deliveryAddress.
  ///
  /// In en, this message translates to:
  /// **'Delivery address'**
  String get deliveryAddress;

  /// No description provided for @address.
  ///
  /// In en, this message translates to:
  /// **'Address'**
  String get address;

  /// No description provided for @feedbackCall.
  ///
  /// In en, this message translates to:
  /// **'Request an operator call'**
  String get feedbackCall;

  /// No description provided for @comment.
  ///
  /// In en, this message translates to:
  /// **'Here you can leave\ncomment\n(but this is optional)'**
  String get comment;

  /// No description provided for @payment.
  ///
  /// In en, this message translates to:
  /// **'Payment method'**
  String get payment;

  /// No description provided for @orderAgreementPart0.
  ///
  /// In en, this message translates to:
  /// **'By clicking the button, you agree to'**
  String get orderAgreementPart0;

  /// No description provided for @orderAgreementPart1.
  ///
  /// In en, this message translates to:
  /// **'the Company\'s Privacy Policy'**
  String get orderAgreementPart1;

  /// No description provided for @orderAgreementPart2.
  ///
  /// In en, this message translates to:
  /// **' and '**
  String get orderAgreementPart2;

  /// No description provided for @orderAgreementPart3.
  ///
  /// In en, this message translates to:
  /// **'the Public Offer Agreement'**
  String get orderAgreementPart3;

  /// No description provided for @street.
  ///
  /// In en, this message translates to:
  /// **'Street, house, apartment'**
  String get street;

  /// No description provided for @orderProcessing.
  ///
  /// In en, this message translates to:
  /// **'Processing the order...'**
  String get orderProcessing;

  /// No description provided for @products.
  ///
  /// In en, this message translates to:
  /// **'Products'**
  String get products;

  /// No description provided for @delivery.
  ///
  /// In en, this message translates to:
  /// **'Delivery'**
  String get delivery;

  /// No description provided for @orderAvailableSoon.
  ///
  /// In en, this message translates to:
  /// **'Your order will be processed soon'**
  String get orderAvailableSoon;

  /// No description provided for @ordering.
  ///
  /// In en, this message translates to:
  /// **'PLACE AN ORDER'**
  String get ordering;

  /// No description provided for @orderingScreen.
  ///
  /// In en, this message translates to:
  /// **'Order checkout'**
  String get orderingScreen;

  /// No description provided for @phone.
  ///
  /// In en, this message translates to:
  /// **'Phone'**
  String get phone;

  /// No description provided for @required.
  ///
  /// In en, this message translates to:
  /// **'This field must be filled in'**
  String get required;

  /// No description provided for @fullname.
  ///
  /// In en, this message translates to:
  /// **'Full name'**
  String get fullname;

  /// No description provided for @forMen.
  ///
  /// In en, this message translates to:
  /// **'Men'**
  String get forMen;

  /// No description provided for @forWomen.
  ///
  /// In en, this message translates to:
  /// **'Women'**
  String get forWomen;

  /// No description provided for @tighter.
  ///
  /// In en, this message translates to:
  /// **'Tighter'**
  String get tighter;

  /// No description provided for @freer.
  ///
  /// In en, this message translates to:
  /// **'Freer'**
  String get freer;

  /// No description provided for @greatSize.
  ///
  /// In en, this message translates to:
  /// **'Great'**
  String get greatSize;

  /// No description provided for @neuralNetwork.
  ///
  /// In en, this message translates to:
  /// **'Neural network determined: good fit in all zones of both legs'**
  String get neuralNetwork;

  /// No description provided for @favorite.
  ///
  /// In en, this message translates to:
  /// **'To favorite'**
  String get favorite;

  /// No description provided for @tobasket.
  ///
  /// In en, this message translates to:
  /// **'TO BASKET'**
  String get tobasket;

  /// No description provided for @gender.
  ///
  /// In en, this message translates to:
  /// **'Gender'**
  String get gender;

  /// No description provided for @aboutScanning.
  ///
  /// In en, this message translates to:
  /// **'About scanning'**
  String get aboutScanning;

  /// No description provided for @mainOffice.
  ///
  /// In en, this message translates to:
  /// **'Main Office'**
  String get mainOffice;

  /// No description provided for @writeToTechSupport.
  ///
  /// In en, this message translates to:
  /// **'Write to technical support'**
  String get writeToTechSupport;

  /// No description provided for @legalInfo.
  ///
  /// In en, this message translates to:
  /// **'Legal information'**
  String get legalInfo;

  /// No description provided for @loyaltyProgram.
  ///
  /// In en, this message translates to:
  /// **'Loyalty program'**
  String get loyaltyProgram;

  /// No description provided for @loyaltyProgramDescription.
  ///
  /// In en, this message translates to:
  /// **'Specify discounts and delivery conditions when confirming the order with the operator'**
  String get loyaltyProgramDescription;

  /// No description provided for @addressInfo.
  ///
  /// In en, this message translates to:
  /// **'Voronezh region, Voronezh city,\nTekstilshchikov street, 5B, \nindex 394026v'**
  String get addressInfo;

  /// No description provided for @registerDescriptionShowCase.
  ///
  /// In en, this message translates to:
  /// **'Register to try on shoes online'**
  String get registerDescriptionShowCase;

  /// No description provided for @respect.
  ///
  /// In en, this message translates to:
  /// **'STREET BEAT'**
  String get respect;

  /// No description provided for @requiredFields.
  ///
  /// In en, this message translates to:
  /// **'required fields'**
  String get requiredFields;

  /// No description provided for @confirmed.
  ///
  /// In en, this message translates to:
  /// **'Confirmed'**
  String get confirmed;

  /// No description provided for @agreement.
  ///
  /// In en, this message translates to:
  /// **'Agreement'**
  String get agreement;

  /// No description provided for @incorrectPhone.
  ///
  /// In en, this message translates to:
  /// **'Incorrect phone'**
  String get incorrectPhone;

  /// No description provided for @incorrectEmail.
  ///
  /// In en, this message translates to:
  /// **'Incorrect email'**
  String get incorrectEmail;

  /// No description provided for @incorrectDate.
  ///
  /// In en, this message translates to:
  /// **'Incorrect date'**
  String get incorrectDate;

  /// No description provided for @camera.
  ///
  /// In en, this message translates to:
  /// **'Camera'**
  String get camera;

  /// No description provided for @gallery.
  ///
  /// In en, this message translates to:
  /// **'Gallery'**
  String get gallery;

  /// No description provided for @showCase.
  ///
  /// In en, this message translates to:
  /// **'Show Case'**
  String get showCase;

  /// No description provided for @favorites.
  ///
  /// In en, this message translates to:
  /// **'Favorites'**
  String get favorites;

  /// No description provided for @sendAppRating.
  ///
  /// In en, this message translates to:
  /// **'Send Review'**
  String get sendAppRating;

  /// No description provided for @pleaseRateOurApp.
  ///
  /// In en, this message translates to:
  /// **'Please, rate our app'**
  String get pleaseRateOurApp;

  /// No description provided for @goodRate.
  ///
  /// In en, this message translates to:
  /// **'Good'**
  String get goodRate;

  /// No description provided for @badRate.
  ///
  /// In en, this message translates to:
  /// **'Bad'**
  String get badRate;

  /// No description provided for @perfect.
  ///
  /// In en, this message translates to:
  /// **'Perfect'**
  String get perfect;

  /// No description provided for @perfectFootSize.
  ///
  /// In en, this message translates to:
  /// **'In our service, we calculate the degree of fit of the shoe to the foot and, based on machine learning algorithms, we display the gradations of sensations of your particular foot in the selected shoe model.'**
  String get perfectFootSize;

  /// No description provided for @aboutService.
  ///
  /// In en, this message translates to:
  /// **'Choosing the size, our service will tell you how suitable the option you have chosen and how the shoes will fit the foot.'**
  String get aboutService;

  /// No description provided for @aboutScanningAlgorithm.
  ///
  /// In en, this message translates to:
  /// **'Our algorithm automatically detects two suitable sizes by enclosing them with a green border. The first will fit closer to your leg and the second will hold more loosely.'**
  String get aboutScanningAlgorithm;

  /// No description provided for @aboutScanningInfo.
  ///
  /// In en, this message translates to:
  /// **'Thanks to our algorithm, you have a unique opportunity to appreciate the sensations Your feet in every shoe size, and make the final choice on your own according to how you prefer to wear shoes, denser or looser.'**
  String get aboutScanningInfo;

  /// No description provided for @differentSizes.
  ///
  /// In en, this message translates to:
  /// **'Each user has the parameters of each leg may differ, so the sensations in one and the same size may be different.'**
  String get differentSizes;

  /// No description provided for @availableInOneProductShop.
  ///
  /// In en, this message translates to:
  /// **'Available in 1 shop'**
  String get availableInOneProductShop;

  /// No description provided for @availableProductShopsCount.
  ///
  /// In en, this message translates to:
  /// **'Available in {count} shops'**
  String availableProductShopsCount(Object count);

  /// No description provided for @all.
  ///
  /// In en, this message translates to:
  /// **'All'**
  String get all;

  /// No description provided for @allProducts.
  ///
  /// In en, this message translates to:
  /// **'All products'**
  String get allProducts;

  /// No description provided for @infoDetail.
  ///
  /// In en, this message translates to:
  /// **'Detail info'**
  String get infoDetail;

  /// No description provided for @inShop.
  ///
  /// In en, this message translates to:
  /// **'Go to shop'**
  String get inShop;

  /// No description provided for @buyFavoriteMarket.
  ///
  /// In en, this message translates to:
  /// **'Buy from your favorite marketplaces'**
  String get buyFavoriteMarket;

  /// No description provided for @buyShoesAtRespect.
  ///
  /// In en, this message translates to:
  /// **'Buy shoes at STREET BEAT'**
  String get buyShoesAtRespect;

  /// No description provided for @prepositionWith.
  ///
  /// In en, this message translates to:
  /// **'with'**
  String get prepositionWith;

  /// No description provided for @withService.
  ///
  /// In en, this message translates to:
  /// **'service'**
  String get withService;

  /// No description provided for @tryOnOnline.
  ///
  /// In en, this message translates to:
  /// **'try on online'**
  String get tryOnOnline;

  /// No description provided for @doScan.
  ///
  /// In en, this message translates to:
  /// **'Scan'**
  String get doScan;

  /// No description provided for @scanAtRespect.
  ///
  /// In en, this message translates to:
  /// **'Scan your feet at STREET BEAT stores'**
  String get scanAtRespect;

  /// No description provided for @scanAtRespectDescription.
  ///
  /// In en, this message translates to:
  /// **'Come and we will find the perfect shoes!'**
  String get scanAtRespectDescription;

  /// No description provided for @scaning.
  ///
  /// In en, this message translates to:
  /// **'Scaning'**
  String get scaning;

  /// No description provided for @aboutGoToScan.
  ///
  /// In en, this message translates to:
  /// **'About go to scan'**
  String get aboutGoToScan;

  /// No description provided for @turnOnSound.
  ///
  /// In en, this message translates to:
  /// **'Turn on the sound, there are voice prompts in the app'**
  String get turnOnSound;

  /// No description provided for @nothingToShow.
  ///
  /// In en, this message translates to:
  /// **'Nothing to show'**
  String get nothingToShow;

  /// No description provided for @couldNotFindAnything.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t find anything for your request'**
  String get couldNotFindAnything;

  /// No description provided for @disableFilters.
  ///
  /// In en, this message translates to:
  /// **'Disable filters'**
  String get disableFilters;

  /// No description provided for @reset.
  ///
  /// In en, this message translates to:
  /// **'Reset'**
  String get reset;

  /// No description provided for @allFilters.
  ///
  /// In en, this message translates to:
  /// **'All filters'**
  String get allFilters;

  /// No description provided for @activeFilters.
  ///
  /// In en, this message translates to:
  /// **'Active filters'**
  String get activeFilters;

  /// No description provided for @showProducts.
  ///
  /// In en, this message translates to:
  /// **'Show products'**
  String get showProducts;

  /// No description provided for @versionAbout.
  ///
  /// In en, this message translates to:
  /// **'Application version'**
  String get versionAbout;

  /// No description provided for @myInfo.
  ///
  /// In en, this message translates to:
  /// **'My information'**
  String get myInfo;

  /// No description provided for @legModel3d.
  ///
  /// In en, this message translates to:
  /// **'3D leg model'**
  String get legModel3d;

  /// No description provided for @aboutUs.
  ///
  /// In en, this message translates to:
  /// **'About us'**
  String get aboutUs;

  /// No description provided for @empty.
  ///
  /// In en, this message translates to:
  /// **'There\'s nothing here yet'**
  String get empty;

  /// No description provided for @addToFavorites.
  ///
  /// In en, this message translates to:
  /// **'To add a product to favorites, click on the heart in the product card'**
  String get addToFavorites;

  /// No description provided for @addFavorite.
  ///
  /// In en, this message translates to:
  /// **'Product added to favorites'**
  String get addFavorite;

  /// No description provided for @removeFavorite.
  ///
  /// In en, this message translates to:
  /// **'The product was removed from favorites'**
  String get removeFavorite;

  /// No description provided for @errorFavorite.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t change favorites'**
  String get errorFavorite;

  /// No description provided for @watchedRecently.
  ///
  /// In en, this message translates to:
  /// **'Watched recently'**
  String get watchedRecently;

  /// No description provided for @recommended.
  ///
  /// In en, this message translates to:
  /// **'Recommended products'**
  String get recommended;

  /// No description provided for @exchange.
  ///
  /// In en, this message translates to:
  /// **'Refund and Exchange'**
  String get exchange;

  /// No description provided for @notificationHistory.
  ///
  /// In en, this message translates to:
  /// **'Notification History'**
  String get notificationHistory;

  /// No description provided for @storeMap.
  ///
  /// In en, this message translates to:
  /// **'Store map'**
  String get storeMap;

  /// No description provided for @scannerLocations.
  ///
  /// In en, this message translates to:
  /// **'Scanner locations'**
  String get scannerLocations;

  /// No description provided for @emptyProducts.
  ///
  /// In en, this message translates to:
  /// **'We\'re sorry, but we couldn\'t \n find anything for your request'**
  String get emptyProducts;

  /// No description provided for @lookSomethingElse.
  ///
  /// In en, this message translates to:
  /// **'Look for something else'**
  String get lookSomethingElse;

  /// No description provided for @appVersion.
  ///
  /// In en, this message translates to:
  /// **'Version:'**
  String get appVersion;

  /// No description provided for @appUpdate.
  ///
  /// In en, this message translates to:
  /// **'App update'**
  String get appUpdate;

  /// No description provided for @loginOrRegister.
  ///
  /// In en, this message translates to:
  /// **'Login / Register'**
  String get loginOrRegister;

  /// No description provided for @serverVersion.
  ///
  /// In en, this message translates to:
  /// **'Server version'**
  String get serverVersion;

  /// No description provided for @scanServerVersion.
  ///
  /// In en, this message translates to:
  /// **'Scan server version'**
  String get scanServerVersion;

  /// No description provided for @testAccount.
  ///
  /// In en, this message translates to:
  /// **'Test account'**
  String get testAccount;

  /// No description provided for @smsCodeInsert.
  ///
  /// In en, this message translates to:
  /// **'Code insert automaticly.'**
  String get smsCodeInsert;

  /// No description provided for @noNetwork.
  ///
  /// In en, this message translates to:
  /// **'No network connection'**
  String get noNetwork;

  /// No description provided for @howToScanLegs.
  ///
  /// In en, this message translates to:
  /// **'How to scan legs'**
  String get howToScanLegs;

  /// No description provided for @howToScanLegsText1.
  ///
  /// In en, this message translates to:
  /// **'Shift your body weight and bend the scanned leg at the knee'**
  String get howToScanLegsText1;

  /// No description provided for @howToScanLegsText2.
  ///
  /// In en, this message translates to:
  /// **'Combine the frames with a sheet of paper in a circle'**
  String get howToScanLegsText2;

  /// No description provided for @angleIndicator.
  ///
  /// In en, this message translates to:
  /// **'Angle indicator'**
  String get angleIndicator;

  /// No description provided for @angleIndicatorText.
  ///
  /// In en, this message translates to:
  /// **'Start scanning from the inside of the foot, as indicated by the flashing indicator.'**
  String get angleIndicatorText;

  /// No description provided for @leftFoot.
  ///
  /// In en, this message translates to:
  /// **'Left foot'**
  String get leftFoot;

  /// No description provided for @rightFoot.
  ///
  /// In en, this message translates to:
  /// **'Right foot'**
  String get rightFoot;

  /// No description provided for @flashing.
  ///
  /// In en, this message translates to:
  /// **'flashing'**
  String get flashing;

  /// No description provided for @publicOfferAgreement.
  ///
  /// In en, this message translates to:
  /// **'publicOfferAgreement'**
  String get publicOfferAgreement;

  /// No description provided for @finalPrice.
  ///
  /// In en, this message translates to:
  /// **'Total:'**
  String get finalPrice;

  /// No description provided for @unableToAddMoreProducts.
  ///
  /// In en, this message translates to:
  /// **'Unable to add\n more products'**
  String get unableToAddMoreProducts;

  /// No description provided for @itHasOnly.
  ///
  /// In en, this message translates to:
  /// **'It has only'**
  String get itHasOnly;

  /// No description provided for @okay.
  ///
  /// In en, this message translates to:
  /// **'Okay'**
  String get okay;

  /// No description provided for @promotionalCodeIsApplied.
  ///
  /// In en, this message translates to:
  /// **'Promotional code is applied:'**
  String get promotionalCodeIsApplied;

  /// No description provided for @bonuses.
  ///
  /// In en, this message translates to:
  /// **'Bonuses'**
  String get bonuses;

  /// No description provided for @willReceive.
  ///
  /// In en, this message translates to:
  /// **'Will receive'**
  String get willReceive;

  /// No description provided for @availableForDebiting.
  ///
  /// In en, this message translates to:
  /// **'Available for debiting'**
  String get availableForDebiting;

  /// No description provided for @willBeDebited.
  ///
  /// In en, this message translates to:
  /// **'Will be debited'**
  String get willBeDebited;

  /// No description provided for @cancelCaps.
  ///
  /// In en, this message translates to:
  /// **'CANCEL'**
  String get cancelCaps;

  /// No description provided for @writeOffBonusesForPurchase.
  ///
  /// In en, this message translates to:
  /// **'WRITE OFF BONUSES FOR PURCHASE'**
  String get writeOffBonusesForPurchase;

  /// No description provided for @isNotAvailable.
  ///
  /// In en, this message translates to:
  /// **'Is not available'**
  String get isNotAvailable;

  /// No description provided for @order.
  ///
  /// In en, this message translates to:
  /// **'Order'**
  String get order;

  /// No description provided for @forFree.
  ///
  /// In en, this message translates to:
  /// **'For free'**
  String get forFree;

  /// No description provided for @orderDate.
  ///
  /// In en, this message translates to:
  /// **'Order date'**
  String get orderDate;

  /// No description provided for @orderStatus.
  ///
  /// In en, this message translates to:
  /// **'Order status:'**
  String get orderStatus;

  /// No description provided for @paymentStatus.
  ///
  /// In en, this message translates to:
  /// **'Payment status'**
  String get paymentStatus;

  /// No description provided for @payForTheOrder.
  ///
  /// In en, this message translates to:
  /// **'PAY FOR THE ORDER'**
  String get payForTheOrder;

  /// No description provided for @repeatAnOrder.
  ///
  /// In en, this message translates to:
  /// **'REPEAT THE ORDER'**
  String get repeatAnOrder;

  /// No description provided for @myOrders.
  ///
  /// In en, this message translates to:
  /// **'My Orders'**
  String get myOrders;

  /// No description provided for @youHaventBoughtAnythingYet.
  ///
  /// In en, this message translates to:
  /// **'You haven’t bought anything yet'**
  String get youHaventBoughtAnythingYet;

  /// No description provided for @goToShopping.
  ///
  /// In en, this message translates to:
  /// **'GO TO SHOPPING'**
  String get goToShopping;

  /// No description provided for @recommendedProducts.
  ///
  /// In en, this message translates to:
  /// **'Recommended products'**
  String get recommendedProducts;

  /// No description provided for @youDontHaveAnyNewNotifications.
  ///
  /// In en, this message translates to:
  /// **'You don\'t have any new notifications'**
  String get youDontHaveAnyNewNotifications;

  /// No description provided for @goToTheShowcase.
  ///
  /// In en, this message translates to:
  /// **'Go to the showcase'**
  String get goToTheShowcase;

  /// No description provided for @customUrl.
  ///
  /// In en, this message translates to:
  /// **'Кастомный url'**
  String get customUrl;

  /// No description provided for @doYouReallyWantToLogOutOfYourProfile.
  ///
  /// In en, this message translates to:
  /// **'Do you really want to log out of your profile?'**
  String get doYouReallyWantToLogOutOfYourProfile;

  /// No description provided for @exit.
  ///
  /// In en, this message translates to:
  /// **'EXIT'**
  String get exit;

  /// No description provided for @doYouReallyWantToDeleteYourAccount.
  ///
  /// In en, this message translates to:
  /// **'Do you really want to delete your account?'**
  String get doYouReallyWantToDeleteYourAccount;

  /// No description provided for @delete.
  ///
  /// In en, this message translates to:
  /// **'DELETE'**
  String get delete;

  /// No description provided for @deleteYourAccount.
  ///
  /// In en, this message translates to:
  /// **'Delete your account'**
  String get deleteYourAccount;

  /// No description provided for @loyaltyProgramStatus.
  ///
  /// In en, this message translates to:
  /// **'Loyalty Program Status'**
  String get loyaltyProgramStatus;

  /// No description provided for @myBalance.
  ///
  /// In en, this message translates to:
  /// **'My balance'**
  String get myBalance;

  /// No description provided for @bonusesOf.
  ///
  /// In en, this message translates to:
  /// **'bonuses'**
  String get bonusesOf;

  /// No description provided for @deliveryAndPayment.
  ///
  /// In en, this message translates to:
  /// **'Delivery and payment'**
  String get deliveryAndPayment;

  /// No description provided for @messageSMS.
  ///
  /// In en, this message translates to:
  /// **'Message SMS'**
  String get messageSMS;

  /// No description provided for @messageEmail.
  ///
  /// In en, this message translates to:
  /// **'Message Email'**
  String get messageEmail;

  /// No description provided for @getTheCode.
  ///
  /// In en, this message translates to:
  /// **'Get the code'**
  String get getTheCode;

  /// No description provided for @login.
  ///
  /// In en, this message translates to:
  /// **'Login'**
  String get login;

  /// No description provided for @thankYou.
  ///
  /// In en, this message translates to:
  /// **'Thank you'**
  String get thankYou;

  /// No description provided for @yourOrderHasBeenConfirmed.
  ///
  /// In en, this message translates to:
  /// **'Your order has been confirmed'**
  String get yourOrderHasBeenConfirmed;

  /// No description provided for @orderDetailsCanBeFoundInTheProfile.
  ///
  /// In en, this message translates to:
  /// **'Order details can be found in the profile'**
  String get orderDetailsCanBeFoundInTheProfile;

  /// No description provided for @toOrder.
  ///
  /// In en, this message translates to:
  /// **'To order'**
  String get toOrder;

  /// No description provided for @paymentNotMadePleasePayTheOrder.
  ///
  /// In en, this message translates to:
  /// **'Payment not made, please pay the order'**
  String get paymentNotMadePleasePayTheOrder;

  /// No description provided for @pleaseSelectOneOfThem.
  ///
  /// In en, this message translates to:
  /// **'Please select one of them'**
  String get pleaseSelectOneOfThem;

  /// No description provided for @noResult.
  ///
  /// In en, this message translates to:
  /// **'no result'**
  String get noResult;

  /// No description provided for @sendYourDeliveryTime.
  ///
  /// In en, this message translates to:
  /// **'Send your delivery time'**
  String get sendYourDeliveryTime;

  /// No description provided for @selectTheOption.
  ///
  /// In en, this message translates to:
  /// **'Select the option'**
  String get selectTheOption;

  /// No description provided for @settelment.
  ///
  /// In en, this message translates to:
  /// **'settelment'**
  String get settelment;

  /// No description provided for @theDeliveryDate.
  ///
  /// In en, this message translates to:
  /// **'The delivery date'**
  String get theDeliveryDate;

  /// No description provided for @select.
  ///
  /// In en, this message translates to:
  /// **'Select'**
  String get select;

  /// No description provided for @post.
  ///
  /// In en, this message translates to:
  /// **'Post'**
  String get post;

  /// No description provided for @selectAAddressOfThatStore.
  ///
  /// In en, this message translates to:
  /// **'Select a address of that store'**
  String get selectAAddressOfThatStore;

  /// No description provided for @selectAFacility.
  ///
  /// In en, this message translates to:
  /// **'Select a facility'**
  String get selectAFacility;

  /// No description provided for @selectTheAddressOfThePickupPoint.
  ///
  /// In en, this message translates to:
  /// **'Select the address of the pickup point'**
  String get selectTheAddressOfThePickupPoint;

  /// No description provided for @myDetails.
  ///
  /// In en, this message translates to:
  /// **'My details'**
  String get myDetails;

  /// No description provided for @nameAndSurname.
  ///
  /// In en, this message translates to:
  /// **'Name and surname'**
  String get nameAndSurname;

  /// No description provided for @birthday.
  ///
  /// In en, this message translates to:
  /// **'Birthday'**
  String get birthday;

  /// No description provided for @selectDate.
  ///
  /// In en, this message translates to:
  /// **'Select date'**
  String get selectDate;

  /// No description provided for @male.
  ///
  /// In en, this message translates to:
  /// **'male'**
  String get male;

  /// No description provided for @female.
  ///
  /// In en, this message translates to:
  /// **'female'**
  String get female;

  /// No description provided for @callAConsultant.
  ///
  /// In en, this message translates to:
  /// **'CALL A CONSULTANT'**
  String get callAConsultant;

  /// No description provided for @whatsapp.
  ///
  /// In en, this message translates to:
  /// **'WRITE TO WHATSAPP'**
  String get whatsapp;

  /// No description provided for @onlinePayment.
  ///
  /// In en, this message translates to:
  /// **'Online payment'**
  String get onlinePayment;

  /// No description provided for @show.
  ///
  /// In en, this message translates to:
  /// **'Show'**
  String get show;

  /// No description provided for @product.
  ///
  /// In en, this message translates to:
  /// **'product'**
  String get product;

  /// No description provided for @product5.
  ///
  /// In en, this message translates to:
  /// **'products'**
  String get product5;

  /// No description provided for @product2.
  ///
  /// In en, this message translates to:
  /// **'products'**
  String get product2;

  /// No description provided for @workInProgress.
  ///
  /// In en, this message translates to:
  /// **'This page will be available in production'**
  String get workInProgress;

  /// No description provided for @sendCodeTimer.
  ///
  /// In en, this message translates to:
  /// **'Send the code again via'**
  String get sendCodeTimer;

  /// No description provided for @checkEnterCode.
  ///
  /// In en, this message translates to:
  /// **'Check the entered code or try'**
  String get checkEnterCode;

  /// No description provided for @enter.
  ///
  /// In en, this message translates to:
  /// **'LOGIN'**
  String get enter;

  /// No description provided for @rateApp.
  ///
  /// In en, this message translates to:
  /// **'Please rate our app'**
  String get rateApp;

  /// No description provided for @whatImprove.
  ///
  /// In en, this message translates to:
  /// **'Tell us what to improve?'**
  String get whatImprove;

  /// No description provided for @yourComments.
  ///
  /// In en, this message translates to:
  /// **'Your comment'**
  String get yourComments;

  /// No description provided for @sendComment.
  ///
  /// In en, this message translates to:
  /// **'SEND'**
  String get sendComment;

  /// No description provided for @ascPrice.
  ///
  /// In en, this message translates to:
  /// **'Ascending prices'**
  String get ascPrice;

  /// No description provided for @descPrice.
  ///
  /// In en, this message translates to:
  /// **'Descending prices'**
  String get descPrice;

  /// No description provided for @none.
  ///
  /// In en, this message translates to:
  /// **'Sort'**
  String get none;

  /// No description provided for @descDiscount.
  ///
  /// In en, this message translates to:
  /// **'Discount'**
  String get descDiscount;

  /// No description provided for @authRequired.
  ///
  /// In en, this message translates to:
  /// **'To use the profile, you need to log in or register.'**
  String get authRequired;

  /// No description provided for @registration.
  ///
  /// In en, this message translates to:
  /// **'Registration'**
  String get registration;

  /// No description provided for @userIsAlreadyExists.
  ///
  /// In en, this message translates to:
  /// **'User with the same name already exists'**
  String get userIsAlreadyExists;

  /// No description provided for @userIsNotRegistered.
  ///
  /// In en, this message translates to:
  /// **'This account does not exist.'**
  String get userIsNotRegistered;

  /// No description provided for @blog.
  ///
  /// In en, this message translates to:
  /// **'Blog'**
  String get blog;
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['en', 'ru'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en': return AppLocalizationsEn();
    case 'ru': return AppLocalizationsRu();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
