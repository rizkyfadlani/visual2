object DataModule4: TDataModule4
  OldCreateOrder = False
  Left = 192
  Top = 125
  Height = 252
  Width = 540
  object ZConnection1: TZConnection
    ControlsCodePage = cGET_ACP
    AutoEncodeStrings = False
    Properties.Strings = (
      'RawStringEncoding=DB_CP')
    Connected = True
    HostName = 'localhost'
    Port = 3306
    Database = 'db_penjualan'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 'C:\Users\User\Downloads\Tugas05\Tugas05\libmysql.dll'
    Left = 40
    Top = 32
  end
  object Zkategori: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'select * from kategori')
    Params = <>
    Left = 120
    Top = 48
  end
  object Zsatuan: TZQuery
    Params = <>
    Left = 168
    Top = 48
  end
  object Zuser: TZQuery
    Params = <>
    Left = 224
    Top = 48
  end
  object Zsupplier: TZQuery
    Params = <>
    Left = 280
    Top = 48
  end
  object Zbarang: TZQuery
    Params = <>
    Left = 328
    Top = 48
  end
  object dskategori: TDataSource
    DataSet = Zkategori
    Left = 128
    Top = 136
  end
  object DataSource2: TDataSource
    Left = 208
    Top = 144
  end
  object DataSource3: TDataSource
    Left = 272
    Top = 144
  end
  object DataSource4: TDataSource
    Left = 336
    Top = 128
  end
  object DataSource5: TDataSource
    Left = 416
    Top = 144
  end
end
