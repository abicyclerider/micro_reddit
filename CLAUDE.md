# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Context
This is a micro Reddit clone built with Ruby on Rails 8.0 as part of The Odin Project curriculum. The application uses modern Rails patterns with Hotwire (Turbo and Stimulus) for frontend interactivity.

## Development Commands

### Setup and Development
- `bin/setup` - Complete development environment setup (installs dependencies, prepares database, starts server)
- `bin/dev` - Start development server (equivalent to `bin/rails server`)
- `bin/rails server` - Start Rails development server
- `bin/rails console` - Open Rails console

### Database
- `bin/rails db:prepare` - Setup database (create, migrate, seed as needed)
- `bin/rails db:migrate` - Run pending migrations
- `bin/rails db:rollback` - Rollback last migration
- `bin/rails db:seed` - Load seed data

### Testing and Quality
- `bin/rails test` - Run all tests
- `bin/rails test test/models/user_test.rb` - Run specific test file
- `bin/rubocop` - Run RuboCop linter (follows Rails Omakase style guide)
- `bin/brakeman` - Run security vulnerability scanner

### Code Generation
- `bin/rails generate model [Name]` - Generate model
- `bin/rails generate controller [Name]` - Generate controller
- `bin/rails generate migration [Name]` - Generate migration

## Architecture

### Application Structure
- **Module**: `MicroReddit` - Main application module
- **Database**: SQLite with multiple databases in production (primary, cache, queue, cable)
- **Frontend**: Uses Hotwire stack (Turbo Rails + Stimulus) with import maps for JavaScript
- **Styling**: Propshaft asset pipeline

### Key Technologies
- **Rails 8.0** - Latest Rails with solid queue/cache/cable
- **Hotwire** - Turbo and Stimulus for SPA-like experience without JavaScript frameworks
- **SQLite** - Database for all environments (with multi-database setup in production)
- **Kamal** - Deployment tooling included

### Rails Conventions
- Uses Rails 8.0 defaults and modern browser requirements (`allow_browser versions: :modern`)
- Follows Rails Omakase styling conventions via RuboCop
- Auto-loads `lib/` directory (excluding assets, tasks subdirectories)