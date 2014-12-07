unit uPublic;

interface
uses
    DB,Ora,DBClient;
Const
    strUserName = 'gzhbv8';
    strPassword ='gzhbv8';
    strUrl='10.75.4.1:1521:orcl';
    strAssignedSql='select * from vBasAssetAll where remark2 is not null ';
    strNoAssignedSql='select * from vBasAssetAll where remark2 is  null';
    strDeptSql='select pydm,vcDeptName,'''' as oaDeptCode,'''' as oaDeptName,'''' as compareflag, ''''  errorcode from basdeptcode';

var
     OraSession:TOraSession;
     AssignedACDS,noAssignedAcds: TClientDataSet ;
     DeptAcds,PersonAcds:TClientDataSet;
     OaDeptAcds,OAPersonAcds:TClientDataSet;

implementation

end.
