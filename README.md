# E-Season

**E-Season** is a mobile and web-based application designed to modernize the process of purchasing and managing train season tickets in Sri Lanka. The platform enables passengers to purchase season tickets online, reducing wait times and improving convenience. A dedicated web application also empowers railway staff to manage ticketing, validate tickets, and access real-time passenger data, enhancing operational efficiency.

## Table of Contents

- [Introduction](#introduction)
- [Problem Statement](#problem-statement)
- [Objectives](#objectives)
- [Features](#features)
- [Target Audience](#target-audience)
- [Architecture](#architecture)
- [Technologies Used](#technologies-used)
- [User Stories](#user-stories)
- [Installation and Setup](#installation-and-setup)
- [Project Timeline](#project-timeline)
- [Contributing](#contributing)
- [License](#license)

## Introduction

Sri Lanka Railways currently operates a manual seasoning system, causing delays and increasing the workload on railway staff. **E-Season** addresses these challenges by introducing a mobile application for passengers and a web-based application for railway staff, streamlining the seasoning process, enhancing user experience, and improving operational efficiency.

## Problem Statement

The existing manual ticketing system for train season passes leads to long queues, passenger dissatisfaction, and high operational demands on railway staff. **E-Season** aims to provide a comprehensive digital solution to these issues by offering both mobile and web-based applications that enable passengers to purchase tickets online and railway staff to manage ticketing and passenger data efficiently.

## Objectives

1. **Improve Convenience**: Allow passengers to buy season tickets digitally, reducing the need to queue at counters.
2. **Enhance Efficiency**: Provide railway staff with a web application to manage seasons, validate purchases, and monitor real-time passenger data.
3. **Automate Operations**: Simplify seasoning processes and reduce manual intervention, decreasing human errors.
4. **Enhance User Experience**: Offer intuitive and accessible user interfaces for passengers and staff.

## Features

### Passenger Mobile Application

- **User Registration and Authentication**: Secure sign-up, login, and password recovery options.
- **Season Ticket Purchase**: Browse routes, view prices, and buy season tickets using secure payments.
- **Real-Time Ticket Availability**: View real-time ticket availability and receive notifications of any changes.
- **Profile Management**: Manage account details, payment methods, and view purchase history.
- **Push Notifications**: Receive alerts for ticket availability, promotions, and reminders.
- **Accessible Design**: Multilingual support and accessibility features such as larger text and voice assistance.
- **Mobile Ticket Validation**: Present digital tickets directly within the app for verification by railway staff.
- **Secure Data Handling**: Data encryption and privacy compliance for secure transactions.

### Railway Staff Web Application

- **Staff Login and Authentication**: Secure login for railway staff to access the web portal.
- **Passenger Data Access**: View passenger information and season ticket status for efficient ticket validation.
- **Real-Time Season Availability**: Access current season ticket availability to assist passengers.
- **Ticket Validation**: Verify digital tickets presented by passengers using the mobile app.
- **Notifications and Alerts Management**: Monitor service status, price changes, and operational alerts.
- **Feedback Collection**: Receive feedback from passengers and report issues through the web interface.
- **Multi-Language Support**: Enable staff to work in their preferred language for improved communication.

## Target Audience

- **Daily Commuters**: Individuals who travel by train for work or study and need a convenient way to purchase season tickets.
- **Students**: School and university students who benefit from quick, affordable ticketing options.
- **Senior Citizens**: Older passengers who rely on trains for social or personal errands and need accessible navigation.
- **Railway Staff**: Employees in charge of ticket sales, customer service, and train operations who benefit from automated ticketing and data access.

## Architecture

### System Architecture

E-Season utilizes a distributed architecture with separate components for mobile and web applications:

- **Backend**: A unified backend, built with Spring Boot and Node.js, handles authentication, ticket management, and real-time data.
- **Frontend - Mobile App**: Developed with React Native, it provides an interactive experience for passengers on both iOS and Android.
- **Frontend - Web App**: Developed using React or Angular, offering a robust interface for railway staff to manage ticketing and passenger interactions.

### Database Structure

The backend uses a SQL database, storing essential data in multiple tables:

- **Users**: Stores profiles, roles, and authentication data for passengers and railway staff.
- **Tickets**: Contains ticket availability, purchase history, and associated route data.
- **Transactions**: Logs all ticket purchase transactions, including payment details.

## Technologies Used

- **Mobile Frontend**: React Native, Redux, Expo
- **Web Frontend**: React or Angular for the web application
- **Backend**: Spring Boot (Java) and Node.js (JavaScript) for microservices
- **Database**: PostgreSQL (or preferred SQL database)
- **Payment Integration**: Stripe or PayPal for secure transactions
- **Notifications**: Firebase Cloud Messaging for mobile push notifications
- **Security**: Multi-factor authentication (MFA), encryption for data privacy

## User Stories

1. **As a daily commuter**, I want to purchase a season ticket online so I don’t have to wait in line.
2. **As a student**, I want quick access to discounted tickets so I can manage my expenses.
3. **As a senior citizen**, I want an easy-to-use app interface with larger text and accessible navigation.
4. **As railway staff**, I want a web platform to validate tickets and view passenger information for efficient management.

## Installation and Setup

### Prerequisites

- **Node.js** and **npm** for both frontend (mobile and web) development.
- **Java 11+** for Spring Boot backend.
- **PostgreSQL** database (or other SQL database).
- **Expo CLI** for mobile app development.

### Backend Setup

1. **Clone the repository**:
   ```bash
   git clone https://github.com/yourusername/E-Season.git
   cd E-Season
   ```

2. **Set up environment variables**:
   Create a `.env` file in the backend directory with environment variables (database URL, API keys).

3. **Install dependencies**:
   ```bash
   cd backend
   ./mvnw install
   ```

4. **Run the backend server**:
   ```bash
   ./mvnw spring-boot:run
   ```

### Mobile App Setup

1. **Install dependencies**:
   ```bash
   cd mobile
   npm install
   ```

2. **Run the app**:
   ```bash
   expo start
   ```

3. **View on mobile**:
   - Use the Expo Go app to scan the QR code from the terminal/browser to load the mobile app.

### Web Application Setup

1. **Navigate to the web directory**:
   ```bash
   cd web
   ```

2. **Install dependencies**:
   ```bash
   npm install
   ```

3. **Run the web application**:
   ```bash
   npm start
   ```

4. **Access the app**:
   - Open your browser and go to `http://localhost:3000` to view the web interface for railway staff.

## Project Timeline

Please refer to the [Gantt Chart](#) for a detailed breakdown of the development phases, including planning, development, testing, and deployment stages.

## Contributing

Contributions are welcome! To contribute:

1. Fork the repository.
2. Create a new branch (`git checkout -b feature-branch`).
3. Commit your changes (`git commit -am 'Add new feature'`).
4. Push to the branch (`git push origin feature-branch`).
5. Open a Pull Request.

### Guidelines

- Maintain consistent code style and conventions.
- Add comments to clarify complex code sections.
- Test any new features thoroughly.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
