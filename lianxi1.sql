select deptno, dname, loc from dept;
select empno, ename, job, mgr, hiredate, sal, comm, deptno from emp;
select grade, losal, hisal from salgrade;

--ppt3
--1.��ѯְλΪSALESMAN��Ա����š�ְλ����ְ���ڡ�
select empno, job, hiredate from emp where job='SALESMAN';

--2.��ѯ1985��12��31��֮ǰ��ְ��Ա����������ְ���ڡ�


--3.��ѯ���ű�Ų���10���ŵ�Ա�����������ű�š�
select ename, deptno from emp where deptno noselect ename, hiredate from emp where hiredate<to_date('31-12-1985','dd-mm-yyyy');t in(10);

--4.��ѯ��ְ������82����85���Ա����������ְ����
select ename, hiredate from emp where hiredate between to_date('31-12-1981','dd-mm-yyyy') and to_date('31-12-1985','dd-mm-yyyy');

--5.��ѯ��н��3000��5000��Ա����������н��
select ename, sal from emp where sal between 3000 and 5000;

--6.��ѯ���ű��Ϊ10����20��Ա�����������ű�š�
select ename, deptno from emp where deptno not in(10,20);
s
--7.��ѯ������Ϊ7902, 7566, 7788��Ա�������������š�
select mgr, ename from emp where mgr in(7902,7566,7788);

--8.��ѯԱ��������W��ͷ��Ա��������
select ename from emp where ename like 'W%';

--9.��ѯԱ������������2���ַ�ΪT��Ա��������
select ename from emp where ename like '%T_';

--10.��ѯ����Ϊ�յ�Ա������������
select ename, comm from emp where comm is null;

--11.��ѯ���ʳ���2000����ְλ��MANAGER,����ְλ��SALESMAN��Ա��������ְλ�����ʡ�
select ename, job, sal from emp where sal>2000 and job='MANAGER' or job='SALESMAN';

--12.��ѯ���ʳ���2000����ְλ�� MANAGER��SALESMAN��Ա��������ְλ�����ʡ�
select ename, job, sal from emp where sal>2000 and (job='MANAGER' or job='SALESMAN');

--13.��ѯ������10����20�����ҹ�����3000��5000֮���Ա�����������š����ʡ�
select ename, sal, deptno from emp where deptno in(10,20) and sal between 3000 and 5000;

--14.��ѯ��ְ������81�꣬����ְλ����SALES��ͷ��Ա����������ְ���ڡ�ְλ��
select ename, job, hiredate from emp where hiredate between to_date('31-12-1980','dd-mm-yyyy') and to_date('1-1-1982','dd-mm-yyyy') and job not like 'SALES%';

--15.��ѯְλΪSALESMAN��MANAGER�����ű��Ϊ10����20����������A��Ա��������ְλ�����ű�š�???
select ename, job, deptno from emp where (job='SALESMAN' or job='MANAGER') and deptno in(10,20) and ename like '%A%';

--16.��ѯ������20��30��Ա�����������ű�ţ������չ�����������
select ename, deptno from emp where deptno in(20,30) order by deptno ASC;

--17.��ѯ������2000-3000֮�䣬���Ų���10�ŵ�Ա�����������ű�ţ����ʣ������ղ������򣬹��ʽ�������
select ename, sal, deptno from emp where sal between 2000 and 3000 and deptno not in(10) order by deptno asc, sal desc;

--18.��ѯ��ְ������82����83��֮�䣬ְλ��SALES����MAN��ͷ��Ա����������ְ���ڣ�ְλ����������ְ���ڽ�������???
select ename, job, hiredate from emp where hiredate between to_date('31-12-1981','dd-mm-yyyy') and to_date('01-01-1984','dd-mm-yyyy') and (ename like 'SALES%' or ename like 'MAN%') order by hiredate desc;

--19.��ѯ��ְʱ����1982-7-9֮�󣬲��Ҳ�����SALESMAN������Ա����������ְʱ�䡢ְλ��
select ename, job, hiredate from emp where hiredate>to_date('07-7-1982','dd-mm-yyyy') and job not in('SALESMAN');

--20.��ѯԱ�������ĵ�������ĸ��a��Ա��������
select ename from emp where ename like '__A%';

--21.��ѯ����10��20�Ų��������Ա�����������ű�š�
select ename, deptno from emp where deptno not in(10,20);

--22.��ѯ���ź�Ϊ30��Ա������Ϣ���Ȱ����ʽ��������ٰ�������������??? 
select empno, ename, job, mgr, hiredate, sal, comm, deptno from emp where deptno='30' order by sal desc, ename asc;

--23.��ѯû���ϼ���Ա��(�����Ϊ��)��Ա��������
select ename from emp where mgr is null;

--24.��ѯ���ʴ��ڵ���4500���Ҳ���Ϊ10����20��Ա��������\���ʡ����ű�š�
select ename, sal, deptno from emp where sal >=4500 and deptno in(10,20);

--ppt2
--1.ʹ�����ַ�ʽ��ѯ����Ա��(EMP)��Ϣ
--��
select empno, ename, job, mgr, hiredate, sal, comm, deptno from emp;
--��
select * from emp;

--2.��ѯ(EMP)Ա����š�Ա��������Ա��ְλ��Ա����н���������ű�š�
select empno, ename, job, sal, deptno from emp;

--3.Ա��ת������н�ϵ�20%�����ѯ������Ա��ת�������н��
select ename Ա������, sal*1.2 ת������н from emp;

--4.Ա��������6���£�ת������н�ϵ�20%�����ѯ������Ա��������һ�����н���ã������ǽ��𲿷�,��н��������6���µ���н+ת����6���µ���н)
select ename Ա������, sal*6+sal*1.2*6 ��һ����н from emp;

--5.Ա��������6���£�ת������н�ϵ�20%�����ѯ������Ա��������һ����������루�迼�ǽ��𲿷�)��Ҫ����ʾ�б���ΪԱ���������������룬�������룬�����롣
select ename Ա������, sal*6+sal*1.2*6 ��������, nvl(comm*12,0) ��������, (sal*6+sal*1.2*6)+nvl(comm*12,0) ������ from emp;

--6.Ա��������6���£�ת������н�ϵ�20%�����ѯ������Ա��������һ����������루�迼�ǽ��𲿷�)��Ҫ����ʾ��ʽΪ:XXX�ĵ�һ��������ΪXXX��
select ename||'�ĵ�һ��������Ϊ',(sal*6+sal*1.2*6)+nvl(comm*12,0) ������ from emp;

--7.��ѯԱ������һ�����ļ��ָ�λ���͡�
select distinct job from emp;

--8.�ֱ�ѡ��Ա�������ű�н�ʵȼ����е��������ݡ�
select empno, ename, job, mgr, hiredate, sal, comm, deptno from emp;
select deptno, dname, loc from dept;
select grade, losal, hisal from salgrade;

--9.�ֱ�鿴Ա�������ű�н�ʵȼ���ı�ṹ��
SQL> desc dept
Name   Type         Nullable Default Comments 
------ ------------ -------- ------- -------- 
DEPTNO NUMBER(2)                              
DNAME  VARCHAR2(14) Y                         
LOC    VARCHAR2(13) Y                         

SQL> desc emp
Name     Type         Nullable Default Comments 
-------- ------------ -------- ------- -------- 
EMPNO    NUMBER(4)                              
ENAME    VARCHAR2(10) Y                         
JOB      VARCHAR2(9)  Y                         
MGR      NUMBER(4)    Y                         
HIREDATE DATE         Y                         
SAL      NUMBER(7,2)  Y                         
COMM     NUMBER(7,2)  Y                         
DEPTNO   NUMBER(2)    Y                         

SQL> desc salgrade
Name  Type   Nullable Default Comments 
----- ------ -------- ------- -------- 
GRADE NUMBER Y                         
LOSAL NUMBER Y                         
HISAL NUMBER Y  

select empno, ename, job, mgr, hiredate, sal, comm, deptno from emp
--ppt4
--1.дһ����ѯ,������ĸ��д��������ĸСд��ʾ��Ա�� ename����ʾ���ֵĳ��ȣ�����ÿ��һ���ʵ��ı�ǩ���������������й�Ա���ֵĿ�ʼ��ĸ��J��A �� M �Ĺ�Ա�����Բ�ѯ�������Ա��ename�������򡣣���ʾ��ʹ��initcap��length��substr��
select initcap(ename), length(ename) ���ֳ��� from emp where substr(ename,1,1) in('J','A','M')

--2.��ѯԱ���������а�����д��Сд��ĸA��Ա��������
select ename from emp where ename like '%a%' or ename like '%A%'

--3.��ѯ���ű��Ϊ10��20����ְ������81��5��1��֮�󣬲��������а�����д��ĸA��Ա��������Ա���������ȣ���ʾ��Ҫ��ʹ��INSTR����������ʹ��like�����ж�)
select ename, length(ename) Ա���������� from emp where deptno in(10,20) and hiredate>to_date('01-05-1981','dd-MM-YYYY') and instr(ename,'A')>0

--4.��ѯÿ��ְ���ı��,����������Ҫ�󽫲�ѯ�������ݰ���һ���ĸ�ʽ�ϲ���һ���ַ���.ǰ10λ�����,���㲿����*���,�����;�м�10λ�����������㲿����*���,�����;��10λ�����ʣ����㲿����*���,�Ҷ���
select empno Ա�����,ename Ա������,rpad(empno,10,'*')||rpad(ename,10,'*')||lpad(sal,10,'*') ���� from emp

--5.дһ����ѯ���ֱ����100.456 �������뵽С������2λ����1λ������λ��ֵ��
select round(100.456,2) С������2λ,round(100.456,1) С������1λ,round(100.456) ����λ from dual

--6.дһ����ѯ���ֱ����100.456 ��С������2λ����1λ������λ�ضϵ�ֵ��
select trunc(100.456,2) С������2λ,trunc(100.456,1) С������1λ,trunc(100.456) ����λ from dual

--7.��ѯÿ��Ա����ֹ������һ����ְ�����죿
select ename, round(sysdate-hiredate) ��ְ���� from emp

--8.��ǰ����Ϊ2015�ָ꣬�����ڸ�ʽΪDD-MON-RR,ָ������Ϊ01-1��-01��������ʵ�������������Ϊ��
select to_date('01-1��-01','DD-MON-RR') ���� from dual

--9.��ǰ����Ϊ2015�ָ꣬�����ڸ�ʽΪDD-MON-RR,ָ������Ϊ01-1��-95��������ʵ�������������Ϊ��
select to_date('01-1��-95','DD-MON-RR') ���� from dual

--10.��ǰ����Ϊ1998�ָ꣬�����ڸ�ʽΪDD-MON-RR,ָ������Ϊ01-1��-01��������ʵ�������������Ϊ��
select to_date('01-1��-01','DD-MON-RR') ���� from dual

--11.��ǰ����Ϊ1998�ָ꣬�����ڸ�ʽΪDD-MON-RR,ָ������Ϊ01-1��-95��������ʵ�������������Ϊ��
select to_date('01-1��-95','DD-MON-RR') ���� from dual

--12.��ѯ��������ǰʱ��
select sysdate from dual

--13.��ѯ����10,20��Ա����ֹ��2000��1��1�գ������˶��ٸ��£���ְ���·ݡ�(��ʾ��ʹ��months_between,extract)
select ename,round(months_between(to_date('01-01-2000','dd-MM-YYYY'), hiredate)) ��������, extract(month from hiredate) ��ְ�·� from emp where deptno in(10,20) 

--14.���Ա��������6���£���ѯְλ����MANAGER��Ա����������ְ���ڣ�ת�����ڣ���ְ���ں�ĵ�һ������һ,��ְ���µ����һ�����ڡ�����ʾ��ʹ��add_months,next_day,last_day)
select ename, hiredate ��ְ����, add_months(hiredate,6) ת������, next_day(hiredate,'����һ') ��ְ���һ������һ, last_day(hiredate) ��ְ�������һ�� from emp where job not in('MANAGER')

--15.��ʾ������ϵͳ��ǰʱ�䣬��ʽΪ2007-10-12 17:11:11(��ʾ��ʹ��to_char����)
select to_char(sysdate,'YYYY-MM-DD hh:mm:ss') from dual

--16.��ʾename��hiredate �� ��Ա��ʼ�����������ڼ����б�ǩDAY(��ʾ��ʹ��to_char����)
select ename, hiredate, to_char(hiredate,'DAY') DAY from emp

--17.��ѯԱ�����������ʣ���ʽ���Ĺ��ʣ���999,999.99�� (��ʾ��ʹ��to_char����)
select ename, sal, to_char(sal,'L99,999') ���� from emp

--18.���ַ���2015-3��-18 13:13:13 ת�������ڸ�ʽ���������ϵͳ��ǰʱ���������졣 (��ʾ��ʹ��to_date����)???
select round( sysdate - to_date('2015-3��-18 13:13:13','yyyy-mon-dd hh24:mi:ss'))�� from dual;

--19.����2000��1��1�յ������ж����£������ܣ��������룩��
select round(months_between(sysdate,to_date('01-01-2000','DD-MM-YYYY'))) ��,extract(DAY from (to_date('01-01-2000','DD-MM-YYYY'))) from dual

--20.��ѯԱ��ENAME�ĵ�������ĸ��A��Ա������Ϣ(ʹ��2������)��
select ename Ա������
from emp
where SUBSTR(ename,3,1)='A';

--21.ʹ��trim�������ַ�����hello������  Hello ������bllb������ hello    ���ֱ���õ������ַ���ello��Hello��ll��hello��
SELECT TRIM('h' FROM 'hello'),TRIM(' 'FROM 'Hello'),TRIM('b' FROM 'bllb'),TRIM(' 'FROM 'hello') from dual;

--22.��Ա�����ʰ����¸�ʽ��ʾ��123,234.00 RMB ��
select ename Ա������,to_char(sal,'999,999.00')||'RMB' ����
FROM EMP;

--23.��ѯԱ�����������侭���ţ�Ҫ�����û�о������ʾ��No Manager���ַ�����
select ename Ա��������,nvl(to_char(mgr) , 'No Manager')������ from emp;

--24.��Ա���Ĳμӹ������ڰ����¸�ʽ��ʾ���·�/��ݡ� 
select hiredate ��ְ���� ,to_char(hiredate,'mm/yyyy')||'��' ��������
from emp;

--25.��Ա�����в�ѯ��Ա���Ĺ��ʣ�������Ӧ��˰��������С��1000,˰��Ϊ0��������ʴ��ڵ���1000��С��2000��˰��Ϊ10����������ʴ��ڵ���2000��С��3000��˰��Ϊ15����������ʴ��ڵ���3000��˰��Ϊ20����
select empno, ename, job, mgr, hiredate, sal, comm, deptno from emp
select  ename, sal from emp

--26.����һ����ѯ��ʾ���й�Ա�� ename�� sal����ʽ��salΪ 15 ���ַ����ȣ��� $ ����䣬�б�ǩ SALARY��
select ename, sal, lpad(sal,15,'$') SALARY from emp 




































