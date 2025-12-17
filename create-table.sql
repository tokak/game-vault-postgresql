CREATE TABLE developers (
    id SERIAL PRIMARY KEY,
    company_name VARCHAR(255) NOT NULL,
    country VARCHAR(255) NOT NULL,
    founder_year INT NOT NULL
);

CREATE TABLE games (
    id SERIAL PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    price DECIMAL(8,2) NOT NULL,
    release_date DATE NOT NULL,
    rating SMALLINT NOT NULL,
    developer_id INT NOT NULL,
    CONSTRAINT games_developer_id_fk
        FOREIGN KEY (developer_id)
        REFERENCES developers (id)
);

CREATE TABLE genres (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    description VARCHAR(255) NOT NULL
);

CREATE TABLE games_genres (
    id SERIAL PRIMARY KEY,
    game_id INT NOT NULL,
    genre_id INT NOT NULL,
    CONSTRAINT games_genres_game_id_fk
        FOREIGN KEY (game_id)
        REFERENCES games (id),
    CONSTRAINT games_genres_genre_id_fk
        FOREIGN KEY (genre_id)
        REFERENCES genres (id),
    CONSTRAINT games_genres_unique UNIQUE (game_id, genre_id)
);