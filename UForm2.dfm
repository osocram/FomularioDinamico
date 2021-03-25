object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 671
  ClientWidth = 610
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object pnlPrincipal: TPanel
    Left = 0
    Top = 0
    Width = 610
    Height = 671
    Align = alClient
    Caption = 'pnlPrincipal'
    TabOrder = 0
  end
  object cdsCadastroTela: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 120
    Top = 409
  end
  object dsCadastroTela: TDataSource
    Left = 224
    Top = 409
  end
  object CdsAtendimento: TClientDataSet
    Aggregates = <>
    PacketRecords = 30
    Params = <>
    ProviderName = 'DspAtendimento'
    Left = 112
    Top = 455
    object CdsAtendimentoI_ATENDIMENTO_ID: TIntegerField
      DisplayLabel = 'C'#211'DIGO'
      FieldName = 'I_ATENDIMENTO_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CdsAtendimentoD_CADASTRO: TDateField
      DisplayLabel = 'DATA CADASTRO'
      FieldName = 'D_CADASTRO'
    end
    object CdsAtendimentoV_STATUS: TStringField
      DisplayLabel = 'STATUS'
      FieldName = 'V_STATUS'
      Size = 10
    end
    object CdsAtendimentoI_CLIENTE_ID: TIntegerField
      DisplayLabel = 'C'#211'D. PACIENTE'
      FieldName = 'I_CLIENTE_ID'
    end
    object CdsAtendimentoV_QP: TStringField
      DisplayLabel = 'QP'
      DisplayWidth = 3000
      FieldName = 'V_QP'
      Size = 3000
    end
    object CdsAtendimentoV_HMA: TStringField
      DisplayLabel = 'HMA'
      FieldName = 'V_HMA'
      Size = 3000
    end
    object CdsAtendimentoCLI_NOME: TStringField
      DisplayLabel = 'PACIENTE'
      FieldName = 'CLI_NOME'
      ProviderFlags = []
      Size = 60
    end
    object CdsAtendimentoCLI_NUMERO: TIntegerField
      FieldName = 'CLI_NUMERO'
      ProviderFlags = []
    end
    object CdsAtendimentoCLI_DTCADASTRO: TDateField
      FieldName = 'CLI_DTCADASTRO'
      ProviderFlags = []
    end
    object CdsAtendimentoCLI_DTNASCIMENTO: TDateField
      FieldName = 'CLI_DTNASCIMENTO'
      ProviderFlags = []
    end
    object CdsAtendimentoCLI_APELIDO: TStringField
      FieldName = 'CLI_APELIDO'
      ProviderFlags = []
      Size = 80
    end
    object CdsAtendimentoCLI_EMAIL: TStringField
      FieldName = 'CLI_EMAIL'
      ProviderFlags = []
      Size = 80
    end
    object CdsAtendimentoCLI_CONTATO: TStringField
      FieldName = 'CLI_CONTATO'
      ProviderFlags = []
      Size = 80
    end
    object CdsAtendimentoCLI_ENDERECO: TStringField
      FieldName = 'CLI_ENDERECO'
      ProviderFlags = []
      Size = 80
    end
    object CdsAtendimentoCLI_INDICACAO: TStringField
      FieldName = 'CLI_INDICACAO'
      ProviderFlags = []
      Size = 80
    end
    object CdsAtendimentoCLI_BAIRRO: TStringField
      FieldName = 'CLI_BAIRRO'
      ProviderFlags = []
      Size = 80
    end
    object CdsAtendimentoCLI_ESTADOCIVIL: TStringField
      FieldName = 'CLI_ESTADOCIVIL'
      ProviderFlags = []
    end
    object CdsAtendimentoCLI_CNPJ: TStringField
      FieldName = 'CLI_CNPJ'
      ProviderFlags = []
      Size = 18
    end
    object CdsAtendimentoCLI_CPF: TStringField
      FieldName = 'CLI_CPF'
      ProviderFlags = []
      Size = 14
    end
    object CdsAtendimentoCLI_IE: TStringField
      FieldName = 'CLI_IE'
      ProviderFlags = []
      Size = 14
    end
    object CdsAtendimentoCLI_TELRESIDENCIAL: TStringField
      FieldName = 'CLI_TELRESIDENCIAL'
      ProviderFlags = []
      Size = 14
    end
    object CdsAtendimentoCLI_TELCELULAR: TStringField
      FieldName = 'CLI_TELCELULAR'
      ProviderFlags = []
      Size = 14
    end
    object CdsAtendimentoCLI_TELCOMERCIAL: TStringField
      FieldName = 'CLI_TELCOMERCIAL'
      ProviderFlags = []
      Size = 14
    end
    object CdsAtendimentoCLI_SEXO: TStringField
      FieldName = 'CLI_SEXO'
      ProviderFlags = []
      Size = 10
    end
    object CdsAtendimentoCLI_RG: TStringField
      FieldName = 'CLI_RG'
      ProviderFlags = []
      Size = 10
    end
    object CdsAtendimentoCLI_CEP: TStringField
      FieldName = 'CLI_CEP'
      ProviderFlags = []
      Size = 10
    end
    object CdsAtendimentoCLI_TIPO: TStringField
      FieldName = 'CLI_TIPO'
      ProviderFlags = []
      Size = 10
    end
    object CdsAtendimentoCLI_DESATIVADO: TStringField
      FieldName = 'CLI_DESATIVADO'
      ProviderFlags = []
      Size = 3
    end
    object CdsAtendimentoMUN_MUNICIPIO: TStringField
      FieldName = 'MUN_MUNICIPIO'
      ProviderFlags = []
      Size = 40
    end
    object CdsAtendimentoMUN_UF: TStringField
      FieldName = 'MUN_UF'
      ProviderFlags = []
      Size = 2
    end
    object CdsAtendimentoQEvolucao: TDataSetField
      FieldName = 'QEvolucao'
    end
    object CdsAtendimentoQDiagOsteopatico: TDataSetField
      FieldName = 'QDiagOsteopatico'
    end
    object CdsAtendimentoDT_PREVISAO: TSQLTimeStampField
      FieldName = 'DT_PREVISAO'
    end
    object CdsAtendimentoBO_ATIVO: TStringField
      FieldName = 'BO_ATIVO'
      Size = 3
    end
  end
  object DsAtendimento: TDataSource
    DataSet = CdsAtendimento
    Left = 18
    Top = 321
  end
  object cdsPaciente: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPaciente'
    Left = 38
    Top = 139
    object IntegerField1: TIntegerField
      FieldName = 'I_CLIENTE_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsPacienteQCranio: TDataSetField
      FieldName = 'QCranio'
    end
    object cdsPacienteQCervical: TDataSetField
      FieldName = 'QCervical'
    end
    object cdsPacienteQTronco: TDataSetField
      FieldName = 'QTronco'
    end
    object cdsPacienteQPelve: TDataSetField
      FieldName = 'QPelve'
    end
    object cdsPacienteQParto: TDataSetField
      FieldName = 'QParto'
    end
    object cdsPacienteQTrauma: TDataSetField
      FieldName = 'QTrauma'
    end
    object cdsPacienteQPatologia: TDataSetField
      FieldName = 'QPatologia'
    end
    object cdsPacienteQHabitos: TDataSetField
      FieldName = 'QHabitos'
    end
    object cdsPacienteQAntecedentes: TDataSetField
      FieldName = 'QAntecedentes'
    end
    object cdsPacienteQExames: TDataSetField
      FieldName = 'QExames'
    end
  end
  object DataSource1: TDataSource
    DataSet = cdsPaciente
    Left = 72
    Top = 326
  end
  object CdsCranio: TClientDataSet
    Aggregates = <>
    DataSetField = cdsPacienteQCranio
    Params = <>
    Left = 100
    Top = 139
    object CdsCranioI_CLIENTE_ID: TIntegerField
      FieldName = 'I_CLIENTE_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CdsCranioI_CRANIO_ID: TIntegerField
      FieldName = 'I_CRANIO_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CdsCranioCEFALEIA: TStringField
      FieldName = 'CEFALEIA'
      Size = 3
    end
    object CdsCranioCEFALEIA_LOCAL: TStringField
      DisplayWidth = 2000
      FieldName = 'CEFALEIA_LOCAL'
      Size = 2000
    end
    object CdsCranioCEFALEIA_TIPO: TStringField
      DisplayWidth = 2000
      FieldName = 'CEFALEIA_TIPO'
      Size = 2000
    end
    object CdsCranioCEFALEIA_TEMPO: TStringField
      FieldName = 'CEFALEIA_TEMPO'
      Size = 50
    end
    object CdsCranioENXAQUECA: TStringField
      FieldName = 'ENXAQUECA'
      Size = 3
    end
    object CdsCranioENXAQUECA_ESTOCOMO: TStringField
      FieldName = 'ENXAQUECA_ESTOCOMO'
      Size = 3
    end
    object CdsCranioENXAQUECA_AURA: TStringField
      FieldName = 'ENXAQUECA_AURA'
      Size = 3
    end
    object CdsCranioENXAQUECA_FOTOFOBIA: TStringField
      FieldName = 'ENXAQUECA_FOTOFOBIA'
      Size = 3
    end
    object CdsCranioENXAQUECA_FONOFOBIA: TStringField
      FieldName = 'ENXAQUECA_FONOFOBIA'
      Size = 3
    end
    object CdsCranioNAUSEA: TStringField
      FieldName = 'NAUSEA'
      Size = 3
    end
    object CdsCranioNAUSEA_VOMITO: TStringField
      FieldName = 'NAUSEA_VOMITO'
      Size = 3
    end
    object CdsCranioNAUSEA_TONTURA: TStringField
      FieldName = 'NAUSEA_TONTURA'
      Size = 3
    end
    object CdsCranioNAUSEA_SINCOPE: TStringField
      FieldName = 'NAUSEA_SINCOPE'
      Size = 3
    end
    object CdsCranioNAUSEA_DESMAIO: TStringField
      FieldName = 'NAUSEA_DESMAIO'
      Size = 3
    end
    object CdsCranioDORRETRORB: TStringField
      FieldName = 'DORRETRORB'
      Size = 3
    end
    object CdsCranioDORRET_CONGESTAOOCULAR: TStringField
      FieldName = 'DORRET_CONGESTAOOCULAR'
      Size = 3
    end
    object CdsCranioDORRE_PATOLOGIAOCULAR: TStringField
      FieldName = 'DORRE_PATOLOGIAOCULAR'
      Size = 3
    end
    object CdsCranioDORRE_PATOLOGIAOCULAR_OBS: TStringField
      DisplayWidth = 2000
      FieldName = 'DORRE_PATOLOGIAOCULAR_OBS'
      Size = 2000
    end
    object CdsCranioMIOPIA: TStringField
      FieldName = 'MIOPIA'
      Size = 3
    end
    object CdsCranioMIOPIA_ASTIGMATISMO: TStringField
      FieldName = 'MIOPIA_ASTIGMATISMO'
      Size = 3
    end
    object CdsCranioMIOPIA_HIPERMETROPIA: TStringField
      FieldName = 'MIOPIA_HIPERMETROPIA'
      Size = 3
    end
    object CdsCranioMIOPIA_PRESBIOPIA: TStringField
      FieldName = 'MIOPIA_PRESBIOPIA'
      Size = 3
    end
    object CdsCranioMIOPIA_GRAU_OLHOD: TStringField
      DisplayWidth = 2000
      FieldName = 'MIOPIA_GRAU_OLHOD'
      Size = 2000
    end
    object CdsCranioMIOPIA_GRAU_OLHOE: TStringField
      DisplayWidth = 2000
      FieldName = 'MIOPIA_GRAU_OLHOE'
      Size = 2000
    end
    object CdsCranioRENITE: TStringField
      FieldName = 'RENITE'
      Size = 3
    end
    object CdsCranioRENITE_SINUSITE: TStringField
      FieldName = 'RENITE_SINUSITE'
      Size = 3
    end
    object CdsCranioRENITE_ALERGIANASAL: TStringField
      FieldName = 'RENITE_ALERGIANASAL'
      Size = 3
    end
    object CdsCranioRENITE_TAMPONAMENTONASAL: TStringField
      FieldName = 'RENITE_TAMPONAMENTONASAL'
      Size = 3
    end
    object CdsCranioRENITE_DESVIODESEPTO: TStringField
      FieldName = 'RENITE_DESVIODESEPTO'
      Size = 3
    end
    object CdsCranioRENITE_RESPIRADORBUCAL: TStringField
      FieldName = 'RENITE_RESPIRADORBUCAL'
      Size = 3
    end
    object CdsCranioZUMBIDO: TStringField
      FieldName = 'ZUMBIDO'
      Size = 3
    end
    object CdsCranioZUMBIDO_OBS: TStringField
      DisplayWidth = 2000
      FieldName = 'ZUMBIDO_OBS'
      Size = 2000
    end
    object CdsCranioZUMBIDO_TINIDO: TStringField
      FieldName = 'ZUMBIDO_TINIDO'
      Size = 3
    end
    object CdsCranioZUMBIDO_TINIDO_OBS: TStringField
      DisplayWidth = 2000
      FieldName = 'ZUMBIDO_TINIDO_OBS'
      Size = 2000
    end
    object CdsCranioZUMBIDO_TAMPOAUDI: TStringField
      FieldName = 'ZUMBIDO_TAMPOAUDI'
      Size = 3
    end
    object CdsCranioZUMBIDO_TAMPOAUDI_OBS: TStringField
      DisplayWidth = 2000
      FieldName = 'ZUMBIDO_TAMPOAUDI_OBS'
      Size = 2000
    end
    object CdsCranioZUMBIDO_SURDEZ: TStringField
      FieldName = 'ZUMBIDO_SURDEZ'
      Size = 3
    end
    object CdsCranioZUMBIDO_SURDEZ_OBS: TStringField
      DisplayWidth = 2000
      FieldName = 'ZUMBIDO_SURDEZ_OBS'
      Size = 2000
    end
    object CdsCranioDISFATM: TStringField
      FieldName = 'DISFATM'
      Size = 3
    end
    object CdsCranioDISFATM_OBS: TStringField
      DisplayWidth = 2000
      FieldName = 'DISFATM_OBS'
      Size = 2000
    end
    object CdsCranioDISFATM_ALTEROCLUSAO: TStringField
      FieldName = 'DISFATM_ALTEROCLUSAO'
      Size = 3
    end
    object CdsCranioDISFATM_ALTEROCLUSAO_OBS: TStringField
      DisplayWidth = 2000
      FieldName = 'DISFATM_ALTEROCLUSAO_OBS'
      Size = 2000
    end
    object CdsCranioBRUXISMO: TStringField
      FieldName = 'BRUXISMO'
      Size = 3
    end
    object CdsCranioBRUXISMO_APERTDENTAL: TStringField
      FieldName = 'BRUXISMO_APERTDENTAL'
      Size = 3
    end
    object CdsCranioBRUXISMO_FALTAELEMDENTAL: TStringField
      FieldName = 'BRUXISMO_FALTAELEMDENTAL'
      Size = 3
    end
    object CdsCranioBRUXISMO_FALTAELEMDENTAL_OBS: TStringField
      DisplayWidth = 2000
      FieldName = 'BRUXISMO_FALTAELEMDENTAL_OBS'
      Size = 2000
    end
    object CdsCranioUSOORTESEDENTARIA: TStringField
      FieldName = 'USOORTESEDENTARIA'
      Size = 3
    end
    object CdsCranioUSOORTESEDENTARIA_TIPO: TStringField
      DisplayWidth = 2000
      FieldName = 'USOORTESEDENTARIA_TIPO'
      Size = 2000
    end
    object CdsCranioUSOORTESEDENTARIA_TEMPO: TStringField
      FieldName = 'USOORTESEDENTARIA_TEMPO'
      Size = 50
    end
    object CdsCranioAMIGDALITE: TStringField
      FieldName = 'AMIGDALITE'
      Size = 3
    end
    object CdsCranioAMIGD_ADENOIDE: TStringField
      FieldName = 'AMIGD_ADENOIDE'
      Size = 3
    end
    object CdsCranioAMIGD_ADENOIDE_EPOCA: TStringField
      FieldName = 'AMIGD_ADENOIDE_EPOCA'
      Size = 50
    end
    object CdsCranioAMIGD_ADENOIDE_CIRURGIA: TStringField
      DisplayWidth = 2000
      FieldName = 'AMIGD_ADENOIDE_CIRURGIA'
      Size = 2000
    end
    object CdsCranioAMIGD_FARINGITE: TStringField
      FieldName = 'AMIGD_FARINGITE'
      Size = 3
    end
    object CdsCranioAMIGD_OTITE: TStringField
      FieldName = 'AMIGD_OTITE'
      Size = 3
    end
    object CdsCranioAMIGD_OTITED: TStringField
      FieldName = 'AMIGD_OTITED'
      Size = 3
    end
    object CdsCranioAMIGD_OTITEE: TStringField
      FieldName = 'AMIGD_OTITEE'
      Size = 3
    end
    object CdsCranioRONQUIDAO: TStringField
      FieldName = 'RONQUIDAO'
      Size = 3
    end
    object CdsCranioRONQUIDAO_ROUQUIDAO: TStringField
      FieldName = 'RONQUIDAO_ROUQUIDAO'
      Size = 3
    end
    object CdsCranioRONQUIDAO_APNEIASONO: TStringField
      FieldName = 'RONQUIDAO_APNEIASONO'
      Size = 3
    end
    object CdsCranioRONQUIDAO_INSONIA: TStringField
      FieldName = 'RONQUIDAO_INSONIA'
      Size = 3
    end
    object CdsCranioRONQUIDAO_INSONIA_ACORDA: TStringField
      FieldName = 'RONQUIDAO_INSONIA_ACORDA'
      Size = 3
    end
    object CdsCranioRONQUIDAO_SONOLENCIA: TStringField
      FieldName = 'RONQUIDAO_SONOLENCIA'
      Size = 3
    end
    object CdsCranioRONQUIDAO_SONO_LEITURA: TStringField
      DisplayWidth = 2000
      FieldName = 'RONQUIDAO_SONO_LEITURA'
      Size = 2000
    end
    object CdsCranioRONQUIDAO_SONO_HORA: TStringField
      DisplayWidth = 2000
      FieldName = 'RONQUIDAO_SONO_HORA'
      Size = 2000
    end
    object CdsCranioCONGESTAOCRANIANA: TStringField
      FieldName = 'CONGESTAOCRANIANA'
      Size = 3
    end
    object CdsCranioCONGESTAOCRANIANA_DISPNEIA: TStringField
      FieldName = 'CONGESTAOCRANIANA_DISPNEIA'
      Size = 3
    end
    object CdsCranioMENINGITE: TStringField
      FieldName = 'MENINGITE'
      Size = 3
    end
    object CdsCranioMENINGITE_EPOCA: TStringField
      FieldName = 'MENINGITE_EPOCA'
      Size = 50
    end
    object CdsCranioMENINGITE_TIPO: TStringField
      DisplayWidth = 2000
      FieldName = 'MENINGITE_TIPO'
      Size = 2000
    end
    object CdsCranioDORBASECRANIO: TStringField
      FieldName = 'DORBASECRANIO'
      Size = 3
    end
    object CdsCranioSANGRANASALFREQUENTE: TStringField
      FieldName = 'SANGRANASALFREQUENTE'
      Size = 3
    end
    object CdsCranioSANGR_DEPRESSAO: TStringField
      FieldName = 'SANGR_DEPRESSAO'
      Size = 3
    end
    object CdsCranioSANGR_ANSIEDADE: TStringField
      FieldName = 'SANGR_ANSIEDADE'
      Size = 3
    end
    object CdsCranioSANGR_IRRITABILI: TStringField
      FieldName = 'SANGR_IRRITABILI'
      Size = 3
    end
    object CdsCranioCIRURGIACRANIANA: TStringField
      FieldName = 'CIRURGIACRANIANA'
      Size = 3
    end
    object CdsCranioCIRURGIACRANIANA_TIPO: TStringField
      DisplayWidth = 2000
      FieldName = 'CIRURGIACRANIANA_TIPO'
      Size = 2000
    end
    object CdsCranioALTERACAOTIREOIDE: TStringField
      FieldName = 'ALTERACAOTIREOIDE'
      Size = 3
    end
    object CdsCranioALTERACAOTIREOIDE_OBS: TStringField
      FieldName = 'ALTERACAOTIREOIDE_OBS'
      Size = 50
    end
    object CdsCranioRENITE_OBS: TStringField
      DisplayWidth = 2000
      FieldName = 'RENITE_OBS'
      Size = 2000
    end
    object CdsCranioSINUSITE_OBS: TStringField
      DisplayWidth = 2000
      FieldName = 'SINUSITE_OBS'
      Size = 2000
    end
    object CdsCranioTRANSTORNOBIPOLAR: TStringField
      FieldName = 'TRANSTORNOBIPOLAR'
      Size = 3
    end
    object CdsCranioCICLOMIDIA: TStringField
      FieldName = 'CICLOMIDIA'
      Size = 3
    end
    object CdsCranioSINDROMEDOPANICO: TStringField
      FieldName = 'SINDROMEDOPANICO'
      Size = 3
    end
    object CdsCranioESQUIZOFRENIA: TStringField
      FieldName = 'ESQUIZOFRENIA'
      Size = 3
    end
    object CdsCranioALZEHMIER: TStringField
      FieldName = 'ALZEHMIER'
      Size = 3
    end
    object CdsCranioMANIA: TStringField
      FieldName = 'MANIA'
      Size = 3
    end
    object CdsCranioIRRITABILIDADE: TStringField
      FieldName = 'IRRITABILIDADE'
      Size = 3
    end
    object CdsCranioTRANSPSIQUIATPSICOL: TStringField
      FieldName = 'TRANSPSIQUIATPSICOL'
      Size = 3
    end
    object CdsCranioTRANSPSIQUIATPSICOL_OBS: TStringField
      DisplayWidth = 2000
      FieldName = 'TRANSPSIQUIATPSICOL_OBS'
      Size = 2000
    end
    object CdsCranioIND_LABIRINTITE: TStringField
      FieldName = 'IND_LABIRINTITE'
      Size = 3
    end
    object CdsCranioDS_OBS: TStringField
      FieldName = 'DS_OBS'
      Size = 4000
    end
    object CdsCranioDS_INSONIA: TStringField
      FieldName = 'DS_INSONIA'
      Size = 2000
    end
    object CdsCranioDS_DOR_BASE_CRAN: TStringField
      FieldName = 'DS_DOR_BASE_CRAN'
      Size = 2000
    end
    object CdsCranioDS_DIMINUI_MEMO: TStringField
      FieldName = 'DS_DIMINUI_MEMO'
      Size = 2000
    end
    object CdsCranioDS_DIMINUI_CONCENT: TStringField
      FieldName = 'DS_DIMINUI_CONCENT'
      Size = 2000
    end
    object CdsCranioBO_INSONIA: TStringField
      FieldName = 'BO_INSONIA'
      Size = 3
    end
    object CdsCranioBO_DOR_BASE_CRAN: TStringField
      FieldName = 'BO_DOR_BASE_CRAN'
      Size = 3
    end
    object CdsCranioBO_DIMINUI_MEMO: TStringField
      FieldName = 'BO_DIMINUI_MEMO'
      Size = 3
    end
    object CdsCranioBO_DIMINUI_CONCENT: TStringField
      FieldName = 'BO_DIMINUI_CONCENT'
      Size = 3
    end
    object CdsCranioBO_ALT_OUVIDO: TStringField
      FieldName = 'BO_ALT_OUVIDO'
      Size = 3
    end
    object CdsCranioDS_ALT_OUVIDO: TStringField
      FieldName = 'DS_ALT_OUVIDO'
      Size = 2000
    end
    object CdsCranioBO_TRAUMA_FACE: TStringField
      FieldName = 'BO_TRAUMA_FACE'
      Size = 3
    end
    object CdsCranioDS_TRAUMA_FACE: TStringField
      FieldName = 'DS_TRAUMA_FACE'
      Size = 2000
    end
  end
  object DsCranio: TDataSource
    DataSet = CdsCranio
    Left = 94
    Top = 331
  end
  object DsCervical: TDataSource
    DataSet = CdsCervical
    Left = 132
    Top = 331
  end
  object DsTronco: TDataSource
    DataSet = CdsTronco
    Left = 168
    Top = 331
  end
  object DsPelve: TDataSource
    DataSet = CdsPelve
    Left = 204
    Top = 331
  end
  object DsParto: TDataSource
    DataSet = CdsParto
    Left = 248
    Top = 335
  end
  object DsTraumas: TDataSource
    DataSet = CdsTraumas
    Left = 282
    Top = 331
  end
  object DsPatologia: TDataSource
    DataSet = CdsPatologia
    Left = 328
    Top = 331
  end
  object DsHabitos: TDataSource
    DataSet = CdsHabitos
    Left = 70
    Top = 425
  end
  object DsAntecedentes: TDataSource
    DataSet = CdsAntecedentes
    Left = 104
    Top = 423
  end
  object DsExames: TDataSource
    DataSet = CdsExames
    Left = 216
    Top = 431
  end
  object DsExamesFoto: TDataSource
    DataSet = CdsExamesFoto
    Left = 250
    Top = 431
  end
  object dsDiagnosticoOsteopatico: TDataSource
    DataSet = cdsDiagnosticoOsteopatico
    Left = 366
    Top = 290
  end
  object cdsDiagnosticoOsteopatico: TClientDataSet
    Aggregates = <>
    DataSetField = CdsAtendimentoQDiagOsteopatico
    Params = <>
    Left = 270
    Top = 180
    object cdsDiagnosticoOsteopaticoI_ATENDIMENTO_ID: TIntegerField
      FieldName = 'I_ATENDIMENTO_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsDiagnosticoOsteopaticoI_ATENDIMENTO_DIAGNOSTICO: TIntegerField
      FieldName = 'I_ATENDIMENTO_DIAGNOSTICO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsDiagnosticoOsteopaticoV_OBSERVACAO: TStringField
      FieldName = 'V_OBSERVACAO'
      Size = 10000
    end
    object cdsDiagnosticoOsteopaticoV_DISF_PRINC: TStringField
      DisplayLabel = 'Disfun'#231#227'o Principal'
      FieldName = 'V_DISF_PRINC'
      Size = 1000
    end
  end
  object CdsExamesFoto: TClientDataSet
    Aggregates = <>
    DataSetField = CdsExamesQExamesFoto
    Params = <>
    Left = 50
    Top = 261
    object CdsExamesFotoI_EXAMEIMAGEM_FOTO_ID: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'I_EXAMEIMAGEM_FOTO_ID'
      Required = True
    end
    object CdsExamesFotoI_EXAMEIMAGEM_ID: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'I_EXAMEIMAGEM_ID'
      Required = True
    end
    object CdsExamesFotoB_FOTO: TGraphicField
      DisplayLabel = 'Foto'
      FieldName = 'B_FOTO'
      BlobType = ftGraphic
      Size = 1
    end
    object CdsExamesFotoV_DESCRICAO: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'V_DESCRICAO'
      Size = 1000
    end
    object CdsExamesFotoDS_CAMINHO: TStringField
      FieldName = 'DS_CAMINHO'
      Size = 2000
    end
  end
  object CdsExames: TClientDataSet
    Aggregates = <>
    DataSetField = cdsPacienteQExames
    Params = <>
    Left = 16
    Top = 255
    object CdsExamesI_EXAMEIMAGEM_ID: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'I_EXAMEIMAGEM_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CdsExamesI_CLIENTE_ID: TIntegerField
      DisplayLabel = 'C'#243'd. Cliente'
      FieldName = 'I_CLIENTE_ID'
    end
    object CdsExamesD_CADASTRO: TDateField
      DisplayLabel = 'Data Cadastro'
      FieldName = 'D_CADASTRO'
    end
    object CdsExamesV_TIPO: TStringField
      DisplayLabel = 'Tipo'
      FieldName = 'V_TIPO'
    end
    object CdsExamesV_LAUDO: TStringField
      DisplayLabel = 'Laudo'
      FieldName = 'V_LAUDO'
      Size = 800
    end
    object CdsExamesQExamesFoto: TDataSetField
      FieldName = 'QExamesFoto'
    end
  end
  object CdsAntecedentes: TClientDataSet
    Aggregates = <>
    DataSetField = cdsPacienteQAntecedentes
    Params = <>
    Left = 182
    Top = 197
    object CdsAntecedentesI_ANTECEDENTES_ID: TIntegerField
      FieldName = 'I_ANTECEDENTES_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CdsAntecedentesI_CLIENTE_ID: TIntegerField
      FieldName = 'I_CLIENTE_ID'
    end
    object CdsAntecedentesDIABETE: TStringField
      FieldName = 'DIABETE'
      Size = 3
    end
    object CdsAntecedentesDIABETE_PATERNO: TStringField
      DisplayWidth = 2000
      FieldName = 'DIABETE_PATERNO'
      Size = 2000
    end
    object CdsAntecedentesDIABETE_MATERNO: TStringField
      DisplayWidth = 2000
      FieldName = 'DIABETE_MATERNO'
      Size = 2000
    end
    object CdsAntecedentesCA: TStringField
      FieldName = 'CA'
      Size = 3
    end
    object CdsAntecedentesCA_PATERNO: TStringField
      DisplayWidth = 2000
      FieldName = 'CA_PATERNO'
      Size = 2000
    end
    object CdsAntecedentesCA_MATERNO: TStringField
      DisplayWidth = 2000
      FieldName = 'CA_MATERNO'
      Size = 2000
    end
    object CdsAntecedentesHIPERCOLESTEMIA: TStringField
      FieldName = 'HIPERCOLESTEMIA'
      Size = 3
    end
    object CdsAntecedentesHIPERCOLESTEMIA_PATERNO: TStringField
      DisplayWidth = 2000
      FieldName = 'HIPERCOLESTEMIA_PATERNO'
      Size = 2000
    end
    object CdsAntecedentesHIPERCOLESTEMIA_MATERNO: TStringField
      DisplayWidth = 2000
      FieldName = 'HIPERCOLESTEMIA_MATERNO'
      Size = 2000
    end
    object CdsAntecedentesDOENCACARDIACA: TStringField
      FieldName = 'DOENCACARDIACA'
      Size = 3
    end
    object CdsAntecedentesDOENCAGENETICA: TStringField
      FieldName = 'DOENCAGENETICA'
      Size = 3
    end
    object CdsAntecedentesDIABETE_OBS: TStringField
      DisplayWidth = 2000
      FieldName = 'DIABETE_OBS'
      Size = 2000
    end
    object CdsAntecedentesCA_OBS: TStringField
      DisplayWidth = 2000
      FieldName = 'CA_OBS'
      Size = 2000
    end
    object CdsAntecedentesHIPERCOLESTEMIA_OBS: TStringField
      DisplayWidth = 2000
      FieldName = 'HIPERCOLESTEMIA_OBS'
      Size = 2000
    end
    object CdsAntecedentesCARDIOPATIA: TStringField
      FieldName = 'CARDIOPATIA'
      Size = 3
    end
    object CdsAntecedentesCARDIOPATIA_PATERNO: TStringField
      FieldName = 'CARDIOPATIA_PATERNO'
      Size = 3
    end
    object CdsAntecedentesCARDIOPATIA_MATERNO: TStringField
      FieldName = 'CARDIOPATIA_MATERNO'
      Size = 3
    end
    object CdsAntecedentesCARDIOPATIA_OBS: TStringField
      DisplayWidth = 2000
      FieldName = 'CARDIOPATIA_OBS'
      Size = 2000
    end
    object CdsAntecedentesOUTROS: TStringField
      DisplayWidth = 2000
      FieldName = 'OUTROS'
      Size = 2000
    end
    object CdsAntecedentesDS_OBS: TStringField
      FieldName = 'DS_OBS'
      Size = 4000
    end
    object CdsAntecedentesDS_ALT_VASCULARES: TStringField
      FieldName = 'DS_ALT_VASCULARES'
      Size = 4000
    end
  end
  object CdsHabitos: TClientDataSet
    Aggregates = <>
    DataSetField = cdsPacienteQHabitos
    Params = <>
    Left = 136
    Top = 199
    object CdsHabitosI_HABITOS_ID: TIntegerField
      FieldName = 'I_HABITOS_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CdsHabitosI_CLIENTE_ID: TIntegerField
      FieldName = 'I_CLIENTE_ID'
    end
    object CdsHabitosPRATEXERCICIO: TStringField
      FieldName = 'PRATEXERCICIO'
      Size = 3
    end
    object CdsHabitosPRATEXERCICIO_TIPO: TStringField
      DisplayWidth = 2000
      FieldName = 'PRATEXERCICIO_TIPO'
      Size = 2000
    end
    object CdsHabitosPRATEXERCICIO_TEMPO: TStringField
      FieldName = 'PRATEXERCICIO_TEMPO'
      Size = 50
    end
    object CdsHabitosPRATEXERCICIO_FREQ: TStringField
      DisplayWidth = 2000
      FieldName = 'PRATEXERCICIO_FREQ'
      Size = 2000
    end
    object CdsHabitosSEDENTARIO: TStringField
      FieldName = 'SEDENTARIO'
      Size = 3
    end
    object CdsHabitosSEDENTARIO_FUMANTE: TStringField
      FieldName = 'SEDENTARIO_FUMANTE'
      Size = 3
    end
    object CdsHabitosSEDENTARIO_FUMANTE_OBS: TStringField
      DisplayWidth = 2000
      FieldName = 'SEDENTARIO_FUMANTE_OBS'
      Size = 2000
    end
    object CdsHabitosSEDENTARIO_FUMANTE_DIA: TStringField
      FieldName = 'SEDENTARIO_FUMANTE_DIA'
      Size = 4
    end
    object CdsHabitosSEDENTARIO_ETILICO: TStringField
      FieldName = 'SEDENTARIO_ETILICO'
      Size = 3
    end
    object CdsHabitosSEDENTARIO_ETILICO_OBS: TStringField
      DisplayWidth = 2000
      FieldName = 'SEDENTARIO_ETILICO_OBS'
      Size = 2000
    end
    object CdsHabitosSEDENTARIO_ETILICO_DIA: TStringField
      FieldName = 'SEDENTARIO_ETILICO_DIA'
      Size = 4
    end
    object CdsHabitosALIMENTACAO: TStringField
      FieldName = 'ALIMENTACAO'
      Size = 3
    end
    object CdsHabitosALIMENTACAO_EQUILIBRADA: TStringField
      FieldName = 'ALIMENTACAO_EQUILIBRADA'
      Size = 3
    end
    object CdsHabitosALIMENTACAO_DESEQUILIBRADA: TStringField
      FieldName = 'ALIMENTACAO_DESEQUILIBRADA'
      Size = 3
    end
    object CdsHabitosINGESTAOAGUA: TStringField
      FieldName = 'INGESTAOAGUA'
      Size = 3
    end
    object CdsHabitosINGESTAOAGUA_1L: TStringField
      FieldName = 'INGESTAOAGUA_1L'
      Size = 3
    end
    object CdsHabitosINGESTAOAGUA_MAIS2L: TStringField
      FieldName = 'INGESTAOAGUA_MAIS2L'
      Size = 3
    end
    object CdsHabitosMODODEDORMIR: TStringField
      FieldName = 'MODODEDORMIR'
      Size = 3
    end
    object CdsHabitosMODODEDORMIR_OBS: TStringField
      DisplayWidth = 2000
      FieldName = 'MODODEDORMIR_OBS'
      Size = 2000
    end
    object CdsHabitosHABITODORMIR: TStringField
      FieldName = 'HABITODORMIR'
      Size = 3
    end
    object CdsHabitosHABITODORMIR_OBS: TStringField
      DisplayWidth = 2000
      FieldName = 'HABITODORMIR_OBS'
      Size = 2000
    end
    object CdsHabitosOUTROS: TStringField
      DisplayWidth = 2000
      FieldName = 'OUTROS'
      Size = 2000
    end
    object CdsHabitosDS_OBS: TStringField
      FieldName = 'DS_OBS'
      Size = 4000
    end
    object CdsHabitosBO_PAROU_FUMAR: TStringField
      FieldName = 'BO_PAROU_FUMAR'
      Size = 3
    end
    object CdsHabitosDS_PAROU_FUMAR: TStringField
      FieldName = 'DS_PAROU_FUMAR'
      Size = 2000
    end
  end
  object CdsPatologia: TClientDataSet
    Aggregates = <>
    DataSetField = cdsPacienteQPatologia
    Params = <>
    Left = 98
    Top = 203
    object CdsPatologiaDIABETE: TStringField
      FieldName = 'DIABETE'
      Size = 3
    end
    object CdsPatologiaDIABETE_CA: TStringField
      FieldName = 'DIABETE_CA'
      Size = 3
    end
    object CdsPatologiaDIABETE_CA_TIPO: TStringField
      DisplayWidth = 2000
      FieldName = 'DIABETE_CA_TIPO'
      Size = 2000
    end
    object CdsPatologiaDIABETE_CA_TEMPO: TStringField
      FieldName = 'DIABETE_CA_TEMPO'
      Size = 50
    end
    object CdsPatologiaDOENCAREUMATICA: TStringField
      FieldName = 'DOENCAREUMATICA'
      Size = 3
    end
    object CdsPatologiaDOENCAREUMATICA_TIPO: TStringField
      DisplayWidth = 2000
      FieldName = 'DOENCAREUMATICA_TIPO'
      Size = 2000
    end
    object CdsPatologiaDOENCAREUMATICA_TEMPO: TStringField
      FieldName = 'DOENCAREUMATICA_TEMPO'
      Size = 50
    end
    object CdsPatologiaASTENIA: TStringField
      FieldName = 'ASTENIA'
      Size = 3
    end
    object CdsPatologiaASTENIA_TU: TStringField
      FieldName = 'ASTENIA_TU'
      Size = 3
    end
    object CdsPatologiaASTENIA_TU_TIPO: TStringField
      DisplayWidth = 2000
      FieldName = 'ASTENIA_TU_TIPO'
      Size = 2000
    end
    object CdsPatologiaASTENIA_TU_TEMPO: TStringField
      FieldName = 'ASTENIA_TU_TEMPO'
      Size = 50
    end
    object CdsPatologiaTROMBOSE: TStringField
      FieldName = 'TROMBOSE'
      Size = 3
    end
    object CdsPatologiaTROMBOSE_OBS: TStringField
      DisplayWidth = 2000
      FieldName = 'TROMBOSE_OBS'
      Size = 2000
    end
    object CdsPatologiaTROMBOSE_ANEURISMA: TStringField
      FieldName = 'TROMBOSE_ANEURISMA'
      Size = 3
    end
    object CdsPatologiaTROMBOSE_ANEURISMA_OBS: TStringField
      DisplayWidth = 2000
      FieldName = 'TROMBOSE_ANEURISMA_OBS'
      Size = 2000
    end
    object CdsPatologiaTROMBOSE_TB: TStringField
      FieldName = 'TROMBOSE_TB'
      Size = 3
    end
    object CdsPatologiaTROMBOSE_TB_OBS: TStringField
      DisplayWidth = 2000
      FieldName = 'TROMBOSE_TB_OBS'
      Size = 2000
    end
    object CdsPatologiaDOENCANEUROLOGICA: TStringField
      FieldName = 'DOENCANEUROLOGICA'
      Size = 3
    end
    object CdsPatologiaDOENCANEUROLOGICA_OBS: TStringField
      DisplayWidth = 2000
      FieldName = 'DOENCANEUROLOGICA_OBS'
      Size = 2000
    end
    object CdsPatologiaOUTRADOENCA: TStringField
      FieldName = 'OUTRADOENCA'
      Size = 3
    end
    object CdsPatologiaOUTRADOENCA_TIPO: TStringField
      DisplayWidth = 2000
      FieldName = 'OUTRADOENCA_TIPO'
      Size = 2000
    end
    object CdsPatologiaOUTRADOENCA_TEMPO: TStringField
      FieldName = 'OUTRADOENCA_TEMPO'
      Size = 50
    end
    object CdsPatologiaI_PATOLOGIA_ID: TIntegerField
      FieldName = 'I_PATOLOGIA_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CdsPatologiaI_CLIENTE_ID: TIntegerField
      FieldName = 'I_CLIENTE_ID'
    end
    object CdsPatologiaHIPOTENSAO: TStringField
      FieldName = 'HIPOTENSAO'
      Size = 3
    end
    object CdsPatologiaHIPOTENSAO_TIPO: TStringField
      DisplayWidth = 2000
      FieldName = 'HIPOTENSAO_TIPO'
      Size = 2000
    end
    object CdsPatologiaHIPOTENSAO_TEMPO: TStringField
      FieldName = 'HIPOTENSAO_TEMPO'
      Size = 50
    end
    object CdsPatologiaHIPERTENSAO: TStringField
      FieldName = 'HIPERTENSAO'
      Size = 3
    end
    object CdsPatologiaHIPERTENSAO_TIPO: TStringField
      DisplayWidth = 2000
      FieldName = 'HIPERTENSAO_TIPO'
      Size = 2000
    end
    object CdsPatologiaHIPERTENSAO_TEMPO: TStringField
      FieldName = 'HIPERTENSAO_TEMPO'
      Size = 50
    end
    object CdsPatologiaDS_OBS: TStringField
      FieldName = 'DS_OBS'
      Size = 4000
    end
    object CdsPatologiaMEDICACAO: TStringField
      FieldName = 'MEDICACAO'
      Size = 500
    end
  end
  object CdsTraumas: TClientDataSet
    Aggregates = <>
    DataSetField = cdsPacienteQTrauma
    Params = <>
    Left = 58
    Top = 203
    object CdsTraumasI_TRAUMA_ID: TIntegerField
      FieldName = 'I_TRAUMA_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CdsTraumasI_CLIENTE_ID: TIntegerField
      FieldName = 'I_CLIENTE_ID'
    end
    object CdsTraumasQUEDA: TStringField
      FieldName = 'QUEDA'
      Size = 3
    end
    object CdsTraumasQUEDA_TIPO: TStringField
      DisplayWidth = 2000
      FieldName = 'QUEDA_TIPO'
      Size = 2000
    end
    object CdsTraumasQUEDA_TEMPO: TStringField
      FieldName = 'QUEDA_TEMPO'
      Size = 50
    end
    object CdsTraumasACIDENTE: TStringField
      FieldName = 'ACIDENTE'
      Size = 3
    end
    object CdsTraumasACIDENTE_TIPO: TStringField
      DisplayWidth = 2000
      FieldName = 'ACIDENTE_TIPO'
      Size = 2000
    end
    object CdsTraumasACIDENTE_TEMPO: TStringField
      FieldName = 'ACIDENTE_TEMPO'
      Size = 50
    end
    object CdsTraumasFRATURA: TStringField
      FieldName = 'FRATURA'
      Size = 3
    end
    object CdsTraumasFRATURA_TIPO: TStringField
      DisplayWidth = 2000
      FieldName = 'FRATURA_TIPO'
      Size = 2000
    end
    object CdsTraumasFRATURA_TEMPO: TStringField
      FieldName = 'FRATURA_TEMPO'
      Size = 50
    end
    object CdsTraumasOUTRASCIRURGIA: TStringField
      FieldName = 'OUTRASCIRURGIA'
      Size = 3
    end
    object CdsTraumasOUTRASCIRURGIA_TIPO: TStringField
      DisplayWidth = 2000
      FieldName = 'OUTRASCIRURGIA_TIPO'
      Size = 2000
    end
    object CdsTraumasOUTRASCIRURGIA_TEMPO: TStringField
      FieldName = 'OUTRASCIRURGIA_TEMPO'
      Size = 50
    end
    object CdsTraumasDS_OBS: TStringField
      FieldName = 'DS_OBS'
      Size = 4000
    end
  end
  object CdsParto: TClientDataSet
    Aggregates = <>
    DataSetField = cdsPacienteQParto
    Params = <>
    Left = 24
    Top = 201
    object CdsPartoI_PARTO_ID: TIntegerField
      FieldName = 'I_PARTO_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CdsPartoI_CLIENTE_ID: TIntegerField
      FieldName = 'I_CLIENTE_ID'
    end
    object CdsPartoNORMAL: TStringField
      FieldName = 'NORMAL'
      Size = 3
    end
    object CdsPartoNORMAL_RESIDENCIA: TStringField
      FieldName = 'NORMAL_RESIDENCIA'
      Size = 3
    end
    object CdsPartoNORMAL_HOSPITAL: TStringField
      FieldName = 'NORMAL_HOSPITAL'
      Size = 3
    end
    object CdsPartoNORMAL_CESARIO: TStringField
      FieldName = 'NORMAL_CESARIO'
      Size = 3
    end
    object CdsPartoNORMAL_FORCEPS: TStringField
      FieldName = 'NORMAL_FORCEPS'
      Size = 3
    end
    object CdsPartoALTERGESTACAO: TStringField
      FieldName = 'ALTERGESTACAO'
      Size = 3
    end
    object CdsPartoALTERGESTACAO_OBS: TStringField
      DisplayWidth = 2000
      FieldName = 'ALTERGESTACAO_OBS'
      Size = 2000
    end
    object CdsPartoCHOROEXCESSIVO: TStringField
      FieldName = 'CHOROEXCESSIVO'
      Size = 3
    end
    object CdsPartoCHOROEXCESSIVO_RGE: TStringField
      FieldName = 'CHOROEXCESSIVO_RGE'
      Size = 3
    end
    object CdsPartoCHOROEXCESSIVO_COLICA: TStringField
      FieldName = 'CHOROEXCESSIVO_COLICA'
      Size = 3
    end
    object CdsPartoCHOROEXCESSIVO_DORMIAPOUCO: TStringField
      FieldName = 'CHOROEXCESSIVO_DORMIAPOUCO'
      Size = 3
    end
    object CdsPartoCHOROEXCESSIVO_DORMIAMUITO: TStringField
      FieldName = 'CHOROEXCESSIVO_DORMIAMUITO'
      Size = 3
    end
    object CdsPartoFILHO: TStringField
      FieldName = 'FILHO'
      Size = 3
    end
    object CdsPartoFILHO_OBS: TStringField
      DisplayWidth = 2000
      FieldName = 'FILHO_OBS'
      Size = 2000
    end
    object CdsPartoPESO: TStringField
      FieldName = 'PESO'
      Size = 50
    end
    object CdsPartoPESO_ALTURA: TStringField
      FieldName = 'PESO_ALTURA'
      Size = 50
    end
    object CdsPartoINTERCORRENCIAPARTO: TStringField
      FieldName = 'INTERCORRENCIAPARTO'
      Size = 3
    end
    object CdsPartoINTERCORRENCIAPARTO_OBS: TStringField
      DisplayWidth = 2000
      FieldName = 'INTERCORRENCIAPARTO_OBS'
      Size = 2000
    end
    object CdsPartoV_NOME_FILHO: TStringField
      FieldName = 'V_NOME_FILHO'
      Size = 50
    end
    object CdsPartoDS_OBS: TStringField
      FieldName = 'DS_OBS'
      Size = 4000
    end
    object CdsPartoBO_DIREITA: TStringField
      FieldName = 'BO_DIREITA'
      Size = 3
    end
    object CdsPartoBO_ESQUERDA: TStringField
      FieldName = 'BO_ESQUERDA'
      Size = 3
    end
    object CdsPartoDS_GRADE_VIVENCIA: TStringField
      FieldName = 'DS_GRADE_VIVENCIA'
      Size = 4000
    end
    object CdsPartoDS_GRADE_LEALDADE: TStringField
      FieldName = 'DS_GRADE_LEALDADE'
      Size = 4000
    end
  end
  object CdsPelve: TClientDataSet
    Aggregates = <>
    DataSetField = cdsPacienteQPelve
    Params = <>
    Left = 116
    Top = 259
    object CdsPelveI_PELVE_ID: TIntegerField
      FieldName = 'I_PELVE_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CdsPelveI_CLIENTE_ID: TIntegerField
      FieldName = 'I_CLIENTE_ID'
    end
    object CdsPelveDORSI: TStringField
      FieldName = 'DORSI'
      Size = 3
    end
    object CdsPelveDORSI_D: TStringField
      FieldName = 'DORSI_D'
      Size = 3
    end
    object CdsPelveDORSI_E: TStringField
      FieldName = 'DORSI_E'
      Size = 3
    end
    object CdsPelveDORSI_BILATERAL: TStringField
      FieldName = 'DORSI_BILATERAL'
      Size = 3
    end
    object CdsPelveDORSI_BILATERAL_TEMPO: TStringField
      FieldName = 'DORSI_BILATERAL_TEMPO'
      Size = 50
    end
    object CdsPelveCIATALGIA: TStringField
      FieldName = 'CIATALGIA'
      Size = 3
    end
    object CdsPelveCIATALGIA_D: TStringField
      FieldName = 'CIATALGIA_D'
      Size = 3
    end
    object CdsPelveCIATALGIA_E: TStringField
      FieldName = 'CIATALGIA_E'
      Size = 3
    end
    object CdsPelveCIATALGIA_BILATERAL: TStringField
      FieldName = 'CIATALGIA_BILATERAL'
      Size = 3
    end
    object CdsPelveCIATALGIA_L5: TStringField
      FieldName = 'CIATALGIA_L5'
      Size = 3
    end
    object CdsPelveCIATALGIA_SI: TStringField
      FieldName = 'CIATALGIA_SI'
      Size = 3
    end
    object CdsPelveCIATALGIA_SI_TEMPO: TStringField
      FieldName = 'CIATALGIA_SI_TEMPO'
      Size = 50
    end
    object CdsPelvePARESTESIA: TStringField
      FieldName = 'PARESTESIA'
      Size = 3
    end
    object CdsPelvePARESTESIA_D: TStringField
      FieldName = 'PARESTESIA_D'
      Size = 3
    end
    object CdsPelvePARESTESIA_E: TStringField
      FieldName = 'PARESTESIA_E'
      Size = 3
    end
    object CdsPelvePARESTESIA_BILATERAL: TStringField
      FieldName = 'PARESTESIA_BILATERAL'
      Size = 3
    end
    object CdsPelvePARESTESIA_BILATERAL_LOCAL: TStringField
      DisplayWidth = 2000
      FieldName = 'PARESTESIA_BILATERAL_LOCAL'
      Size = 2000
    end
    object CdsPelveDORCOXOFEMUAL: TStringField
      FieldName = 'DORCOXOFEMUAL'
      Size = 3
    end
    object CdsPelveDORCOXOFEMUAL_D: TStringField
      FieldName = 'DORCOXOFEMUAL_D'
      Size = 3
    end
    object CdsPelveDORCOXOFEMUAL_E: TStringField
      FieldName = 'DORCOXOFEMUAL_E'
      Size = 3
    end
    object CdsPelveDORCOXOFEMUAL_BILATERAL: TStringField
      FieldName = 'DORCOXOFEMUAL_BILATERAL'
      Size = 3
    end
    object CdsPelvePROCESSODEGERATIVO: TStringField
      FieldName = 'PROCESSODEGERATIVO'
      Size = 3
    end
    object CdsPelvePROCESSODEGERATIVO_D: TStringField
      FieldName = 'PROCESSODEGERATIVO_D'
      Size = 3
    end
    object CdsPelvePROCESSODEGERATIVO_E: TStringField
      FieldName = 'PROCESSODEGERATIVO_E'
      Size = 3
    end
    object CdsPelvePROCESSODEGERATIVO_BILATERAL: TStringField
      FieldName = 'PROCESSODEGERATIVO_BILATERAL'
      Size = 3
    end
    object CdsPelvePROCESSODEGERATIVO_CIRURGIA: TStringField
      FieldName = 'PROCESSODEGERATIVO_CIRURGIA'
      Size = 3
    end
    object CdsPelvePROCESSODEGERATIVO_TEMPO: TStringField
      FieldName = 'PROCESSODEGERATIVO_TEMPO'
      Size = 50
    end
    object CdsPelveDORJOELHO: TStringField
      FieldName = 'DORJOELHO'
      Size = 3
    end
    object CdsPelveDORJOELHO_D: TStringField
      FieldName = 'DORJOELHO_D'
      Size = 3
    end
    object CdsPelveDORJOELHO_E: TStringField
      FieldName = 'DORJOELHO_E'
      Size = 3
    end
    object CdsPelveDORJOELHO_BILATERAL: TStringField
      FieldName = 'DORJOELHO_BILATERAL'
      Size = 3
    end
    object CdsPelveCIRURGIA: TStringField
      FieldName = 'CIRURGIA'
      Size = 3
    end
    object CdsPelveCIRURGIA_LOCAL: TStringField
      DisplayWidth = 2000
      FieldName = 'CIRURGIA_LOCAL'
      Size = 2000
    end
    object CdsPelveCIRURGIA_TIPO: TStringField
      DisplayWidth = 2000
      FieldName = 'CIRURGIA_TIPO'
      Size = 2000
    end
    object CdsPelveCIRURGIA_TEMPO: TStringField
      FieldName = 'CIRURGIA_TEMPO'
      Size = 50
    end
    object CdsPelveFRATURA: TStringField
      FieldName = 'FRATURA'
      Size = 3
    end
    object CdsPelveFRATURA_LOCAL: TStringField
      DisplayWidth = 2000
      FieldName = 'FRATURA_LOCAL'
      Size = 2000
    end
    object CdsPelveFRATURA_TIPO: TStringField
      DisplayWidth = 2000
      FieldName = 'FRATURA_TIPO'
      Size = 2000
    end
    object CdsPelveFRATURA_TEMPO: TStringField
      FieldName = 'FRATURA_TEMPO'
      Size = 50
    end
    object CdsPelveENTORSE: TStringField
      FieldName = 'ENTORSE'
      Size = 3
    end
    object CdsPelveENTORSE_LOCAL: TStringField
      DisplayWidth = 2000
      FieldName = 'ENTORSE_LOCAL'
      Size = 2000
    end
    object CdsPelveENTORSE_TIPO: TStringField
      DisplayWidth = 2000
      FieldName = 'ENTORSE_TIPO'
      Size = 2000
    end
    object CdsPelveENTORSE_TEMPO: TStringField
      FieldName = 'ENTORSE_TEMPO'
      Size = 50
    end
    object CdsPelveTRAUMACOCCIX: TStringField
      FieldName = 'TRAUMACOCCIX'
      Size = 3
    end
    object CdsPelveHIPERTROFIAPROSTATA: TStringField
      FieldName = 'HIPERTROFIAPROSTATA'
      Size = 3
    end
    object CdsPelveHIPERTROFIAPROSTATA_CA: TStringField
      FieldName = 'HIPERTROFIAPROSTATA_CA'
      Size = 3
    end
    object CdsPelveHIPERTROFIAPROSTATA_CIRURGIA: TStringField
      FieldName = 'HIPERTROFIAPROSTATA_CIRURGIA'
      Size = 3
    end
    object CdsPelveHIPERTROFIAPROSTATA_TEMPO: TStringField
      FieldName = 'HIPERTROFIAPROSTATA_TEMPO'
      Size = 50
    end
    object CdsPelveDORTESTICULAR: TStringField
      FieldName = 'DORTESTICULAR'
      Size = 3
    end
    object CdsPelveDORTESTICULAR_D: TStringField
      FieldName = 'DORTESTICULAR_D'
      Size = 3
    end
    object CdsPelveDORTESTICULAR_E: TStringField
      FieldName = 'DORTESTICULAR_E'
      Size = 3
    end
    object CdsPelveDORTESTICULAR_BILATERAL: TStringField
      FieldName = 'DORTESTICULAR_BILATERAL'
      Size = 3
    end
    object CdsPelveDORTESTICULAR_TEMPO: TStringField
      FieldName = 'DORTESTICULAR_TEMPO'
      Size = 50
    end
    object CdsPelveCISTITE: TStringField
      FieldName = 'CISTITE'
      Size = 3
    end
    object CdsPelveCISTITE_CANDIDIASE: TStringField
      FieldName = 'CISTITE_CANDIDIASE'
      Size = 3
    end
    object CdsPelveCISTITE_CORRIMENTO: TStringField
      FieldName = 'CISTITE_CORRIMENTO'
      Size = 3
    end
    object CdsPelveCISTITE_PRURIDO: TStringField
      FieldName = 'CISTITE_PRURIDO'
      Size = 3
    end
    object CdsPelveDORRETAL: TStringField
      FieldName = 'DORRETAL'
      Size = 3
    end
    object CdsPelveDORRETAL_HEMORROIDA: TStringField
      FieldName = 'DORRETAL_HEMORROIDA'
      Size = 3
    end
    object CdsPelveDORRETAL_CIRURGIA: TStringField
      FieldName = 'DORRETAL_CIRURGIA'
      Size = 3
    end
    object CdsPelveDORRETAL_TEMPO: TStringField
      FieldName = 'DORRETAL_TEMPO'
      Size = 50
    end
    object CdsPelveMENARCA: TStringField
      FieldName = 'MENARCA'
      Size = 3
    end
    object CdsPelveMENARCA_OBS: TStringField
      DisplayWidth = 2000
      FieldName = 'MENARCA_OBS'
      Size = 2000
    end
    object CdsPelveMENARCA_MENOPAUSA: TStringField
      FieldName = 'MENARCA_MENOPAUSA'
      Size = 3
    end
    object CdsPelveMENARCA_MENOPAUSA_OBS: TStringField
      DisplayWidth = 2000
      FieldName = 'MENARCA_MENOPAUSA_OBS'
      Size = 2000
    end
    object CdsPelveMENARCA_DISMENORREIA: TStringField
      FieldName = 'MENARCA_DISMENORREIA'
      Size = 3
    end
    object CdsPelveMENARCA_DISMENORREIA_OBS: TStringField
      DisplayWidth = 2000
      FieldName = 'MENARCA_DISMENORREIA_OBS'
      Size = 2000
    end
    object CdsPelveFLUXOMENSTRUAL: TStringField
      FieldName = 'FLUXOMENSTRUAL'
      Size = 3
    end
    object CdsPelveFLUXOMENSTRUAL_NORMAL: TStringField
      FieldName = 'FLUXOMENSTRUAL_NORMAL'
      Size = 3
    end
    object CdsPelveFLUXOMENSTRUAL_INTENSO: TStringField
      FieldName = 'FLUXOMENSTRUAL_INTENSO'
      Size = 3
    end
    object CdsPelveFLUXOMENSTRUAL_HIPOMENORREA: TStringField
      FieldName = 'FLUXOMENSTRUAL_HIPOMENORREA'
      Size = 3
    end
    object CdsPelveFLUXOMENSTRUAL_COAGULO: TStringField
      FieldName = 'FLUXOMENSTRUAL_COAGULO'
      Size = 3
    end
    object CdsPelveMETRORRAGIA: TStringField
      FieldName = 'METRORRAGIA'
      Size = 3
    end
    object CdsPelveMETRORRAGIA_MENORRAGIA: TStringField
      FieldName = 'METRORRAGIA_MENORRAGIA'
      Size = 3
    end
    object CdsPelveMETRORRAGIA_AMENORREIA: TStringField
      FieldName = 'METRORRAGIA_AMENORREIA'
      Size = 3
    end
    object CdsPelveMETRORRAGIA_SPANIOIMENORREIA: TStringField
      FieldName = 'METRORRAGIA_SPANIOIMENORREIA'
      Size = 3
    end
    object CdsPelveSINDPM: TStringField
      FieldName = 'SINDPM'
      Size = 3
    end
    object CdsPelveSINDPM_INCONTURINARIA: TStringField
      FieldName = 'SINDPM_INCONTURINARIA'
      Size = 3
    end
    object CdsPelveSINDPM_INCONTURINARIA_TEMPO: TStringField
      FieldName = 'SINDPM_INCONTURINARIA_TEMPO'
      Size = 50
    end
    object CdsPelveSINDPM_INCONTFECAL: TStringField
      FieldName = 'SINDPM_INCONTFECAL'
      Size = 3
    end
    object CdsPelveDISPAURENIA: TStringField
      FieldName = 'DISPAURENIA'
      Size = 3
    end
    object CdsPelveDISPAURENIA_DOREJACULA: TStringField
      FieldName = 'DISPAURENIA_DOREJACULA'
      Size = 3
    end
    object CdsPelveDISPAURENIA_EJACULAPRECOCE: TStringField
      FieldName = 'DISPAURENIA_EJACULAPRECOCE'
      Size = 3
    end
    object CdsPelveDISPAURENIA_EJACULATARDIA: TStringField
      FieldName = 'DISPAURENIA_EJACULATARDIA'
      Size = 3
    end
    object CdsPelveDORPENETRACAO: TStringField
      FieldName = 'DORPENETRACAO'
      Size = 3
    end
    object CdsPelveDORPENETRACAO_PROFUNDA: TStringField
      FieldName = 'DORPENETRACAO_PROFUNDA'
      Size = 3
    end
    object CdsPelveDORPENETRACAO_SUPERFICIAL: TStringField
      FieldName = 'DORPENETRACAO_SUPERFICIAL'
      Size = 3
    end
    object CdsPelveDIMINUILIBIDOSEX: TStringField
      FieldName = 'DIMINUILIBIDOSEX'
      Size = 3
    end
    object CdsPelveDISFUNCAOERETIL: TStringField
      FieldName = 'DISFUNCAOERETIL'
      Size = 3
    end
    object CdsPelveDISFUNCAOFERTILIZACAO: TStringField
      FieldName = 'DISFUNCAOFERTILIZACAO'
      Size = 3
    end
    object CdsPelveCIRURGIAPELVICA: TStringField
      FieldName = 'CIRURGIAPELVICA'
      Size = 3
    end
    object CdsPelveCIRURGIAPELVICA_TIPO: TStringField
      DisplayWidth = 2000
      FieldName = 'CIRURGIAPELVICA_TIPO'
      Size = 2000
    end
    object CdsPelveCIRURGIAMMII: TStringField
      FieldName = 'CIRURGIAMMII'
      Size = 3
    end
    object CdsPelveCIRURGIAMMII_TIPO: TStringField
      DisplayWidth = 2000
      FieldName = 'CIRURGIAMMII_TIPO'
      Size = 2000
    end
    object CdsPelveOUTROS: TStringField
      DisplayWidth = 2000
      FieldName = 'OUTROS'
      Size = 2000
    end
    object CdsPelveCICLOMENSTRUAL: TStringField
      FieldName = 'CICLOMENSTRUAL'
      Size = 3
    end
    object CdsPelveCICLOMENSTRUAL_OBS: TStringField
      DisplayWidth = 2000
      FieldName = 'CICLOMENSTRUAL_OBS'
      Size = 2000
    end
    object CdsPelveCICLOMENSTRUAL_DUM: TStringField
      DisplayWidth = 2000
      FieldName = 'CICLOMENSTRUAL_DUM'
      Size = 2000
    end
    object CdsPelveCICLOMENSTRUAL_DPO: TStringField
      DisplayWidth = 2000
      FieldName = 'CICLOMENSTRUAL_DPO'
      Size = 2000
    end
    object CdsPelveN_NUMEROPARTO: TIntegerField
      FieldName = 'N_NUMEROPARTO'
    end
    object CdsPelveV_TIPOPARTO: TStringField
      DisplayWidth = 2000
      FieldName = 'V_TIPOPARTO'
      Size = 2000
    end
    object CdsPelveN_NUMEROABORTO: TIntegerField
      FieldName = 'N_NUMEROABORTO'
    end
    object CdsPelveDIMINUICAOLIBIDOSEXUAL: TStringField
      FieldName = 'DIMINUICAOLIBIDOSEXUAL'
      Size = 3
    end
    object CdsPelveDIMINUICAOLUBPENIANA: TStringField
      FieldName = 'DIMINUICAOLUBPENIANA'
      Size = 3
    end
    object CdsPelveTRAUMACOCCIX_QUEDAPELVE: TStringField
      FieldName = 'TRAUMACOCCIX_QUEDAPELVE'
      Size = 3
    end
    object CdsPelveTRAUMACOCCIX_QUEDAPELVE_OBS: TStringField
      DisplayWidth = 2000
      FieldName = 'TRAUMACOCCIX_QUEDAPELVE_OBS'
      Size = 2000
    end
    object CdsPelveDIMINUILUBRIFI: TStringField
      FieldName = 'DIMINUILUBRIFI'
      Size = 3
    end
    object CdsPelveDISFUNCAOFERT_TEMPO: TStringField
      FieldName = 'DISFUNCAOFERT_TEMPO'
      Size = 50
    end
    object CdsPelveDISFUNCAOFERT_TRATAMTO: TStringField
      FieldName = 'DISFUNCAOFERT_TRATAMTO'
      Size = 3
    end
    object CdsPelveDISFUNCAOFERT_TEMPO_OBS: TStringField
      DisplayWidth = 2000
      FieldName = 'DISFUNCAOFERT_TEMPO_OBS'
      Size = 2000
    end
    object CdsPelveDISFUNCAOFERT_TRATAMT_OBS: TStringField
      DisplayWidth = 2000
      FieldName = 'DISFUNCAOFERT_TRATAMT_OBS'
      Size = 2000
    end
    object CdsPelveCISTITE_D: TStringField
      FieldName = 'CISTITE_D'
      Size = 3
    end
    object CdsPelveCISTITE_E: TStringField
      FieldName = 'CISTITE_E'
      Size = 3
    end
    object CdsPelveCISTITE_BI: TStringField
      FieldName = 'CISTITE_BI'
      Size = 3
    end
    object CdsPelveCISTITE_TEMPO: TStringField
      FieldName = 'CISTITE_TEMPO'
      Size = 50
    end
    object CdsPelveOUTRADORESGIN: TStringField
      DisplayWidth = 2000
      FieldName = 'OUTRADORESGIN'
      Size = 2000
    end
    object CdsPelveDS_OBS: TStringField
      FieldName = 'DS_OBS'
      Size = 4000
    end
    object CdsPelveDS_M_PATOLOGIAS: TStringField
      FieldName = 'DS_M_PATOLOGIAS'
      Size = 4000
    end
    object CdsPelveDS_F_PARTO_MEDIC: TStringField
      FieldName = 'DS_F_PARTO_MEDIC'
      Size = 4000
    end
    object CdsPelveDS_F_PARTO: TStringField
      FieldName = 'DS_F_PARTO'
      Size = 4000
    end
    object CdsPelveDS_F_ABORTO: TStringField
      FieldName = 'DS_F_ABORTO'
      Size = 4000
    end
    object CdsPelveBO_F_CISTO_OVARI: TStringField
      FieldName = 'BO_F_CISTO_OVARI'
      Size = 3
    end
    object CdsPelveBO_F_ALT_OVARI: TStringField
      FieldName = 'BO_F_ALT_OVARI'
      Size = 3
    end
    object CdsPelveBO_F_ENDOMETRIOSE: TStringField
      FieldName = 'BO_F_ENDOMETRIOSE'
      Size = 3
    end
    object CdsPelveBO_F_MIOMA: TStringField
      FieldName = 'BO_F_MIOMA'
      Size = 3
    end
    object CdsPelveCISTITE_OUTRAS: TStringField
      FieldName = 'CISTITE_OUTRAS'
      Size = 100
    end
  end
  object CdsTronco: TClientDataSet
    Aggregates = <>
    DataSetField = cdsPacienteQTronco
    Params = <>
    Left = 208
    Top = 147
    object CdsTroncoI_TRONCO_ID: TIntegerField
      FieldName = 'I_TRONCO_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CdsTroncoI_CLIENTE_ID: TIntegerField
      FieldName = 'I_CLIENTE_ID'
    end
    object CdsTroncoDORTORACICA: TStringField
      FieldName = 'DORTORACICA'
      Size = 3
    end
    object CdsTroncoDORTO_NEVRALGIA: TStringField
      FieldName = 'DORTO_NEVRALGIA'
      Size = 3
    end
    object CdsTroncoDORTO_DIFICULINSPIRATORIA: TStringField
      FieldName = 'DORTO_DIFICULINSPIRATORIA'
      Size = 3
    end
    object CdsTroncoDORTO_DIFICULEXPIRATORIA: TStringField
      FieldName = 'DORTO_DIFICULEXPIRATORIA'
      Size = 3
    end
    object CdsTroncoDORROTACAOTRONCO: TStringField
      FieldName = 'DORROTACAOTRONCO'
      Size = 3
    end
    object CdsTroncoDORRO_D: TStringField
      FieldName = 'DORRO_D'
      Size = 3
    end
    object CdsTroncoDORRO_E: TStringField
      FieldName = 'DORRO_E'
      Size = 3
    end
    object CdsTroncoDORRO_BILATERAL: TStringField
      FieldName = 'DORRO_BILATERAL'
      Size = 3
    end
    object CdsTroncoDORREGIAOINGUINAL: TStringField
      FieldName = 'DORREGIAOINGUINAL'
      Size = 3
    end
    object CdsTroncoDORRE_DORSINFISEPUB: TStringField
      FieldName = 'DORRE_DORSINFISEPUB'
      Size = 3
    end
    object CdsTroncoDORLOMBARALTA: TStringField
      FieldName = 'DORLOMBARALTA'
      Size = 3
    end
    object CdsTroncoDORLO_LOMBARMEDIA: TStringField
      FieldName = 'DORLO_LOMBARMEDIA'
      Size = 3
    end
    object CdsTroncoDORLO_LOMBARBAIXA: TStringField
      FieldName = 'DORLO_LOMBARBAIXA'
      Size = 3
    end
    object CdsTroncoDORLO_HERNIADISCAL: TStringField
      FieldName = 'DORLO_HERNIADISCAL'
      Size = 3
    end
    object CdsTroncoDORLO_HERNIADISCAL_OBS: TStringField
      DisplayWidth = 2000
      FieldName = 'DORLO_HERNIADISCAL_OBS'
      Size = 2000
    end
    object CdsTroncoCIRURGIATRONCO: TStringField
      FieldName = 'CIRURGIATRONCO'
      Size = 3
    end
    object CdsTroncoCIRURGIATRONCO_OBS: TStringField
      DisplayWidth = 2000
      FieldName = 'CIRURGIATRONCO_OBS'
      Size = 2000
    end
    object CdsTroncoDORABDOMINAL: TStringField
      FieldName = 'DORABDOMINAL'
      Size = 3
    end
    object CdsTroncoDORABDOMINAL_D: TStringField
      FieldName = 'DORABDOMINAL_D'
      Size = 3
    end
    object CdsTroncoDORABDOMINAL_E: TStringField
      FieldName = 'DORABDOMINAL_E'
      Size = 3
    end
    object CdsTroncoDORABDOMINAL_BILATERAL: TStringField
      FieldName = 'DORABDOMINAL_BILATERAL'
      Size = 3
    end
    object CdsTroncoDORABDOMINAL_SUPERIOR: TStringField
      FieldName = 'DORABDOMINAL_SUPERIOR'
      Size = 3
    end
    object CdsTroncoDORABDOMINAL_INFERIOR: TStringField
      FieldName = 'DORABDOMINAL_INFERIOR'
      Size = 3
    end
    object CdsTroncoALTERACAOGASTRICA: TStringField
      FieldName = 'ALTERACAOGASTRICA'
      Size = 3
    end
    object CdsTroncoALTERACAOGASTRICA_PIROSE: TStringField
      FieldName = 'ALTERACAOGASTRICA_PIROSE'
      Size = 3
    end
    object CdsTroncoALTERACAOGASTRICA_RGE: TStringField
      FieldName = 'ALTERACAOGASTRICA_RGE'
      Size = 3
    end
    object CdsTroncoALTERACAOGASTRICA_ESOFAGITE: TStringField
      FieldName = 'ALTERACAOGASTRICA_ESOFAGITE'
      Size = 3
    end
    object CdsTroncoALTERACAOGASTRICA_TOSSE: TStringField
      FieldName = 'ALTERACAOGASTRICA_TOSSE'
      Size = 3
    end
    object CdsTroncoERUCTACAO: TStringField
      FieldName = 'ERUCTACAO'
      Size = 3
    end
    object CdsTroncoERUCTACAO_ULCERAGASTRICA: TStringField
      FieldName = 'ERUCTACAO_ULCERAGASTRICA'
      Size = 3
    end
    object CdsTroncoERUCT_TEMPO: TStringField
      FieldName = 'ERUCT_TEMPO'
      Size = 50
    end
    object CdsTroncoERUCTACAO_HERNIAHIATAL: TStringField
      FieldName = 'ERUCTACAO_HERNIAHIATAL'
      Size = 3
    end
    object CdsTroncoERUCTACAO_CIRURGIA: TStringField
      FieldName = 'ERUCTACAO_CIRURGIA'
      Size = 3
    end
    object CdsTroncoERUCTACAO_CIRURGIA_TEMPO: TStringField
      FieldName = 'ERUCTACAO_CIRURGIA_TEMPO'
      Size = 50
    end
    object CdsTroncoALTERACAOCARDIACA: TStringField
      FieldName = 'ALTERACAOCARDIACA'
      Size = 3
    end
    object CdsTroncoALTERACAOCARDIACA_TIPO: TStringField
      DisplayWidth = 2000
      FieldName = 'ALTERACAOCARDIACA_TIPO'
      Size = 2000
    end
    object CdsTroncoALTERACAOCARDIACA_TEMPO: TStringField
      FieldName = 'ALTERACAOCARDIACA_TEMPO'
      Size = 50
    end
    object CdsTroncoALTERACAOPULMONAR: TStringField
      FieldName = 'ALTERACAOPULMONAR'
      Size = 3
    end
    object CdsTroncoALTERACAOPULMONAR_TIPO: TStringField
      DisplayWidth = 2000
      FieldName = 'ALTERACAOPULMONAR_TIPO'
      Size = 2000
    end
    object CdsTroncoALTERACAOPULMONAR_TEMPO: TStringField
      FieldName = 'ALTERACAOPULMONAR_TEMPO'
      Size = 50
    end
    object CdsTroncoBRONQUITE: TStringField
      FieldName = 'BRONQUITE'
      Size = 3
    end
    object CdsTroncoBRONQUITE_PNEUMONIA: TStringField
      FieldName = 'BRONQUITE_PNEUMONIA'
      Size = 3
    end
    object CdsTroncoBRONQUITE_PNEUMONIA_OBS: TStringField
      DisplayWidth = 2000
      FieldName = 'BRONQUITE_PNEUMONIA_OBS'
      Size = 2000
    end
    object CdsTroncoBRONQUITE_ASMA: TStringField
      FieldName = 'BRONQUITE_ASMA'
      Size = 3
    end
    object CdsTroncoCALCULORENAL: TStringField
      FieldName = 'CALCULORENAL'
      Size = 3
    end
    object CdsTroncoCALCULORENAL_COLICARENAL: TStringField
      FieldName = 'CALCULORENAL_COLICARENAL'
      Size = 3
    end
    object CdsTroncoCALCULORENAL_CISTORENAL: TStringField
      FieldName = 'CALCULORENAL_CISTORENAL'
      Size = 3
    end
    object CdsTroncoPATOLOGIARENAL: TStringField
      FieldName = 'PATOLOGIARENAL'
      Size = 3
    end
    object CdsTroncoPATOLOGIARENAL_TIPO: TStringField
      DisplayWidth = 2000
      FieldName = 'PATOLOGIARENAL_TIPO'
      Size = 2000
    end
    object CdsTroncoPATOLOGIARENAL_TEMPO: TStringField
      FieldName = 'PATOLOGIARENAL_TEMPO'
      Size = 50
    end
    object CdsTroncoESTEATOSEHEPATICA: TStringField
      FieldName = 'ESTEATOSEHEPATICA'
      Size = 3
    end
    object CdsTroncoESTEA_CIRROSEHEPATI: TStringField
      FieldName = 'ESTEA_CIRROSEHEPATI'
      Size = 3
    end
    object CdsTroncoESTEA_HEPATITE: TStringField
      FieldName = 'ESTEA_HEPATITE'
      Size = 3
    end
    object CdsTroncoESTEA_HEPATITE_TIPO: TStringField
      DisplayWidth = 2000
      FieldName = 'ESTEA_HEPATITE_TIPO'
      Size = 2000
    end
    object CdsTroncoPATOLOGIAHEPATICA: TStringField
      FieldName = 'PATOLOGIAHEPATICA'
      Size = 3
    end
    object CdsTroncoPATOLOGIAHEPATICA_TIPO: TStringField
      DisplayWidth = 2000
      FieldName = 'PATOLOGIAHEPATICA_TIPO'
      Size = 2000
    end
    object CdsTroncoPATOLOGIAHEPATICA_TEMPO: TStringField
      FieldName = 'PATOLOGIAHEPATICA_TEMPO'
      Size = 50
    end
    object CdsTroncoCONSTIPACAOINTEST: TStringField
      FieldName = 'CONSTIPACAOINTEST'
      Size = 3
    end
    object CdsTroncoCONST_DIARREIA: TStringField
      FieldName = 'CONST_DIARREIA'
      Size = 3
    end
    object CdsTroncoCONST_FLAUTULENCIA: TStringField
      FieldName = 'CONST_FLAUTULENCIA'
      Size = 3
    end
    object CdsTroncoEVACUACAO: TStringField
      FieldName = 'EVACUACAO'
      Size = 3
    end
    object CdsTroncoEVACUACAO_1XDIA: TStringField
      FieldName = 'EVACUACAO_1XDIA'
      Size = 3
    end
    object CdsTroncoEVACUACAO_2_3XDIA: TStringField
      FieldName = 'EVACUACAO_2_3XDIA'
      Size = 3
    end
    object CdsTroncoEVACUACAO_DIAALTERNADO: TStringField
      FieldName = 'EVACUACAO_DIAALTERNADO'
      Size = 3
    end
    object CdsTroncoEVACUACAO_2_3SEMANA: TStringField
      FieldName = 'EVACUACAO_2_3SEMANA'
      Size = 3
    end
    object CdsTroncoEVACUACAO_MENOS: TStringField
      FieldName = 'EVACUACAO_MENOS'
      Size = 3
    end
    object CdsTroncoPOLIPOINTESTINAL: TStringField
      FieldName = 'POLIPOINTESTINAL'
      Size = 3
    end
    object CdsTroncoPOLIP_DIVERTICULO: TStringField
      FieldName = 'POLIP_DIVERTICULO'
      Size = 3
    end
    object CdsTroncoPOLIP_INFECCAOURINAR: TStringField
      FieldName = 'POLIP_INFECCAOURINAR'
      Size = 3
    end
    object CdsTroncoCIRURGIAABDOMINAL: TStringField
      FieldName = 'CIRURGIAABDOMINAL'
      Size = 3
    end
    object CdsTroncoCIRUR_TIPO: TStringField
      DisplayWidth = 2000
      FieldName = 'CIRUR_TIPO'
      Size = 2000
    end
    object CdsTroncoCIRUR_TEMPO: TStringField
      FieldName = 'CIRUR_TEMPO'
      Size = 50
    end
    object CdsTroncoGASTRITE: TStringField
      FieldName = 'GASTRITE'
      Size = 3
    end
    object CdsTroncoPATOLOGIAPANCREATICA: TStringField
      FieldName = 'PATOLOGIAPANCREATICA'
      Size = 3
    end
    object CdsTroncoPATOLO_TIPO: TStringField
      DisplayWidth = 2000
      FieldName = 'PATOLO_TIPO'
      Size = 2000
    end
    object CdsTroncoPATOLO_TEMPO: TStringField
      FieldName = 'PATOLO_TEMPO'
      Size = 50
    end
    object CdsTroncoV_FREQUENCIA: TStringField
      DisplayWidth = 2000
      FieldName = 'V_FREQUENCIA'
      Size = 2000
    end
    object CdsTroncoV_CIRURGIA: TStringField
      DisplayWidth = 2000
      FieldName = 'V_CIRURGIA'
      Size = 2000
    end
    object CdsTroncoIND_PATOLOGIAVESICULABILIAR: TStringField
      FieldName = 'IND_PATOLOGIAVESICULABILIAR'
      Size = 3
    end
    object CdsTroncoFRATURA: TStringField
      FieldName = 'FRATURA'
      Size = 3
    end
    object CdsTroncoCOSTELAS: TStringField
      FieldName = 'COSTELAS'
      Size = 3
    end
    object CdsTroncoCOSTELAS_OBS: TStringField
      DisplayWidth = 2000
      FieldName = 'COSTELAS_OBS'
      Size = 2000
    end
    object CdsTroncoVERTEBRAS: TStringField
      FieldName = 'VERTEBRAS'
      Size = 3
    end
    object CdsTroncoVERTEBRAS_OBS: TStringField
      DisplayWidth = 2000
      FieldName = 'VERTEBRAS_OBS'
      Size = 2000
    end
    object CdsTroncoDS_OBS: TStringField
      FieldName = 'DS_OBS'
      Size = 4000
    end
    object CdsTroncoALTERACAOGASTRICA_OBS: TStringField
      FieldName = 'ALTERACAOGASTRICA_OBS'
      Size = 4000
    end
    object CdsTroncoBACO: TStringField
      FieldName = 'BACO'
      Size = 3
    end
    object CdsTroncoBACO_TIPO: TStringField
      FieldName = 'BACO_TIPO'
      Size = 500
    end
    object CdsTroncoBACO_TEMPO: TStringField
      FieldName = 'BACO_TEMPO'
      Size = 50
    end
    object CdsTroncoASMA: TStringField
      FieldName = 'ASMA'
      Size = 3
    end
    object CdsTroncoASMA_TIPO: TStringField
      FieldName = 'ASMA_TIPO'
      Size = 500
    end
    object CdsTroncoASMA_TEMPO: TStringField
      FieldName = 'ASMA_TEMPO'
      Size = 50
    end
  end
  object CdsCervical: TClientDataSet
    Aggregates = <>
    DataSetField = cdsPacienteQCervical
    Params = <>
    Left = 156
    Top = 139
    object CdsCervicalI_CERVICAL_ID: TIntegerField
      FieldName = 'I_CERVICAL_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CdsCervicalI_CLIENTE_ID: TIntegerField
      FieldName = 'I_CLIENTE_ID'
    end
    object CdsCervicalDORCERVICAL: TStringField
      FieldName = 'DORCERVICAL'
      Size = 3
    end
    object CdsCervicalDORCE_TORCICOLO: TStringField
      FieldName = 'DORCE_TORCICOLO'
      Size = 3
    end
    object CdsCervicalDORCE_DOROMBRO: TStringField
      FieldName = 'DORCE_DOROMBRO'
      Size = 3
    end
    object CdsCervicalDORCE_DOROMBRO_OBS: TStringField
      DisplayWidth = 2000
      FieldName = 'DORCE_DOROMBRO_OBS'
      Size = 2000
    end
    object CdsCervicalHERNIACERVICAL: TStringField
      FieldName = 'HERNIACERVICAL'
      Size = 3
    end
    object CdsCervicalHERNIACERVICAL_OBS: TStringField
      DisplayWidth = 2000
      FieldName = 'HERNIACERVICAL_OBS'
      Size = 2000
    end
    object CdsCervicalPROCESSODEGENCERVICAL: TStringField
      FieldName = 'PROCESSODEGENCERVICAL'
      Size = 3
    end
    object CdsCervicalDORCOTOVELO: TStringField
      FieldName = 'DORCOTOVELO'
      Size = 3
    end
    object CdsCervicalDORCOTOVELO_D: TStringField
      FieldName = 'DORCOTOVELO_D'
      Size = 3
    end
    object CdsCervicalDORCOTOVELO_E: TStringField
      FieldName = 'DORCOTOVELO_E'
      Size = 3
    end
    object CdsCervicalDORCOTOVELO_BILATERAL: TStringField
      FieldName = 'DORCOTOVELO_BILATERAL'
      Size = 3
    end
    object CdsCervicalDORPUNHO: TStringField
      FieldName = 'DORPUNHO'
      Size = 3
    end
    object CdsCervicalDORPUNHO_D: TStringField
      FieldName = 'DORPUNHO_D'
      Size = 3
    end
    object CdsCervicalDORPUNHO_E: TStringField
      FieldName = 'DORPUNHO_E'
      Size = 3
    end
    object CdsCervicalDORPUNHO_BILATERAL: TStringField
      FieldName = 'DORPUNHO_BILATERAL'
      Size = 3
    end
    object CdsCervicalBRAQUIALGIA: TStringField
      FieldName = 'BRAQUIALGIA'
      Size = 3
    end
    object CdsCervicalBRAQUIALGIA_D: TStringField
      FieldName = 'BRAQUIALGIA_D'
      Size = 3
    end
    object CdsCervicalBRAQUIALGIA_E: TStringField
      FieldName = 'BRAQUIALGIA_E'
      Size = 3
    end
    object CdsCervicalBRAQUIALGIA_BILATERAL: TStringField
      FieldName = 'BRAQUIALGIA_BILATERAL'
      Size = 3
    end
    object CdsCervicalPARESTESIA: TStringField
      FieldName = 'PARESTESIA'
      Size = 3
    end
    object CdsCervicalPARESTESIA_D: TStringField
      FieldName = 'PARESTESIA_D'
      Size = 3
    end
    object CdsCervicalPARESTESIA_E: TStringField
      FieldName = 'PARESTESIA_E'
      Size = 3
    end
    object CdsCervicalPARESTESIA_BILATERAL: TStringField
      FieldName = 'PARESTESIA_BILATERAL'
      Size = 3
    end
    object CdsCervicalTAQUICARDIA: TStringField
      FieldName = 'TAQUICARDIA'
      Size = 3
    end
    object CdsCervicalTAQUICARDIA_DISRRITMIA: TStringField
      FieldName = 'TAQUICARDIA_DISRRITMIA'
      Size = 3
    end
    object CdsCervicalTAQUICARDIA_PALPITACAO: TStringField
      FieldName = 'TAQUICARDIA_PALPITACAO'
      Size = 3
    end
    object CdsCervicalCIRURGIAMMSS: TStringField
      FieldName = 'CIRURGIAMMSS'
      Size = 3
    end
    object CdsCervicalCIRURGIAMMSS_HIPOTENSAO: TStringField
      FieldName = 'CIRURGIAMMSS_HIPOTENSAO'
      Size = 3
    end
    object CdsCervicalDORMAO: TStringField
      FieldName = 'DORMAO'
      Size = 3
    end
    object CdsCervicalDORMAO_D: TStringField
      FieldName = 'DORMAO_D'
      Size = 3
    end
    object CdsCervicalDORMAO_E: TStringField
      FieldName = 'DORMAO_E'
      Size = 3
    end
    object CdsCervicalDORMAO_BILATERAL: TStringField
      FieldName = 'DORMAO_BILATERAL'
      Size = 3
    end
    object CdsCervicalDS_OBS: TStringField
      FieldName = 'DS_OBS'
      Size = 4000
    end
    object CdsCervicalDS_CIRURGIA: TStringField
      FieldName = 'DS_CIRURGIA'
      Size = 2000
    end
    object CdsCervicalDS_FRATURA: TStringField
      FieldName = 'DS_FRATURA'
      Size = 2000
    end
    object CdsCervicalDS_LUXACAO: TStringField
      FieldName = 'DS_LUXACAO'
      Size = 2000
    end
  end
  object CdsEvolucao: TClientDataSet
    Aggregates = <>
    DataSetField = CdsAtendimentoQEvolucao
    Params = <>
    Left = 198
    Top = 251
    object CdsEvolucaoI_ATENDIMENTO_EVOLUCAO_ID: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'I_ATENDIMENTO_EVOLUCAO_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CdsEvolucaoI_ATENDIMENTO_ID: TIntegerField
      DisplayLabel = 'C'#243'd. Atendimento'
      FieldName = 'I_ATENDIMENTO_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CdsEvolucaoD_CADASTRO: TSQLTimeStampField
      DisplayLabel = 'Dt. Cadastro'
      FieldName = 'D_CADASTRO'
    end
    object CdsEvolucaoV_OBSERVACAO: TStringField
      DisplayLabel = 'Observa'#231#227'o'
      FieldName = 'V_OBSERVACAO'
      Size = 10000
    end
    object CdsEvolucaoI_SERVICO_ID: TIntegerField
      DisplayLabel = 'Servi'#231'o'
      FieldName = 'I_SERVICO_ID'
    end
    object CdsEvolucaoN_VLR_RECEBER: TFMTBCDField
      DisplayLabel = 'Vlr.Receber'
      FieldName = 'N_VLR_RECEBER'
      Required = True
      DisplayFormat = '###,###,##0.00'
      EditFormat = '########0.00'
      Precision = 15
      Size = 2
    end
    object CdsEvolucaoV_TP_JUROS: TStringField
      DisplayLabel = 'Tipo Juros'
      FieldName = 'V_TP_JUROS'
      Size = 10
    end
    object CdsEvolucaoN_PC_JUROS: TFMTBCDField
      DisplayLabel = '% Juros'
      FieldName = 'N_PC_JUROS'
      Required = True
      DisplayFormat = ',#0.00'
      EditFormat = '#0.00'
      Precision = 15
      Size = 2
    end
    object CdsEvolucaoV_TP_MULTA: TStringField
      DisplayLabel = 'Tipo Multa'
      FieldName = 'V_TP_MULTA'
      Size = 10
    end
    object CdsEvolucaoN_PC_MULTA: TFMTBCDField
      DisplayLabel = '% Multa'
      FieldName = 'N_PC_MULTA'
      Required = True
      DisplayFormat = ',#0.00'
      EditFormat = '#0.00'
      Precision = 15
      Size = 2
    end
    object CdsEvolucaoV_SERVICO_DESC: TStringField
      DisplayLabel = 'Desc.Servi'#231'o'
      FieldName = 'V_SERVICO_DESC'
      ProviderFlags = []
      Size = 50
    end
    object CdsEvolucaoV_TIPO_SERVICO: TStringField
      DisplayLabel = 'Tipo do Servi'#231'o'
      FieldName = 'V_TIPO_SERVICO'
      ProviderFlags = []
      Size = 15
    end
    object CdsEvolucaoI_SUBCATEGORIA_ID: TIntegerField
      DisplayLabel = 'C'#243'd.SubCategoria'
      FieldName = 'I_SUBCATEGORIA_ID'
      ProviderFlags = []
    end
    object CdsEvolucaoI_CATEGORIA_ID: TIntegerField
      DisplayLabel = 'C'#243'd.Categoria'
      FieldName = 'I_CATEGORIA_ID'
      ProviderFlags = []
    end
    object CdsEvolucaoV_SUBCATEGORIA_DESC: TStringField
      DisplayLabel = 'Desc.Subcategoria'
      FieldName = 'V_SUBCATEGORIA_DESC'
      ProviderFlags = []
      Size = 100
    end
    object CdsEvolucaoV_TIPO_CONFIGURACAO: TStringField
      DisplayLabel = 'Tipo Config.'
      FieldName = 'V_TIPO_CONFIGURACAO'
      ProviderFlags = []
      Size = 50
    end
    object CdsEvolucaoV_CATEGORIA_DESC: TStringField
      DisplayLabel = 'Desc.Categoria'
      FieldName = 'V_CATEGORIA_DESC'
      ProviderFlags = []
      Size = 100
    end
    object CdsEvolucaoI_CONTARECEBER_ID: TIntegerField
      FieldName = 'I_CONTARECEBER_ID'
    end
  end
  object DsEvolucao: TDataSource
    DataSet = CdsEvolucao
    Left = 310
    Top = 417
  end
end
