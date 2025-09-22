# Flutter Login Screen with Validation

A Flutter application demonstrating a clean login screen implementation with form validation following MVC architecture pattern.

## 📝 Task Overview

**Task 1: Design a Login Screen with Validation**

### Objective
Test UI building, form handling, and basic validation capabilities.

### Requirements
- Create a login screen with:
  - Email and password fields
  - Login button
- Add validation:
  - Email must be valid (regex validation)
  - Password must be at least 6 characters
  - Password must contain at least one number
  - Password must contain at least one uppercase letter
- On successful validation, show a success message via EasyLoading

### Evaluation Criteria
- ✅ Clean UI
- ✅ Proper validation logic
- ✅ Code readability and organization

## 🏗️ Architecture

This project follows the **MVC (Model-View-Controller)** pattern with a clean folder structure:

```
lib/
├── app.dart                    # Main app configuration
├── core/                       # Core utilities and services
│   ├── common/
│   │   ├── styles/             # Global text styles
│   │   └── widgets/            # Reusable widgets
│   ├── utils/
│   │   ├── constants/          # App constants, colors, etc.
│   │   └── validators/         # Form validators
├── features/                   # Feature-based modules
│   └── auth/                   # Authentication feature
│       ├── controllers/        # Business logic (GetX)
│       └── views/              # UI screens and widgets
│           ├── screens/
│           └── widgets/
├── routes/                     # App routing
└── main.dart                   # App entry point
```
├── routes/                     # App routing
└── main.dart                   # App entry point
```

## 🎨 Key Features

- **Clean UI Design**: Modern, responsive login interface
- **Form Validation**: Real-time email and password validation
- **State Management**: GetX for efficient state management
- **Responsive Design**: Screen utils for consistent sizing
- **Error Handling**: User-friendly error messages
- **Success Feedback**: SnackBar notifications

## 📱 Validation Rules

### Email Validation
- Must be a valid email format
- Uses regex pattern validation
- Real-time validation feedback

### Password Validation
- Minimum 6 characters
- At least one uppercase letter (A-Z)
- At least one number (0-9)
- Real-time validation with clear error messages

## 🛠️ Dependencies

```yaml
dependencies:
  flutter:
    sdk: flutter
  get: ^4.6.6                    # State management
  flutter_screenutil: ^5.9.0    # Responsive design
  flutter_easyloading: ^3.0.5   # Loading states
```

## 🚀 Getting Started

### Prerequisites
- Flutter SDK (latest stable version)
- Dart SDK
- Android Studio / VS Code
- Android Emulator / iOS Simulator

### Installation

1. **Clone the repository**
   ```bash
   git clone <repository-url>
   cd task_1
   ```

2. **Install dependencies**
   ```bash
   flutter pub get
   ```

3. **Run the application**
   ```bash
   flutter run
   ```

## 📱 How to Use

1. **Launch the app** - The login screen will be displayed
2. **Enter email** - Type a valid email address
3. **Enter password** - Type a password meeting the validation criteria
4. **Tap Login** - If validation passes, a success message will be shown
5. **View feedback** - Real-time validation messages guide the user

## 🎯 Development Guidelines

This project follows clean code principles:

- **Simplicity over complexity** - Code written for junior developer understanding
- **Single responsibility** - Each class/method has one clear purpose
- **Meaningful comments** - Business logic is well documented
- **Consistent naming** - Descriptive variable and method names
- **Widget extraction** - Reusable components are properly separated

## 🧪 Testing

Run tests with:
```bash
flutter test
```

## 📁 Project Structure Details

### Core Layer
- **Constants**: Colors, text styles, API endpoints
- **Widgets**: Reusable UI components
- **Utils**: Helpers, validators, formatters
- **Services**: Network calls, local storage

### Feature Layer (Auth)
- **Models**: User data models
- **Controllers**: Authentication business logic
- **Views**: Login screen and related widgets

### Routes
- **App Routes**: Navigation configuration
- **Route Management**: Screen transitions

## 🔧 Code Style

- **camelCase** for variables and methods
- **PascalCase** for classes and widgets
- **UPPER_CASE** for constants
- **Descriptive naming** throughout
- **Proper commenting** for business logic

## 📝 Contributing

When contributing to this project:

1. Follow the established MVC pattern
2. Add meaningful comments for business logic
3. Use proper validation patterns
4. Extract reusable widgets
5. Maintain consistent code style

## �‍💻 Author

**Johirul Islam**
- GitHub: [@MrJohir](https://github.com/MrJohir)
- Email: [Your Email]

## 🔗 Repository

```bash
git clone https://github.com/MrJohir/flutter-login-screen.git
cd flutter-login-screen
flutter pub get
flutter run
```

## �📄 License

This project is for educational purposes and demonstration of Flutter development skills.

Feel free to use this code for learning purposes or as a starting point for your own projects.

---

**Built with ❤️ using Flutter**
# Task_1
# Task_1
