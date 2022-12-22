DROP TABLE IF EXITS 'QuestionsANSWERS';


CREATE TABLE 'QuestionsAnswers' (
  'id' INTEGER SERIAL PRIMARY KEY,
  'question_id' INTEGER,
  'results_id' INTEGER,
);

CREATE TABLE 'QAResults' (
  'results_id' INTEGER SERIAL PRIMARY KEY,
  'quest',
  CONSTRAINT fk_



)




//psql -d mydb -a -f schema.sql//