# Library Management System

A professional, minimalist Spring Boot application for managing a library's authors and book catalog. Built with a "Modern Pro" light-themed interface, this project demonstrates core CRUD operations, JPA relationships, and robust form validation.

## 🚀 Features
- **Author Management**: Create and track authors with duplicate email protection.
- **Book Catalog**: Manage books with automated price and date validation.
- **Modern Pro UI**: A clean Indigo & Slate minimalist design system using vanilla CSS variables.
- **Robust Persistence**: Uses H2 in-memory database with pre-populated sample data.
- **Unit Testing**: Included test suite for repository and service layers.

## 🛠️ Technology Stack
- **Backend**: Java 17, Spring Boot 3.3.1
- **Persistence**: Spring Data JPA, H2 Database
- **Frontend**: JSP (Jakarta Standard Tag Library), Vanilla CSS
- **Build Tool**: Maven

## 📂 Project Structure
```text
src/main/java/com/
├── controllers/    # Request handling and routing
├── entity/         # Database models (Author & Book)
├── repository/     # Data access layer (JPA)
└── service/        # Business logic layer

src/main/resources/
├── static/css/     # Modern Pro design system
└── data.sql        # Initial database seeds

src/main/webapp/WEB-INF/jsp/
└── authors/ & books/ # Clean, component-based views
```

## 🏁 How to Run
1. **Prerequisites**: Ensure you have Java 17+ installed.
2. **Build & Run**:
   ```powershell
   ./mvnw spring-boot:run
   ```
3. **Access the App**: Open your browser and navigate to:
   - **Main App**: [http://localhost:8080](http://localhost:8080)
   - **H2 Console**: (Disabled by default for security, can be enabled in application.properties)

## 🧪 Testing
Run the included unit tests to verify service integrity:
```powershell
./mvnw test
```

## 📝 License
This project is for educational purposes. Feel free to use and modify!
