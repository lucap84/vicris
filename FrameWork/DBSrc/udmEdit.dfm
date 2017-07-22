object dmEdit: TdmEdit
  OldCreateOrder = True
  hdmType = hdmWrite
  Left = 345
  Top = 230
  Height = 386
  Width = 509
  object OraSession: TOraSession
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
