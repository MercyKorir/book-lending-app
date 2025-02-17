# 📚 Book Borrowing System

A simple and efficient book borrowing system built with **Ruby on Rails** and **SQLite3**.

---

## 🚀 Features
- 🏷️ **Book Borrowing & Return** – Users can borrow and return books.
- 🔄 **Real-time Availability** – Borrow buttons are disabled for unavailable books.
- 📅 **Due Date Tracking** – Borrowed books display due dates in the user profile.
- 🔔 **Overdue Alerts** – Highlight overdue books in red.
- 🔍 **Search & Filter** – Quickly find books.
- 👥 **User Authentication** – Secure login and user roles.

---

## 🛠 Tech Stack
- **Framework:** Ruby on Rails
- **Database:** SQLite3
- **Authentication:** Devise (or other authentication solution)
- **Frontend:** ERB, Tailwind CSS

---

## 📂 Project Structure
```
📂 library-borrowing-system
│── 📁 app/controllers      # Controllers (BooksController, BorrowingsController, etc.)
│── 📁 app/models           # Models (Book, User, Borrowing)
│── 📁 db/migrate           # Database migrations
│── 📁 app/views            # ERB templates
│── 📁 config/routes.rb     # Application routes
│── 📁 public               # Static assets
│── 📁 test                 # Unit & feature tests
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
- Rails `>=7.0`
- SQLite3
- Node.js `>=18`
- Yarn (for frontend assets)

### **2️⃣ Clone the Repository**
```bash
git clone https://github.com/your-username/library-borrowing-system.git
cd library-borrowing-system
```

### **3️⃣ Install Dependencies**
```bash
bundle install
yarn install  # If using TailwindCSS or frontend assets
```

### **4️⃣ Configure Environment**
```bash
cp .env.example .env
```
Update the `.env` file with your configuration.

### **5️⃣ Set Up Database**
```bash
rails db:create
rails db:migrate
rails db:seed
```

### **6️⃣ Start the Server**
```bash
rails server
```
Visit: `http://127.0.0.1:3000` 🎉

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

## 🤝 Support & Contact
💬 Questions or feedback? Reach out via:
- 📧 **Email**: your-email@example.com  
- 🐦 **Twitter**: [@yourhandle](https://twitter.com/yourhandle)  
- 🌐 **Website**: [yourwebsite.com](https://yourwebsite.com)  

---

🚀 _Happy Coding & Happy Reading! 📖_
