USE dviaje;
-- Insertar en la tabla estado
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

-- Insertar en tabla usuario 
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

-- Insertar en tabla inicio de sesion
SELECT * FROM `dviaje`.inicio_sesion;
INSERT INTO inicio_sesion(idinicio_sesion,correo,contrasena) VALUE (1,"pacolatinojr2@gmail.com","SuperPacoCH14!2");
INSERT INTO inicio_sesion(idinicio_sesion,correo,contrasena) VALUE (2,"elgiorgio7@gmail.com","elbicho777");
INSERT INTO inicio_sesion(idinicio_sesion,correo,contrasena) VALUE (3,"mfloreszatarain95@gmail.com","Maga*031234");
INSERT INTO inicio_sesion(idinicio_sesion,correo,contrasena) VALUE (4,"enriquezbeyra@gmail.com","BeyraGEM1");
INSERT INTO inicio_sesion(idinicio_sesion,correo,contrasena) VALUE (5,"rafalba.o5@gmail.com","t4c05_t0d4y");
INSERT INTO inicio_sesion(idinicio_sesion,correo,contrasena) VALUE (6,"lupita.rubio@gmail.com","LaOriginalLupita");
INSERT INTO inicio_sesion(idinicio_sesion,correo,contrasena) VALUE (7,"max.morin@gmail.com","280492mori");

-- Insertar en tabla contactanos
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
 ("Iniciar sesión",
 "Ya me registré pero no sé como iniciar sesión",
 "¿Cómo iniciar sesión?",
 "Tienes que hacer click en la opción de iniciar sesión",4);
 INSERT INTO contactanos(asunto,mensaje,preguntas,respuestas,usuario_id_usuario) VALUE
 ("Problema contrasena",
 "Olvide mi contraseña y no puedo ingresar",
 "¿Cómo cambiar mi contrasena?",
 "Tienes que hacer click en la opción de olvidaste tu contraseña",5);
  INSERT INTO contactanos(asunto,mensaje,preguntas,respuestas,usuario_id_usuario) VALUE
 ("Iniciar sesión",
 "Ya me registré pero no sé como iniciar sesión",
 "¿Cómo iniciar sesión?",
 "Tienes que hacer click en la opción de iniciar sesión",6);
  INSERT INTO contactanos(asunto,mensaje,preguntas,respuestas,usuario_id_usuario) VALUE
 ("Iniciar sesión",
 "Ayuda con la contraseña",
 "¿Haz alcanzado el limite permitido de intentos de acceso?",
 "Tienes que hacer click en la opción de olvidaste tu contraseña",7);


 -- Insertar en tabla Whishlist
SELECT * FROM `dviaje`.whishlist;
INSERT INTO whishlist(publicacion,categoria, lugar,usuario_id_usuario) VALUE (1,"selva","Cascadas de Tamul",1);
INSERT INTO whishlist(publicacion,categoria, lugar,usuario_id_usuario) VALUE (2,"urbano","Festival Cervantino",2);
INSERT INTO whishlist(publicacion,categoria, lugar,usuario_id_usuario) VALUE (3,"playa","Xcaret",3);
INSERT INTO whishlist(publicacion,categoria, lugar,usuario_id_usuario) VALUE (4,"pueblo","Xochimilco",4);
INSERT INTO whishlist(publicacion,categoria, lugar,usuario_id_usuario) VALUE (5,"bosque","Sierra Fría",5);
INSERT INTO whishlist(publicacion,categoria, lugar,usuario_id_usuario) VALUE (6,"desierto","Dunas Samalayuca",6);
INSERT INTO whishlist(publicacion,categoria, lugar,usuario_id_usuario) VALUE (7,"montaña","Nevado de Toluca",7);


 -- Insertar en tabla imagenes
SELECT * FROM `dviaje`.imagenes;
INSERT INTO imagenes(url,lugar,estado_id_estado) VALUE
 ("https://www.infobae.com/new-resizer/lBmYyc6oVdrVH7jxDaZb5LU1Vrk=/768x432/filters:format(webp):quality(85)/cloudfront-us-east-1.images.arcpublishing.com/infobae/W6OLO54K2NGQTCXZFYIZ3W3WTM.jpg","Cascadas de Tamul",1);
 INSERT INTO imagenes(url,lugar,estado_id_estado) VALUE
 ("https://www.mexicodestinos.com/blog/wp-content/uploads/2017/04/festival-cervantino-2017-todo-lo-que-debes-saber.jpg","Festival Cervantino",2);
INSERT INTO imagenes(url,lugar,estado_id_estado) VALUE
 ("https://consejosdecancun.com/wp-content/uploads/2018/07/xcaret-cancun.jpg","Xcaret",3);
 INSERT INTO imagenes(url,lugar,estado_id_estado) VALUE
("https://media.admagazine.com/photos/618a5eb896bc0f80f8b42c5f/3:2/w_4230,h_2820,c_limit/95874.jpg","Xochimilco", 4);
  INSERT INTO imagenes(url,lugar,estado_id_estado) VALUE
("https://th.bing.com/th/id/R.0206aac5a45e26674782282b82c98f8a?rik=QyfVT0yQaWdtHA&riu=http%3a%2f%2fmexicolindoyquerido.com.mx%2fmexico2%2fimages%2fIMAGENES_PARA_TEMPLATE%2fbellezas_naturales_de_mexico%2fP16_Sierra_Fria_Aguascalientes.png&ehk=%2b5iXmk10KA9RdyAnSAwQlhQx5SJDu3qX3d8tE2sTwNQ%3d&risl=&pid=ImgRaw&r=0","Sierra Fría", 5);
 INSERT INTO imagenes(url,lugar,estado_id_estado) VALUE
("https://wejoytrip.com/assets/uploads/imagenes/quehacer/17b6a-1550-sandboard-desierto-de-samalayuca.jpg","Dunas Samalayuca", 6);
 INSERT INTO imagenes(url,lugar,estado_id_estado) VALUE
("file:///C:/Users/LENOVO/Pictures/fotos%20de%20perfil/fotos%20estados/Nevado%20de%20Toluca.png","Nevado de Toluca", 7);


  -- Insertar en tabla imagenes
SELECT * FROM `dviaje`.publicaciones;
-- Maga YA
INSERT INTO publicaciones(titulo,fecha,tips,ruta,categoria,clima,descripcion,seguridad,estado,municipio,epoca_anual,reacciones,usuario_id_usuario) 
VALUE ("El festival más típico de México","2022-05-02","Llevar unos comodos zapatos para el bailongo","https://goo.gl/maps/Fh1hP99Ptsxv4RPSA","urbano","fresco",
"Excelente fin de semana en este pueblar","Medio seguro","Guanajuato","Guanajuato","Invierno",55,3);
INSERT INTO publicaciones(titulo,fecha,tips,ruta,categoria,clima,descripcion,seguridad,estado,municipio,epoca_anual,reacciones,usuario_id_usuario) 
VALUE ("El azul del mar Caribe","2022-05-03","Lleva tú bikinazo","https://goo.gl/maps/FWFAZUpt6NPaPThs5","playa","calido",
"Excelente fin de semana para disfrutar los bellos paisajes del mar Caribe","Muy seguro","Quintana Roo","Cancun","Verano",150,3);
-- -------------
INSERT INTO publicaciones(titulo,fecha,tips,ruta,categoria,clima,descripcion,seguridad,estado,municipio,epoca_anual,reacciones,usuario_id_usuario) 
VALUE ("El azul del mar Caribe","2022-05-03","Lleva tú bikinazo","https://goo.gl/maps/FWFAZUpt6NPaPThs5","calido",
"Excelente fin de semana para disfrutar los bellos paisajes del mar Caribe","Muy seguro","Quintana Roo","Cancun","Verano",150,3);
INSERT INTO publicaciones(titulo,fecha,tips,ruta,categoria,clima,descripcion,seguridad,estado,municipio,epoca_anual,reacciones,usuario_id_usuario) 
VALUE ("El azul del mar Caribe","2022-05-03","Lleva tú bikinazo","https://goo.gl/maps/FWFAZUpt6NPaPThs5","calido",
"Excelente fin de semana para disfrutar los bellos paisajes del mar Caribe","Muy seguro","Quintana Roo","Cancun","Verano",150,3);
INSERT INTO publicaciones(titulo,fecha,tips,ruta,categoria,clima,descripcion,seguridad,estado,municipio,epoca_anual,reacciones,usuario_id_usuario) 
VALUE ("El azul del mar Caribe","2022-05-03","Lleva tú bikinazo","https://goo.gl/maps/FWFAZUpt6NPaPThs5","calido",
"Excelente fin de semana para disfrutar los bellos paisajes del mar Caribe","Muy seguro","Quintana Roo","Cancun","Verano",150,3);
INSERT INTO publicaciones(titulo,fecha,tips,ruta,categoria,clima,descripcion,seguridad,estado,municipio,epoca_anual,reacciones,usuario_id_usuario) 
VALUE ("El azul del mar Caribe","2022-05-03","Lleva tú bikinazo","https://goo.gl/maps/FWFAZUpt6NPaPThs5","calido",
"Excelente fin de semana para disfrutar los bellos paisajes del mar Caribe","Muy seguro","Quintana Roo","Cancun","Verano",150,3);

-- Jorge
INSERT INTO publicaciones(titulo,fecha,tips,ruta,categoria,clima,descripcion,seguridad,estado,municipio,epoca_anual,reacciones,usuario_id_usuario) 
VALUE ("La sierra del sur de Jalisco","2022-04-30","Llevar ropa para el frío","https://goo.gl/maps/FWFAZUpt6NPaPThs5","pueblo","fresco",
"Excelente fin de semana en este pueblito","Muy seguro","Jalisco","Atemajac","Primavera",10,2);

-- Jorge
INSERT INTO publicaciones(titulo,fecha,tips,ruta,categoria,clima,descripcion,seguridad,estado,municipio,epoca_anual,reacciones,usuario_id_usuario) 
VALUE ("La sierra del sur de Jalisco","2022-04-30","Llevar ropa para el frío","https://goo.gl/maps/FWFAZUpt6NPaPThs5","pueblo","fresco",
"Excelente fin de semana en este pueblito","Muy seguro","Jalisco","Atemajac","Primavera",10,2);

-- Frank YA
INSERT INTO publicaciones(titulo,fecha,tips,ruta,categoria,clima,descripcion,seguridad,estado,municipio,epoca_anual,reacciones,usuario_id_usuario) 
VALUE ("La sierra del sur de Jalisco","2022-04-30","Llevar ropa para el frío","https://goo.gl/maps/FWFAZUpt6NPaPThs5","bosque","frio",
"Excelente fin de semana en este pueblito","Muy seguro","Jalisco","Atemajac","Primavera",10,1);
INSERT INTO publicaciones(titulo,fecha,tips,ruta,categoria,clima,descripcion,seguridad,estado,municipio,epoca_anual,reacciones,usuario_id_usuario) 
VALUE ("Adentrate a un pueblo minero en las entrañas de la sierra ","2022-08-13","Llevar ropa para el frío y la lluvia","https://goo.gl/maps/uPvQjwtoWNyCjH8u7","bosque","frio",
"Aprovecha tu puente para viajar a un pueblo magico colonial","Muy seguro","Jalisco","San Sebastian del Oeste","Verano",25,1);

-- BEYRA YA
INSERT INTO publicaciones(titulo,fecha,tips,ruta,categoria,clima,descripcion,seguridad,estado,municipio,epoca_anual,reacciones,usuario_id_usuario) 
VALUE ("Un lugar para visitar con la familia","2022-05-24","Ir con un grupo de personas para que sea más agradable el ambiente en la trajinera","https://goo.gl/maps/Rb2hwJJLER29nYvN8","pueblo","calido",
"Excelente para disfrutar el ambiente","Medio seguro","Ciudad de México","Xochimilco","Verano",20,4);

-- BEYRA
INSERT INTO publicaciones(titulo,fecha,tips,ruta,categoria,clima,descripcion,seguridad,estado,municipio,epoca_anual,reacciones,usuario_id_usuario) 
VALUE ("Un lugar para visitar con la familia","2022-05-24","Ir con un grupo de personas para que sea más agradable el ambiente en la trajinera","https://goo.gl/maps/Rb2hwJJLER29nYvN8","pueblo","calido",
"Excelente para disfrutar el ambiente","Medio seguro","Ciudad de México","Xochimilco","Verano",20,4);

-- RAFA YA
INSERT INTO publicaciones(titulo,fecha,tips,ruta,categoria,clima,descripcion,seguridad,estado,municipio,epoca_anual,reacciones,usuario_id_usuario) 
VALUE ("Disfruta la experiencia de un fin en la Sierra","2022-07-28","Lleva botas comodas, repelente y chamarra para el frio aunque sea verano",
"https://goo.gl/maps/hoyzi54R9969TGbm6","bosque","frio","Excelente para disfrutar en familia y amigos el bosque","Seguro","Aguascalientes","San José de Gracia","Cualquier temporada",128,5);

-- RAFA YA
INSERT INTO publicaciones(titulo,fecha,tips,ruta,categoria,clima,descripcion,seguridad,estado,municipio,epoca_anual,reacciones,usuario_id_usuario) 
VALUE ("Camarín de la Virgen y catacumbas de San Diego","2022-07-20","Pregunta en oficinas cuando habrá recorrido, ya que no está abierto diario al publico",
"https://goo.gl/maps/br8M6E5Vj11JzgLa8","urbano","templado","La mejor experiencia de arte y arquitectura sacra","Muy Seguro","Aguascalientes","Aguascalientes","Cualquier temporada",85,5);

-- LUPITA
INSERT INTO publicaciones(titulo,fecha,tips,ruta,categoria,clima,descripcion,seguridad,estado,municipio,epoca_anual,reacciones,usuario_id_usuario) 
VALUE ("Un lugar para visitar con la familia","2022-05-24","Ir con un grupo de personas para que sea más agradable el ambiente en la trajinera","https://goo.gl/maps/Rb2hwJJLER29nYvN8","pueblo","calido",
"Excelente para disfrutar el ambiente","Medio seguro","Ciudad de México","Xochimilco","Verano",20,6);

-- LUPITA
INSERT INTO publicaciones(titulo,fecha,tips,ruta,categoria,clima,descripcion,seguridad,estado,municipio,epoca_anual,reacciones,usuario_id_usuario) 
VALUE ("Un lugar para visitar con la familia","2022-05-24","Ir con un grupo de personas para que sea más agradable el ambiente en la trajinera","https://goo.gl/maps/Rb2hwJJLER29nYvN8","pueblo","calido",
"Excelente para disfrutar el ambiente","Medio seguro","Ciudad de México","Xochimilco","Verano",20,6);

-- MAX
INSERT INTO publicaciones(titulo,fecha,tips,ruta,categoria,clima,descripcion,seguridad,estado,municipio,epoca_anual,reacciones,usuario_id_usuario) 
VALUE ("Un lugar para visitar con la familia","2022-05-24","Ir con un grupo de personas para que sea más agradable el ambiente en la trajinera","https://goo.gl/maps/Rb2hwJJLER29nYvN8","pueblo","calido",
"Excelente para disfrutar el ambiente","Medio seguro","Ciudad de México","Xochimilco","Verano",20,6);

-- MAX
INSERT INTO publicaciones(titulo,fecha,tips,ruta,categoria,clima,descripcion,seguridad,estado,municipio,epoca_anual,reacciones,usuario_id_usuario) 
VALUE ("Un lugar para visitar con la familia","2022-05-24","Ir con un grupo de personas para que sea más agradable el ambiente en la trajinera","https://goo.gl/maps/Rb2hwJJLER29nYvN8","pueblo","calido",
"Excelente para disfrutar el ambiente","Medio seguro","Ciudad de México","Xochimilco","Verano",20,6);


   -- Insertar en tabla whish-pub
SELECT * FROM `dviaje`.whishlist_has_publicaciones;
INSERT INTO whishlist_has_publicaciones(whishlist_id_whishlis,publicaciones_id_publicacion) VALUE
 (1,1);
 INSERT INTO whishlist_has_publicaciones(whishlist_id_whishlis,publicaciones_id_publicacion) VALUE
 (2,2);
INSERT INTO whishlist_has_publicaciones(whishlist_id_whishlis,publicaciones_id_publicacion) VALUE
 (3,3);
INSERT INTO whishlist_has_publicaciones(whishlist_id_whishlis,publicaciones_id_publicacion) VALUE
 (4,4);
INSERT INTO whishlist_has_publicaciones(whishlist_id_whishlis,publicaciones_id_publicacion) VALUE
 (5,5);
 INSERT INTO whishlist_has_publicaciones(whishlist_id_whishlis,publicaciones_id_publicacion) VALUE
 (6,6);
 INSERT INTO whishlist_has_publicaciones(whishlist_id_whishlis,publicaciones_id_publicacion) VALUE
 (7,7);
 
 
     -- Insertar en tabla img-pub
SELECT * FROM `dviaje`.imagenes_has_publicaciones;
INSERT INTO imagenes_has_publicaciones(imagenes_idimagenes,publicaciones_id_publicacion) VALUE  (1,1);
INSERT INTO imagenes_has_publicaciones(imagenes_idimagenes,publicaciones_id_publicacion) VALUE  (2,2);
INSERT INTO imagenes_has_publicaciones(imagenes_idimagenes,publicaciones_id_publicacion) VALUE  (3,3);
INSERT INTO imagenes_has_publicaciones(imagenes_idimagenes,publicaciones_id_publicacion) VALUE  (4,4);
INSERT INTO imagenes_has_publicaciones(imagenes_idimagenes,publicaciones_id_publicacion) VALUE  (5,5);
INSERT INTO imagenes_has_publicaciones(imagenes_idimagenes,publicaciones_id_publicacion) VALUE  (6,6);
INSERT INTO imagenes_has_publicaciones(imagenes_idimagenes,publicaciones_id_publicacion) VALUE  (7,7);