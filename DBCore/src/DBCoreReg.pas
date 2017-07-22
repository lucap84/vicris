unit DBCoreReg;

interface

uses
  DesignIntf, DesignEditors;


procedure Register;

implementation

uses
  udmDBCore, uCore, udmDBRoot, uRoot;

procedure Register;
begin
  RegisterCustomModule(TdmDBCore,       TCustomModule);
  RegisterCustomModule(TdmDBRoot,       TCustomModule);
  RegisterCustomModule(TfmCore,         TCustomModule);
  RegisterCustomModule(TfmRoot,         TCustomModule);
//  RegisterCustomModule(TdmCore,   TCustomModule);
//  Use register custom module instead of RegisterComponents
//  RegisterComustomModule(TdmCore,   TBaseCustomModule);
//  RegisterCustomModule(TfmCore,   TBaseCustomModule);
//  RegisterCustomModule(TfmBrowse, TBaseCustomModule);
end;

end.
