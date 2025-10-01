# Dependabot Test Rails Application

This is a simple Rails application created for testing Dependabot functionality.

## Setup

1. Install Ruby 3.1.0 (using rbenv, rvm, or your preferred Ruby version manager)
2. Install dependencies:
   ```bash
   bundle install
   ```
3. Start the Rails server:
   ```bash
   rails server
   ```
4. Visit http://localhost:3000 to see the "Hello, World!" message

## Features

- Simple "Hello, World!" page
- Basic Rails 7.0 application structure
- SQLite3 database (no migrations needed for this simple app)
- Standard Rails development setup

## Routes

- `/` - Root path showing hello world
- `/hello` - Alternative hello world path

Change