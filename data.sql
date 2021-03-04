USE Collaborate1;



insert into technology(name, color) values 
("HTML", "#e34c26"),
("CSS", "#2965f1"),
("Python","#4B8BBE"),
("Java", "#f89820"),
("Javascript", "#f0db4f"),
("C#", "#8442f5"),
("C++", "#42a7f5"),
("Rust", "#933A16"),
("Goolang", "#2fedd1"),
("Flutter", "#1a66bd"),
("Kotlin", "#f58f1b"),
("Django", "#124f1c"),
("React", "#2eeaff"),
("ASP.NET", "#025dcc"),
("Angular", "#dd1b16"),
("Vue.js", "#41B883"),
("PHP", "#8993be"),
("Electron", "#0c3b47"),
("Android studio", "#2dde0d");

insert into Project_category(name, color) VALUES
("Desktop", "#d92c11"),
("Mobile", "#caf035"),
("Web", "#ab0ca8"),
("Mixed", "#78d6b4"),
("Other", "#f3f56c"),
("Undefined", "#000000");

insert into Media(name) VALUES
("Github"),
("Portfolio"),
("Facebook"),
("Instagram"),
("LinkedIn"),
("Twitter");









call insert_new_user("jan@wp.pl", "Jan", "Napieralski", "128937asjdb12390alks");
call insert_new_user("konrad@wp.pl", "Konrad", "Nowaczewski", "1asEASDAW390alks");
call insert_new_user("kuba@onet.pl", "Kuba", "Maliniak", "asjdkh12");
call insert_new_user("marzena@opera.com", "Marzena", "Kowalik", "asdnl123");
call insert_new_user("agata@torun.edu.pl", "Agata", "Lis", "iodsgf945");
call insert_new_user("andrzej@zsmeie.edu.torun.pl", "Andrzej", "Tobiaczewski", "kasjd1132");
call insert_new_user("zuzia234@interia.pl", "Zuzanna", "Ćwikła", "asdn120938b");
call insert_new_user("tomciopaluch@wp.pl", "Tomek", "Rajczyk", "asdn120938");
call insert_new_user("polskiPatriota@interia.com", "Filip", "Garnicz-Garnicki", "laskd01293");
call insert_new_user("elektrykWysokichNapięć@wp.pl", "Grzegorz", "Buzalski", "12398asd");
call insert_new_user("joanna_2002@onet.pl", "Joanna", "Ewertowska", "asdn129389567");



call insert_further_user_data(1, "Hej, jestem Janek", NULL, NULL, "Github,Facebook", "https://github.com/REVANPL,https://facebook.com/1237681762","HTML,CSS,Javascript,C++,React,Java");
call insert_further_user_data(2, "Joł joł ja nazywam się Konrad", NULL, "asdkj1l2390sfid", "Twitter,Portfolio","https://twitter.com/123nasd,https://portfolioKonrad","Django,C#,C++,Rust");
call insert_further_user_data(3, "Z tej strony kuba", "zmienionKuba@wp.pl", NULL, "Linkedin", "https://linkedin/hiremepls", "HTML,CSS,Javascript");
call insert_further_user_data(4, "Witam marzena", NULL, NULL, "Instagram,Facebook", "https://instagram/marzena123,https://facebook.com/marzena123","HTML,CSS,Goolang,Rust");
call insert_further_user_data(5, "A G A T A ja być", NULL, NULL, "Github,Portfolio", "https://github.com/agata,https://portfolioAgata", "Java,Vue.js,Kotlin,ASP.NET");
call insert_further_user_data(6, "wiedzieliście, że jestem wróżbitą?", NULL, NULL, "Twitter,Instagram", "https://twitter/wróżbitaMaciej,https://instagram.com/magik123", "C++,C#,Java");
call insert_further_user_data(7, "Hejka, nazywam się Zuzia", "zmienionaZuzia@wp.pl", NULL, "Portfolio,LinkedIn", "https://portfolioZuzia.com,https://LinkedIn/hireMeZuzia", "Android studio,PHP,CSS,HTML");
call insert_further_user_data(8, "Lubię kebaby - Tomek", NULL, "zmienionehasło123", "Facebook,Twitter","https:/facebook.com/TomcioPaluch,https://twitter.com/Tomciopaluch","Vue.js,Angular");
call insert_further_user_data(9, "NAURA", NULL, NULL, "Facebook,Twitter,Instagram,Github,Portfolio", "https://facebook.com/patriota,https://twitter.com/Patriot123,https://github.com/PolishKielbasa,https://myportfolio.com","HTML,CSS,PHP,React,Django,Flutter,Goolang");
call insert_further_user_data(10, "mmmmm kabelki", NULL, NULL, "Facebook","https://facebook.com/grzechuBłyskawica","C++,Angular,Kotlin,ASP.NET,Android studio,Electron");



call insert_new_offert(1, "Web", "Hackaton 2021", "Poszukujemy fajnych ludzi, do fajnego projektu","HTML,CSS,Javascript,React");
call insert_new_offert(8, "Desktop", "FoodOrderer", "A co gdyby moznaby zamawiać swoje ulubione jedzenie przez prosta aplikację na komputer?","C++,Electron");
call insert_new_offert(6, "Mobile", "YourTarot", "Chciałbym stworzyć apkę mobilną do stawiania tarota", "Android studio,Flutter,Kotlin,Java");
call insert_new_offert(3, "Mixed", "Hackaton 2030", "Nie wiemy, jaki będzie temat prac, ale zachęcamy do współpracy z nami!","HTML,CSS,Javascript,Vue.js,Electron");
call insert_new_offert(7, "Web", "Microsoft Teams 2", "Znudził Ci się teams? A chcesz zaprojektować nowy? Poszukuję ludzi do współpracy","HTML,CSS,Angular");


call insert_match(10,5);
call insert_match(10,5);
call insert_match(2,1);
call insert_match(5,3);
call insert_match(4,4);

call insert_collaborator(7,10,5);
call insert_collaborator(1,2,1);
call insert_collaborator(1,3,1);
call insert_collaborator(7,1,5);


call insert_message(1,2,"Hej Konrad, z tej strony Janek");
call insert_message(10,7,"O hejka, dało nam matcha, bardzo chciałbym dołączyć do projektu :)");
call insert_message(7,10, "Pewnie zapraszamy! Zaraz dodam Cię do współpracowników projektu");
call insert_message(7,10, "Zrobione");
call insert_message(10,7, "Dzięki wielkie, fajnie będzie coś takiego z wami robić");
call insert_message(2,1,"O cześć stary, jak się masz?");
call insert_message(1,2,"Ja całkiem dobrze");








