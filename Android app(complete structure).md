android/
├── app/
│   ├── build.gradle.kts         # App-level Gradle config
│   ├── proguard-rules.pro       # ProGuard configuration
│   │
│   └── src/
│       ├── main/
│       │   ├── AndroidManifest.xml
│       │   │
│       │   ├── java/com/medshop/
│       │   │   │
│       │   │   ├── MedShopApplication.kt    # Application class
│       │   │   │
│       │   │   ├── di/                      # Dependency Injection
│       │   │   │   ├── AppModule.kt
│       │   │   │   ├── NetworkModule.kt
│       │   │   │   ├── DatabaseModule.kt
│       │   │   │   └── RepositoryModule.kt
│       │   │   │
│       │   │   ├── data/                    # Data layer
│       │   │   │   │
│       │   │   │   ├── local/              # Local database
│       │   │   │   │   ├── MedShopDatabase.kt
│       │   │   │   │   ├── dao/
│       │   │   │   │   │   ├── MedicineDao.kt
│       │   │   │   │   │   ├── OrderDao.kt
│       │   │   │   │   │   ├── CartDao.kt
│       │   │   │   │   │   └── UserDao.kt
│       │   │   │   │   └── entity/
│       │   │   │   │       ├── MedicineEntity.kt
│       │   │   │   │       ├── OrderEntity.kt
│       │   │   │   │       ├── CartItemEntity.kt
│       │   │   │   │       └── UserEntity.kt
│       │   │   │   │
│       │   │   │   ├── remote/             # API calls
│       │   │   │   │   ├── ApiService.kt
│       │   │   │   │   ├── dto/            # Data Transfer Objects
│       │   │   │   │   │   ├── LoginRequest.kt
│       │   │   │   │   │   ├── LoginResponse.kt
│       │   │   │   │   │   ├── MedicineDto.kt
│       │   │   │   │   │   ├── OrderDto.kt
│       │   │   │   │   │   ├── CartDto.kt
│       │   │   │   │   │   └── ApiResponse.kt
│       │   │   │   │   └── interceptor/
│       │   │   │   │       ├── AuthInterceptor.kt
│       │   │   │   │       └── LoggingInterceptor.kt
│       │   │   │   │
│       │   │   │   ├── repository/         # Repository pattern
│       │   │   │   │   ├── AuthRepository.kt
│       │   │   │   │   ├── MedicineRepository.kt
│       │   │   │   │   ├── OrderRepository.kt
│       │   │   │   │   ├── CartRepository.kt
│       │   │   │   │   └── UserRepository.kt
│       │   │   │   │
│       │   │   │   └── preferences/        # Shared Preferences
│       │   │   │       └── AppPreferences.kt
│       │   │   │
│       │   │   ├── domain/                  # Business logic
│       │   │   │   │
│       │   │   │   ├── model/              # Domain models
│       │   │   │   │   ├── Medicine.kt
│       │   │   │   │   ├── Order.kt
│       │   │   │   │   ├── OrderItem.kt
│       │   │   │   │   ├── CartItem.kt
│       │   │   │   │   ├── User.kt
│       │   │   │   │   └── Category.kt
│       │   │   │   │
│       │   │   │   ├── usecase/            # Use cases
│       │   │   │   │   ├── auth/
│       │   │   │   │   │   ├── LoginUseCase.kt
│       │   │   │   │   │   ├── RegisterUseCase.kt
│       │   │   │   │   │   └── LogoutUseCase.kt
│       │   │   │   │   ├── medicine/
│       │   │   │   │   │   ├── GetMedicinesUseCase.kt
│       │   │   │   │   │   ├── SearchMedicinesUseCase.kt
│       │   │   │   │   │   └── GetMedicineDetailUseCase.kt
│       │   │   │   │   ├── cart/
│       │   │   │   │   │   ├── AddToCartUseCase.kt
│       │   │   │   │   │   ├── RemoveFromCartUseCase.kt
│       │   │   │   │   │   └── GetCartItemsUseCase.kt
│       │   │   │   │   └── order/
│       │   │   │   │       ├── PlaceOrderUseCase.kt
│       │   │   │   │       ├── GetOrdersUseCase.kt
│       │   │   │   │       └── GetOrderDetailUseCase.kt
│       │   │   │   │
│       │   │   │   └── util/               # Domain utilities
│       │   │   │       ├── Result.kt       # Success/Error wrapper
│       │   │   │       └── Constants.kt
│       │   │   │
│       │   │   ├── presentation/            # UI layer
│       │   │   │   │
│       │   │   │   ├── MainActivity.kt
│       │   │   │   │
│       │   │   │   ├── navigation/         # Navigation
│       │   │   │   │   ├── NavGraph.kt
│       │   │   │   │   ├── Screen.kt
│       │   │   │   │   └── Navigator.kt
│       │   │   │   │
│       │   │   │   ├── splash/
│       │   │   │   │   ├── SplashScreen.kt
│       │   │   │   │   └── SplashViewModel.kt
│       │   │   │   │
│       │   │   │   ├── auth/
│       │   │   │   │   ├── login/
│       │   │   │   │   │   ├── LoginScreen.kt
│       │   │   │   │   │   └── LoginViewModel.kt
│       │   │   │   │   └── register/
│       │   │   │   │       ├── RegisterScreen.kt
│       │   │   │   │       └── RegisterViewModel.kt
│       │   │   │   │
│       │   │   │   ├── home/
│       │   │   │   │   ├── HomeScreen.kt
│       │   │   │   │   ├── HomeViewModel.kt
│       │   │   │   │   └── components/
│       │   │   │   │       ├── CategoryChip.kt
│       │   │   │   │       ├── BannerCarousel.kt
│       │   │   │   │       └── MedicineCard.kt
│       │   │   │   │
│       │   │   │   ├── products/
│       │   │   │   │   ├── list/
│       │   │   │   │   │   ├── ProductListScreen.kt
│       │   │   │   │   │   └── ProductListViewModel.kt
│       │   │   │   │   └── detail/
│       │   │   │   │       ├── ProductDetailScreen.kt
│       │   │   │   │       └── ProductDetailViewModel.kt
│       │   │   │   │
│       │   │   │   ├── cart/
│       │   │   │   │   ├── CartScreen.kt
│       │   │   │   │   ├── CartViewModel.kt
│       │   │   │   │   └── components/
│       │   │   │   │       └── CartItemCard.kt
│       │   │   │   │
│       │   │   │   ├── checkout/
│       │   │   │   │   ├── CheckoutScreen.kt
│       │   │   │   │   ├── CheckoutViewModel.kt
│       │   │   │   │   └── components/
│       │   │   │   │       ├── AddressSelector.kt
│       │   │   │   │       └── PaymentMethodSelector.kt
│       │   │   │   │
│       │   │   │   ├── orders/
│       │   │   │   │   ├── list/
│       │   │   │   │   │   ├── OrdersScreen.kt
│       │   │   │   │   │   └── OrdersViewModel.kt
│       │   │   │   │   └── detail/
│       │   │   │   │       ├── OrderDetailScreen.kt
│       │   │   │   │       └── OrderDetailViewModel.kt
│       │   │   │   │
│       │   │   │   ├── profile/
│       │   │   │   │   ├── ProfileScreen.kt
│       │   │   │   │   ├── ProfileViewModel.kt
│       │   │   │   │   └── EditProfileScreen.kt
│       │   │   │   │
│       │   │   │   ├── search/
│       │   │   │   │   ├── SearchScreen.kt
│       │   │   │   │   └── SearchViewModel.kt
│       │   │   │   │
│       │   │   │   └── components/         # Shared UI components
│       │   │   │       ├── AppButton.kt
│       │   │   │       ├── AppTextField.kt
│       │   │   │       ├── LoadingDialog.kt
│       │   │   │       ├── ErrorDialog.kt
│       │   │   │       ├── BottomNavBar.kt
│       │   │   │       ├── TopAppBar.kt
│       │   │   │       └── EmptyState.kt
│       │   │   │
│       │   │   ├── util/                    # Utility classes
│       │   │   │   ├── Extensions.kt        # Kotlin extensions
│       │   │   │   ├── DateUtils.kt
│       │   │   │   ├── PriceUtils.kt
│       │   │   │   ├── ImageLoader.kt       # Image loading utility
│       │   │   │   ├── NetworkMonitor.kt    # Network connectivity
│       │   │   │   └── ValidationUtils.kt
│       │   │   │
│       │   │   └── theme/                   # UI theme
│       │   │       ├── Color.kt
│       │   │       ├── Theme.kt
│       │   │       ├── Type.kt
│       │   │       └── Shape.kt
│       │   │
│       │   └── res/                         # Resources
│       │       ├── drawable/                # Images & icons
│       │       │   ├── ic_launcher.xml
│       │       │   ├── ic_cart.xml
│       │       │   ├── ic_home.xml
│       │       │   ├── ic_orders.xml
│       │       │   ├── ic_profile.xml
│       │       │   ├── ic_search.xml
│       │       │   ├── bg_button.xml
│       │       │   └── placeholder_medicine.xml
│       │       │
│       │       ├── layout/                  # XML layouts (if any)
│       │       │   └── activity_main.xml
│       │       │
│       │       ├── values/
│       │       │   ├── strings.xml          # String resources
│       │       │   ├── colors.xml           # Color palette
│       │       │   ├── themes.xml           # Theme definitions
│       │       │   ├── dimens.xml           # Dimensions
│       │       │   └── styles.xml           # Styles
│       │       │
│       │       ├── values-night/            # Dark theme
│       │       │   ├── colors.xml
│       │       │   └── themes.xml
│       │       │
│       │       ├── values-hi/               # Hindi translations
│       │       │   └── strings.xml
│       │       │
│       │       ├── xml/
│       │       │   └── network_security_config.xml
│       │       │
│       │       └── mipmap/                  # App icons
│       │           ├── ic_launcher.png
│       │           └── ic_launcher_round.png
│       │
│       ├── androidTest/                     # Instrumentation tests
│       │   └── java/com/medshop/
│       │       ├── ExampleInstrumentedTest.kt
│       │       └── DatabaseTest.kt
│       │
│       └── test/                            # Unit tests
│           └── java/com/medshop/
│               ├── ExampleUnitTest.kt
│               ├── ViewModelTest.kt
│               └── RepositoryTest.kt
│
├── build.gradle.kts                         # Project-level Gradle
├── gradle.properties
├── settings.gradle.kts
├── gradle/
│   └── libs.versions.toml                   # Dependency versions
└── README.md
