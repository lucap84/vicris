object dmSearch: TdmSearch
  OldCreateOrder = False
  OnCreate = dmSearchCreate
  Left = 645
  Top = 285
  Height = 133
  Width = 183
  object OraSearch: TOraSession
    ConnectPrompt = False
    Options.Charset = 'WE8ISO8859P15'
    Options.DateFormat = 'DD-MON-RR'
    Options.DateLanguage = 'ITALIAN'
    Options.NeverConnect = True
    Username = 'PCAL'
    Password = 'PCAL'
    Server = 'XE'
    AutoCommit = False
    Schema = 'PCAL'
    Left = 16
    Top = 16
  end
end
