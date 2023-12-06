INSERT INTO tb_participant(id, name, email) VALUES (1, 'Jose Silva', 'jose@gmail.com');
INSERT INTO tb_participant(id, name, email) VALUES  (2,'Tiago Faria', 'tiago@gmail.com');
INSERT INTO tb_participant(id, name, email) VALUES (3, 'Maria do Rosario','maria@gmail.com');
INSERT INTO tb_participant(id, name, email) VALUES   (4, 'Tereza Silva', 'teresa@gmail.com');

INSERT INTO tb_category(id, description) VALUES (1,'Curso');
INSERT INTO tb_category(id, description) VALUES (2, 'Oficina');

INSERT INTO tb_activity(category_id, id, name, description, price) VALUES (1,1, 'Curso de HTML', 'Aprenda HTML de forma pratica', 80.00);
INSERT INTO tb_activity(category_id, id, name, description, price) VALUES (2,2, 'Curso de Github', 'Controle versoes de seus projetos', 50.00);


INSERT INTO tb_block(activity_id, id, inicio, termino) VALUES (1,1, '2017-09-25 08:00:00', '2017-09-25 11:00:00');
INSERT INTO tb_block(activity_id, id, inicio, termino) VALUES (2, 2, '2017-09-25 14:00:00', '2017-09-25 18:00:00');
INSERT INTO tb_block(activity_id, id, inicio, termino) VALUES (2, 3, '2017-09-26 08:00:00', '2017-09-26 11:00:00');

INSERT INTO tb_activity_participant(activity_id, participant_id) VALUES (1,1);
INSERT INTO tb_activity_participant(activity_id, participant_id) VALUES (1,2);
INSERT INTO tb_activity_participant(activity_id, participant_id) VALUES (1,3);
INSERT INTO tb_activity_participant(activity_id, participant_id) VALUES (2,1);
INSERT INTO tb_activity_participant(activity_id, participant_id) VALUES (2,3);
INSERT INTO tb_activity_participant(activity_id, participant_id) VALUES (2,4);