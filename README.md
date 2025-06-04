# 📝 Taskify - Flutter UI

Welcome to **Taskify**, a simple and clean task management app built using Flutter. It includes screens for login, registration, notes, tasks, and user profile.

---

## 📁 Folder Structure

```
taskify_app/
├── lib/
│   ├── main.dart                     # App entry point
│   ├── app.dart                      # MaterialApp setup & routes
│   ├── config/
│   │   └── theme.dart                # Light/dark themes, colors
│   ├── screens/
│   │   ├── auth/
│   │   │   ├── login_screen.dart
│   │   │   └── register_screen.dart
│   │   ├── home/
│   │   │   └── home_screen.dart
│   │   ├── notes/
│   │   │   └── notes_screen.dart
│   │   ├── profile/
│   │   │   └── profile_screen.dart
│   │   └── splash_screen.dart       # (Optional) for a loading screen
│   ├── widgets/
│   │   ├── task_card.dart
│   │   ├── note_card.dart
│   │   └── custom_text_field.dart   # Reusable form field
│   └── utils/
│       └── constants.dart           # Colors, spacing, fonts etc.
├── assets/
│   └── images/                      # Placeholder images or icons (if any)
├── pubspec.yaml
└── README.md
```

---

## 🚀 Setup Instructions

1. Clone the repository:

```bash
git clone https://github.com/YOUR-USERNAME/taskify_app.git
cd taskify_app
```

2. Install dependencies:

```bash
flutter pub get
```

3. Run the app:

```bash
flutter run
```

---

## 📦 Minimum Dependencies (`pubspec.yaml`)

```yaml
dependencies:
  flutter:
    sdk: flutter

  cupertino_icons: ^1.0.2
  google_fonts: ^6.2.1
  flutter_svg: ^2.0.10
  provider: ^6.1.2
```

---

## 🤝 Contribution Guidelines

### 🛠 Steps to Contribute

1. **Fork** this repository.
2. **Clone** your forked repository:

```bash
git clone https://github.com/YOUR-USERNAME/taskify_app.git
```

3. Create a new feature branch:

```bash
git checkout -b feature/your-feature-name
```

4. Make your changes and commit:

```bash
git add .
git commit -m "feat: describe your changes"
```

5. Push your branch:

```bash
git push origin feature/your-feature-name
```

6. Open a **Pull Request** from your branch to the `main` branch of this repository.

---

Happy coding! 💙