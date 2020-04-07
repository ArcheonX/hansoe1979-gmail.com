alter table LDMS_M_UserRole
add [passwordSalt] nvarchar(250); 

update LDMS_M_UserRole
set [Password]='rQs8kl/WhNIouVUSK6YvXjzeXKA=' , [passwordSalt]='H/O9luM+jQyw86vscWcpRA==';