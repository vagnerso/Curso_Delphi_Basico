object dtmPrincipal: TdtmPrincipal
  OnCreate = DataModuleCreate
  Height = 352
  Width = 589
  PixelsPerInch = 120
  object memTarefas: TFDMemTable
    BeforePost = memTarefasBeforePost
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 272
    Top = 160
    object memTarefasId: TIntegerField
      FieldName = 'Id'
    end
    object memTarefasData: TDateTimeField
      FieldName = 'Data'
    end
    object memTarefasDescricao: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'Descricao'
      Size = 100
    end
    object memTarefasSituacao: TSmallintField
      DisplayLabel = 'Situa'#231#227'o'
      FieldName = 'Situacao'
      OnGetText = memTarefasSituacaoGetText
    end
    object memTarefasTempoEstimado: TTimeField
      DisplayLabel = 'Tempo Estimado'
      FieldName = 'TempoEstimado'
    end
  end
end
