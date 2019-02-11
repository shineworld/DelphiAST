object frmTestAppMain: TfrmTestAppMain
  Left = 0
  Top = 0
  Caption = 'Delphi AST Test App'
  ClientHeight = 643
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    AlignWithMargins = True
    Left = 3
    Top = 172
    Width = 629
    Height = 468
    ActivePage = tsSource
    Align = alClient
    TabOrder = 0
    object tsSource: TTabSheet
      Caption = 'Source'
      object edUnit: TSynEdit
        Left = 0
        Top = 0
        Width = 621
        Height = 440
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        TabOrder = 0
        CodeFolding.GutterShapeSize = 11
        CodeFolding.CollapsedLineColor = clGrayText
        CodeFolding.FolderBarLinesColor = clGrayText
        CodeFolding.IndentGuidesColor = clGray
        CodeFolding.IndentGuides = True
        CodeFolding.ShowCollapsedLine = False
        CodeFolding.ShowHintMark = True
        UseCodeFolding = False
        Gutter.Font.Charset = DEFAULT_CHARSET
        Gutter.Font.Color = clWindowText
        Gutter.Font.Height = -11
        Gutter.Font.Name = 'Courier New'
        Gutter.Font.Style = []
        Gutter.ShowLineNumbers = True
        Highlighter = SynPasSyn1
        Lines.Strings = (
          'unit TestUnit1;'
          ''
          'interface'
          ''
          'implementation'
          ''
          'type TRec = record'
          '  a, b: Integer;'
          'end;'
          ''
          'var G: Integer;'
          ''
          'procedure Test_Case(a, b, c: Integer);'
          'begin'
          '  case a of '
          '      1: a := a + 1;'
          '      2: a := a - 1;'
          '      3: begin'
          '         a := a + 1;'
          '         b := b - 1;'
          '      end;'
          '  else'
          '     a := a * 2;'
          '  end;'
          'end;'
          ''
          'procedure Test_for(a, b, c: Integer);'
          'var'
          '  i: Integer;'
          'begin'
          '  for i := 0 to c - 1 do'
          '  begin'
          '    a := a + 1;'
          '    b := b - 1;'
          '  end;'
          'end;'
          ''
          'function Test_Assign(a, b: Integer): Integer;'
          'begin'
          '  a := a + 1;'
          '  b := b - 1; '
          '  Exit((a + b)*G);   '
          'end;'
          ''
          'function Test_If(a, b: Integer): Integer;'
          'begin'
          '  if a > b then '
          '  begin'
          '    a := a + 1;'
          '    b := b - 1; '
          '  end else begin'
          '    a := a * 2;'
          '    b := b div 2; '
          '  end;'
          '  Exit((a + b)*G);   '
          'end;'
          ''
          'function Test_While(a, b: Integer): Integer;'
          'begin'
          '  while a > b do '
          '  begin'
          '    a := a + 1;'
          '    break;'
          '  end;'
          ''
          '  Exit((a + b)*G);   '
          'end;'
          ''
          'procedure Test_Repeat(a, b: Integer);'
          'begin'
          '  repeat '
          '    a := a + 1;'
          '    b := b - 1;'
          '    continue;'
          '  until a = b;'
          'end;'
          ''
          'procedure Test_With(var R: TRec);'
          'begin'
          '  with R do begin'
          '    a := a + 1;'
          '    b := b - 1;'
          '  end;'
          'end;'
          ''
          'procedure Test_InlineVars();'
          'begin'
          '  var  a := 2;'
          '  var b := a*2;'
          '  if a > b then'
          '  begin'
          '    var a, b, c: Integer := 0;'
          '  end; '
          'end;'
          ''
          'procedure Test_TryFinally(a, b: Integer);'
          'begin'
          '  try'
          '    a := 1; '
          '  finally'
          '    b := 2;'
          '  end;  '
          'end;'
          ''
          'procedure Test_TryExcept(a, b: Integer);'
          'begin'
          '  try'
          '    a := 1; '
          '  except'
          '    b := 2;'
          '  end;  '
          'end;'
          ''
          'end.'
          '')
        FontSmoothing = fsmNone
      end
    end
    object tsAST: TTabSheet
      Caption = 'AST'
      ImageIndex = 1
      object tvAST: TTreeView
        Left = 0
        Top = 0
        Width = 621
        Height = 440
        Align = alClient
        Indent = 19
        TabOrder = 0
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 635
    Height = 169
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    DesignSize = (
      635
      169)
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 90
      Height = 13
      Caption = 'Delphi Source Path'
    end
    object Edit1: TEdit
      Left = 8
      Top = 24
      Width = 393
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 0
      Text = 'C:\Program Files (x86)\Embarcadero\Studio\20.0\source\'
    end
    object Button1: TButton
      Left = 407
      Top = 20
      Width = 163
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'AST Parse'
      TabOrder = 1
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 576
      Top = 20
      Width = 51
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Analize'
      TabOrder = 2
      OnClick = Button2Click
    end
    object Memo1: TMemo
      Left = 8
      Top = 51
      Width = 619
      Height = 118
      Anchors = [akLeft, akTop, akRight]
      Lines.Strings = (
        'Memo1')
      ScrollBars = ssVertical
      TabOrder = 3
    end
  end
  object SynPasSyn1: TSynPasSyn
    Options.AutoDetectEnabled = False
    Options.AutoDetectLineLimit = 0
    Options.Visible = False
    Left = 392
    Top = 400
  end
end
