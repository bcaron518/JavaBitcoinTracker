# Java Bitcoin Tracker

This project is a Bitcoin tracking application where users can monitor Bitcoin prices, receive notifications, and access historical data. The application is built with a Java backend using Maven for dependency management.

## Table of Contents
- [Getting Started](#getting-started)
- [Project Structure](#project-structure)
- [Dependencies](#dependencies)
- [Build and Run](#build-and-run)
- [Features](#features)
- [Tech Stack](#tech-stack)
- [License](#license)
- [Author](#author)
- [Contributing](#contributing)

## Getting Started

### Prerequisites
- Java 8 or higher
- Maven

### Installation

1. Clone the repository:
    ```sh
    git clone https://github.com/bcaron518/JavaBitcoinTracker.git
    cd JavaBitcoinTracker
    ```

2. Install Maven dependencies:
    ```sh
    mvn install
    ```

### Configuration

Create a `config.properties` file in the `src/main/resources` directory with the following content:
```
apiKey=your_api_key
databaseUrl=your_database_url
```

## Dependencies

The project relies on the following dependencies, which are managed via Maven (`pom.xml`):
- `org.projectlombok:lombok:1.16.6`
- `com.google.code.gson:gson:2.8.0`
- `pro.zackpollard.telegrambot.api:jtelegram-botapi:1.6.5`
- `com.google.guava:guava:18.0`
- `com.neovisionaries:nv-websocket-client:2.2`

## Build and Run

1. Compile the project:
    ```sh
    mvn compile
    ```

2. Package the project into a JAR file:
    ```sh
    mvn package
    ```

3. Run the application:
    ```sh
    java -jar target/BitcoinTracker.jar
    ```

## Features
- Real-time Bitcoin price tracking
- Historical data analysis
- Notifications for price changes
- Configurable API and database connections

## Tech Stack
- **Backend**: Java, Maven
- **HTTP Client**: Apache HttpClient
- **JSON Parsing**: Gson
- **WebSocket**: NV WebSocket Client
- **Notifications**: Telegram Bot API

## License
This repository is licensed under the [MIT License](LICENSE). Feel free to use and modify the code as needed for your projects.

## Authors
Amir Omidi - https://github.com/aaomidi 

Benjamin Caron - https://github.com/bcaron518

## Contributing
If you'd like to contribute to this repository or improve the code examples, please feel free to open an issue or submit a pull request. Your contributions are welcome.
