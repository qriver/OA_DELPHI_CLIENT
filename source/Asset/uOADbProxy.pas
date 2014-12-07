unit uOADbProxy;

interface
uses wsAsset,comObj,Variants,XMLIntf,XMLDoc,SysUtils;

{ test }
 Type
  TOaDbProxy = class(TObject)
  private
    xmlHttp:oleVariant;
    procedure ParseAnswerXml(strXml: String; oainfo: OAINFO);
  protected
  public
    constructor Create;
    destructor  Destroy; override;
    procedure   CreateAssetInfoDoc(const ASSETINFO: ASSETINFO;oainfo: OAINFO);
    procedure   CreateAssetInfoDoc2(const ASSETINFO: ASSETINFO;oainfo: OAINFO);  //
    procedure   GETASSETINFOBYID(const ASSETINFO: ASSETINFO;oainfo: OAINFO);
    procedure   CreateEquipMent(const ASSETINFO: ASSETINFO;oainfo: OAINFO);
  published

  end;

 var oaDbProxy:TOaDbProxy;
 implementation
{ TOaDbProxy }


constructor TOaDbProxy.Create;
begin
       inherited;
       try
         begin
              xmlHttp:=CreateoleObject('Msxml2.XMLHTTP');
              xmlHttp.open('post','http://oa.domino.yc.hb/indishare/indiwscenter.nsf/wsAsset?OpenWebService',false);
         end;
       except

       end;
end;



procedure TOaDbProxy.CreateAssetInfoDoc(const ASSETINFO: ASSETINFO;
  oainfo: OAINFO);
var responseText:WideString;
xmlstr:String;
begin
    xmlstr:='<?xml version="1.0" encoding="utf-8"?>'+
            '<soap:Envelope xmlns:soap="http://schemas.xmlsoap.org/soap/envelope/" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema">'+
            '<soap:Body>' +
                '<CREATEASSETINFODOC xmlns="urn:DefaultNamespace">' +
                 '<ASSETINFO xmlns="">' +
                 '<STRNAME>'+assetinfo.STRNAME+'</STRNAME>' +
                 '<STRNO>'+assetinfo.STRNo+'</STRNO>' +
                 '<STRINDATE>'+assetinfo.STRINDATE+'</STRINDATE>' +
                 '<STRASSETNO>'+assetinfo.STRASSETUSERNO+'</STRASSETNO>' +
                 '<STRBELONGTONO>'+assetinfo.STRBELONGTONO+'</STRBELONGTONO>' +
                 '<STRBELONGTONAME>'+assetinfo.STRBELONGTONAME+'</STRBELONGTONAME>' +
                 '<STRPURCHASEDATE>'+assetinfo.STRPURCHASEDATE+'</STRPURCHASEDATE>' +
                 '<STRPRICE>'+assetinfo.STRPRICE+'</STRPRICE>' +
                 '<STRDETAILEDINFO>'+assetinfo.STRDETAILEDINFO+'</STRDETAILEDINFO>' +
                 '<STRSTORELOCATION>'+assetinfo.STRSTORELOCATION+'</STRSTORELOCATION>' +
                 '<STRBRAND>'+assetinfo.STRBRAND+'</STRBRAND>' +
                 '<STRASSETTYPE>'+assetinfo.STRASSETTYPE+'</STRASSETTYPE>' +
                 '<STRASSETUSER>'+assetinfo.STRASSETUSER+'</STRASSETUSER>' +
                 '<STRASSETUSERNO>'+assetinfo.STRASSETUSERNO+'</STRASSETUSERNO>' +
                 '</ASSETINFO>' +
               '</CREATEASSETINFODOC>' +
             '</soap:Body>' +
            '</soap:Envelope>' ;
           try
                  xmlHttp.open('post','http://oa.domino.yc.hb/indishare/indiwscenter.nsf/wsAsset?OpenWebService',false);
                  xmlHttp.setRequestHeader('CONTENT-LENGTH',500);
                  xmlHttp.setRequestHeader('CONTENT-TYPE','text/xml;charset=utf-8');
                  xmlhttp.send(xmlstr);
                  if xmlHttp.status='200' then
                  begin
                        ParseAnswerXml(xmlHttp.responseText,oainfo);
                  end;

            except

            end;

end;

procedure TOaDbProxy.CreateAssetInfoDoc2(const ASSETINFO: ASSETINFO;
  oainfo: OAINFO);
begin
         oainfo.OARESULTFLAG:='N';
         oainfo.OAERROR:='sdfasdfasdfasdfasdf';
end;

procedure TOaDbProxy.CreateEquipMent(const ASSETINFO: ASSETINFO;
  oainfo: OAINFO);
var responseText:WideString;
xmlstr:String;
begin
    xmlstr:='<?xml version="1.0" encoding="utf-8"?>'+
            '<soap:Envelope xmlns:soap="http://schemas.xmlsoap.org/soap/envelope/" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema">'+
            '<soap:Body>' +
                '<CREATEEQUIPMENTINFODOC  xmlns="urn:DefaultNamespace">' +
                 '<EQUIPMENTINFO xmlns="">' +
                     '<STRNAME>'+assetinfo.STRNAME+'</STRNAME>' +
                   '<STRNO>'+assetinfo.STRNo+'</STRNO>' +
                     '<STRINDATE>'+assetinfo.STRINDATE+'</STRINDATE>' +
                     '<STREQUIPMENTNO>'+assetinfo.STRASSETUSERNO+'</STREQUIPMENTNO>' +
                     '<STRBELONGTONO>'+assetinfo.STRBELONGTONO+'</STRBELONGTONO>' +
                     '<STRBELONGTONAME>'+assetinfo.STRBELONGTONAME+'</STRBELONGTONAME>' +
                     '<STRPURCHASEDATE>'+assetinfo.STRPURCHASEDATE+'</STRPURCHASEDATE>' +
                     '<STRPRICE>'+assetinfo.STRPRICE+'</STRPRICE>' +
                     '<STRDETAILEDINFO>'+assetinfo.STRDETAILEDINFO+'</STRDETAILEDINFO>' +
                     '<STRSTORELOCATION>'+assetinfo.STRSTORELOCATION+'</STRSTORELOCATION>' +
                     '<STRBRAND>'+assetinfo.STRBRAND+'</STRBRAND>' +
                     '<STREQUIPMENTTYPE>'+assetinfo.STRASSETTYPE+'</STREQUIPMENTTYPE>' +
                     '<STREQUIPMENTUSER>'+assetinfo.STRASSETUSER+'</STREQUIPMENTUSER>' +
                     '<STREQUIPMENTUSERNO>'+assetinfo.STRASSETUSERNO+'</STREQUIPMENTUSERNO>' +
                  '</EQUIPMENTINFO>' +
               '</CREATEEQUIPMENTINFODOC>' +
             '</soap:Body>' +
            '</soap:Envelope>' ;
           try
                  xmlHttp.open('post','http://oa.domino.yc.hb/indishare/indiwscenter.nsf/wsEquipment?OpenWebService',false);
                  xmlHttp.setRequestHeader('CONTENT-LENGTH',5000);
                  xmlHttp.setRequestHeader('CONTENT-TYPE','text/xml;charset=utf-8');
                  xmlhttp.send(xmlstr);
                  if xmlHttp.status='200' then
                  begin
                        ParseAnswerXml(xmlHttp.responseText,oainfo);
                  end;

            except

            end;

end;

destructor TOaDbProxy.Destroy;
begin
     xmlHttp:=Unassigned;
end;

procedure TOaDbProxy.GETASSETINFOBYID(const ASSETINFO: ASSETINFO;
  oainfo: OAINFO);
var responseText:WideString;
xmlstr:String;
begin
    xmlstr:='<?xml version="1.0" encoding="utf-8"?>'+
            '<soap:Envelope xmlns:soap="http://schemas.xmlsoap.org/soap/envelope/" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema">'+
            '<soap:Body>' +
                '<GETASSETINFOBYID xmlns="urn:DefaultNamespace">' +
                 '<ASSETINFO xmlns="">' +
                 '<STRNAME>'+assetinfo.STRNAME+'</STRNAME>' +
                 '<STRNO>'+assetinfo.STRNo+'</STRNO>' +
                 '<STRINDATE>'+assetinfo.STRINDATE+'</STRINDATE>' +
                 '<STRASSETNO>'+assetinfo.STRASSETUSERNO+'</STRASSETNO>' +
                 '<STRBELONGTONO>'+assetinfo.STRBELONGTONO+'</STRBELONGTONO>' +
                 '<STRBELONGTONAME>'+assetinfo.STRBELONGTONAME+'</STRBELONGTONAME>' +
                 '<STRPURCHASEDATE>'+assetinfo.STRPURCHASEDATE+'</STRPURCHASEDATE>' +
                 '<STRPRICE>'+assetinfo.STRPRICE+'</STRPRICE>' +
                 '<STRDETAILEDINFO>'+assetinfo.STRDETAILEDINFO+'</STRDETAILEDINFO>' +
                 '<STRSTORELOCATION>'+assetinfo.STRSTORELOCATION+'</STRSTORELOCATION>' +
                 '<STRBRAND>'+assetinfo.STRBRAND+'</STRBRAND>' +
                 '<STRASSETTYPE>'+assetinfo.STRASSETTYPE+'</STRASSETTYPE>' +
                 '<STRASSETUSER>'+assetinfo.STRASSETUSER+'</STRASSETUSER>' +
                 '<STRASSETUSERNO>'+assetinfo.STRASSETUSERNO+'</STRASSETUSERNO>' +
                 '</ASSETINFO>' +
               '</GETASSETINFOBYID>' +
             '</soap:Body>' +
            '</soap:Envelope>' ;
           try
                  xmlHttp.open('post','http://oa.domino.yc.hb/indishare/indiwscenter.nsf/wsAsset?OpenWebService',false);
                  xmlHttp.setRequestHeader('CONTENT-LENGTH',500);
                  xmlHttp.setRequestHeader('CONTENT-TYPE','text/xml;charset=utf-8');
                  xmlhttp.send(xmlstr);
                  if xmlHttp.status='200' then
                  begin
                        ParseAnswerXml(xmlHttp.responseText,oainfo);
                  end;

            except

            end;

end;

procedure TOaDbProxy.ParseAnswerXml(strXml: String;oainfo:OAINFO);
    var xmldoc:TXMLDocument;
        root,cnode:IXMLNODE;
        BodyNode, FoundNode,ResultNode,ErrorNode: IXMLNode;
        i:integer;

   function findChildNode(key: String; pnode: IXMLNode): IXMLNode;
    var i:integer;
    begin
         for i := 0 to pnode.ChildNodes.Count - 1 do
         begin
             if uppercase(pnode.ChildNodes[i].NodeName)=uppercase(key) then
             begin
                  result:= pnode.ChildNodes[i];
                  exit;
             end;
         end;
         result:=nil;
    end;
begin
      xmldoc:=TXMLDocument.Create(NIL);
       xmldoc.Create(nil);
      xmldoc.LoadFromXML(strXml);
      xmldoc.Encoding:='UTF-8';
      xmldoc.Active:=true;
      root:=xmldoc.DocumentElement;
      BodyNode:=root.ChildNodes.FindNode('soapenv:Body');
      //    BodyNode.ChildNodes.FindNode('ns1:CREATEASSETINFODOCResponse') 返回为空，不明原因
      //FoundNode:=findchildnode('ns1:GETASSETINFOBYIDResponse',bodynode);
     // FoundNode:=findchildnode('GETASSETINFOBYIDReturn',FoundNode);
      FoundNode:= BodyNode.ChildNodes.Nodes[0];
      FoundNode:= FoundNode.ChildNodes.Nodes[0];
      ResultNode:=findchildnode('OARESULTFLAG',FoundNode);
      ErrorNode:=findchildnode('OAERROR',FoundNode);
      oainfo.OARESULTFLAG:=resultnode.NodeValue;
      oainfo.OAERROR:=vartostr(ErrorNode.Nodevalue) ;
     // showmessage(oainfo.OAERROR);
       root:=nil;
       BodyNode:=nil;
       foundNode:=nil;
       resultNode:=nil ;
       errorNode:=nil;
       xmldoc.Free;
end;

end.
