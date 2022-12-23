

DROP SCHEMA IF EXISTS questionSchema CASCADE;

CREATE SCHEMA questionSchema;

DROP TABLE IF EXISTS questions CASCADE;

CREATE TABLE questions (
  id serial PRIMARY KEY,
  product_id integer,
  body text,
  date_written text,
  asker_name text,
  asker_email text,
  reported boolean,
  helpful integer
  
);

COPY questions FROM '/Users/kylemartinelli/HackReactor/SDC-Questions_Answers/questions/questionsData/questions.csv' delimiter ',' header csv;




DROP TABLE IF EXISTS answers CASCADE;
CREATE TABLE answers (
  id serial PRIMARY KEY,
  question_id integer,
  answer_body text,
  date_written text,
  answerer_name text,
  answerer_email text,
  reported boolean,
  helpful integer
);

COPY answers FROM '/Users/kylemartinelli/HackReactor/SDC-Questions_Answers/questions/questionsData/answers.csv' delimiter ',' header csv;

DROP TABLE IF EXISTS photos CASCADE;
CREATE TABLE photos (
  id serial PRIMARY KEY,
  answer_id integer,
  photo_url text
);

COPY photos FROM '/Users/kylemartinelli/HackReactor/SDC-Questions_Answers/questions/questionsData/answers_photos.csv' delimiter ',' header csv;

ALTER TABLE answers ADD FOREIGN KEY (question_id) REFERENCES questions (id);

ALTER TABLE photos ADD FOREIGN KEY (answer_id) REFERENCES answers (id);
