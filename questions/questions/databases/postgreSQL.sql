CREATE SCHEMA questionSchema;

CREATE TABLE QuestionResults (
  id serial PRIMARY KEY,
  product_id integer,
  body text,
  date_written text,
  asker_name text,
  asker_email text,
  reported boolean,
  helpful integer
);

CREATE TABLE Answers (
  id serial PRIMARY KEY,
  question_id integer,
  answer_body text,
  date_written text,
  answerer_name text,
  answerer_email text,
  reported boolean,
  helpful integer
);


CREATE TABLE AnswerPhotos (
  id serial PRIMARY KEY,
  answer_id integer,
  photo_url text
);
-- CREATE TABLE ProductQuestions (

-- );

ALTER TABLE Answers ADD FOREIGN KEY (question_id) REFERENCES QuestionResults (question_id);

ALTER TABLE AnswerPhotos ADD FOREIGN KEY (answer_id) REFERENCES Answers (id)