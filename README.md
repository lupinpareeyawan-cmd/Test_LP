# Robot Framework - UI Test Automation

## 📌 Installation
### System Requirements

- Python 3.x
- Google Chrome Browser
- ChromeDriver (for Selenium)

### Installation Steps

1. Clone the repository or download the project

2. Install dependencies:

```bash
pip install -r requirements.txt
```

## 📌 Running Tests

```bash
robot tests/testLogin.robot
```

## 📖 Page Object Model
This project uses the Page Object Model pattern for organized and maintainable code:
- **Pages** (`fixtures/pages/`) - Contains keywords for each page
- **Locators** (`fixtures/locators/`) - Stores CSS/XPath selectors
- **testData** (`fixtures/testData/`) - Stores test data
