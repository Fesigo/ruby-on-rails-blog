# Blog App

A simple Ruby on Rails blog application with posts, comments, authentication, and SEO-friendly URLs.

Built as a weekend project to practice Rails.

---

## Features

- CRUD for posts (Create, Read, Update, Delete)
- Comments system for posts (anyone can view and create comments)
- Authentication for users to create, edit, or delete posts
- SEO-friendly URLs using `FriendlyId` and post slugs
- TailwindCSS styling for forms, posts, comments, and layout
- Flash messages for notices and alerts

---

## Requirements

- Ruby 3.x
- Rails 8.x
- SQLite3 (default) or other supported database

---

## Setup

1. Clone the repository:

```bash
git clone <repository_url>
cd blog
```

2. Install dependencies:

```bash
bundle install
```

3. Setup the database:

```bash
bin/rails db:create db:migrate
```

4. Install TailwindCSS:

```bash
bundle add tailwindcss-rails
bin/rails tailwindcss:install
```

5. Start the development server:

```bash
bin/dev
```

---

## Authentication

- Users can sign in to create, edit, or delete posts.
- Any visitor can view posts and create comments.

---

## URLs

- Posts use friendly slugs based on the title:
  ```
  /posts/1  ->  /posts/how-to-learn-ruby-on-rails
  ```
---
## Contributing

This project is a personal study project.

---