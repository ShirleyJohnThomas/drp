delete from t_user;

delete from t_data_dict;

delete from t_client;

delete from t_temi_client;

delete from t_table_id;

--��ʼ��ϵͳ����Ա
insert into t_user(user_id,user_name,password) values ('root','ϵͳ����Ա','123');
--��ʼ�������̼���
insert into t_data_dict (id,name,category) values ('100','һ��������','A');
insert into t_data_dict (id,name,category) values ('101','����������','A');
insert into t_data_dict (id,name,category) values ('102','����������','A');
insert into t_data_dict (id,name,category) values ('103','�ļ�������','A');

--��ʼ���ն˿ͻ�����
insert into t_data_dict (id,name,category) values ('200','�׼�ҽԺ','B');
insert into t_data_dict (id,name,category) values ('201','�Ҽ�ҽԺ','B');
insert into t_data_dict (id,name,category) values ('202','����ҽԺ','B');
insert into t_data_dict (id,name,category) values ('203','ҩ��','B');
insert into t_data_dict (id,name,category) values ('204','����','B');

--��ʼ���������
insert into t_data_dict (id,name,category) values ('300','ҽ����е','C');
insert into t_data_dict (id,name,category) values ('301','�г�ҩ','C');
insert into t_data_dict (id,name,category) values ('302','��ҩ','C');

--��ʼ��������λ
insert into t_data_dict (id,name,category) values ('400','��','D');
insert into t_data_dict (id,name,category) values ('401','Ƭ','D');
insert into t_data_dict (id,name,category) values ('402','��','D');

--��ʼ��������
insert into t_client(id,pid,name,is_leaf,is_client) values (10000,0,'���з�����','N','N');
insert into t_client(id,pid,name,is_leaf,is_client) values (10001,10000,'������','N','N');
insert into t_client(id,pid,name,is_leaf,is_client) values (10002,10000,'������','Y','N');
insert into t_client(id,pid,name,is_leaf,is_client) values (10003,10000,'������','Y','N');
insert into t_client(id,pid,name,is_leaf,is_client) values (10004,10001,'������','N','N');
insert into t_client(id,pid,name,is_leaf,is_client,client_level_id,client_id) values (10005,10004,'����ҽҩ�ɷ����޹�˾','Y','Y','100','A0001');

--��ʼ���ն�
insert into t_temi_client(id,pid,name,is_leaf,is_temi_client) values (20000,0,'�����ն˿ͻ�','N','N');
insert into t_temi_client(id,pid,name,is_leaf,is_temi_client) values (20001,20000,'������','N','N');
insert into t_temi_client(id,pid,name,is_leaf,is_temi_client) values (20002,20000,'������','Y','N');
insert into t_temi_client(id,pid,name,is_leaf,is_temi_client) values (20003,20000,'������','Y','N');
insert into t_temi_client(id,pid,name,is_leaf,is_temi_client) values (20004,20001,'������','N','N');
insert into t_temi_client(id,pid,name,is_leaf,is_temi_client,temi_client_level_id,temi_client_id) values (20005,20004,'������ҽԺ','Y','Y','200','B0001');

--��ʼ��ά��������

insert into t_table_id (table_name,value) values ('t_client',10005);
insert into t_table_id (table_name,value) values ('t_temi_client',20005);
insert into t_table_id (table_name,value) values ('t_fiscal_year_period',0);

commit;
