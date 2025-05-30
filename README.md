# Stroll Interview

Stroll Interview is a one page application built for interview purpose.

## Features

- **Custom Answer Cards:** Selectable answer cards with dynamic highlighting.
- **Info Tiles:** Display time and participant count with custom icons.
- **Badges:** Notification badges for navigation items.
- **Responsive Design:** Uses `flutter_screenutil` for adaptive sizing.
- **SVG Support:** Custom icons and images using SVG assets.
- **Modern UI:** Gradient overlays, shadows, and stylish color schemes.


## Getting Started

### Prerequisites

- [Flutter](https://flutter.dev/docs/get-started/install) (3.x recommended)
- Dart SDK
- A device or emulator

### Installation

1. **Clone the repository:**
   ```bash
   git clone https://github.com/ooluseye16/stroll_interview.git
   cd stroll_interview
   ```

2. **Install dependencies:**
   ```bash
   flutter pub get
   ```

3. **Run the app:**
   ```bash
   flutter run
   ```

## Project Structure

- `lib/screens/first_page.dart` - Main page with Q&A and navigation bar.
- `lib/screens/widgets/answer_card.dart` - Custom answer card widget.
- `lib/screens/widgets/info_tile.dart` - Info tile widget for displaying icons and labels.
- `lib/utilities/general_widgets/badge.dart` - Badge widget for notifications.
- `lib/utilities/colors.dart` - Centralized color definitions.
- `lib/utilities/extensions.dart` - Useful extensions for widgets and strings.

## Customization

- **Assets:** Place your SVG and image assets in the `assets/images` directory.
- **Colors:** Modify `lib/utilities/colors.dart` to change the app's color scheme.
- **Questions/Answers:** Update the `answers` list in `first_page.dart` to change the Q&A content.

## Dependencies

- [flutter_screenutil](https://pub.dev/packages/flutter_screenutil)
- [flutter_svg](https://pub.dev/packages/flutter_svg)





