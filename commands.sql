



select users.id,users_technology.id_technology from users
right join users_technology on users.id = users_technology.id_user




SELECT users.id, CONCAT(users.name," ",users.surname) as "fullname", users.email, users.description, users_media.link, media.name from users inner join users_media on users.id = users_media.id_user
inner join media on users_media.id_media = media.id
where users.id = 1;







-- WYCIĄGA WSZYSTKIE TECHNOLOGIE. JEŻELI USER Z DANYM ID ZNA JAKĄŚ
-- JEGO ID NIE JEST RÓWNE NULL, TO JEST WAŻNE, BO W APLIKACJA WYMAGA
-- CZEGOŚ TAKIEGO W PEWNYM MIEJSCU (PODANIA WSZYSTKICH TECHNOLOGII
-- I EWENTUALNEGO DOPASOWANIA POZNANYCH)

SELECT a.id, technology.name FROM
(
    SELECT * FROM users 
    INNER JOIN users_technology ON users.id = users_technology.id_user WHERE users.id = 1
) AS a
    
RIGHT OUTER JOIN technology ON a.id_technology = technology.id;




-- WIDOK Z BARDZIEJ DOKŁADNYMI DANYMI O OFERTACH
-- NIE ZAWIERA TAKICH DANYCH JAK UŻYWANE JĘZYKI,
-- WSPÓŁPRACOWNICY PROJEKTU

CREATE VIEW offerts_detailed AS
SELECT CONCAT(users.name," ",users.surname) as "owner", offert.name, project_category.name as "project category", offert.description from offert
inner join users on offert.owner_id = users.id
inner join project_category on offert.category_id = project_category.id;




-- ZAPYTANIE PODLICZA ILE PROJEKTÓW MA ZAŁOŻONYCH 
-- I W ILU PROJEKTACH UCZESTNICZY UŻYTKOWNIK
select count(*) as "liczba projektów" from (

    select offert.id from offert
    inner join users on offert.owner_id = users.id
    where users.id = 1

    union all

    select collabolators_offert.id_user from collabolators_offert
    where collabolators_offert.id_user = 1
) a;



-- ZAPYTANIE POZWALAJĄCE ODTWORZYĆ POKOJE CHATÓW
-- Z WIADOMOŚCI, ŻEBY JE UPORZĄDKOWAĆ POTRZEBA
-- GRUPOWANIA W PHP
select id_sender, id_recipent, message from chat
where id_sender = 1 or id_recipent = 1
order by chat.time_sended desc




-- ZAPYTANIE WYCIĄGA TECHNOLOGIE UŻYWANE W DANYM PROJEKCIE
select technology.name from technology
inner join offert_technology on technology.id = offert_technology.id_technology
inner join offert on offert_technology.id_offert = offert.id
where offert.id = 1;





