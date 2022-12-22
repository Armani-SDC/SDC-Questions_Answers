const mongoose = require('mongoose');

mongoose.connect('mongodb://localhost/Questions', { useNewUrlParser: true })

const PSchema = new mongoose.Schema({
  id: Number,
  url: String,
});

const AResultsSchema = new mongoose.Schema({
  id: Number,
  body: String,
  date: Date,
  answerer_name: String,
  helpfulness: Number,
  photos: [PSchema],
});

const QResultsSchema = new mongoose.Schema({
  question_id: Number,
  question_body: String,
  question_date: Date,
  asker_name: String,
  question_helpfulness: Number,
  reported: Boolean,
  answers: [AResultsSchema],

});

const Questions = new mongoose.Schema({
  product_id: Number,
  results: [QResultsSchema],
});

exports.Questions = mongoose.model('Questions', Questions);