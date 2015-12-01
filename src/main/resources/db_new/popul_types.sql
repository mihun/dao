
/* OBJTYPE */
INSERT INTO OBJTYPE (OBJECT_TYPE_ID,PARENT_ID,CODE,NAME,DESCRIPTION) VALUES (1,NULL,'USER','user',NULL);
INSERT INTO OBJTYPE (OBJECT_TYPE_ID,PARENT_ID,CODE,NAME,DESCRIPTION) VALUES (2,1,'ADMINISTRATOR','administrator',NULL);
INSERT INTO OBJTYPE (OBJECT_TYPE_ID,PARENT_ID,CODE,NAME,DESCRIPTION) VALUES (3,1,'WAITER','waiter',NULL);
INSERT INTO OBJTYPE (OBJECT_TYPE_ID,PARENT_ID,CODE,NAME,DESCRIPTION) VALUES (4,1,'CLIENT','client',NULL);
INSERT INTO OBJTYPE (OBJECT_TYPE_ID,PARENT_ID,CODE,NAME,DESCRIPTION) VALUES (5,1,'COOK','cook',NULL);
INSERT INTO OBJTYPE (OBJECT_TYPE_ID,PARENT_ID,CODE,NAME,DESCRIPTION) VALUES (6,6,'SECTION','section',NULL);
INSERT INTO OBJTYPE (OBJECT_TYPE_ID,PARENT_ID,CODE,NAME,DESCRIPTION) VALUES (7,6,'DISH','dish',NULL);
INSERT INTO OBJTYPE (OBJECT_TYPE_ID,PARENT_ID,CODE,NAME,DESCRIPTION) VALUES (8,NULL,'INGREDIENT','ingredient',NULL);
INSERT INTO OBJTYPE (OBJECT_TYPE_ID,PARENT_ID,CODE,NAME,DESCRIPTION) VALUES (9,7,'ORDER_DISH','orderDish',NULL);
INSERT INTO OBJTYPE (OBJECT_TYPE_ID,PARENT_ID,CODE,NAME,DESCRIPTION) VALUES (10,7,'RECOMMENDATION','recommendation',NULL);
INSERT INTO OBJTYPE (OBJECT_TYPE_ID,PARENT_ID,CODE,NAME,DESCRIPTION) VALUES (11,NULL,'RESTAURANT','restaurant',NULL);
INSERT INTO OBJTYPE (OBJECT_TYPE_ID,PARENT_ID,CODE,NAME,DESCRIPTION) VALUES (12,11,'TABLE','table',NULL);
INSERT INTO OBJTYPE (OBJECT_TYPE_ID,PARENT_ID,CODE,NAME,DESCRIPTION) VALUES (13,NULL,'ORDER','order',NULL);



/* ATTRTYPE */

/* USER */
INSERT INTO ATTRTYPE (ATTR_ID,OBJECT_TYPE_ID,OBJECT_TYPE_ID_REF,CODE,NAME) VALUES (1,1,NULL,'FIRST_NAME','firstName');
INSERT INTO ATTRTYPE (ATTR_ID,OBJECT_TYPE_ID,OBJECT_TYPE_ID_REF,CODE,NAME) VALUES (2,1,NULL,'LAST_NAME','lastName');
INSERT INTO ATTRTYPE (ATTR_ID,OBJECT_TYPE_ID,OBJECT_TYPE_ID_REF,CODE,NAME) VALUES (3,1,NULL,'REGISTR_DATE','registrationDate');
INSERT INTO ATTRTYPE (ATTR_ID,OBJECT_TYPE_ID,OBJECT_TYPE_ID_REF,CODE,NAME) VALUES (4,1,NULL,'PHONE','phoneNumber');
INSERT INTO ATTRTYPE (ATTR_ID,OBJECT_TYPE_ID,OBJECT_TYPE_ID_REF,CODE,NAME) VALUES (5,1,NULL,'BIRTHDAY','birthday');

/* WAITER */
INSERT INTO ATTRTYPE (ATTR_ID,OBJECT_TYPE_ID,OBJECT_TYPE_ID_REF,CODE,NAME) VALUES (6,3,13,'SERVICE','service');

/* CLIENT */
INSERT INTO ATTRTYPE (ATTR_ID,OBJECT_TYPE_ID,OBJECT_TYPE_ID_REF,CODE,NAME) VALUES (7,4,13,'MAKE','make');

/* COOK */
INSERT INTO ATTRTYPE (ATTR_ID,OBJECT_TYPE_ID,OBJECT_TYPE_ID_REF,CODE,NAME) VALUES (8,5,NULL,'RANK','rank');
INSERT INTO ATTRTYPE (ATTR_ID,OBJECT_TYPE_ID,OBJECT_TYPE_ID_REF,CODE,NAME) VALUES (9,5,NULL,'SKILL_INFO','skillInfo');

/* DISH */
INSERT INTO ATTRTYPE (ATTR_ID,OBJECT_TYPE_ID,OBJECT_TYPE_ID_REF,CODE,NAME) VALUES (10,7,NULL,'PICTURE','dishPicture');
INSERT INTO ATTRTYPE (ATTR_ID,OBJECT_TYPE_ID,OBJECT_TYPE_ID_REF,CODE,NAME) VALUES (11,7,NULL,'PRICE','dishPrice');
INSERT INTO ATTRTYPE (ATTR_ID,OBJECT_TYPE_ID,OBJECT_TYPE_ID_REF,CODE,NAME) VALUES (12,7,NULL,'PREP_TIME','preparetionTime');
INSERT INTO ATTRTYPE (ATTR_ID,OBJECT_TYPE_ID,OBJECT_TYPE_ID_REF,CODE,NAME) VALUES (13,7,NULL,'POPUL','popularity');

/* INGREDIENT */
INSERT INTO ATTRTYPE (ATTR_ID,OBJECT_TYPE_ID,OBJECT_TYPE_ID_REF,CODE,NAME) VALUES (14,8,7,'CONTAINED','IngredientInDish');

/* ORDER_DISH */
INSERT INTO ATTRTYPE (ATTR_ID,OBJECT_TYPE_ID,OBJECT_TYPE_ID_REF,CODE,NAME) VALUES (15,9,NULL,'COUNT','count');
INSERT INTO ATTRTYPE (ATTR_ID,OBJECT_TYPE_ID,OBJECT_TYPE_ID_REF,CODE,NAME) VALUES (16,9,NULL,'AMOUNT','amount');
INSERT INTO ATTRTYPE (ATTR_ID,OBJECT_TYPE_ID,OBJECT_TYPE_ID_REF,CODE,NAME) VALUES (17,9,NULL,'COMMENT','comment');
INSERT INTO ATTRTYPE (ATTR_ID,OBJECT_TYPE_ID,OBJECT_TYPE_ID_REF,CODE,NAME) VALUES (18,9,NULL,'ORDER_DATE','orderDate');
INSERT INTO ATTRTYPE (ATTR_ID,OBJECT_TYPE_ID,OBJECT_TYPE_ID_REF,CODE,NAME) VALUES (19,9,NULL,'STATUS','status');
INSERT INTO ATTRTYPE (ATTR_ID,OBJECT_TYPE_ID,OBJECT_TYPE_ID_REF,CODE,NAME) VALUES (20,9,13,'INCLUDED','dishInOrder');

/* RECOMMENDATION */
INSERT INTO ATTRTYPE (ATTR_ID,OBJECT_TYPE_ID,OBJECT_TYPE_ID_REF,CODE,NAME) VALUES (21,10,7,'OFFER','offer');

/* RESTAURANT */
INSERT INTO ATTRTYPE (ATTR_ID,OBJECT_TYPE_ID,OBJECT_TYPE_ID_REF,CODE,NAME) VALUES (22,11,NULL,'PHONE','restaurantPhoneNumber');
INSERT INTO ATTRTYPE (ATTR_ID,OBJECT_TYPE_ID,OBJECT_TYPE_ID_REF,CODE,NAME) VALUES (23,11,NULL,'ADDRESS','restaurantAddress');
INSERT INTO ATTRTYPE (ATTR_ID,OBJECT_TYPE_ID,OBJECT_TYPE_ID_REF,CODE,NAME) VALUES (24,11,NULL,'WEB_SITE','restaurantWebSite');

/* TABLE */
INSERT INTO ATTRTYPE (ATTR_ID,OBJECT_TYPE_ID,OBJECT_TYPE_ID_REF,CODE,NAME) VALUES (25,12,NULL,'NUMBER','number');
INSERT INTO ATTRTYPE (ATTR_ID,OBJECT_TYPE_ID,OBJECT_TYPE_ID_REF,CODE,NAME) VALUES (26,12,13,'LINKED','linked');



/* ORDER */
INSERT INTO ATTRTYPE (ATTR_ID,OBJECT_TYPE_ID,OBJECT_TYPE_ID_REF,CODE,NAME) VALUES (27,13,NULL,'ORDER_COST','orderCost');
INSERT INTO ATTRTYPE (ATTR_ID,OBJECT_TYPE_ID,OBJECT_TYPE_ID_REF,CODE,NAME) VALUES (28,13,NULL,'START_ORDER','orderCost');
INSERT INTO ATTRTYPE (ATTR_ID,OBJECT_TYPE_ID,OBJECT_TYPE_ID_REF,CODE,NAME) VALUES (29,13,NULL,'END_ORDER','orderCost');

commit;


