alter table LDMS_M_UserRole
alter column [passwordSalt] nvarchar(1024); 
alter table LDMS_M_UserRole
alter column [passwordSalt] nvarchar(1024); 

update LDMS_M_UserRole
set [Password]='rQs8kl/WhNIouVUSK6YvXjzeXKA=' , [passwordSalt]='H/O9luM+jQyw86vscWcpRA==';

 