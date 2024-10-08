# University Students Management System

This is a basic CRUD (Create, Read, Update, Delete) application built with Laravel to manage University Students. The application allows you to create, view, update, and delete students and their associated class teachers.

## Features

- Laravel 9+ & MySQL database
- CRUD operations for Students
- Associated Teachers management
- Soft delete functionality
- Pagination, search, and filtering
- User authentication with Laravel's built-in system
- Responsive design using Bootstrap
- DataTables integration for enhanced table features

## Requirements

- PHP 8.0 or higher
- Composer
- Node.js and npm
- MySQL
- Git (for version control)

## Installation

Follow these steps to set up the project locally:

### 1. Clone the Repository

```bash
git clone https://github.com/bhumika2206/interview-crud.git
cd interview-crud
composer install
npm install
npm run dev
cp .env.example .env
php artisan key:generate
php artisan migrate --seed
php artisan serve
