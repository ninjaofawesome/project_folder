INSERT INTO quiz (quiz_id, question_id, question, choice_id, quiz_choice, quiz_answer)
VALUES (0, 0, "What is the capital of France?", 0, "Paris", "true"), (0, 0, "What is the capital of France?", 1, "Bordeaux", "false"),
(0, 0, "What is the capital of France?", 2, "Orleans", "false"), (0, 0, "What is the capital of France?", 3, "Lyon", "false")

INSERT INTO quiz (quiz_id, question_id, question, choice_id, quiz_choice, quiz_answer)
VALUES (0, 1, "What is the capital of Washington?", 0, "Seattle", "false"), (0, 1, "What is the capital of Washington?", 1, "Bellingham", "false"),
(0, 1, "What is the capital of Washington?", 2, "Olympia", "true"), (0, 1, "What is the capital of Washington?", 3, "Richland", "false")

INSERT INTO quiz (quiz_id, question_id, question, choice_id, quiz_choice, quiz_answer)
VALUES (0, 2, "What is the capital of Canada?", 0, "Toronto", "false"), (0, 2, "What is the capital of Canada?", 1, "Ottowa", "true"),
(0, 2, "What is the capital of Canada?", 2, "Montreal", "false"), (0, 2, "What is the capital of Canada?", 3, "Vancouver", "false")

INSERT INTO quiz (quiz_id, question_id, question, choice_id, quiz_choice, quiz_answer)
VALUES (0, 3, "What is the capital of New Jersey?", 0, "Trenton", "true"), (0, 3, "What is the capital of New Jersey?", 1, "Montclair", "false"),
(0, 3, "What is the capital of New Jersey?", 2, "Camden", "false"), (0, 3, "What is the capital of New Jersey?", 3, "Newark", "false")

INSERT INTO quiz (quiz_id, question_id, question, choice_id, quiz_choice, quiz_answer)
VALUES (1, 0, "What animal goes meow?", 0, "Cat", "true"), (1, 0, "What animal goes meow?", 1, "Cow", "false"),
(1, 0, "What animal goes meow?", 2, "Duck", "false"), (1, 0, "What animal goes meow?", 3, "Buffalo", "false")

INSERT INTO quiz (quiz_id, question_id, question, choice_id, quiz_choice, quiz_answer)
VALUES (1, 1, "What animal goes quack?", 0, "Cat", "false"), (1, 1, "What animal goes quack?", 1, "Cow", "false"),
(1, 1, "What animal goes quack?", 2, "Duck", "true"), (1, 1, "What animal goes quack?", 3, "Buffalo", "false")

INSERT INTO quiz (quiz_id, question_id, question, choice_id, quiz_choice, quiz_answer)
VALUES (1, 2, "What animal goes moo?", 0, "Cat", "false"), (1, 2, "What animal goes moo?", 1, "Cow", "true"),
(1, 2, "What animal goes moo?", 2, "Duck", "false"), (1, 2, "What animal goes moo?", 3, "Buffalo", "false")

INSERT INTO quiz (quiz_id, question_id, question, choice_id, quiz_choice, quiz_answer)
VALUES (1, 2, "What animal goes silent?", 0, "Cat", "false"), (1, 2, "What animal goes silent?", 1, "Cow", "false"),
(1, 2, "What animal goes silent?", 2, "Duck", "false"), (1, 2, "What animal goes silent?", 3, "Buffalo", "true")

INSERT INTO user (user_id, user_name, quiz_id, question_id, choice_id, user_choice)
VALUES (0, "Hannah", 1, 0, 0, "Cat"), (0, "Hannah", 1, 1, 1, "Cow"), (0, "Hannah", 1, 2, 1, "Cow"), (0, "Hannah", 1, 3, 1, "Cow")

INSERT INTO user (user_id, user_name, quiz_id, question_id, choice_id, user_choice)
VALUES (1, "Jahmil", 1, 0, 0, "Cat"), (1, "Jahmil", 1, 1, 1, "Cow"), (1, "Jahmil", 1, 2, 1, "Cow"), (1, "Jahmil", 1, 3, 1, "Cow")

INSERT INTO user (user_id, user_name, quiz_id, question_id, choice_id, user_choice)
VALUES (2, "Sean", 1, 0, 0, "Cat"), (2, "Sean", 1, 1, 1, "Cow"), (2, "Sean", 1, 2, 1, "Cow"), (2, "Sean", 1, 3, 1, "Cow")


INSERT INTO user (user_id, user_name, quiz_id, question_id, choice_id, user_choice)
VALUES (0, "Hannah", 0, 0, 0, "Paris"), (0, "Hannah", 0, 1, 0, "Seattle"), (0, "Hannah", 0, 2, 1, "Ottowa"), (0, "Hannah", 0, 3, 1, "Montclair")

INSERT INTO user (user_id, user_name, quiz_id, question_id, choice_id, user_choice)
VALUES (1, "Jahmil", 0, 0, 1, "Bordeaux"), (1, "Jahmil", 0, 1, 3, "Richland"), (1, "Jahmil", 0, 2, 1, "Ottowa"), (1, "Jahmil", 0, 3, 0, "Trenton")


INSERT INTO user (user_id, user_name, quiz_id, question_id, choice_id, user_choice)
VALUES (2, "Sean", 0, 0, 1, "Bordeaux"), (2, "Sean", 0, 1, 3, "Richland"), (2, "Sean", 0, 2, 1, "Ottowa"), (2, "Sean", 0, 3, 0, "Trenton")