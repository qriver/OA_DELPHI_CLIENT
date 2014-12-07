unit OrgInfoInterace_Intf;

{----------------------------------------------------------------------------}
{ This unit was automatically generated by the RemObjects SDK after reading  }
{ the RODL file associated with this project .                               }
{                                                                            }
{ Do not modify this unit manually, or your changes will be lost when this   }
{ unit is regenerated the next time you compile the project.                 }
{----------------------------------------------------------------------------}

{$I RemObjects.inc}

interface

uses
  {vcl:} Classes, TypInfo,
  {RemObjects:} uROXMLIntf, uROClasses, uROClient, uROTypes, uROClientIntf;

const
  { Library ID }
  LibraryUID = '{0FF883C9-BD33-4AFA-8470-53E565F90221}';
  WSDLLocation = 'http://oa.domino.yc.hb/indishare/indiwscenter.nsf/wsDep?wsdl';
  TargetNamespace = 'urn:DefaultNamespace';

  { Service Interface ID's }
  IOrgInfoService_IID : TGUID = '{FDCE280A-F297-475E-A759-1E6912AECA62}';
  OrgInfoService_EndPointURI = 'http://oa.domino.yc.hb:80/indishare/indiwscenter.nsf/wsDep?OpenWebService';

type
  TSeekOrigin = Classes.TSeekOrigin; // fake declaration
  { Forward declarations }
  IOrgInfoService = interface;

  OAINFO = class;
  ZZINFO = class;

  { OAINFO }
  OAINFO = class(TROComplexType)
  private
    fOARESULTFLAG: UnicodeString;
    fOAERROR: UnicodeString;
  public
    class function GetAttributeCount: Integer; override;
    class function GetAttributeName(aIndex: Integer): string; override;
    class function GetAttributeValue(aIndex: Integer): string; override;

    procedure Assign(iSource: TPersistent); override;
    procedure ReadComplex(ASerializer: TObject); override;
    procedure WriteComplex(ASerializer: TObject); override;
  published
    property OARESULTFLAG:UnicodeString read fOARESULTFLAG write fOARESULTFLAG;
    property OAERROR:UnicodeString read fOAERROR write fOAERROR;
  end;

  { OAINFOCollection }
  OAINFOCollection = class(TROCollection)
  protected
    constructor Create(aItemClass: TCollectionItemClass); overload;
    function GetItems(aIndex: Integer): OAINFO;
    procedure SetItems(aIndex: Integer; const Value: OAINFO);
  public
    constructor Create; overload;
    function Add: OAINFO; reintroduce;
    property Items[Index: Integer]:OAINFO read GetItems write SetItems; default;
  end;

  { ZZINFO }
  ZZINFO = class(TROComplexType)
  private
    fSTRCODE: UnicodeString;
  public
    class function GetAttributeCount: Integer; override;
    class function GetAttributeName(aIndex: Integer): string; override;
    class function GetAttributeValue(aIndex: Integer): string; override;

    procedure Assign(iSource: TPersistent); override;
    procedure ReadComplex(ASerializer: TObject); override;
    procedure WriteComplex(ASerializer: TObject); override;
  published
    property STRCODE:UnicodeString read fSTRCODE write fSTRCODE;
  end;

  { ZZINFOCollection }
  ZZINFOCollection = class(TROCollection)
  protected
    constructor Create(aItemClass: TCollectionItemClass); overload;
    function GetItems(aIndex: Integer): ZZINFO;
    procedure SetItems(aIndex: Integer; const Value: ZZINFO);
  public
    constructor Create; overload;
    function Add: ZZINFO; reintroduce;
    property Items[Index: Integer]:ZZINFO read GetItems write SetItems; default;
  end;

  { IOrgInfoService }
  IOrgInfoService = interface
    ['{FDCE280A-F297-475E-A759-1E6912AECA62}']
    function FNGETDEPINFO: OAINFO;
    function FNGETUSERINFO: OAINFO;
    function FNGETUSERINFOBYCODE(const ZZINFO: ZZINFO): OAINFO;
  end;

  { CoOrgInfoService }
  CoOrgInfoService = class
    class function Create(const aMessage: IROMessage; aTransportChannel: IROTransportChannel): IOrgInfoService; overload;
    class function Create(const aUri: TROUri): IOrgInfoService; overload;
    class function Create(const aUrl: string): IOrgInfoService; overload;
  end;

  { TOrgInfoService_Proxy }
  TOrgInfoService_Proxy = class(TROProxy, IOrgInfoService)
  protected
    function __GetInterfaceName:string; override;

    function FNGETDEPINFO: OAINFO;
    function FNGETUSERINFO: OAINFO;
    function FNGETUSERINFOBYCODE(const ZZINFO: ZZINFO): OAINFO;
  end;

implementation

uses
  {vcl:} SysUtils,
  {RemObjects:} uROEventRepository, uROSerializer, uRORes;

{ OAINFO }

class function OAINFO.GetAttributeCount: Integer;
begin
  Result := 1;
end;

class function OAINFO.GetAttributeName(aIndex: Integer): string;
begin
  case aIndex of
    0: Result := 'ImportedFromNamespace';
  end;
end;

class function OAINFO.GetAttributeValue(aIndex: Integer): string;
begin
  case aIndex of
    0: Result := 'urn:DefaultNamespace';
  end;
end;

procedure OAINFO.Assign(iSource: TPersistent); 
var
  lSource: OrgInfoInterace_Intf.OAINFO;
begin
  inherited Assign(iSource);
  if (iSource is OrgInfoInterace_Intf.OAINFO) then begin
    lSource := OrgInfoInterace_Intf.OAINFO(iSource);

    Self.OARESULTFLAG := lSource.OARESULTFLAG;
    Self.OAERROR := lSource.OAERROR;
  end;
end;

procedure OAINFO.ReadComplex(ASerializer: TObject);
var
  l_OAERROR: UnicodeString;
  l_OARESULTFLAG: UnicodeString;
begin
  if TROSerializer(ASerializer).RecordStrictOrder then begin
    l_OARESULTFLAG := Self.OARESULTFLAG;
    try
{$IFDEF UNICODE}
      TROSerializer(ASerializer).ReadUnicodeString('OARESULTFLAG', l_OARESULTFLAG);
{$ELSE}
      TROSerializer(ASerializer).ReadWideString('OARESULTFLAG', l_OARESULTFLAG);
{$ENDIF}
    except
      on E: SysUtils.Exception do
        uROClasses.RaiseError(SysUtils.Format('Exception "%s" with message "%s" happens during reading field "%s".', [E.ClassName, E.Message, 'OARESULTFLAG']));
    end;
    Self.OARESULTFLAG := l_OARESULTFLAG;
    l_OAERROR := Self.OAERROR;
    try
{$IFDEF UNICODE}
      TROSerializer(ASerializer).ReadUnicodeString('OAERROR', l_OAERROR);
{$ELSE}
      TROSerializer(ASerializer).ReadWideString('OAERROR', l_OAERROR);
{$ENDIF}
    except
      on E: SysUtils.Exception do
        uROClasses.RaiseError(SysUtils.Format('Exception "%s" with message "%s" happens during reading field "%s".', [E.ClassName, E.Message, 'OAERROR']));
    end;
    Self.OAERROR := l_OAERROR;
  end
  else begin
    l_OAERROR := Self.OAERROR;
    try
{$IFDEF UNICODE}
      TROSerializer(ASerializer).ReadUnicodeString('OAERROR', l_OAERROR);
{$ELSE}
      TROSerializer(ASerializer).ReadWideString('OAERROR', l_OAERROR);
{$ENDIF}
    except
      on E: SysUtils.Exception do
        uROClasses.RaiseError(SysUtils.Format('Exception "%s" with message "%s" happens during reading field "%s".', [E.ClassName, E.Message, 'OAERROR']));
    end;
    Self.OAERROR := l_OAERROR;
    l_OARESULTFLAG := Self.OARESULTFLAG;
    try
{$IFDEF UNICODE}
      TROSerializer(ASerializer).ReadUnicodeString('OARESULTFLAG', l_OARESULTFLAG);
{$ELSE}
      TROSerializer(ASerializer).ReadWideString('OARESULTFLAG', l_OARESULTFLAG);
{$ENDIF}
    except
      on E: SysUtils.Exception do
        uROClasses.RaiseError(SysUtils.Format('Exception "%s" with message "%s" happens during reading field "%s".', [E.ClassName, E.Message, 'OARESULTFLAG']));
    end;
    Self.OARESULTFLAG := l_OARESULTFLAG;
  end;
end;

procedure OAINFO.WriteComplex(ASerializer: TObject);
var
  l_OAERROR: UnicodeString;
  l_OARESULTFLAG: UnicodeString;
begin
  if TROSerializer(ASerializer).RecordStrictOrder then begin
    TROSerializer(ASerializer).ChangeClass(OAINFO);
    l_OARESULTFLAG := Self.OARESULTFLAG;
{$IFDEF UNICODE}
    TROSerializer(ASerializer).WriteUnicodeString('OARESULTFLAG', l_OARESULTFLAG);
{$ELSE}
    TROSerializer(ASerializer).WriteWideString('OARESULTFLAG', l_OARESULTFLAG);
{$ENDIF}
    l_OAERROR := Self.OAERROR;
{$IFDEF UNICODE}
    TROSerializer(ASerializer).WriteUnicodeString('OAERROR', l_OAERROR);
{$ELSE}
    TROSerializer(ASerializer).WriteWideString('OAERROR', l_OAERROR);
{$ENDIF}
  end
  else begin
    l_OAERROR := Self.OAERROR;
{$IFDEF UNICODE}
    TROSerializer(ASerializer).WriteUnicodeString('OAERROR', l_OAERROR);
{$ELSE}
    TROSerializer(ASerializer).WriteWideString('OAERROR', l_OAERROR);
{$ENDIF}
    l_OARESULTFLAG := Self.OARESULTFLAG;
{$IFDEF UNICODE}
    TROSerializer(ASerializer).WriteUnicodeString('OARESULTFLAG', l_OARESULTFLAG);
{$ELSE}
    TROSerializer(ASerializer).WriteWideString('OARESULTFLAG', l_OARESULTFLAG);
{$ENDIF}
  end;
end;

{ OAINFOCollection }
constructor OAINFOCollection.Create;
begin
  inherited Create(OAINFO);
end;

constructor OAINFOCollection.Create(aItemClass: TCollectionItemClass);
begin
  inherited Create(aItemClass);
end;

function OAINFOCollection.Add: OAINFO;
begin
  Result := OAINFO(inherited Add);
end;

function OAINFOCollection.GetItems(aIndex: Integer): OAINFO;
begin
  Result := OAINFO(inherited Items[aIndex]);
end;

procedure OAINFOCollection.SetItems(aIndex: Integer; const Value: OAINFO);
begin
  OAINFO(inherited Items[aIndex]).Assign(Value);
end;

{ ZZINFO }

class function ZZINFO.GetAttributeCount: Integer;
begin
  Result := 1;
end;

class function ZZINFO.GetAttributeName(aIndex: Integer): string;
begin
  case aIndex of
    0: Result := 'ImportedFromNamespace';
  end;
end;

class function ZZINFO.GetAttributeValue(aIndex: Integer): string;
begin
  case aIndex of
    0: Result := 'urn:DefaultNamespace';
  end;
end;

procedure ZZINFO.Assign(iSource: TPersistent); 
var
  lSource: OrgInfoInterace_Intf.ZZINFO;
begin
  inherited Assign(iSource);
  if (iSource is OrgInfoInterace_Intf.ZZINFO) then begin
    lSource := OrgInfoInterace_Intf.ZZINFO(iSource);

    Self.STRCODE := lSource.STRCODE;
  end;
end;

procedure ZZINFO.ReadComplex(ASerializer: TObject);
var
  l_STRCODE: UnicodeString;
begin
  if TROSerializer(ASerializer).RecordStrictOrder then begin
    l_STRCODE := Self.STRCODE;
    try
{$IFDEF UNICODE}
      TROSerializer(ASerializer).ReadUnicodeString('STRCODE', l_STRCODE);
{$ELSE}
      TROSerializer(ASerializer).ReadWideString('STRCODE', l_STRCODE);
{$ENDIF}
    except
      on E: SysUtils.Exception do
        uROClasses.RaiseError(SysUtils.Format('Exception "%s" with message "%s" happens during reading field "%s".', [E.ClassName, E.Message, 'STRCODE']));
    end;
    Self.STRCODE := l_STRCODE;
  end
  else begin
    l_STRCODE := Self.STRCODE;
    try
{$IFDEF UNICODE}
      TROSerializer(ASerializer).ReadUnicodeString('STRCODE', l_STRCODE);
{$ELSE}
      TROSerializer(ASerializer).ReadWideString('STRCODE', l_STRCODE);
{$ENDIF}
    except
      on E: SysUtils.Exception do
        uROClasses.RaiseError(SysUtils.Format('Exception "%s" with message "%s" happens during reading field "%s".', [E.ClassName, E.Message, 'STRCODE']));
    end;
    Self.STRCODE := l_STRCODE;
  end;
end;

procedure ZZINFO.WriteComplex(ASerializer: TObject);
var
  l_STRCODE: UnicodeString;
begin
  if TROSerializer(ASerializer).RecordStrictOrder then begin
    TROSerializer(ASerializer).ChangeClass(ZZINFO);
    l_STRCODE := Self.STRCODE;
{$IFDEF UNICODE}
    TROSerializer(ASerializer).WriteUnicodeString('STRCODE', l_STRCODE);
{$ELSE}
    TROSerializer(ASerializer).WriteWideString('STRCODE', l_STRCODE);
{$ENDIF}
  end
  else begin
    l_STRCODE := Self.STRCODE;
{$IFDEF UNICODE}
    TROSerializer(ASerializer).WriteUnicodeString('STRCODE', l_STRCODE);
{$ELSE}
    TROSerializer(ASerializer).WriteWideString('STRCODE', l_STRCODE);
{$ENDIF}
  end;
end;

{ ZZINFOCollection }
constructor ZZINFOCollection.Create;
begin
  inherited Create(ZZINFO);
end;

constructor ZZINFOCollection.Create(aItemClass: TCollectionItemClass);
begin
  inherited Create(aItemClass);
end;

function ZZINFOCollection.Add: ZZINFO;
begin
  Result := ZZINFO(inherited Add);
end;

function ZZINFOCollection.GetItems(aIndex: Integer): ZZINFO;
begin
  Result := ZZINFO(inherited Items[aIndex]);
end;

procedure ZZINFOCollection.SetItems(aIndex: Integer; const Value: ZZINFO);
begin
  ZZINFO(inherited Items[aIndex]).Assign(Value);
end;

{ CoOrgInfoService }

class function CoOrgInfoService.Create(const aMessage: IROMessage; aTransportChannel: IROTransportChannel): IOrgInfoService;
begin
  Result := TOrgInfoService_Proxy.Create(aMessage, aTransportChannel);
end;

class function CoOrgInfoService.Create(const aUri: TROUri): IOrgInfoService;
begin
  Result := TOrgInfoService_Proxy.Create(aUri);
end;

class function CoOrgInfoService.Create(const aUrl: string): IOrgInfoService;
begin
  Result := TOrgInfoService_Proxy.Create(aUrl);
end;

{ TOrgInfoService_Proxy }

function TOrgInfoService_Proxy.__GetInterfaceName:string;
begin
  Result := 'OrgInfoService';
end;

function TOrgInfoService_Proxy.FNGETDEPINFO: OAINFO;
var
  lMessage: IROMessage;
  lTransportChannel: IROTransportChannel;
begin
  lMessage := __GetMessage;
  lTransportChannel := __TransportChannel;
    lMessage.SetAttributes(lTransportChannel, ['Action', 'InputNamespace', 'Location', 'OutputNamespace', 'remap_FNGETDEPINFO', 'remap_FNGETUSERINFO', 'remap_FNGETUSERINFOBYCODE'
      , 'TargetNamespace', 'Type', 'Use', 'Wsdl'], 
      ['FNGETDEPINFO', 'urn:DefaultNamespace', 'http://oa.domino.yc.hb:80/indishare/indiwscenter.nsf/wsDep?OpenWebService', 'urn:DefaultNamespace', 'FNGETDEPINFO', 'FNGETUSERINFO', 'FNGETUSERINFOBYCODE'
      , TargetNamespace, 'SOAP', 'literal', WSDLLocation]);
  try
    Result := nil;
    lMessage.InitializeRequestMessage(lTransportChannel, 'OrgInfoInterace', __InterfaceName, 'FNGETDEPINFO');
    lMessage.Finalize;

    lTransportChannel.Dispatch(lMessage);

    lMessage.Read('FNGETDEPINFOReturn', System.TypeInfo(OrgInfoInterace_Intf.OAINFO), Result, []);
  finally
    lMessage.UnsetAttributes(lTransportChannel);
    lMessage.FreeStream;
    lMessage := nil;
    lTransportChannel := nil;
  end;
end;

function TOrgInfoService_Proxy.FNGETUSERINFO: OAINFO;
var
  lMessage: IROMessage;
  lTransportChannel: IROTransportChannel;
begin
  lMessage := __GetMessage;
  lTransportChannel := __TransportChannel;
    lMessage.SetAttributes(lTransportChannel, ['Action', 'InputNamespace', 'Location', 'OutputNamespace', 'remap_FNGETDEPINFO', 'remap_FNGETUSERINFO', 'remap_FNGETUSERINFOBYCODE'
      , 'TargetNamespace', 'Type', 'Use', 'Wsdl'], 
      ['FNGETUSERINFO', 'urn:DefaultNamespace', 'http://oa.domino.yc.hb:80/indishare/indiwscenter.nsf/wsDep?OpenWebService', 'urn:DefaultNamespace', 'FNGETDEPINFO', 'FNGETUSERINFO', 'FNGETUSERINFOBYCODE'
      , TargetNamespace, 'SOAP', 'literal', WSDLLocation]);
  try
    Result := nil;
    lMessage.InitializeRequestMessage(lTransportChannel, 'OrgInfoInterace', __InterfaceName, 'FNGETUSERINFO');
    lMessage.Finalize;

    lTransportChannel.Dispatch(lMessage);

    lMessage.Read('FNGETUSERINFOReturn', System.TypeInfo(OrgInfoInterace_Intf.OAINFO), Result, []);
  finally
    lMessage.UnsetAttributes(lTransportChannel);
    lMessage.FreeStream;
    lMessage := nil;
    lTransportChannel := nil;
  end;
end;

function TOrgInfoService_Proxy.FNGETUSERINFOBYCODE(const ZZINFO: ZZINFO): OAINFO;
var
  lMessage: IROMessage;
  lTransportChannel: IROTransportChannel;
begin
  lMessage := __GetMessage;
  lTransportChannel := __TransportChannel;
    lMessage.SetAttributes(lTransportChannel, ['Action', 'InputNamespace', 'Location', 'OutputNamespace', 'remap_FNGETDEPINFO', 'remap_FNGETUSERINFO', 'remap_FNGETUSERINFOBYCODE'
      , 'TargetNamespace', 'Type', 'Use', 'Wsdl'], 
      ['FNGETUSERINFOBYCODE', 'urn:DefaultNamespace', 'http://oa.domino.yc.hb:80/indishare/indiwscenter.nsf/wsDep?OpenWebService', 'urn:DefaultNamespace', 'FNGETDEPINFO', 'FNGETUSERINFO', 'FNGETUSERINFOBYCODE'
      , TargetNamespace, 'SOAP', 'literal', WSDLLocation]);
  try
    Result := nil;
    lMessage.InitializeRequestMessage(lTransportChannel, 'OrgInfoInterace', __InterfaceName, 'FNGETUSERINFOBYCODE');
    lMessage.Write('ZZINFO', System.TypeInfo(OrgInfoInterace_Intf.ZZINFO), ZZINFO, []);
    lMessage.Finalize;

    lTransportChannel.Dispatch(lMessage);

    lMessage.Read('FNGETUSERINFOBYCODEReturn', System.TypeInfo(OrgInfoInterace_Intf.OAINFO), Result, []);
  finally
    lMessage.UnsetAttributes(lTransportChannel);
    lMessage.FreeStream;
    lMessage := nil;
    lTransportChannel := nil;
  end;
end;

initialization
  RegisterROClass(OAINFO);
  RegisterROClass(ZZINFO);
  RegisterProxyClass(IOrgInfoService_IID, TOrgInfoService_Proxy);


finalization
  UnregisterROClass(OAINFO);
  UnregisterROClass(ZZINFO);
  UnregisterProxyClass(IOrgInfoService_IID);


end.
