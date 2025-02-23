# 📚 Book Borrowing System

A simple and efficient book borrowing system built with **Ruby on Rails** and **SQLite3**.

---

## 📑 Table of Contents
1. [🚀 Features](#-features)
2. [🛠 Tech Stack](#-tech-stack)
3. [📂 Project Structure](#-project-structure)
4. [🎯 Installation & Setup](#-installation--setup)
    - [Prerequisites](#prerequisites)
    - [Clone the Repository](#clone-the-repository)
    - [Using Docker (Recommended)](#using-docker-recommended)
    - [Without Docker](#without-docker)
5. [🔥 Usage](#-usage)
6. [🔑 Admin Default Logins](#-admin-default-logins)
7. [🌐 Open Library API Integration](#-open-library-api-integration)
8. [🧑‍💻 Contribution Guide](#-contribution-guide)
9. [🛡️ Security & License](#-security-&-license)
10. [🚀 Demo](#-demo)

---

## 🚀 Features
- 🏷️ **Book Borrowing & Return** – Users can borrow and return books.
- 🔍 **Book Search** - Users can search for books by title, author, or ISBN.
- 🔄 **Real-time Availability** – Borrow buttons are disabled for unavailable books.
- 📅 **Due Date Tracking** – Borrowed books display due dates in the user profile.
- 🔔 **Overdue Alerts** – Highlight overdue books in red.
- 👥 **User Authentication** – Secure login and user roles.
- 👥 **Admin Dashboard** – Admin Book and User Management.
- 🌐 **Open Library API Integration** – Admins can search for books by ISBN using the Open Library API and create new book entries based on the fetched data.

---

## 🛠 Tech Stack
- **Framework:** Ruby on Rails
- **Database:** SQLite3
- **Authentication:** Devise
- **Frontend:** ERB, CSS3
- **Containerization:** Docker
- **External API:** Open Library API

---

## 📂 Project Structure
```
📂 book-lending-app
│── 📁 app/controllers      # Controllers
│── 📁 app/models           # Models (Book, User, Borrowing)
│── 📁 db/migrate           # Database migrations
│── 📁 app/views            # ERB templates
│── 📁 config/routes.rb     # Application routes
│── 📁 public               # Static assets
│── 📁 test                 # Unit & feature tests
│── Dockerfile              # Docker image setup
│── docker-compose.yml      # Docker Compose configuration
│── Gemfile                 # Ruby gems dependencies
│── Rakefile                # Task automation
│── README.md               # Project documentation
│── .env.example            # Example environment file
```

---

## 🎯 Installation & Setup

### **Prerequisites**
Ensure you have the following installed:
- Ruby `>=3.0`
- Rails `>=8.0`
- SQLite3
- Node.js `>=23`
- Docker (for Docker setup)

### **Clone the Repository**
```bash
git clone https://github.com/MercyKorir/book-lending-app.git
cd book-lending-app
```

### **Using Docker (Recommended)**

1. **Build and Start Docker Containers**

Copy `<master_key_value>` from `config/master.key`
and run the command

```bash
RAILS_MASTER_KEY=<master_key_value> docker compose up --build
```

replacing `<master_key_value>` with copied value.

2. **Access the Application**
Visit: `http://localhost:3000/` 🎉


### **Without Docker**

1. **Install Dependencies**
```bash
bundle install
```

2. **Set Up Database**
```bash
rails db:create
rails db:migrate
rails db:seed
```

3. **Start the Server**
```bash
rails server
```

4. **Access the Application**
Visit: `http://localhost:3000/` 🎉

---

## 🔥 Usage
- **Browse Books** – View available and borrowed books.
- **Borrow Books** – Click “Borrow” (only if available).
- **View Due Dates** – Check the user profile.
- **Return Books** – Return borrowed books before the due date.

---

## 🔑 Admin Default Logins

To access the **Admin Dashboard**, use the following default credentials:
- **Email:** `admin@books.com`
- **Password:** `admin123`

**Note: For security reasons, update these credentials in production.**

---

## 🌐 Open Library API Integration

- Admins can search for books by entering the ISBN in the book creation form.
- The system fetches book details such as title, author, and cover image from the Open Library API.
- Admins can review the fetched data and proceed to create a new book entry.

---

## 🧑‍💻 Contribution Guide
👥 We welcome contributions! Please follow these steps:
1. **Fork the repository**
2. **Create a feature branch**: `git checkout -b feature-name`
3. **Commit changes**: `git commit -m "Added new feature"`
4. **Push to GitHub**: `git push origin feature-name`
5. **Create a Pull Request**

✅ Ensure your code follows Rails best practices.

---

## 🛡️ Security & License
- **Security:** If you find any security vulnerabilities, report them via issues.
- **License:** This project is licensed under the **MIT License**.

---

## 🚀 Demo
<div align="center">
  <a href="https://drive.google.com/file/d/11z-fMoI26QTyDnBe1l3CXTCw3dNpkNO2/view?usp=drive_link">
    <img src="./book_lending_app_thumbnail.png" alt="Book Lending App Demo Video" style="max-width: 100%; object-fit: contain;" />
  </a>
</div>

Click the image above to watch the demo video.

---

🚀 _Happy Coding & Happy Reading! 📖_