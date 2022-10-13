USE BAMX;

INSERT INTO sex(id,sexName)
VALUES
(1,"Hombre"),
(2,"Mujer"),
(3,"No especificado");

INSERT INTO questionType(id,qType)
VALUES
(1,"Pregunta de respuesta corta"),
(2,"Pregunta de respuesta larga"),
(3,"Pregunta de opción múltiple (4 opciones)"),
(4,"Pregunta de opción múltiple (5 opciones)"),
(5,"Pregunta de opción múltiple (6 opciones)"),
(6,"Pregunta de opción múltiple (8 opciones)");

INSERT INTO questionOptions(id,optionName,optionValue)
VALUES
(0,"",0)
(1,"1",0),
(1,"2",1),
(1,"3",2),
(1,"4",3),
(1,"5 o más",4),
(2,"Sí",0),
(2,"2 de cada 3 veces",1),
(2,"1 de cada 3 veces",2),
(2,"No",3),
(3,"Muy poco (10% o menos)",0),
(3,"Poco (11 a 30%)",1),
(3,"Considerable (31 a 50%)",2),
(3,"Una gran parte (51 a 70%",3),
(3,"La mayoría (71 a 90%)",4),
(3,"Casi todo (Más del 90%)",5),
(4,"Diario (6-7 veces por semana)",0),
(4,"Regularmente (4-5 veces por semana)",1),
(4,"Ocasionalmente (2-3 veces por semana)",2),
(4,"Casi nunca(1 vez por semana o menos)",3),
(4,"Nunca",4),
(5,"1/4 de taza (50gr)",),
(5,"1/2 de taza (100gr)",),
(5,"3/4 de taza (150gr)",),
(5,"1 taza (200gr)",),
(5,"1 taza y media (300gr)",),
(5,"2 tazas (400gr)",),
(5,"3 tazas o más (+600gr)",),
(5,"Nada",);

INSERT INTO questions(id,questionType,question,questionDescription,isActive) 
VALUES
(1,4,"¿Cuántas comidas se hacen al día?","","T",1),
(2,3,"¿Se añade sal a las comidas preparadas?","","T",2),
(3,5,"¿Qué porcentaje del ingreso familiar se destinó a la alimentación?","","T",3),
(4,5,"¿Con qué frecuencia se consume leche?","","T",4),
(5,6,"¿En qué cantidad se consume leche?","","T",5),
(6,5,"¿Con qué frecuencia se consume pollo?","","T",4),
(7,6,"¿En qué cantidad se consume pollo?","","T",5),
(8,5,"¿Con qué frecuencia se consume atún?","","T",4),
(9,6,"¿En qué cantidad se consume atún?","","T",5),
(10,5,"¿Con qué frecuencia se consume carne de res?","","T",4),
(11,6,"¿En qué cantidad se consume carne de res?","","T",5),
(12,5,"¿Con qué frecuencia se consume carne de cerdo?","","T",4),
(13,6,"¿En qué cantidad se consume carne de cerdo?","","T",5),
(14,5,"¿Con qué frecuencia se consume huevo?","","T",4),
(15,6,"¿En qué cantidad se consume huevo?","","T",5),
(16,5,"¿Con qué frecuencia se consume arroz?","","T",4),
(17,6,"¿En qué cantidad se consume arroz?","","T",5),
(18,5,"¿Con qué frecuencia se consume tortilla/pan/galletas?","","T",4),
(19,6,"¿En qué cantidad se consume tortilla/pan/galletas?","","T",5),
(20,5,"¿Con qué frecuencia se consume verduras (crudas o cocidas)?","","T",4),
(21,6,"¿En qué cantidad se consume verduras (crudas o cocidas)?","","T",5),
(22,5,"¿Con qué frecuencia se consume verduras (en lata o jugo)?","","T",4),
(23,6,"¿En qué cantidad se consume verduras (en lata o jugo)?","","T",5),
(24,5,"¿Con qué frecuencia se consume frutas enteras?","","T",4),
(25,6,"¿En qué cantidad se consume frutas enteras?","","T",5),
(26,5,"¿Con qué frecuencia se consume frutas (enlatadas o en jugo)?","","T",4),
(27,6,"¿En qué cantidad se consume frutas (enlatadas o en jugo)?","","T",5),
(28,5,"¿Con qué frecuencia se consume frijol/lenteja/garbanzo?","","T",4),
(29,6,"¿En qué cantidad se consume frijol/lenteja/garbanzo?","","T",5),
(30,5,"¿Con qué frecuencia se consume nuez/cacahuate/pistache?","","T",4),
(31,6,"¿En qué cantidad se consume nuez/cacahuate/pistache?","","T",5),
(32,5,"¿Con qué frecuencia se consume refresco?","","T",4),
(33,6,"¿En qué cantidad se consume refresco?","","T",5),
(34,2,"Comentarios adicionales:","","T",0);

INSERT INTO food(foodName,foodDesc,lipidos,carbohidratos,proteinas,quantity,stock,expiration)
VALUES
("Leche","",4,12,9,0,),
("Pollo","",,,,0,),
("Atún","",,,,0,),
("Carne de res","",,,,0,),
("Carne de cerdo","",,,,0,),
("Huevo","",,,,0,),
("Arroz","",,,,0,),
("Tortillas, pan o galletas","",,,,0,),
("Verduras crudas o cocidas","",,,,0,),
("Verduras en lata o jugo","",,,,0,),
("Frutas enteras","",,,,0,),
("Frutas enlatadas o en jugo","",,,,0,),
("Frijol, lenteja o garbanzo","",,,,0,),
("Nuez, cacahuate o pistache","",,,,0,),
("Refresco","",,,,0,),
