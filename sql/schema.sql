CREATE TABLE quiz(
	quiz_id INTEGER,
	question_id INTEGER,
	question TEXT,
	choice_id INTEGER,
	quiz_choice TEXT,
	quiz_answer TEXT
);

CREATE TABLE user(
	user_id INTEGER,
	user_name TEXT,
	quiz_id INTEGER,
	question_id INTEGER,
	choice_id INTEGER,
	user_choice TEXT
);