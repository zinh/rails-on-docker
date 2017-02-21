## Docker on Rails

### Version:

- Ruby: 2.4.0
- Rails: 5.0.1
- MySQL: 5.7
- NodeJS: latest 6x

### Usage
1. Pull the source
2. Build base image

        docker-compose build

3. Create rails app

        docker-compose run web rails new yourapp

4. Build image again

        docker-compose build

5. Config database:

        vi config/database.yml
        Change from localhost to db

5. Run server

        docker-compose up
