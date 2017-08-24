object dmEdit: TdmEdit
  OldCreateOrder = True
  hdmType = hdmWrite
  Left = 345
  Top = 230
  Height = 386
  Width = 509
  object OraSession: TOraSession
    Options.Charset = 'WE8ISO8859P15'
    Options.DateFormat = 'DD-MON-RR'
    Options.DateLanguage = 'ITALIAN'
    Options.KeepDesignConnected = False
    Username = 'VICRIS'
    Server = 'VICRIS'
    AutoCommit = False
    LoginPrompt = False
    Schema = 'VICRIS'
    Left = 16
    Top = 16
    EncryptedPassword = 'A9FFB6FFBCFFADFFB6FFACFF'
  end
end
