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
        
6. Access the app at http://localhost:3000

### Useful command
1. Rails generator

        docker-compose run web rails generate model User email:string password:string

2. Connect to mysql cli(no password needed)

        docker-compose exec db mysql -uroot

3. Rails console on running environment

        docker-compose exec web rails console

4. Attach to a running app(very useful when using with `pry`, `byebug`, `irb.binding`, ...)

        docker attach <container name>
        # to get the name of running container use __docker ps__
