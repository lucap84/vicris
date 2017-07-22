object dmSearch: TdmSearch
  OldCreateOrder = False
  OnCreate = dmSearchCreate
  Left = 645
  Top = 285
  Height = 405
  Width = 298
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
  object qyAut: TOraQuery
    Session = OraSearch
    SQL.Strings = (
      
        'SELECT COD_AUT, DES_NOM, DES_COG, DES_NTE, DES_NOM||'#39' '#39'||DES_COG' +
        ' DESCRIZIONE'
      '  FROM AUTORE'
      
        ' WHERE COD_AUT BETWEEN NVL(:COD_AUT, '#39' '#39') AND NVL(:COD_AUT, '#39'zzz' +
        'zzz'#39')'
      ' ORDER BY DES_COG, DES_NOM')
    FetchAll = True
    Left = 64
    Top = 104
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'COD_AUT'
      end>
    object qyAutCOD_AUT: TStringField
      DisplayLabel = 'Codice'
      FieldName = 'COD_AUT'
      Required = True
      Size = 6
    end
    object qyAutDES_NOM: TStringField
      DisplayLabel = 'Nome'
      DisplayWidth = 20
      FieldName = 'DES_NOM'
      Size = 120
    end
    object qyAutDES_COG: TStringField
      DisplayLabel = 'Cognome'
      DisplayWidth = 30
      FieldName = 'DES_COG'
      Size = 120
    end
    object qyAutDES_NTE: TStringField
      DisplayLabel = 'Note'
      DisplayWidth = 50
      FieldName = 'DES_NTE'
      Size = 1000
    end
    object qyAutDESCRIZIONE: TStringField
      FieldName = 'DESCRIZIONE'
      Visible = False
      Size = 241
    end
  end
  object qyNaz: TOraQuery
    Session = OraSearch
    SQL.Strings = (
      'SELECT COD_NAZ, DES_NAZ DESCRIZIONE'
      '  FROM NAZIONE'
      
        ' WHERE COD_NAZ BETWEEN NVL(:COD_NAZ, '#39' '#39') AND NVL(:COD_NAZ, '#39'zzz' +
        'zzz'#39')'
      ' ORDER BY DES_NAZ')
    FetchAll = True
    Left = 160
    Top = 160
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'COD_NAZ'
      end>
    object qyNazCOD_NAZ: TStringField
      DisplayLabel = 'Codice'
      FieldName = 'COD_NAZ'
      Required = True
      Size = 6
    end
    object qyNazDESCRIZIONE: TStringField
      DisplayLabel = 'Descrizione'
      DisplayWidth = 30
      FieldName = 'DESCRIZIONE'
      Size = 60
    end
  end
  object qyCta: TOraQuery
    Session = OraSearch
    SQL.Strings = (
      'SELECT C.COD_CTA, C.DES_CTA DESCRIZIONE, N.DES_NAZ, C.COD_NAZ'
      '  FROM CITTA C, NAZIONE N'
      ' WHERE C.COD_NAZ = NVL(:COD_NAZ, C.COD_NAZ)'
      '   AND C.COD_NAZ = N.COD_NAZ'
      
        '   AND C.COD_CTA BETWEEN NVL(:COD_CTA, '#39' '#39') AND NVL(:COD_CTA, '#39'z' +
        'zzzzz'#39')'
      ' ORDER BY N.DES_NAZ, DES_CTA')
    FetchAll = True
    Left = 112
    Top = 104
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'COD_NAZ'
      end
      item
        DataType = ftUnknown
        Name = 'COD_CTA'
      end>
    object qyCtaCOD_CTA: TStringField
      DisplayLabel = 'Codice'
      FieldName = 'COD_CTA'
      Required = True
      Size = 6
    end
    object qyCtaDESCRIZIONE: TStringField
      DisplayLabel = 'Descrizione'
      DisplayWidth = 20
      FieldName = 'DESCRIZIONE'
      Size = 60
    end
    object qyCtaDES_NAZ: TStringField
      DisplayLabel = 'Nazione'
      DisplayWidth = 30
      FieldName = 'DES_NAZ'
      Size = 60
    end
    object qyCtaCOD_NAZ: TStringField
      FieldName = 'COD_NAZ'
      Required = True
      Visible = False
      Size = 6
    end
  end
  object qyCed: TOraQuery
    Session = OraSearch
    SQL.Strings = (
      'SELECT E.COD_CED, E.DES_CED DESCRIZIONE,'
      '       C.COD_NAZ, N.DES_NAZ,'
      '       E.COD_CTA, C.DES_CTA'
      '  FROM EDITRICE E, CITTA C, NAZIONE N'
      
        ' WHERE E.COD_CED BETWEEN NVL(:COD_CED, '#39' '#39') AND NVL(:COD_CED, '#39'z' +
        'zzzzz'#39')'
      '   AND E.COD_NAZ = N.COD_NAZ (+)'
      '   AND E.COD_NAZ = C.COD_NAZ (+)'
      '   AND E.COD_CTA = C.COD_CTA (+)'
      ' ORDER BY E.DES_CED')
    FetchAll = True
    Left = 160
    Top = 104
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'COD_CED'
      end>
    object qyCedCOD_CED: TStringField
      DisplayLabel = 'Codice'
      FieldName = 'COD_CED'
      Required = True
      Size = 6
    end
    object qyCedDESCRIZIONE: TStringField
      DisplayLabel = 'Descrizione'
      DisplayWidth = 40
      FieldName = 'DESCRIZIONE'
      Size = 120
    end
    object qyCedCOD_NAZ: TStringField
      FieldName = 'COD_NAZ'
      Visible = False
      Size = 6
    end
    object qyCedDES_NAZ: TStringField
      DisplayLabel = 'Nazione'
      DisplayWidth = 10
      FieldName = 'DES_NAZ'
      Size = 60
    end
    object qyCedCOD_CTA: TStringField
      FieldName = 'COD_CTA'
      Visible = False
      Size = 6
    end
    object qyCedDES_CTA: TStringField
      DisplayLabel = 'Citt'#224
      DisplayWidth = 20
      FieldName = 'DES_CTA'
      Size = 60
    end
  end
  object qyClz: TOraQuery
    Session = OraSearch
    SQL.Strings = (
      'SELECT COD_CLZ, DES_CLZ DESCRIZIONE'
      '  FROM COLLEZIONE'
      
        ' WHERE COD_CLZ BETWEEN NVL(:COD_CLZ, '#39' '#39') AND NVL(:COD_CLZ, '#39'zzz' +
        'zzz'#39')'
      ' ORDER BY DES_CLZ')
    FetchAll = True
    Left = 208
    Top = 104
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'COD_CLZ'
      end>
    object qyClzCOD_CLZ: TStringField
      DisplayLabel = 'Codice'
      FieldName = 'COD_CLZ'
      Required = True
      Size = 6
    end
    object qyClzDESCRIZIONE: TStringField
      DisplayLabel = 'Descrizione'
      FieldName = 'DESCRIZIONE'
      Size = 60
    end
  end
  object qyOgg: TOraQuery
    Session = OraSearch
    SQL.Strings = (
      
        'SELECT O.COD_OGG, O.COD_CDU, O.DES_OGG, O.COD_CDU || '#39' - '#39' || O.' +
        'DES_OGG DESCRIZIONE, O.COD_UBI, U.DES_UBI'
      '  FROM OGGETTO O, UBI U'
      
        ' WHERE O.COD_OGG BETWEEN NVL(:COD_OGG, '#39' '#39') AND NVL(:COD_OGG, '#39'z' +
        'zzzzz'#39')'
      '   AND O.COD_UBI = U.COD_UBI (+)'
      ' ORDER BY O.DES_OGG')
    FetchAll = True
    Left = 208
    Top = 160
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'COD_OGG'
      end>
    object qyOggCOD_OGG: TStringField
      DisplayLabel = 'Codice'
      FieldName = 'COD_OGG'
      Required = True
      Size = 6
    end
    object qyOggCOD_CDU: TStringField
      DisplayLabel = 'C.D.U.'
      FieldName = 'COD_CDU'
      Size = 60
    end
    object qyOggDES_OGG: TStringField
      DisplayLabel = 'Descrizione'
      FieldName = 'DES_OGG'
      Size = 120
    end
    object qyOggDESCRIZIONE: TStringField
      FieldName = 'DESCRIZIONE'
      Visible = False
      Size = 183
    end
    object qyOggCOD_UBI: TStringField
      FieldName = 'COD_UBI'
      Visible = False
      Size = 6
    end
    object qyOggDES_UBI: TStringField
      DisplayLabel = 'Ubicazione'
      FieldName = 'DES_UBI'
      Size = 120
    end
  end
  object qyPmr: TOraQuery
    Session = OraSearch
    SQL.Strings = (
      'SELECT DISTINCT P.COD_PMR, P.DES_PMR DESCRIZIONE'
      '  FROM PROMOTORE P, RUOLO R'
      
        ' WHERE P.COD_PMR           BETWEEN NVL(:COD_PMR, '#39' '#39') AND NVL(:C' +
        'OD_PMR, '#39'zzzzzz'#39')'
      '   AND P.COD_PMR           = R.COD_PMR (+)'
      
        '   AND NVL(R.COD_INC, '#39' '#39') BETWEEN NVL(:COD_INC, '#39' '#39') AND NVL(:C' +
        'OD_INC, '#39'zzzzzz'#39')'
      
        '   AND NVL(R.COD_AUT, '#39' '#39') BETWEEN NVL(:COD_AUT, '#39' '#39') AND NVL(:C' +
        'OD_AUT, '#39'zzzzzz'#39')'
      ' ORDER BY P.DES_PMR')
    FetchAll = True
    Left = 112
    Top = 216
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'COD_PMR'
      end
      item
        DataType = ftUnknown
        Name = 'COD_INC'
      end
      item
        DataType = ftUnknown
        Name = 'COD_AUT'
      end>
    object qyPmrCOD_PMR: TStringField
      DisplayLabel = 'Codice'
      FieldName = 'COD_PMR'
      Required = True
      Size = 6
    end
    object qyPmrDESCRIZIONE: TStringField
      DisplayLabel = 'Descrizione'
      FieldName = 'DESCRIZIONE'
      Size = 60
    end
  end
  object qyInc: TOraQuery
    Session = OraSearch
    SQL.Strings = (
      'SELECT DISTINCT I.COD_INC, I.DES_INC DESCRIZIONE'
      '  FROM INCARICO I, RUOLO R'
      
        ' WHERE I.COD_INC BETWEEN NVL(:COD_INC, '#39' '#39') AND NVL(:COD_INC, '#39'z' +
        'zzzzz'#39')'
      '   AND I.COD_INC           = R.COD_INC (+)'
      
        '   AND NVL(R.COD_AUT, '#39' '#39') BETWEEN NVL(:COD_AUT, '#39' '#39') AND NVL(:C' +
        'OD_AUT, '#39'zzzzzz'#39')'
      
        '   AND NVL(R.COD_PMR, '#39' '#39') BETWEEN NVL(:COD_PMR, '#39' '#39') AND NVL(:C' +
        'OD_PMR, '#39'zzzzzz'#39')'
      ' ORDER BY I.DES_INC')
    Left = 112
    Top = 160
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'COD_INC'
      end
      item
        DataType = ftUnknown
        Name = 'COD_AUT'
      end
      item
        DataType = ftUnknown
        Name = 'COD_PMR'
      end>
    object qyIncCOD_INC: TStringField
      DisplayLabel = 'Codice'
      FieldName = 'COD_INC'
      Required = True
      Size = 6
    end
    object qyIncDESCRIZIONE: TStringField
      DisplayLabel = 'Descrizione'
      FieldName = 'DESCRIZIONE'
      Size = 120
    end
  end
  object qyPer: TOraQuery
    Session = OraSearch
    SQL.Strings = (
      
        'SELECT DISTINCT P.COD_AUT, P.DES_NOM, P.DES_COG, P.DES_NOM||'#39' '#39'|' +
        '|P.DES_COG DESCRIZIONE'
      '  FROM AUTORE P, RUOLO R'
      
        ' WHERE P.COD_AUT           BETWEEN NVL(:COD_AUT, '#39' '#39') AND NVL(:C' +
        'OD_AUT, '#39'zzzzzz'#39')'
      '   AND P.COD_AUT           = R.COD_AUT (+)'
      
        '   AND NVL(R.COD_INC, '#39' '#39') BETWEEN NVL(:COD_INC, '#39' '#39') AND NVL(:C' +
        'OD_INC, '#39'zzzzzz'#39')'
      
        '   AND NVL(R.COD_PMR, '#39' '#39') BETWEEN NVL(:COD_PMR, '#39' '#39') AND NVL(:C' +
        'OD_PMR, '#39'zzzzzz'#39')'
      ' ORDER BY P.DES_COG, P.DES_NOM')
    Left = 64
    Top = 216
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'COD_AUT'
      end
      item
        DataType = ftUnknown
        Name = 'COD_INC'
      end
      item
        DataType = ftUnknown
        Name = 'COD_PMR'
      end>
    object qyPerCOD_AUT: TStringField
      DisplayLabel = 'Codice'
      FieldName = 'COD_AUT'
      Required = True
      Size = 6
    end
    object qyPerDES_NOM: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'DES_NOM'
      Size = 60
    end
    object qyPerDES_COG: TStringField
      DisplayLabel = 'Cognome'
      FieldName = 'DES_COG'
      Size = 60
    end
    object qyPerDESCRIZIONE: TStringField
      FieldName = 'DESCRIZIONE'
      Visible = False
      Size = 121
    end
  end
  object qyRol: TOraQuery
    Session = OraSearch
    SQL.Strings = (
      'SELECT R.NPA_ROL, '
      '       PP.DES_PMR,'
      '       I.DES_INC,'
      '       P.DES_NOM || '#39' '#39' || P.DES_COG DES_PER,'
      '       R.DAT_INI, R.DAT_FIN,'
      '       PP.DES_PMR || '#39' - '#39' || I.DES_INC DESCRIZIONE,'
      '       R.COD_PMR, R.COD_INC, R.COD_AUT'
      '  FROM RUOLO R, PROMOTORE PP, INCARICO I, AUTORE P'
      ' WHERE R.COD_PMR = NVL(:COD_PMR, R.COD_PMR)'
      '   AND R.COD_INC = NVL(:COD_INC, R.COD_INC)'
      '   AND R.COD_AUT = NVL(:COD_AUT, R.COD_AUT)'
      '   AND R.COD_PMR = PP.COD_PMR (+)'
      '   AND R.COD_INC = I.COD_INC  (+)'
      '   AND R.COD_AUT = P.COD_AUT  (+)'
      ' ORDER BY 2, 3, 5 DESC')
    FetchAll = True
    Left = 160
    Top = 216
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'COD_PMR'
      end
      item
        DataType = ftUnknown
        Name = 'COD_INC'
      end
      item
        DataType = ftUnknown
        Name = 'COD_AUT'
      end>
    object qyRolNPA_ROL: TFloatField
      FieldName = 'NPA_ROL'
      Required = True
      Visible = False
    end
    object qyRolDES_PMR: TStringField
      DisplayLabel = 'Istituzione'
      FieldName = 'DES_PMR'
      Size = 120
    end
    object qyRolDES_INC: TStringField
      DisplayLabel = 'Incarico'
      FieldName = 'DES_INC'
      Size = 120
    end
    object qyRolDES_PER: TStringField
      DisplayLabel = 'Persona'
      FieldName = 'DES_PER'
      Size = 121
    end
    object qyRolDAT_INI: TDateTimeField
      DisplayLabel = 'Inizio'
      FieldName = 'DAT_INI'
    end
    object qyRolDAT_FIN: TDateTimeField
      DisplayLabel = 'Fine'
      FieldName = 'DAT_FIN'
    end
    object qyRolDESCRIZIONE: TStringField
      FieldName = 'DESCRIZIONE'
      Visible = False
      Size = 243
    end
    object qyRolCOD_PMR: TStringField
      FieldName = 'COD_PMR'
      Visible = False
      Size = 6
    end
    object qyRolCOD_INC: TStringField
      FieldName = 'COD_INC'
      Visible = False
      Size = 6
    end
    object qyRolCOD_AUT: TStringField
      FieldName = 'COD_AUT'
      Visible = False
      Size = 6
    end
  end
  object qyUbi: TOraQuery
    Session = OraSearch
    SQL.Strings = (
      'SELECT COD_UBI, DES_UBI DESCRIZIONE'
      '  FROM UBI'
      
        ' WHERE COD_UBI BETWEEN NVL(:COD_UBI, '#39' '#39') AND NVL(:COD_UBI, '#39'zzz' +
        'zzz'#39')'
      ' ORDER BY DES_UBI')
    FetchAll = True
    Left = 208
    Top = 216
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'COD_UBI'
      end>
    object qyUbiCOD_UBI: TStringField
      DisplayLabel = 'Codice'
      FieldName = 'COD_UBI'
      Required = True
      Size = 6
    end
    object qyUbiDESCRIZIONE: TStringField
      DisplayLabel = 'Descrizione'
      DisplayWidth = 30
      FieldName = 'DESCRIZIONE'
      Size = 60
    end
  end
  object qyEvt: TOraQuery
    Session = OraSearch
    SQL.Strings = (
      'SELECT COD_EVT, DES_EVT DESCRIZIONE'
      '  FROM EVENTO'
      
        ' WHERE COD_EVT BETWEEN NVL(:COD_EVT, '#39' '#39') AND NVL(:COD_EVT, '#39'zzz' +
        'zzz'#39')'
      ' ORDER BY DES_EVT')
    FetchAll = True
    Left = 64
    Top = 160
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'COD_EVT'
      end>
    object qyEvtCOD_EVT: TStringField
      DisplayLabel = 'Codice'
      FieldName = 'COD_EVT'
      Required = True
      Size = 6
    end
    object qyEvtDESCRIZIONE: TStringField
      DisplayLabel = 'Descrizione'
      FieldName = 'DESCRIZIONE'
      Size = 120
    end
  end
end
