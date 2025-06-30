
# Kittens API

This project is part of **The Odin Project** and focuses on building a RESTful API in Ruby on Rails that returns information about kittens.

## Description

In this project, you'll create an API for kittens using **Ruby on Rails**. The API will handle basic CRUD (Create, Read, Update, Delete) operations to manage data about kittens, including their names, ages, and images.

The API allows users to:
- **Create** new kittens
- **Read** kitten data (view all kittens or a specific kitten)
- **Update** information about a kitten
- **Delete** a kitten from the database

## Technologies Used
- **Ruby** (for backend logic)
- **Ruby on Rails** (web framework)
- **SQLite** (database for development)
- **PostgreSQL** (for production environment)
- **JSON** (data format for API responses)

## Installation

Follow the steps below to get this project up and running on your local machine:

1. **Clone the repository:**
   ```bash
   git clone https://github.com/your-username/kittens-api.git
   cd kittens-api

2. **Install dependencies:**
   ```bash
   bundle install

3. **Set up the database:**
   ```bash
   rails db:create
   rails db:migrate


4. **Start the Rails server:**
   ```bash
   rails server

5. Visit `http://localhost:3000` in your browser or use Postman/cURL to test the API endpoints.

## API Endpoints

### 1. Get all kittens
**Endpoint:** `GET /kittens`

Returns a list of all kittens in the database.

**Example Response:**
```json
[
  {
    "id": 1,
    "name": "Whiskers",
    "age": 2,
    "image": "http://example.com/whiskers.jpg"
  },
  {
    "id": 2,
    "name": "Mittens",
    "age": 3,
    "image": "http://example.com/mittens.jpg"
  }
]


### 2. Get a specific kitten
**Endpoint:** `GET /kittens/:id`

Fetches details of a specific kitten by its ID.

**Example Response:**
```json
{
  "id": 1,
  "name": "Whiskers",
  "age": 2,
  "image": "http://example.com/whiskers.jpg"
}

### 3. Create a new kitten
**Endpoint:** `POST /kittens`

Creates a new kitten. Requires the following parameters in the request body:
- `name` (string) - The kitten's name.
- `age` (integer) - The kitten's age.
- `image` (string) - A URL to the kitten's image.

**Example Request Body:**
```json
{
  "name": "Snowball",
  "age": 1,
  "image": "http://example.com/snowball.jpg"
}


**Example Response:**
```json
{
  "id": 3,
  "name": "Snowball",
  "age": 1,
  "image": "http://example.com/snowball.jpg"
}


### 4. Update a kitten's details
**Endpoint:** `PATCH /kittens/:id`

Updates an existing kitten's details. You can modify the `name`, `age`, and `image` fields.

**Example Request Body:**
```json
{
  "name": "Snowball Jr.",
  "age": 2,
  "image": "http://example.com/snowball-jr.jpg"
}


**Example Response:**
```json
{
  "id": 3,
  "name": "Snowball Jr.",
  "age": 2,
  "image": "http://example.com/snowball-jr.jpg"
}


### 5. Delete a kitten
**Endpoint:** `DELETE /kittens/:id`

Deletes the kitten with the specified ID.

**Example Response:**
```json
{
  "message": "Kitten successfully deleted"
}


## Testing

This project includes unit tests and integration tests for the API. To run the tests, use the following command:

```bash
rails test


## License

This project is open-source and available under the [MIT License](LICENSE).

## Acknowledgements

- [The Odin Project](https://www.theodinproject.com) for providing the curriculum and learning resources.
- [Ruby on Rails Guides](https://guides.rubyonrails.org) for their comprehensive documentation.
