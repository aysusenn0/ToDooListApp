
# 📱 ToDoApp

![Swift](https://img.shields.io/badge/Swift-5.9-orange)
![Platform](https://img.shields.io/badge/Platform-iOS-blue)
![Architecture](https://img.shields.io/badge/Architecture-MVVM-purple)
![Firebase](https://img.shields.io/badge/Backend-Firebase-yellow)
![License](https://img.shields.io/badge/License-MIT-green)

A modern task management application built using **SwiftUI**, structured with **MVVM architecture**, and integrated with **Firebase Authentication & Cloud Storage**.

This project focuses on clean architecture, scalable state management, and real-world backend integration.

---

##  Overview

ToDoApp allows users to:

- Register and log in securely  
- Create and manage task items  
- Maintain user-specific data  
- Persist data through Firebase backend services  

The goal of this project was not just building a task list, but implementing a production-like mobile architecture.

---

##  Architecture

The project follows **MVVM (Model–View–ViewModel)**.

---


### Architectural Principles

- Clear separation of concerns  
- View layer contains no business logic  
- ViewModels manage state and Firebase communication  
- Models represent structured data  
- Reusable UI components  

---

##  Authentication

Implemented using **Firebase Authentication**:

- User registration  
- Secure login  
- Session handling  
- Sign out functionality  

Authentication flow is handled inside dedicated ViewModels to maintain clean UI separation.

---

##  Data & Storage

Integrated with **Firebase Cloud Storage**.

- Task-related data persisted remotely  
- Cloud-based storage instead of local memory  
- Backend-driven application structure  

No local `UserDefaults` persistence is used — the application relies on Firebase services.

---

##  Technologies Used

- Swift  
- SwiftUI  
- MVVM Architecture  
- Firebase Authentication  
- Firebase Cloud Storage  
- Xcode  

---

##  What I Practiced in This Project

- State management with `@StateObject` and `@Binding`  
- Sheet presentation logic  
- Authentication flow design  
- Clean folder organization  
- Scalable MVVM implementation  
- Modular and reusable UI components  

---

##  Why This Project Matters

This project represents my transition from basic SwiftUI applications to backend-connected, architecture-driven mobile apps.

It demonstrates:

- Structured architectural thinking  
- Cloud integration  
- Clean code practices  
- Scalable mobile development  

---
