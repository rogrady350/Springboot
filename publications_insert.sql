-- Robert O'Grady
-- Publications
-- Insert Statements

INSERT INTO catigory
VALUES
('Books'),
('Book Chapters'),
('Journal Articles'),
('Conference Papers');

INSERT INTO books
VALUES
('Books', 1, 'Formal Methods in Computer Science', 2019, 'J. Wang', 'W. Tepsenhart', '9781498775328', 'CPC Press'),
('Books', 2, 'Real Time Embedded Systems', 2017, 'J. Wang', null, '978-1-118-11617-3', 'Wiley'),
('Books', 3, 'Finite State Based Models and Applications', 2012, 'J. Wang', null, '978-1-4398-4618-6', 'CRC Press'),
('Books', 4, 'Timed Petri nets: Theory and  Application', 1998, 'J. Wang', null, '0-7923-8270-6', 'Kluwer Academic Publishers');

INSERT INTO book_chapters
VALUES
('Book Chapters', 1, 'Healthcare Patient Flow Modeling and Analysis with Timed Petri Nets', 'Advances in Computing, Informatics, Networking and Cybersecurity', 2022, 'J. Wang', Null, 'Springer-Nature'),
('Book Chapters', 2, 'Petri nets for dynamic event-driven system modeling', 'Handbook of Dynamic System Modeling', 2007, 'J. Wang', Null, 'CRC Press'),
('Book Chapters', 3, 'Stochastic Petri net models of communication and flexible systems', 'Petri Nets in Flexible and Automation', 1995, 'J. Wang', 'S.Jiang', 'Kluwer Academic Publishers'),
('Book Chapters', 4, 'Time delay analysis of semi-Markov stochastic Petri net models', 'Robotics and Flexible Manufacturing Systems', 1992, 'J. Wang', Null, 'Elsevier Science Publishers B.V.');

INSERT INTO journal_articles
VALUES
('Journal Articles', 1, 'A metaverse-based teaching building evacuation training system with deep reinforcement learning', 'IEEE Transactions on Systems, Man, and Cybernetics: Systems, vol. 43, no. 4, 2209 - 2219', 2023, 'Apr', 'J. Gu', 'J. Wang', 'X. Gun', 'S. Qin', 'X. Bi', Null),
('Journal Articles', 2, 'MARL Sim2real Transfer: Merging Physical Reality With Digital Virtuality in Metaverse', 'IEEE Transactions on Systems, Man, and Cybernetics: Systems, vol. 43, no. 4,2107 - 2117', 2023, 'April', 'H. Shi', 'G. Liu', 'K. Zhang', 'Z. Zhou', 'J. Wang', Null),
('Journal Articles', 3, 'A salp swarm algorithm for parallel disassembly line balancing considering workers with government benefits', 'IEEE Transactions on Computational Social Systems', 2023, Null, 'S Qin', 'J. Li', 'J. Wang', 'X. Gun', 'S. Liu', 'L. Qi'),
('Journal Articles', 4, 'A discrete whale optimization algorithm for disassembly line balancing with carbon emission constraint', 'IEEE Robotics and Automation Letters', 2023, Null, 'X. Ciu', 'X. Gun', 'M. Zhou', 'J. Wang', 'S. Quin', 'L. Qi'),
('Journal Articles', 5, 'Patient flow modeling and optimal staffing for emergency departments: A Petri net approach', 'IEEE Transactions on Computational Social Systems', 2022, Null, 'J. Wang', Null, Null, Null, Null, Null),
('Journal Articles', 6, 'Enhance explainability of manifold learning', 'Neurocomputing', 2022, 'April', 'H. Han', 'W. Li', 'J. Wang', 'G. Qin', 'X. Qin', Null),
('Journal Articles', 7, 'Multi-objective U-shaped disassembly line balancing problem considering human fatigue index and an efficient solution', 'IEEE Transactions on Computational Social Systems', 2022, Null, 'X. Guo', 'T. Wei', 'J. Wang', 'S. Liu', 'S. Qin', 'L. Qi');


INSERT INTO conference_papers
VALUES
('Conference Papers', 1, 'Colored Petri nets based patient flow modeling and optimal staffing in emergency healthcare', 'Proceedings of 2022 International Conference on Cyber-Physical Social Intelligence (ICCSI)', 2022, 'Nov', 'Nanjing, China', 'A. Zhu', 'A. Sala', 'J. Wang', Null, Null, Null, Null),
('Conference Papers', 2, 'Predicting ICU length of stay for patients with diabetes using machine learning techniques', 'Proceedings of 2022 International Conference on Cyber-Physical Social Intelligence (ICCSI)', 2022, 'Nov', 'Nanjing, China', 'Y. Hu', 'L. Zheng', 'J. Wang', Null, Null, Null, Null),
('Conference Papers', 3, 'Generalized stochastic Petri net aased simulation of IoT supported dynamic navigation in teaching building evacuation', 'Proceedings of 2022 International Conference on Cyber-Physical Social Intelligence (ICCSI)', 2022, 'Nov', 'Nanjing, China', 'J.Stobing', 'M. Grant', 'J. Wang', Null, Null, Null, Null),
('Conference Papers', 4, 'Identify Bottlenecks of Patient Flow in Emergency Departments', 'Proceedings of IEEE 18th International Conference on Automation Science and Engineering (CASE)', 2022, 'Aug', 'Mexico City, Mexico', 'Y. Hu', 'J. Wang', 'G. Liu', Null, Null, Null, Null),
('Conference Papers', 5, 'A Q-learning-based selective disassembly sequence planning method', 'IEEE International Conferenceon Systems, Man, and Cybernetics', 2022, 'Oct', 'Prague, Czech Republic', 'Z. Bi', 'X. Guo', 'J. Wang', 'S. Quin', 'L. Qi', 'J. Zhao', Null);

