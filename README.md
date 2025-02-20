# 📚 Book Borrowing System

A simple and efficient book borrowing system built with **Ruby on Rails** and **SQLite3**.

---

## 📑 Table of Contents
1. [🚀 Features](#-features)
2. [🛠 Tech Stack](#-tech-stack)
3. [📂 Project Structure](#-project-structure)
4. [🎯 Installation & Setup](#-installation--setup)
    - [1️⃣ Prerequisites](#1-prerequisites)
    - [2️⃣ Clone the Repository](#2-clone-the-repository)
    - [3️⃣ Using Docker (Recommended)](#3-using-docker-recommended)
    - [4️⃣ Without Docker](#4-without-docker)
5. [🔥 Usage](#-usage)
6. [🧑‍💻 Contribution Guide](#-contribution-guide)
7. [🛡️ Security & License](#-security--license)

---

## 🚀 Features
- 🏷️ **Book Borrowing & Return** – Users can borrow and return books.
- 🔄 **Real-time Availability** – Borrow buttons are disabled for unavailable books.
- 📅 **Due Date Tracking** – Borrowed books display due dates in the user profile.
- 🔔 **Overdue Alerts** – Highlight overdue books in red.
- 👥 **User Authentication** – Secure login and user roles.
- 👥 **Admin Dashboard** – Admin Book and User Management.

---

## 🛠 Tech Stack
- **Framework:** Ruby on Rails
- **Database:** SQLite3
- **Authentication:** Devise
- **Frontend:** ERB, CSS3
- **Containerization:** Docker

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

### **1️⃣ Prerequisites**
Ensure you have the following installed:
- Ruby `>=3.0`
- Rails `>=8.0`
- SQLite3
- Node.js `>=23`
- Docker (for Docker setup)

### **2️⃣ Clone the Repository**
```bash
git clone https://github.com/MercyKorir/book-lending-app.git
cd book-lending-app
```

### **3️⃣ Using Docker (Recommended)**

1. **Build and Start Docker Containers**

Copy ```bash <master_key_value> ``` from ```bash config/master.key ```
and run the command

```bash
RAILS_MASTER_KEY=<master_key_value> docker compose up --build
```

replacing ```bash <master_key_value> ``` with copied value.

3. **Access the Application**
Visit: `http://localhost:3000/` 🎉


### **4️⃣ Without Docker**

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

🚀 _Happy Coding & Happy Reading! 📖_