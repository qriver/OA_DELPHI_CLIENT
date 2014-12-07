program Project2;

uses
  Forms,
  uMainform in 'source\uMainform.pas' {frmMain},
  uDataModule in 'source\uDataModule.pas' {DataModule2: TDataModule},
  uPublic in 'source\uPublic.pas',
  wsAsset in 'source\Asset\wsAsset.pas',
  uAssetMainForm in 'source\Asset\uAssetMainForm.pas' {AssetMainForm},
  uAssignedForm in 'source\Asset\uAssignedForm.pas',
  uExportToOA in 'source\Asset\uExportToOA.pas' {ExportToOAForm},
  uGridBaseForm in 'source\Asset\uGridBaseForm.pas' {GridBaseForm},
  uNoAssignedForm in 'source\Asset\uNoAssignedForm.pas' {NoAssignedForm},
  uOADbProxy in 'source\Asset\uOADbProxy.pas',
  uDeptCompareForm in 'source\DeptAndPersonCompare\uDeptCompareForm.pas' {DeptCompareForm},
  CompareDeptAndPersonMainForm in 'source\DeptAndPersonCompare\CompareDeptAndPersonMainForm.pas' {CompareDeptAndPersonForm},
  uEquipmentForm in 'source\Equitment\uEquipmentForm.pas' {EquipmentForm},
  uOrgAndPoliceMain in 'source\OrgAndPoliceExport\uOrgAndPoliceMain.pas' {OrgPoliceExport},
  OrgInfoInterace_Intf in 'source\OrgAndPoliceExport\OrgInfoInterace_Intf.pas',
  uLoadingForm in 'source\Public\uLoadingForm.pas' {LoadingForm},
  uThreadForm in 'source\Public\uThreadForm.pas' {ThreadForm},
  TChildThread in 'source\Public\TChildThread.pas',
  NewLibrary_Intf in 'NewLibrary_Intf.pas';

{$R *.res}

begin
  Application.Initialize;
  //Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDataModule2, DataModule2);
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
