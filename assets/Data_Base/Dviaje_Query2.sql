USE dviaje;
-- Insertar en la tabla estado YA
SELECT * FROM `dviaje`.estado;
-- ALTER TABLE `dviaje`.estado AUTO_INCREMENT = 1;
-- INSERT INTO estado (estado) VALUES (1); 
 -- DELETE FROM estado WHERE id_estado=6;
-- ALTER TABLE `dviaje`.estado AUTO_INCREMENT = 2;
INSERT INTO estado (estado) VALUES ("Aguascalientes");
INSERT INTO estado (estado) VALUES ("Baja California");
INSERT INTO estado (estado) VALUES ("Baja California Sur");
INSERT INTO estado (estado) VALUES ("Campeche"); 
INSERT INTO estado (estado) VALUES ("Chiapas"); 

INSERT INTO estado (estado) VALUES ("Chihuahua");
INSERT INTO estado (estado) VALUES ("Ciudad de México");
INSERT INTO estado (estado) VALUES ("Coahuila");
INSERT INTO estado (estado) VALUES ("Colima");
INSERT INTO estado (estado) VALUES ("Durango");

INSERT INTO estado (estado) VALUES ("Guanajuato");
INSERT INTO estado (estado) VALUES ("Guerrero");
INSERT INTO estado (estado) VALUES ("Hidalgo");
INSERT INTO estado (estado) VALUES ("Jalisco");
INSERT INTO estado (estado) VALUES ("Mexico");

INSERT INTO estado (estado) VALUES ("Michoacán");
INSERT INTO estado (estado) VALUES ("Morelos");
INSERT INTO estado (estado) VALUES ("Nayarit");
INSERT INTO estado (estado) VALUES ("Nuevo León");
INSERT INTO estado (estado) VALUES ("Oaxaca");

INSERT INTO estado (estado) VALUES ("Puebla");
INSERT INTO estado (estado) VALUES ("Querétaro");
INSERT INTO estado (estado) VALUES ("Quintana Roo");
INSERT INTO estado (estado) VALUES ("San Luis Potosí");
INSERT INTO estado (estado) VALUES ("Sinaloa");

INSERT INTO estado (estado) VALUES ("Sonora");
INSERT INTO estado (estado) VALUES ("Tabasco");
INSERT INTO estado (estado) VALUES ("Tamaulipas");
INSERT INTO estado (estado) VALUES ("Tlaxcala");
INSERT INTO estado (estado) VALUES ("Veracruz");

INSERT INTO estado (estado) VALUES ("Yucatán");
INSERT INTO estado (estado) VALUES ("Zacatecas");

DELETE FROM estado WHERE id_estado=33-64;

-- Insertar en tabla usuario YA
SELECT * FROM `dviaje`.usuario;
INSERT INTO usuario (nombre, apellido, estado, imagen_perfil, lugares_visitados, wishlist, publicaciones,resena_id_resena,estado_id_estado)
VALUE ("Francisco","Aguilar", "Jalisco","https://i.ibb.co/gRWz9pH/francisco.jpg","Cdmx, Oaxaca, Tijuana", 1,1,1,14);
INSERT INTO usuario (nombre, apellido, estado, imagen_perfil, lugares_visitados, wishlist, publicaciones,resena_id_resena,estado_id_estado)
VALUE ("Jorge","Montalvo", "Chiapas","https://i.ibb.co/54kC5dY/jorge.jpg","Guadalajara, Toluca, Chiapas, Mazatlan", 2,1,2,5);
INSERT INTO usuario (nombre, apellido, estado, imagen_perfil, lugares_visitados, wishlist, publicaciones,resena_id_resena,estado_id_estado)
VALUE ("Margarita","Flores", "Sinaloa","https://i.ibb.co/5W4YhRm/margarita.png","Quintana Roo, Yucatan, Puebla, Cdmx", 3,1,3,25);
INSERT INTO usuario (nombre, apellido, estado, imagen_perfil, lugares_visitados, wishlist, publicaciones,resena_id_resena,estado_id_estado)
VALUE ("Beyra", "Enriquez", "Jalisco", "https://i.ibb.co/zfK7Kh2/Beyra.jpg", "Aguascalientes, Guanajuato, Zacatecas", 4,1,4,14);
INSERT INTO usuario (nombre, apellido, estado, imagen_perfil, lugares_visitados, wishlist, publicaciones,resena_id_resena,estado_id_estado)
VALUE ("Rafa", "Alba", "Aguascalientes", "https://i.ibb.co/Dt8sxh0/rafa.png", "Cdmx, Guanajuato, Guadalajara, Monterrey, Querétaro", 5,1,5,1);
INSERT INTO usuario (nombre, apellido, estado, imagen_perfil, lugares_visitados, wishlist, publicaciones,resena_id_resena,estado_id_estado)
VALUE ("Lupita", "Rubio", "Mexico", "https://i.ibb.co/LPmCLm4/lupita.jpg", "Cdmx, Mexico, Puebla, Guanajuato, Querétaro", 6,1,6,15);
INSERT INTO usuario (nombre, apellido, estado, imagen_perfil, lugares_visitados, wishlist, publicaciones,resena_id_resena,estado_id_estado)
VALUE ("Max", "Morin", "Monterrey", "https://i.ibb.co/wCjTfdD/max.jpg", "Tamaulipas, San Luis Potosi, Querétaro", 7,1,7,19);

-- Insertar en tabla inicio de sesion YA
SELECT * FROM `dviaje`.inicio_sesion;
INSERT INTO inicio_sesion(idinicio_sesion,correo,contrasena) VALUE (1,"pacolatinojr2@gmail.com","SuperPacoCH14!2");
INSERT INTO inicio_sesion(idinicio_sesion,correo,contrasena) VALUE (2,"elgiorgio7@gmail.com","elbicho777");
INSERT INTO inicio_sesion(idinicio_sesion,correo,contrasena) VALUE (3,"mfloreszatarain95@gmail.com","Maga*031234");
INSERT INTO inicio_sesion(idinicio_sesion,correo,contrasena) VALUE (4,"enriquezbeyra@gmail.com","BeyraGEM1");
INSERT INTO inicio_sesion(idinicio_sesion,correo,contrasena) VALUE (5,"rafalba.o5@gmail.com","t4c05_t0d4y");
INSERT INTO inicio_sesion(idinicio_sesion,correo,contrasena) VALUE (6,"lupita.rubio@gmail.com","LaOriginalLupita");
INSERT INTO inicio_sesion(idinicio_sesion,correo,contrasena) VALUE (7,"max.morin@gmail.com","280492mori");

-- Insertar en tabla contactanos YA
SELECT * FROM `dviaje`.contactanos;
INSERT INTO contactanos(asunto,mensaje,preguntas,respuestas,usuario_id_usuario) VALUE
 ("Problema contrasena",
 "Estoy seguro que ingreso bien mi contraseña pero no me deja ingresar",
 "¿Cómo puedo recuperar mi contrasena?",
 "Tienes que hacer click en la opción de olvidaste tu contraseña",1);
   INSERT INTO contactanos(asunto,mensaje,preguntas,respuestas,usuario_id_usuario) VALUE
 ("Iniciar sesión",
 "Ya me registré pero no sé como iniciar sesión",
 "¿Cómo iniciar sesión?",
 "Tienes que hacer click en la opción de iniciar sesión",2);
 INSERT INTO contactanos(asunto,mensaje,preguntas,respuestas,usuario_id_usuario) VALUE
 ("Suplantación de identidad en las cuentas",
 "Hay una persona haciendose pasar por mi",
 "¿Qué puedo hacer?",
 "Tienes que denunciar la cuenta en la sección de contáctanos",3);
 INSERT INTO contactanos(asunto,mensaje,preguntas,respuestas,usuario_id_usuario) VALUE
 ("Problema contrasena",
 "Olvide mi contraseña y no puedo ingresar",
 "¿Cómo cambiar mi contrasena?",
 "Tienes que hacer click en la opción de olvidaste tu contraseña",4);
  INSERT INTO contactanos(asunto,mensaje,preguntas,respuestas,usuario_id_usuario) VALUE
 ("Iniciar sesión",
 "Ayuda con la contraseña",
 "¿Haz alcanzado el limite permitido de intentos de acceso?",
 "Tienes que hacer click en la opción de olvidaste tu contraseña",5);


 -- Insertar en tabla Whishlist YA
SELECT * FROM `dviaje`.whishlist;
INSERT INTO whishlist(usuario_id_usuario) VALUE (1);
INSERT INTO whishlist(usuario_id_usuario) VALUE (2);
INSERT INTO whishlist(usuario_id_usuario) VALUE (3);
INSERT INTO whishlist(usuario_id_usuario) VALUE (4);
INSERT INTO whishlist(usuario_id_usuario) VALUE (5);
INSERT INTO whishlist(usuario_id_usuario) VALUE (6);
INSERT INTO whishlist(usuario_id_usuario) VALUE (7);


 -- Insertar en tabla imagenes (18 min)
SELECT * FROM `dviaje`.imagenes;
 INSERT INTO imagenes(url,lugar,estado_id_estado) VALUE
 ("https://www.mexicodestinos.com/blog/wp-content/uploads/2017/04/festival-cervantino-2017-todo-lo-que-debes-saber.jpg","Festival Cervantino",11);
INSERT INTO imagenes(url,lugar,estado_id_estado) VALUE
 ("https://i.ibb.co/qdzL43k/CANCUN.png","Cancún",23);
 INSERT INTO imagenes(url,lugar,estado_id_estado) VALUE
 ("https://mazatlaninteractivo.com.mx/wp-content/uploads/2019/01/El-Quelite-Pueblo-Señorial-Zona-Trópico-Mazatlán-Sinaloa-México-2.jpg","El Quelite",25);
INSERT INTO imagenes(url,lugar,estado_id_estado) VALUE
 ("https://mexicotravelchannel.com.mx/wp-content/uploads/2021/03/girasoles-mocorito-mexico-travel.jpg","Campo de Girasoles en Mocorito",25);
 INSERT INTO imagenes(url,lugar,estado_id_estado) VALUE
 ("https://www.noroeste.com.mx/binrepository/600x400/0c0/0d0/none/12707/RTAH/10953923_888105784567724_5299184816968984485_n_jpg_996105660-227278_NO1134525_MG10081196.jpg","Surutato",25);
 INSERT INTO imagenes(url,lugar,estado_id_estado) VALUE
 ("https://punto.mx/wp-content/uploads/2021/11/cOSALA-1.jpg","Cosalá",25);
 
  INSERT INTO imagenes(url,lugar,estado_id_estado) VALUE
 ("https://upload.wikimedia.org/wikipedia/commons/thumb/4/45/Laguna_Miramar_en_la_Selva_Lacandona.jpg/640px-Laguna_Miramar_en_la_Selva_Lacandona.jpg","Laguna Miramar",5); 
  INSERT INTO imagenes(url,lugar,estado_id_estado) VALUE
 ("https://topadventure.com/__export/1620668973063/sites/laverdad/img/2021/05/10/lagunas_de_montebello_chiapas_la_portada.jpeg_577724383.jpeg","Lagunas de Montebello",5); 
 
  INSERT INTO imagenes(url,lugar,estado_id_estado) VALUE
 ("https://haciendasycasonas.com/wp-content/uploads/2021/03/hotelmontecruz1_0_o.jpg","Atemajaco",14); 
  INSERT INTO imagenes(url,lugar,estado_id_estado) VALUE
 ("https://www.gob.mx/cms/uploads/article/main_image/86387/San-Sebastian-del-Oeste-Mirador-del-Cerro-de-la-Bufa-web.jpg","San Sebastian del Oeste",14); 
 
  INSERT INTO imagenes(url,lugar,estado_id_estado) VALUE
 ("https://media.admagazine.com/photos/618a5eb896bc0f80f8b42c5f/3:2/w_4230,h_2820,c_limit/95874.jpg","Xochimilco",7); 
  INSERT INTO imagenes(url,lugar,estado_id_estado) VALUE
 ("https://cdn.getyourguide.com/img/tour/17ce47895e864698.jpeg/146/M-xico--tour-a-Teotihuac-n-y-la-Bas-lica-de-Guadalupe.jpg","Basílica de Guadalupe",7); 
 
  INSERT INTO imagenes(url,lugar,estado_id_estado) VALUE
("https://th.bing.com/th/id/R.0206aac5a45e26674782282b82c98f8a?rik=QyfVT0yQaWdtHA&riu=http%3a%2f%2fmexicolindoyquerido.com.mx%2fmexico2%2fimages%2fIMAGENES_PARA_TEMPLATE%2fbellezas_naturales_de_mexico%2fP16_Sierra_Fria_Aguascalientes.png&ehk=%2b5iXmk10KA9RdyAnSAwQlhQx5SJDu3qX3d8tE2sTwNQ%3d&risl=&pid=ImgRaw&r=0","Sierra Fría", 1); 
INSERT INTO imagenes(url,lugar,estado_id_estado) VALUE
 ("https://wejoytrip.com/assets/uploads/imagenes/quehacer/17b6a-1550-sandboard-desierto-de-samalayuca.jpg","Dunas Samalayuca",6);

 INSERT INTO imagenes(url,lugar,estado_id_estado) VALUE
("https://volare.com.mx/wp-content/uploads/lo-que-no-sabi%CC%81as-de-teotihuaca%CC%81n.jpg","Piramides de Teotihuacán", 15);
 INSERT INTO imagenes(url,lugar,estado_id_estado) VALUE
("file:///C:/Users/LENOVO/Pictures/fotos%20de%20perfil/fotos%20estados/Nevado%20de%20Toluca.png","Nevado de Toluca", 15);

INSERT INTO imagenes(url,lugar,estado_id_estado) VALUE
 ("https://files.parquefundidora.org/images/a766439478393a6926ceb5c8d88764fc-lg","Parque Fundidora",19);
 INSERT INTO imagenes(url,lugar,estado_id_estado) VALUE
("https://www.travelreport.mx/wp-content/uploads/2020/05/monterrey-parejas-que-hacer-parque-ecolo%CC%81gico-Chipinque-Carolina-Herna%CC%81ndez.jpg","Parque Ecológico Chipinque", 19);



  -- Insertar en tabla publicaciones/imagenes
SELECT * FROM `dviaje`.publicaciones;
-- Maga YA
INSERT INTO publicaciones(titulo,fecha,tips,ruta,categoria,clima,descripcion,seguridad,estado,municipio,epoca_anual,reacciones,usuario_id_usuario) 
VALUE ("Festival Cervantino: El más artístico de México","2022-05-02","Llevar unos comodos zapatos para el bailongo","https://goo.gl/maps/Fh1hP99Ptsxv4RPSA","urbano","fresco",
"Excelente fin de semana en este pueblar","Medio seguro","Guanajuato","Guanajuato","Invierno",55,3);
INSERT INTO publicaciones(titulo,fecha,tips,ruta,categoria,clima,descripcion,seguridad,estado,municipio,epoca_anual,reacciones,usuario_id_usuario) 
VALUE ("Cancún: El azul del mar Caribe","2022-05-03","Lleva tú bikinazo","https://goo.gl/maps/FWFAZUpt6NPaPThs5","playa","calido",
"Excelente fin de semana para disfrutar los bellos paisajes del mar Caribe","Muy seguro","Quintana Roo","Cancún","Verano",150,3);
INSERT INTO publicaciones(titulo,fecha,tips,ruta,categoria,clima,descripcion,seguridad,estado,municipio,epoca_anual,reacciones,usuario_id_usuario) 
VALUE ("El Quelite: pueblo señorial","2022-04-23","Lleva sombrero y ropa fresca. No olvides llevar dinero en efectivo para artesanias y comidas.","https://goo.gl/maps/P9CKUBwY6NXURziSA","pueblo","calido",
"Disfruta de un típico pueblo pintoresco lleno de deliciosa comida y tradicionales murales históricos.","Seguro","Sinaloa","Mazatlán","Verano",150,3);
INSERT INTO publicaciones(titulo,fecha,tips,ruta,categoria,clima,descripcion,seguridad,estado,municipio,epoca_anual,reacciones,usuario_id_usuario) 
VALUE ("Campo de Girasoles en Mocorito","2022-08-10","Lleva tu mejor outfit para una sesión de fotos expectacular","https://goo.gl/maps/koHKahi5SXYgEt8b8","urbano","cálido",
"Bellizimos campos llenos de flores de Girasol, sin duda un lugar para sesión de fotos de boda o para un picnic romántico","Medio seguro","Sinaloa","Mocorito","Primavera/Verano",52,3);
INSERT INTO publicaciones(titulo,fecha,tips,ruta,categoria,clima,descripcion,seguridad,estado,municipio,epoca_anual,reacciones,usuario_id_usuario) 
VALUE ("Surutato, un bosque que parece de otro pais","2022-11-09","Lleva botas, jeans y chamarra, aprovecha a subirte a la tiroleza, llev ropa cómoda. En invierno neva","https://goo.gl/maps/TiRg9K83bDU5mgTW6","bosque","templado/frio",
"Increibles paisajes verdes de arboles enromes, cabañas de ensueño y mil actividades","Seguro","Sinaloa","Badiraguato","Cualquier temporada",75,3);
INSERT INTO publicaciones(titulo,fecha,tips,ruta,categoria,clima,descripcion,seguridad,estado,municipio,epoca_anual,reacciones,usuario_id_usuario) 
VALUE ("Cosalá: Descubre este Pueblo Mágico","2022-12-18","Lleva ropa fresca. No olvides llevar dinero en efectivo para artesanias y comidas","https://goo.gl/maps/3ZjhiukLPaCHC3gL8","pueblo","calido",
"Relajate en un pueblito mágico al muy particular estilo culichi","Seguro","Sinaloa","Cosalá","Verano",107,3);

-- Jorge  YA
INSERT INTO publicaciones(titulo,fecha,tips,ruta,categoria,clima,descripcion,seguridad,estado,municipio,epoca_anual,reacciones,usuario_id_usuario) 
VALUE ("Laguna Miramar: relajate entre la selva y el agua turqueza","2022-06-29","Lleva ropa ligera, traje de baño, bloqueador, lentes de sol y mochila resistente al agua. La ruta es de Comitán hasta San Quintín en carro y el resto es a pie","https://goo.gl/maps/zzUhcrDxrR6WmK8h7","selva","calido",
"Quedarás extasiado con la belleza de la naturaleza y su deliciosa agua templada, super recomendable para planes familiares, de amigos y de aventura en pareja","Muy seguro","Chiapas","San Cristóbal de las Casas","Primavera/Verano",82,2); 
INSERT INTO publicaciones(titulo,fecha,tips,ruta,categoria,clima,descripcion,seguridad,estado,municipio,epoca_anual,reacciones,usuario_id_usuario) 
VALUE ("Lagunas de Montebello","2022-04-30","Lleva ropa ligera, traje de baño, bloqueador, lentes de sol y mochila resistente al agua","https://goo.gl/maps/uhjn7SvHgAz8bMRV9","selva","fresco",
"Es increible todo lo que tiene México, éste lugar es un parque nacional que agrupa varias lagunas como reservas naturales","Muy seguro","Chiapas","Comitán","Primavera/Verano",102,2);

-- Frank YA
INSERT INTO publicaciones(titulo,fecha,tips,ruta,categoria,clima,descripcion,seguridad,estado,municipio,epoca_anual,reacciones,usuario_id_usuario) 
VALUE ("Atemajac: La sierra del sur de Jalisco","2022-04-30","Llevar ropa para el frío","https://goo.gl/maps/FWFAZUpt6NPaPThs5","bosque","frio",
"Excelente fin de semana en este pueblito","Muy seguro","Jalisco","Atemajac","Primavera",10,1);
INSERT INTO publicaciones(titulo,fecha,tips,ruta,categoria,clima,descripcion,seguridad,estado,municipio,epoca_anual,reacciones,usuario_id_usuario) 
VALUE ("San Sebastian del Oeste: Adentrate a un pueblo minero en las entrañas de la sierra ","2022-08-13","Llevar ropa para el frío y la lluvia","https://goo.gl/maps/uPvQjwtoWNyCjH8u7","bosque","frio",
"Aprovecha tu puente para viajar a un pueblo magico colonial","Muy seguro","Jalisco","San Sebastian del Oeste","Verano",25,1);

-- BEYRA YA
INSERT INTO publicaciones(titulo,fecha,tips,ruta,categoria,clima,descripcion,seguridad,estado,municipio,epoca_anual,reacciones,usuario_id_usuario) 
VALUE ("Xochimilco: Un lugar para visitar con la familia","2022-05-24","Ir con un grupo de personas para que sea más agradable el ambiente en la trajinera","https://goo.gl/maps/Rb2hwJJLER29nYvN8","pueblo","calido",
"Excelente para disfrutar el ambiente","Seguro","Ciudad de México","Xochimilco","Verano",20,4);
INSERT INTO publicaciones(titulo,fecha,tips,ruta,categoria,clima,descripcion,seguridad,estado,municipio,epoca_anual,reacciones,usuario_id_usuario) 
VALUE ("Basílica de Guadalupe: El principal centro de peregrinaje en toda America Latina","2022-12-12","Pide el recorrido guiado en la notaría, el 11 de diciembre se celebra una misa en la cual se le cantan las mañanitas con Mariachi a la virgen","https://goo.gl/maps/tuy4tfi34df6fxMR9","urbano","templado",
"Aprovecha a conocer parte de las raices, historia y fe al visitar el Santuario que conjunta la antigua y nueva basílica así como la Capilla del Cerrito y el Jardin del Sagrado Recinto del Tepeyac ","Muy seguro","Ciudad de México","CDMX","Cualquier temporada",650,4);

-- RAFA YA
INSERT INTO publicaciones(titulo,fecha,tips,ruta,categoria,clima,descripcion,seguridad,estado,municipio,epoca_anual,reacciones,usuario_id_usuario) 
VALUE ("Sierra Fría: Disfruta la experiencia de un fin en el bosque","2022-07-28","Lleva botas comodas, repelente y chamarra para el frio aunque sea verano",
"https://goo.gl/maps/hoyzi54R9969TGbm6","bosque","frio","Excelente para disfrutar en familia y amigos el bosque","Seguro","Aguascalientes","San José de Gracia","Cualquier temporada",128,5);
INSERT INTO publicaciones(titulo,fecha,tips,ruta,categoria,clima,descripcion,seguridad,estado,municipio,epoca_anual,reacciones,usuario_id_usuario) 
VALUE ("Dunas Samalayuca","2022-07-20","Lleva dinero para rentar la tabla de sunboarding. Si es posible llevate una go-pro para grabar la experiencia",
"https://goo.gl/maps/LyaVevWRSQF5vVcYA","desierto","cálido","La mejor experiencia de deporte extremo en arena, seguro no sabías que habían dunas en México.","Seguro","Chihuahua","Samalayuca","Cualquier temporada",95,5);

-- LUPITA YA
INSERT INTO publicaciones(titulo,fecha,tips,ruta,categoria,clima,descripcion,seguridad,estado,municipio,epoca_anual,reacciones,usuario_id_usuario) 
VALUE ("Piramides de Teotihuacán","2022-02-21","lleva bloqueador, sombrero o gorra, lentes de sol y paraguas en su defecto, dependiendo el clima. Contrata un guia turistico para 10 personas no mas por que luego te pierdes lo que va diciendo.","https://goo.gl/maps/yxa6kfdph9LzsDTG8","pueblo","cálido/templado",
"Conoce la historia precolombina con las pirámides arqueológicas.","Seguro","Estado de México","San Juan Teotihuacan de Arista","Cualquier temporada",280,6);
INSERT INTO publicaciones(titulo,fecha,tips,ruta,categoria,clima,descripcion,seguridad,estado,municipio,epoca_anual,reacciones,usuario_id_usuario) 
VALUE ("Nevado de Toluca: incursiona la montaña mas alta de México","2022-01-19","Viajar siempre en grupo, con el equipo adecuado, botas, chamarras y pantalones, gogles, arneses, mochila, comida y agua","https://goo.gl/maps/nRQbbwNbH2U41ggFA","montaña","frio",
"Si eres de experiencias fuertes y deseas conquistar la cima debes de subir ésta cima","Seguro","Estado de México","Toluca","Otoño/Invierno",190,6);

-- MAX YA
INSERT INTO publicaciones(titulo,fecha,tips,ruta,categoria,clima,descripcion,seguridad,estado,municipio,epoca_anual,reacciones,usuario_id_usuario) 
VALUE ("Parque Fundidora: conoce las raices de Monterrey","2022-03-14","Entrada gratis. Lleva bloqueador o en su defecto un paraguas, dependiendo el clima, es un lugar abierto","https://goo.gl/maps/kEDxpseUsE1PmrBXA","urbano","templado/cálido",
"Excelente para disfrutar en un ambiente familiar o de turistas","Muy seguro","Nuevo León","Monterrey","Cualquier temporada",43,7);
INSERT INTO publicaciones(titulo,fecha,tips,ruta,categoria,clima,descripcion,seguridad,estado,municipio,epoca_anual,reacciones,usuario_id_usuario) 
VALUE ("Parque Ecológico Chipinque","2022-09-12","Lleva ropa cómoda y adecuada para la actividad que vayas a realizar, ve siempre en grupo con guias por que hay osos y tambien te puedes perder. En invierno llega anevar y la vista es impresionante","https://goo.gl/maps/wTMUfzgvBZUfR5e56","bosque","templado/frio",
"Excelente para conectarte con la naturaleza, visitar el mariposario, hacer ciclismo, senderismo","Medio seguro","Nuevo León","Monterrey","Primavera/Verano/Otoño",75,7);

   -- Insertar en tabla whish-pub (4 min : segundo numero debe ser el id de otro publicación que no sea de maga)
SELECT * FROM `dviaje`.whishlist_has_publicaciones;
INSERT INTO whishlist_has_publicaciones(whishlist_id_whishlis,publicaciones_id_publicacion) VALUE
 (1,1?);
 INSERT INTO whishlist_has_publicaciones(whishlist_id_whishlis,publicaciones_id_publicacion) VALUE
 (1,2);
INSERT INTO whishlist_has_publicaciones(whishlist_id_whishlis,publicaciones_id_publicacion) VALUE
 (1,3);
INSERT INTO whishlist_has_publicaciones(whishlist_id_whishlis,publicaciones_id_publicacion) VALUE
 (1,4);


     -- Insertar en tabla img-pub (18 min) (18,18)
SELECT * FROM `dviaje`.imagenes_has_publicaciones;
INSERT INTO imagenes_has_publicaciones(imagenes_idimagenes,publicaciones_id_publicacion) VALUE  (1,1);
INSERT INTO imagenes_has_publicaciones(imagenes_idimagenes,publicaciones_id_publicacion) VALUE  (2,2);
INSERT INTO imagenes_has_publicaciones(imagenes_idimagenes,publicaciones_id_publicacion) VALUE  (3,3);
INSERT INTO imagenes_has_publicaciones(imagenes_idimagenes,publicaciones_id_publicacion) VALUE  (4,4);
INSERT INTO imagenes_has_publicaciones(imagenes_idimagenes,publicaciones_id_publicacion) VALUE  (5,5);
INSERT INTO imagenes_has_publicaciones(imagenes_idimagenes,publicaciones_id_publicacion) VALUE  (6,6);
INSERT INTO imagenes_has_publicaciones(imagenes_idimagenes,publicaciones_id_publicacion) VALUE  (7,7);
INSERT INTO imagenes_has_publicaciones(imagenes_idimagenes,publicaciones_id_publicacion) VALUE  (8,8);
INSERT INTO imagenes_has_publicaciones(imagenes_idimagenes,publicaciones_id_publicacion) VALUE  (9,9);
INSERT INTO imagenes_has_publicaciones(imagenes_idimagenes,publicaciones_id_publicacion) VALUE  (10,10);
INSERT INTO imagenes_has_publicaciones(imagenes_idimagenes,publicaciones_id_publicacion) VALUE  (11,11);
INSERT INTO imagenes_has_publicaciones(imagenes_idimagenes,publicaciones_id_publicacion) VALUE  (12,12);
INSERT INTO imagenes_has_publicaciones(imagenes_idimagenes,publicaciones_id_publicacion) VALUE  (13,13);
INSERT INTO imagenes_has_publicaciones(imagenes_idimagenes,publicaciones_id_publicacion) VALUE  (14,14);
INSERT INTO imagenes_has_publicaciones(imagenes_idimagenes,publicaciones_id_publicacion) VALUE  (15,15);
INSERT INTO imagenes_has_publicaciones(imagenes_idimagenes,publicaciones_id_publicacion) VALUE  (16,16);
INSERT INTO imagenes_has_publicaciones(imagenes_idimagenes,publicaciones_id_publicacion) VALUE  (17,17);
INSERT INTO imagenes_has_publicaciones(imagenes_idimagenes,publicaciones_id_publicacion) VALUE  (18,18);