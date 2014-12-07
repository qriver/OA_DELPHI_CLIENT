// ************************************************************************ //
// The types declared in this file were generated from data read from the
// WSDL File described below:
// WSDL     : http://oa.domino.yc.hb/indishare/indiwscenter.nsf/wsAsset?wsdl
//  >Import : http://oa.domino.yc.hb/indishare/indiwscenter.nsf/wsAsset?wsdl>0
// Encoding : UTF-8
// Codegen  : [wfMapStringsToWideStrings+, wfMapArraysToClasses+, wfAllowOutParameters+, wfUseSettersAndGetters+, wfForceSOAP11+]
// Version  : 1.0
// (2014-11-13 11:33:00 - - $Rev: 24171 $)
// ************************************************************************ //

unit wsAsset;

interface

uses InvokeRegistry, SOAPHTTPClient, Types, XSBuiltIns;

type

  // ************************************************************************ //
  // The following types, referred to in the WSDL document are not being represented
  // in this file. They are either aliases[@] of other types represented or were referred
  // to but never[!] declared in the document. The types from the latter category
  // typically map to predefined/known XML or Embarcadero types; however, they could also 
  // indicate incorrect WSDL documents that failed to declare or import a schema type.
  // ************************************************************************ //
  // !:string          - "http://www.w3.org/2001/XMLSchema"[Gbl]

  ASSETINFO            = class;                 { "urn:DefaultNamespace"[GblCplx] }
  OAINFO               = class;                 { "urn:DefaultNamespace"[GblCplx] }
  ASSETTYPE            = class;                 { "urn:DefaultNamespace"[GblCplx] }



  // ************************************************************************ //
  // XML       : ASSETINFO, global, <complexType>
  // Namespace : urn:DefaultNamespace
  // ************************************************************************ //
  ASSETINFO = class(TRemotable)
  private
    FSTRNAME: WideString;
    FSTRNO: WideString;
    FSTRASSETUSER: WideString;
    FSTRASSETUSERNO: WideString;
    FSTRBELONGTONO: WideString;
    FSTRBELONGTONAME: WideString;
    FSTRPURCHASEDATE: WideString;
    FSTRINDATE: WideString;
    FSTRPRODUCTDATE: WideString;
    FSTRPRICE: WideString;
    FSTRDETAILEDINFO: WideString;
    FSTRFACTORYNO: WideString;
    FSTRSTORELOCATION: WideString;
    FSTRSUPPLIERS: WideString;
    FSTRMETROLOGY: WideString;
    FSTRVOUCHERNO: WideString;
    FSTRBRAND: WideString;
    FSTRPRODUCTNAME: WideString;
    FSTRASSETNO: WideString;
    FSTRASSETTYPE: WideString;
    function  GetSTRNAME: WideString;
    procedure SetSTRNAME(const AWideString: WideString);
    function  GetSTRNO: WideString;
    procedure SetSTRNO(const AWideString: WideString);
    function  GetSTRASSETUSER: WideString;
    procedure SetSTRASSETUSER(const AWideString: WideString);
    function  GetSTRASSETUSERNO: WideString;
    procedure SetSTRASSETUSERNO(const AWideString: WideString);
    function  GetSTRBELONGTONO: WideString;
    procedure SetSTRBELONGTONO(const AWideString: WideString);
    function  GetSTRBELONGTONAME: WideString;
    procedure SetSTRBELONGTONAME(const AWideString: WideString);
    function  GetSTRPURCHASEDATE: WideString;
    procedure SetSTRPURCHASEDATE(const AWideString: WideString);
    function  GetSTRINDATE: WideString;
    procedure SetSTRINDATE(const AWideString: WideString);
    function  GetSTRPRODUCTDATE: WideString;
    procedure SetSTRPRODUCTDATE(const AWideString: WideString);
    function  GetSTRPRICE: WideString;
    procedure SetSTRPRICE(const AWideString: WideString);
    function  GetSTRDETAILEDINFO: WideString;
    procedure SetSTRDETAILEDINFO(const AWideString: WideString);
    function  GetSTRFACTORYNO: WideString;
    procedure SetSTRFACTORYNO(const AWideString: WideString);
    function  GetSTRSTORELOCATION: WideString;
    procedure SetSTRSTORELOCATION(const AWideString: WideString);
    function  GetSTRSUPPLIERS: WideString;
    procedure SetSTRSUPPLIERS(const AWideString: WideString);
    function  GetSTRMETROLOGY: WideString;
    procedure SetSTRMETROLOGY(const AWideString: WideString);
    function  GetSTRVOUCHERNO: WideString;
    procedure SetSTRVOUCHERNO(const AWideString: WideString);
    function  GetSTRBRAND: WideString;
    procedure SetSTRBRAND(const AWideString: WideString);
    function  GetSTRPRODUCTNAME: WideString;
    procedure SetSTRPRODUCTNAME(const AWideString: WideString);
    function  GetSTRASSETNO: WideString;
    procedure SetSTRASSETNO(const AWideString: WideString);
    function  GetSTRASSETTYPE: WideString;
    procedure SetSTRASSETTYPE(const AWideString: WideString);
  published
    property STRNAME:          WideString  read GetSTRNAME write SetSTRNAME;
    property STRNO:            WideString  read GetSTRNO write SetSTRNO;
    property STRASSETUSER:     WideString  read GetSTRASSETUSER write SetSTRASSETUSER;
    property STRASSETUSERNO:   WideString  read GetSTRASSETUSERNO write SetSTRASSETUSERNO;
    property STRBELONGTONO:    WideString  read GetSTRBELONGTONO write SetSTRBELONGTONO;
    property STRBELONGTONAME:  WideString  read GetSTRBELONGTONAME write SetSTRBELONGTONAME;
    property STRPURCHASEDATE:  WideString  read GetSTRPURCHASEDATE write SetSTRPURCHASEDATE;
    property STRINDATE:        WideString  read GetSTRINDATE write SetSTRINDATE;
    property STRPRODUCTDATE:   WideString  read GetSTRPRODUCTDATE write SetSTRPRODUCTDATE;
    property STRPRICE:         WideString  read GetSTRPRICE write SetSTRPRICE;
    property STRDETAILEDINFO:  WideString  read GetSTRDETAILEDINFO write SetSTRDETAILEDINFO;
    property STRFACTORYNO:     WideString  read GetSTRFACTORYNO write SetSTRFACTORYNO;
    property STRSTORELOCATION: WideString  read GetSTRSTORELOCATION write SetSTRSTORELOCATION;
    property STRSUPPLIERS:     WideString  read GetSTRSUPPLIERS write SetSTRSUPPLIERS;
    property STRMETROLOGY:     WideString  read GetSTRMETROLOGY write SetSTRMETROLOGY;
    property STRVOUCHERNO:     WideString  read GetSTRVOUCHERNO write SetSTRVOUCHERNO;
    property STRBRAND:         WideString  read GetSTRBRAND write SetSTRBRAND;
    property STRPRODUCTNAME:   WideString  read GetSTRPRODUCTNAME write SetSTRPRODUCTNAME;
    property STRASSETNO:       WideString  read GetSTRASSETNO write SetSTRASSETNO;
    property STRASSETTYPE:     WideString  read GetSTRASSETTYPE write SetSTRASSETTYPE;
  end;



  // ************************************************************************ //
  // XML       : OAINFO, global, <complexType>
  // Namespace : urn:DefaultNamespace
  // ************************************************************************ //
  OAINFO = class(TRemotable)
  private
    FOARESULTFLAG: WideString;
    FOAERROR: WideString;
    function  GetOARESULTFLAG: WideString;
    procedure SetOARESULTFLAG(const AWideString: WideString);
    function  GetOAERROR: WideString;
    procedure SetOAERROR(const AWideString: WideString);
  published
    property OARESULTFLAG: WideString  read GetOARESULTFLAG write SetOARESULTFLAG;
    property OAERROR:      WideString  read GetOAERROR write SetOAERROR;
  end;



  // ************************************************************************ //
  // XML       : ASSETTYPE, global, <complexType>
  // Namespace : urn:DefaultNamespace
  // ************************************************************************ //
  ASSETTYPE = class(TRemotable)
  private
    FSTRTYPENAME: WideString;
    FSTRTYPENO: WideString;
    FSTRTYPECODE: WideString;
    FSTRTYPEUPLEVELNAME: WideString;
    FSTRTYPEUPLEVELCODE: WideString;
    FSTRTYPEFULLPATH: WideString;
    FSTRTYPEFULLNAME: WideString;
    FSTRISHAVECHILD: WideString;
    FSTRSORTNUMBER: WideString;
    function  GetSTRTYPENAME: WideString;
    procedure SetSTRTYPENAME(const AWideString: WideString);
    function  GetSTRTYPENO: WideString;
    procedure SetSTRTYPENO(const AWideString: WideString);
    function  GetSTRTYPECODE: WideString;
    procedure SetSTRTYPECODE(const AWideString: WideString);
    function  GetSTRTYPEUPLEVELNAME: WideString;
    procedure SetSTRTYPEUPLEVELNAME(const AWideString: WideString);
    function  GetSTRTYPEUPLEVELCODE: WideString;
    procedure SetSTRTYPEUPLEVELCODE(const AWideString: WideString);
    function  GetSTRTYPEFULLPATH: WideString;
    procedure SetSTRTYPEFULLPATH(const AWideString: WideString);
    function  GetSTRTYPEFULLNAME: WideString;
    procedure SetSTRTYPEFULLNAME(const AWideString: WideString);
    function  GetSTRISHAVECHILD: WideString;
    procedure SetSTRISHAVECHILD(const AWideString: WideString);
    function  GetSTRSORTNUMBER: WideString;
    procedure SetSTRSORTNUMBER(const AWideString: WideString);
  published
    property STRTYPENAME:        WideString  read GetSTRTYPENAME write SetSTRTYPENAME;
    property STRTYPENO:          WideString  read GetSTRTYPENO write SetSTRTYPENO;
    property STRTYPECODE:        WideString  read GetSTRTYPECODE write SetSTRTYPECODE;
    property STRTYPEUPLEVELNAME: WideString  read GetSTRTYPEUPLEVELNAME write SetSTRTYPEUPLEVELNAME;
    property STRTYPEUPLEVELCODE: WideString  read GetSTRTYPEUPLEVELCODE write SetSTRTYPEUPLEVELCODE;
    property STRTYPEFULLPATH:    WideString  read GetSTRTYPEFULLPATH write SetSTRTYPEFULLPATH;
    property STRTYPEFULLNAME:    WideString  read GetSTRTYPEFULLNAME write SetSTRTYPEFULLNAME;
    property STRISHAVECHILD:     WideString  read GetSTRISHAVECHILD write SetSTRISHAVECHILD;
    property STRSORTNUMBER:      WideString  read GetSTRSORTNUMBER write SetSTRSORTNUMBER;
  end;


  // ************************************************************************ //
  // Namespace : urn:DefaultNamespace
  // soapAction: %operationName%
  // transport : http://schemas.xmlsoap.org/soap/http
  // style     : rpc
  // binding   : DominoSoapBinding
  // service   : AssetService
  // port      : Domino
  // URL       : http://oa.domino.yc.hb:80/indishare/indiwscenter.nsf/wsAsset?OpenWebService
  // ************************************************************************ //
  Asset = interface(IInvokable)
  ['{D8F9C35F-A4F3-90C6-5B7B-19D00D6B6912}']
    function  CREATEASSETINFODOC(const ASSETINFO: ASSETINFO): OAINFO; stdcall;
    function  UPDATEASSETINFODOC(const ASSETINFO: ASSETINFO): OAINFO; stdcall;
    function  DELETEASSETINFODOC(const ASSETINFO: ASSETINFO): OAINFO; stdcall;
    function  CREATEASSETTYPEDOC(const ASSETTYPE: ASSETTYPE): OAINFO; stdcall;
    function  UPDATEASSETTYPEDOC(const ASSETTYPE: ASSETTYPE): OAINFO; stdcall;
    function  DELETEASSETTYPEDOC(const ASSETTYPE: ASSETTYPE): OAINFO; stdcall;
  end;

function GetAsset(UseWSDL: Boolean=System.False; Addr: string=''; HTTPRIO: THTTPRIO = nil): Asset;


implementation
  uses SysUtils;

function GetAsset(UseWSDL: Boolean; Addr: string; HTTPRIO: THTTPRIO): Asset;
const
  defWSDL = 'http://oa.domino.yc.hb/indishare/indiwscenter.nsf/wsAsset?wsdl';
  defURL  = 'http://oa.domino.yc.hb:80/indishare/indiwscenter.nsf/wsAsset?OpenWebService';
  defSvc  = 'AssetService';
  defPrt  = 'Domino';
var
  RIO: THTTPRIO;
begin
  Result := nil;
  if (Addr = '') then
  begin
    if UseWSDL then
      Addr := defWSDL
    else
      Addr := defURL;
  end;
  if HTTPRIO = nil then
    RIO := THTTPRIO.Create(nil)
  else
    RIO := HTTPRIO;
    RIO.HTTPWebNode.UseUTF8InHeader:=true;

  try
    Result := (RIO as Asset);
    if UseWSDL then
    begin
      RIO.WSDLLocation := Addr;
      RIO.Service := defSvc;
      RIO.Port := defPrt;
    end else
      RIO.URL := Addr;
  finally
    if (Result = nil) and (HTTPRIO = nil) then
      RIO.Free;
  end;
end;


function ASSETINFO.GetSTRNAME: WideString;
begin
  Result := FSTRNAME;
end;

procedure ASSETINFO.SetSTRNAME(const AWideString: WideString);
begin
  FSTRNAME := AWideString;
end;

function ASSETINFO.GetSTRNO: WideString;
begin
  Result := FSTRNO;
end;

procedure ASSETINFO.SetSTRNO(const AWideString: WideString);
begin
  FSTRNO := AWideString;
end;

function ASSETINFO.GetSTRASSETUSER: WideString;
begin
  Result := FSTRASSETUSER;
end;

procedure ASSETINFO.SetSTRASSETUSER(const AWideString: WideString);
begin
  FSTRASSETUSER := AWideString;
end;

function ASSETINFO.GetSTRASSETUSERNO: WideString;
begin
  Result := FSTRASSETUSERNO;
end;

procedure ASSETINFO.SetSTRASSETUSERNO(const AWideString: WideString);
begin
  FSTRASSETUSERNO := AWideString;
end;

function ASSETINFO.GetSTRBELONGTONO: WideString;
begin
  Result := FSTRBELONGTONO;
end;

procedure ASSETINFO.SetSTRBELONGTONO(const AWideString: WideString);
begin
  FSTRBELONGTONO := AWideString;
end;

function ASSETINFO.GetSTRBELONGTONAME: WideString;
begin
  Result := FSTRBELONGTONAME;
end;

procedure ASSETINFO.SetSTRBELONGTONAME(const AWideString: WideString);
begin
  FSTRBELONGTONAME := AWideString;
end;

function ASSETINFO.GetSTRPURCHASEDATE: WideString;
begin
  Result := FSTRPURCHASEDATE;
end;

procedure ASSETINFO.SetSTRPURCHASEDATE(const AWideString: WideString);
begin
  FSTRPURCHASEDATE := AWideString;
end;

function ASSETINFO.GetSTRINDATE: WideString;
begin
  Result := FSTRINDATE;
end;

procedure ASSETINFO.SetSTRINDATE(const AWideString: WideString);
begin
  FSTRINDATE := AWideString;
end;

function ASSETINFO.GetSTRPRODUCTDATE: WideString;
begin
  Result := FSTRPRODUCTDATE;
end;

procedure ASSETINFO.SetSTRPRODUCTDATE(const AWideString: WideString);
begin
  FSTRPRODUCTDATE := AWideString;
end;

function ASSETINFO.GetSTRPRICE: WideString;
begin
  Result := FSTRPRICE;
end;

procedure ASSETINFO.SetSTRPRICE(const AWideString: WideString);
begin
  FSTRPRICE := AWideString;
end;

function ASSETINFO.GetSTRDETAILEDINFO: WideString;
begin
  Result := FSTRDETAILEDINFO;
end;

procedure ASSETINFO.SetSTRDETAILEDINFO(const AWideString: WideString);
begin
  FSTRDETAILEDINFO := AWideString;
end;

function ASSETINFO.GetSTRFACTORYNO: WideString;
begin
  Result := FSTRFACTORYNO;
end;

procedure ASSETINFO.SetSTRFACTORYNO(const AWideString: WideString);
begin
  FSTRFACTORYNO := AWideString;
end;

function ASSETINFO.GetSTRSTORELOCATION: WideString;
begin
  Result := FSTRSTORELOCATION;
end;

procedure ASSETINFO.SetSTRSTORELOCATION(const AWideString: WideString);
begin
  FSTRSTORELOCATION := AWideString;
end;

function ASSETINFO.GetSTRSUPPLIERS: WideString;
begin
  Result := FSTRSUPPLIERS;
end;

procedure ASSETINFO.SetSTRSUPPLIERS(const AWideString: WideString);
begin
  FSTRSUPPLIERS := AWideString;
end;

function ASSETINFO.GetSTRMETROLOGY: WideString;
begin
  Result := FSTRMETROLOGY;
end;

procedure ASSETINFO.SetSTRMETROLOGY(const AWideString: WideString);
begin
  FSTRMETROLOGY := AWideString;
end;

function ASSETINFO.GetSTRVOUCHERNO: WideString;
begin
  Result := FSTRVOUCHERNO;
end;

procedure ASSETINFO.SetSTRVOUCHERNO(const AWideString: WideString);
begin
  FSTRVOUCHERNO := AWideString;
end;

function ASSETINFO.GetSTRBRAND: WideString;
begin
  Result := FSTRBRAND;
end;

procedure ASSETINFO.SetSTRBRAND(const AWideString: WideString);
begin
  FSTRBRAND := AWideString;
end;

function ASSETINFO.GetSTRPRODUCTNAME: WideString;
begin
  Result := FSTRPRODUCTNAME;
end;

procedure ASSETINFO.SetSTRPRODUCTNAME(const AWideString: WideString);
begin
  FSTRPRODUCTNAME := AWideString;
end;

function ASSETINFO.GetSTRASSETNO: WideString;
begin
  Result := FSTRASSETNO;
end;

procedure ASSETINFO.SetSTRASSETNO(const AWideString: WideString);
begin
  FSTRASSETNO := AWideString;
end;

function ASSETINFO.GetSTRASSETTYPE: WideString;
begin
  Result := FSTRASSETTYPE;
end;

procedure ASSETINFO.SetSTRASSETTYPE(const AWideString: WideString);
begin
  FSTRASSETTYPE := AWideString;
end;

function OAINFO.GetOARESULTFLAG: WideString;
begin
  Result := FOARESULTFLAG;
end;

procedure OAINFO.SetOARESULTFLAG(const AWideString: WideString);
begin
  FOARESULTFLAG := AWideString;
end;

function OAINFO.GetOAERROR: WideString;
begin
  Result := FOAERROR;
end;

procedure OAINFO.SetOAERROR(const AWideString: WideString);
begin
  FOAERROR := AWideString;
end;

function ASSETTYPE.GetSTRTYPENAME: WideString;
begin
  Result := FSTRTYPENAME;
end;

procedure ASSETTYPE.SetSTRTYPENAME(const AWideString: WideString);
begin
  FSTRTYPENAME := AWideString;
end;

function ASSETTYPE.GetSTRTYPENO: WideString;
begin
  Result := FSTRTYPENO;
end;

procedure ASSETTYPE.SetSTRTYPENO(const AWideString: WideString);
begin
  FSTRTYPENO := AWideString;
end;

function ASSETTYPE.GetSTRTYPECODE: WideString;
begin
  Result := FSTRTYPECODE;
end;

procedure ASSETTYPE.SetSTRTYPECODE(const AWideString: WideString);
begin
  FSTRTYPECODE := AWideString;
end;

function ASSETTYPE.GetSTRTYPEUPLEVELNAME: WideString;
begin
  Result := FSTRTYPEUPLEVELNAME;
end;

procedure ASSETTYPE.SetSTRTYPEUPLEVELNAME(const AWideString: WideString);
begin
  FSTRTYPEUPLEVELNAME := AWideString;
end;

function ASSETTYPE.GetSTRTYPEUPLEVELCODE: WideString;
begin
  Result := FSTRTYPEUPLEVELCODE;
end;

procedure ASSETTYPE.SetSTRTYPEUPLEVELCODE(const AWideString: WideString);
begin
  FSTRTYPEUPLEVELCODE := AWideString;
end;

function ASSETTYPE.GetSTRTYPEFULLPATH: WideString;
begin
  Result := FSTRTYPEFULLPATH;
end;

procedure ASSETTYPE.SetSTRTYPEFULLPATH(const AWideString: WideString);
begin
  FSTRTYPEFULLPATH := AWideString;
end;

function ASSETTYPE.GetSTRTYPEFULLNAME: WideString;
begin
  Result := FSTRTYPEFULLNAME;
end;

procedure ASSETTYPE.SetSTRTYPEFULLNAME(const AWideString: WideString);
begin
  FSTRTYPEFULLNAME := AWideString;
end;

function ASSETTYPE.GetSTRISHAVECHILD: WideString;
begin
  Result := FSTRISHAVECHILD;
end;

procedure ASSETTYPE.SetSTRISHAVECHILD(const AWideString: WideString);
begin
  FSTRISHAVECHILD := AWideString;
end;

function ASSETTYPE.GetSTRSORTNUMBER: WideString;
begin
  Result := FSTRSORTNUMBER;
end;

procedure ASSETTYPE.SetSTRSORTNUMBER(const AWideString: WideString);
begin
  FSTRSORTNUMBER := AWideString;
end;

initialization
  InvRegistry.RegisterInterface(TypeInfo(Asset), 'urn:DefaultNamespace', 'UTF-8');
  InvRegistry.RegisterDefaultSOAPAction(TypeInfo(Asset), '%operationName%');
  RemClassRegistry.RegisterXSClass(ASSETINFO, 'urn:DefaultNamespace', 'ASSETINFO');
  RemClassRegistry.RegisterXSClass(OAINFO, 'urn:DefaultNamespace', 'OAINFO');
  RemClassRegistry.RegisterXSClass(ASSETTYPE, 'urn:DefaultNamespace', 'ASSETTYPE');

end.