USE dviaje;
-- Insertar en la tabla estado
SELECT * FROM `dviaje`.estado;
ALTER TABLE `dviaje`.estado AUTO_INCREMENT = 1;
INSERT INTO estado (estado) VALUES (1); 
 -- DELETE FROM estado WHERE id_estado=6;
 ALTER TABLE `dviaje`.estado AUTO_INCREMENT = 2;
INSERT INTO estado (estado) VALUES ("Jalisco");
INSERT INTO estado (estado) VALUES ("Guanajuato");
INSERT INTO estado (estado) VALUES ("Sinaloa");
INSERT INTO estado (estado) VALUES ("Ciudad de México");
INSERT INTO estado (id_estado,estado) VALUES (5,"Aguascalientes");

-- Insertar en la tabla resena
SELECT * FROM `dviaje`.resena;
ALTER TABLE `dviaje`.resena AUTO_INCREMENT = 1;
-- DELETE FROM resena WHERE id_resena=2;
INSERT INTO resena(descripcion) VALUE ("Es la onda chiquis");
ALTER TABLE `dviaje`.resena AUTO_INCREMENT = 2;
INSERT INTO resena(descripcion) VALUE ("Esta red social si me representa, quiero conocer más lugares");
INSERT INTO resena(descripcion) VALUE ("Me encanta la sincronia de la app, amo, amo compartir mis historias");
INSERT INTO resena(descripcion) VALUE ("D´viaje es ideal para personas con espiritu viajero, compartir es volver a vivir");
INSERT INTO resena(id_resena,descripcion) VALUE (5,"No hay otra red social igual! es increible! <3");



-- Insertar en tabla usuario 
SELECT * FROM `dviaje`.usuario;
ALTER TABLE `dviaje`.usuario AUTO_INCREMENT = 1;
-- DELETE FROM usuario WHERE id_usuario=3;
ALTER TABLE `dviaje`.usuario AUTO_INCREMENT = 2;
INSERT INTO usuario (nombre, apellido, estado, imagen_perfil, lugares_visitados, amigos, wishlist, publicaciones,resena_id_resena,estado_id_estado)
VALUE ("Juan Francisco","Aguilar", "Jalisco","https://i.ibb.co/gRWz9pH/francisco.jpg","Cdmx, Oaxaca, Tijuana", 1,1,1,1,1);
INSERT INTO usuario (nombre, apellido, estado, imagen_perfil, lugares_visitados, amigos, wishlist, publicaciones,resena_id_resena,estado_id_estado)
VALUE ("Marty Luis","Medina", "Guanajuato","https://cdn.pixabay.com/photo/2016/11/18/19/07/happy-1836445_1280.jpg","Guadalajara, Toluca", 3,1,1,2,2);
INSERT INTO usuario (nombre, apellido, estado, imagen_perfil, lugares_visitados, amigos, wishlist, publicaciones,resena_id_resena,estado_id_estado)
VALUE ("María Margarita","Flores", "Sinaloa","https://i.ibb.co/gRWz9pH/francisco.jpg","Quintana Roo, Yucatan, Puebla, CdMx", 10,2,1,3,3);
INSERT INTO usuario (nombre, apellido, estado, imagen_perfil, lugares_visitados, amigos, wishlist, publicaciones,resena_id_resena,estado_id_estado)
VALUE ("Beyra", "Enriquez", "Jalisco", "https://i.ibb.co/zfK7Kh2/Beyra.jpg", "Aguascalientes, Guanajuato, Zacatecas", 4,2,1,2,2);
INSERT INTO usuario (nombre, apellido, estado, imagen_perfil, lugares_visitados, amigos, wishlist, publicaciones,resena_id_resena,estado_id_estado)
VALUE ("Rafa", "Alba", "Aguascalientes", "https://i.ibb.co/Dt8sxh0/rafa.png", "Cdmx, Guanajuato, Guadalajara, Monterrey, Querétaro", 150,3,1,5,5);


-- Insertar en tabla inicio de sesion
SELECT * FROM `dviaje`.inicio_sesion;
ALTER TABLE `dviaje`.usuario AUTO_INCREMENT = 1;
INSERT INTO inicio_sesion(idinicio_sesion,correo,contrasena) VALUE (1,"pacolatinojr2@gmail.com","SuperPacoCH14!2");
INSERT INTO inicio_sesion(idinicio_sesion,correo,contrasena) VALUE (2,"Marty_luis94@gmail.com","Luisillo1994");
INSERT INTO inicio_sesion(idinicio_sesion,correo,contrasena) VALUE (3,"mfloreszatarain95@gmail.com","Maga*031234");
INSERT INTO inicio_sesion(idinicio_sesion,correo,contrasena) VALUE (4,"enriquezbeyra@gmail.com","BeyraGEM1");
INSERT INTO inicio_sesion(idinicio_sesion,correo,contrasena) VALUE (7,"rafalba.o5@gmail.com","Raphael_o5");


-- Insertar en tabla contactanos
SELECT * FROM `dviaje`.contactanos;
ALTER TABLE `dviaje`.contactanos AUTO_INCREMENT = 1;
DELETE FROM contactanos WHERE id_contactanos=7;
INSERT INTO contactanos(asunto,mensaje,preguntas,respuestas,usuario_id_usuario) VALUE
 ("Problema contrasena",
 "Estoy seguro que ingreso bien mi contraseña pero no me deja ingresar",
 "¿Cómo puedo recuperar mi contrasena?",
 "Tienes que hacer click en la opción de olvidaste tu contraseña",1);
 INSERT INTO contactanos(asunto,mensaje,preguntas,respuestas,usuario_id_usuario) VALUE
 ("Problema contrasena",
 "Estoy seguro que ingreso bien mi contraseña pero no me deja ingresar",
 "¿Cómo puedo recuperar mi contrasena?",
 "Tienes que hacer click en la opción de olvidaste tu contraseña",2);
 INSERT INTO contactanos(asunto,mensaje,preguntas,respuestas,usuario_id_usuario) VALUE
 ("Problema contrasena",
 "Estoy seguro que ingreso bien mi contraseña pero no me deja ingresar",
 "¿Cómo puedo recuperar mi contrasena?",
 "Tienes que hacer click en la opción de olvidaste tu contraseña",3);
  INSERT INTO contactanos(asunto,mensaje,preguntas,respuestas,usuario_id_usuario) VALUE
 ("Iniciar sesión",
 "Ya me registré pero no sé como iniciar sesión",
 "¿Cómo iniciar sesión?",
 "Tienes que hacer click en la opción de iniciar sesión",4);
  INSERT INTO contactanos(asunto,mensaje,preguntas,respuestas,usuario_id_usuario) VALUE
 ("Iniciar sesión",
 "Ya me registré pero no sé como iniciar sesión",
 "¿Cómo iniciar sesión?",
 "Tienes que hacer click en la opción de iniciar sesión",7);
 
 -- Insertar en tabla Whishlist
SELECT * FROM `dviaje`.whishlist;
ALTER TABLE `dviaje`.whishlist AUTO_INCREMENT = 1;
DELETE FROM whishlist WHERE id_whishlis=2;
INSERT INTO whishlist(publicacion,categoria, lugar,usuario_id_usuario) VALUE (1,"playa","Atemajac de Brizuela",1);
INSERT INTO whishlist(publicacion,categoria, lugar,usuario_id_usuario) VALUE (2,"pueblo","Festival Cervantino",2);
INSERT INTO whishlist(publicacion,categoria, lugar,usuario_id_usuario) VALUE (3,"playa","Xcaret",3);
INSERT INTO whishlist(publicacion,categoria, lugar,usuario_id_usuario) VALUE (4,"pueblo","Xochimilco",4);
INSERT INTO whishlist(publicacion,categoria, lugar,usuario_id_usuario) VALUE (5,"bosque","Sierra Fría",7);


 -- Insertar en tabla imagenes
SELECT * FROM `dviaje`.imagenes;
ALTER TABLE `dviaje`.imagenes AUTO_INCREMENT = 1;
INSERT INTO imagenes(url,lugar,estado_id_estado) VALUE
 ("https://haciendasycasonas.com/wp-content/uploads/2021/03/hotelmontecruz1_0_o.jpg","Atemajac de Brizuela",1);
 INSERT INTO imagenes(url,lugar,estado_id_estado) VALUE
 ("https://www.contextonn.com/wp-content/uploads/2019/10/Cerva.jpg","Festival Cervantino",2);
INSERT INTO imagenes(url,lugar,estado_id_estado) VALUE
 ("https://consejosdecancun.com/wp-content/uploads/2018/07/xcaret-cancun.jpg","Xcaret",3);
 INSERT INTO imagenes(url,lugar,estado_id_estado) VALUE
("https://i.ibb.co/wRdZmCf/Xochimilco.jpg","Xochimilco", 4);
  INSERT INTO imagenes(url,lugar,estado_id_estado) VALUE
("https://th.bing.com/th/id/R.0206aac5a45e26674782282b82c98f8a?rik=QyfVT0yQaWdtHA&riu=http%3a%2f%2fmexicolindoyquerido.com.mx%2fmexico2%2fimages%2fIMAGENES_PARA_TEMPLATE%2fbellezas_naturales_de_mexico%2fP16_Sierra_Fria_Aguascalientes.png&ehk=%2b5iXmk10KA9RdyAnSAwQlhQx5SJDu3qX3d8tE2sTwNQ%3d&risl=&pid=ImgRaw&r=0","Sierra Fría", 5);
 
 
 
  -- Insertar en tabla imagenes
SELECT * FROM `dviaje`.publicaciones;
ALTER TABLE `dviaje`.publicaciones AUTO_INCREMENT = 1;
INSERT INTO publicaciones(titulo,fecha,tips,ruta,categoria,clima,descripcion,seguridad,estado,municipio,epoca_anual,reacciones,usuario_id_usuario) 
VALUE ("La sierra del sur de Jalisco","2022-04-30","Llevar ropa para el frío","https://goo.gl/maps/FWFAZUpt6NPaPThs5","pueblo","fresco",
"Excelente fin de semana en este pueblito","Muy seguro","Jalisco","Atemajac","Primavera",10,1);
INSERT INTO publicaciones(titulo,fecha,tips,ruta,clima,descripcion,seguridad,estado,municipio,epoca_anual,reacciones,usuario_id_usuario) 
VALUE ("El festival más típico de México","2022-05-02","Llevar unos comodos zapatos para el bailongo","https://goo.gl/maps/Fh1hP99Ptsxv4RPSA","fresco",
"Excelente fin de semana en este pueblar","Medio seguro","Guanajuato","Guanajuato","Invierno",5,2);
INSERT INTO publicaciones(titulo,fecha,tips,ruta,clima,descripcion,seguridad,estado,municipio,epoca_anual,reacciones,usuario_id_usuario) 
VALUE ("El azul del mar Caribe","2022-05-03","Lleva tú bikinazo","https://goo.gl/maps/FWFAZUpt6NPaPThs5","calido",
"Excelente fin de semana para disfrutar los bellos paisajes del mar Caribe","Muy seguro","Quintana Roo","Cancun","Verano",150,3);
INSERT INTO publicaciones(titulo,fecha,tips,ruta,clima,descripcion,seguridad,estado,municipio,epoca_anual,reacciones,usuario_id_usuario) 
VALUE ("Un lugar para visitar con la familia","2022-05-24","Ir con un grupo de personas para que sea más agradable el ambiente en la trajinera","https://goo.gl/maps/Rb2hwJJLER29nYvN8","calido",
"Excelente para disfrutar el ambiente","Medio seguro","Ciudad de México","Xochimilco","Verano",20,4);
INSERT INTO publicaciones(titulo,fecha,tips,ruta,clima,descripcion,seguridad,estado,municipio,epoca_anual,reacciones,usuario_id_usuario) 
VALUE ("Disfruta la experiencia de un fin en la Sierra","2022-07-28","Lleva botas comodas, repelente y chamarra para el frio aunque sea verano",
"https://goo.gl/maps/hoyzi54R9969TGbm6","frio","Excelente para disfrutar en familia y amigos el bosque","Seguro","Aguascalientes","San José de Gracia","Cualquier temporada",28,7);

UPDATE publicaciones
SET categoria = "pueblo"
WHERE id_publicacion= 1;
 
   -- Insertar en tabla whish-pub
SELECT * FROM `dviaje`.whishlist_has_publicaciones;
ALTER TABLE `dviaje`.whishlist_has_publicaciones AUTO_INCREMENT = 1;
INSERT INTO whishlist_has_publicaciones(whishlist_id_whishlis,publicaciones_id_publicacion) VALUE
 (1,1);
 INSERT INTO whishlist_has_publicaciones(whishlist_id_whishlis,publicaciones_id_publicacion) VALUE
 (2,2);
INSERT INTO whishlist_has_publicaciones(whishlist_id_whishlis,publicaciones_id_publicacion) VALUE
 (3,3);
INSERT INTO whishlist_has_publicaciones(whishlist_id_whishlis,publicaciones_id_publicacion) VALUE
 (4,4);
INSERT INTO whishlist_has_publicaciones(whishlist_id_whishlis,publicaciones_id_publicacion) VALUE
 (5,6);
 
 
    -- Insertar en tabla img-pub
SELECT * FROM `dviaje`.imagenes_has_publicaciones;
ALTER TABLE `dviaje`.whishlist_has_publicaciones AUTO_INCREMENT = 1;
INSERT INTO imagenes_has_publicaciones(imagenes_idimagenes,publicaciones_id_publicacion) VALUE  (1,1);
INSERT INTO imagenes_has_publicaciones(imagenes_idimagenes,publicaciones_id_publicacion) VALUE  (2,2);
INSERT INTO imagenes_has_publicaciones(imagenes_idimagenes,publicaciones_id_publicacion) VALUE  (3,3);
INSERT INTO imagenes_has_publicaciones(imagenes_idimagenes,publicaciones_id_publicacion) VALUE  (4,4);
INSERT INTO imagenes_has_publicaciones(imagenes_idimagenes,publicaciones_id_publicacion) VALUE  (5,6);
