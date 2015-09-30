TARGET = CARA
TEMPLATE = app
QT += qt3support

INCLUDEPATH += ../NAF ./..

win32 {
    RC_FILE = Cara2.rc
	DEFINES -= UNICODE
    CONFIG(debug, debug|release) {
        DEFINES += _DEBUG
     }
	DEFINES += QT_LARGEFILE_SUPPORT
 }else {
	DESTDIR = ./tmp
    OBJECTS_DIR = ./tmp
    CONFIG(debug, debug|release) {
        DESTDIR = ./tmp-dbg
        OBJECTS_DIR = ./tmp-dbg
		DEFINES += _DEBUG
    }
    RCC_DIR = ./tmp
    UI_DIR = ./tmp
	MOC_DIR = ./moc
	QMAKE_CXXFLAGS += -Wno-reorder -Wno-unused-parameter
 }
macx {
	CONFIG += x86
	ICON=icon.icns
	QMAKE_INFO_PLIST = MyInfo.plist
	 }

#Header files
HEADERS += ../NAF/Root/Action.h \
	../NAF/Root/ActionCommand.h \
	../NAF/Root/ActionHandler.h \
	../NAF/Root/Agent.h \
	../NAF/Root/Any.h \
	../NAF/Root/Application.h \
	../NAF/Root/Command.h \
	../NAF/Root/DateTime.h \
	../NAF/Root/Exception.h \
	../NAF/Root/FixVector.h \
	../NAF/Root/Host.h \
	../NAF/Root/MakroCommand.h \
	../NAF/Root/Matrix.h \
	../NAF/Root/MatrixUtil.h \
	../NAF/Root/Mem.h \
	../NAF/Root/MenuAction.h \
	../NAF/Root/Message.h \
	../NAF/Root/MessageLog.h \
	../NAF/Root/Messenger.h \
	../NAF/Root/Object.h \
	../NAF/Root/Resource.h \
	../NAF/Root/Sequence.h \
	../NAF/Root/Smart.h \
	../NAF/Root/Subject.h \
	../NAF/Root/SymbolString.h \
	../NAF/Root/Tag.h \
	../NAF/Root/Transaction.h \
	../NAF/Root/UndoManager.h \
	../NAF/Root/UniqueList.h \
	../NAF/Root/Units.h \
	../NAF/Root/UpstreamFilter.h \
	../NAF/Root/Vector.h \
	../NAF/Gui/InputDlg.h \
	../NAF/Gui/ListView.h \
	../NAF/Lexi/Align.h \
	../NAF/Lexi/Allocation.h \
	../NAF/Lexi/AllocationTable.h \
	../NAF/Lexi/Background.h \
	../NAF/Lexi/Bevel.h \
	../NAF/Lexi/Border.h \
	../NAF/Lexi/Box.h \
	../NAF/Lexi/Canvas.h \
	../NAF/Lexi/CommandLine.h \
	../NAF/Lexi/CompositeHandler.h \
	../NAF/Lexi/ContextMenu.h \
	../NAF/Lexi/Event.h \
	../NAF/Lexi/Extension.h \
	../NAF/Lexi/FocusManager.h \
	../NAF/Lexi/Font.h \
	../NAF/Lexi/Glyph.h \
	../NAF/Lexi/GlyphCommand.h \
	../NAF/Lexi/GlyphCommander.h \
	../NAF/Lexi/GlyphTraversal.h \
	../NAF/Lexi/GlyphWidget.h \
	../NAF/Lexi/Handler.h \
	../NAF/Lexi/Icon.h \
	../NAF/Lexi/Image.h \
	../NAF/Lexi/Interactor.h \
	../NAF/Lexi/Label.h \
	../NAF/Lexi/Layer.h \
	../NAF/Lexi/Layout.h \
	../NAF/Lexi/LayoutKit.h \
	../NAF/Lexi/LexiListView.h \
	../NAF/Lexi/MainWindow.h \
	../NAF/Lexi/MonoGlyph.h \
	../NAF/Lexi/PolyGlyph.h \
	../NAF/Lexi/Printer.h \
	../NAF/Lexi/Redirector.h \
	../NAF/Lexi/Requisition.h \
	../NAF/Lexi/SelectorCmd.h \
	../NAF/Lexi/Shapes.h \
	../NAF/Lexi/Splitter.h \
	../NAF/Lexi/Superpose.h \
	../NAF/Lexi/Tile.h \
	../NAF/Lexi/Units.h \
	../NAF/Lexi/Viewport.h \
	../NAF/Qt/qttableview.h \
	../Expat/ascii.h \
	../Expat/asciitab.h \
	../NAF/Xml/DomDocument.h \
	../Expat/expat.h \
	../Expat/expat_config.h \
	../Expat/expat_external.h \
	../Expat/iasciitab.h \
	../Expat/internal.h \
	../Expat/latin1tab.h \
	../Expat/nametab.h \
	../Expat/utf8tab.h \
	../NAF/Xml/XmlHandler.h \
	../Expat/xmlrole.h \
	../Expat/xmltok.h \
	../Expat/xmltok_impl.h \
	../NAF/Script/Engine.h \
	../NAF/Script/Terminal.h \
	../NAF/Script/Util.h \
	../NAF/LuaQt3/LuaBox2.h \
	../NAF/LuaQt3/LuaButton2.h \
	../NAF/LuaQt3/LuaCanvas2.h \
	../NAF/LuaQt3/LuaDlg2.h \
	../NAF/LuaQt3/LuaFrame2.h \
	../NAF/LuaQt3/LuaGui2.h \
	../NAF/LuaQt3/LuaListView2.h \
	../NAF/LuaQt3/LuaMainWindow2.h \
	../NAF/LuaQt3/LuaMyWidget2.h \
	../NAF/LuaQt3/LuaPainter2.h \
	../NAF/LuaQt3/LuaPlot2.h \
	../NAF/LuaQt3/LuaWidget2.h \
	../NAF/LuaQt3/LuaXml2.h \
	../NAF/Spec/AtomType.h \
	../NAF/Spec/BackCalculation.h \
	../NAF/Spec/BioSample.h \
	../NAF/Spec/BrukerSpectrum.h \
	../NAF/Spec/Buffer.h \
	../NAF/Spec/CaraSpectrum.h \
	../NAF/Spec/Conformer.h \
	../NAF/Spec/CubeMdl.h \
	../NAF/Spec/CursorSet.h \
	../NAF/Spec/EasyNumber.h \
	../NAF/Spec/EasyPeakList.h \
	../NAF/Spec/EasyProtonList.h \
	../NAF/Spec/EasySpectrum.h \
	../NAF/Spec/Factory.h \
	../NAF/Spec/FelixSpectrum.h \
	../NAF/Spec/FileSpectrum.h \
	../NAF/Spec/FragmentAssignment.h \
	../NAF/Spec/Fragmenter.h \
	../NAF/Spec/MappedFile.h \
	../NAF/Spec/MemSpectrum.h \
	../NAF/Spec/NmrExperiment.h \
	../NAF/Spec/ObjectBase.h \
	../NAF/Spec/ObjectDef.h \
	../NAF/Spec/PeakList.h \
	../NAF/Spec/PeakListPeer.h \
	../NAF/Spec/PeakModel.h \
	../NAF/Spec/PeakProjector.h \
	../NAF/Spec/PeakSpace.h \
	../NAF/Spec/PhasedSpec.h \
	../NAF/Spec/PipeSpectrum.h \
	../NAF/Spec/PointMdl.h \
	../NAF/Spec/PointSet.h \
	../NAF/Spec/Project.h \
	../NAF/Spec/Repository.h \
	../NAF/Spec/Residue.h \
	../NAF/Spec/ResidueBase.h \
	../NAF/Spec/ResidueType.h \
	../NAF/Spec/Scale.h \
	../NAF/Spec/SequenceFile.h \
	../NAF/Spec/Serializer.h \
	../NAF/Spec/SitarSpectrum.h \
	../NAF/Spec/SpecProjector.h \
	../NAF/Spec/SpecRotator.h \
	../NAF/Spec/Spectrum.h \
	../NAF/Spec/SpectrumPeer.h \
	../NAF/Spec/SpectrumType.h \
	../NAF/Spec/SpinLabel.h \
	../NAF/Spec/SpinMatcher.h \
	../NAF/Spec/SpinSpace.h \
	../NAF/Spec/SpinSystem.h \
	../NAF/Spec/StarFile.h \
	../NAF/Spec/Stream.h \
	../NAF/Spec/Stripper.h \
	../NAF/Spec/StripQuery2.h \
	../NAF/Spec/Structure.h \
	../NAF/Spec/TransposedTileSpec.h \
	../NAF/Spec/TypeBase.h \
	../NAF/Spec/UcsfSpectrum.h \
	../NAF/Spec/Units.h \
	../NAF/Spec/VarianSpectrum.h \
	../NAF/SpecView/CenterLine.h \
	../NAF/SpecView/ContourView.h \
	../NAF/SpecView/CursorCtrl.h \
	../NAF/SpecView/CursorMdl.h \
	../NAF/SpecView/CursorView.h \
	../NAF/SpecView/DynValueEditor.h \
	../NAF/SpecView/FocusCtrl.h \
	../NAF/SpecView/FoldingView.h \
	../NAF/SpecView/IntensityView.h \
	../NAF/SpecView/ObjectListView.h \
	../NAF/SpecView/OverviewCtrl.h \
	./PeakListGadget.h \
	../NAF/SpecView/PeakModelView.h \
	../NAF/SpecView/PeakPlaneView.h \
	../NAF/SpecView/PeakSelectCtrl.h \
	../NAF/SpecView/PointSelectCtrl.h \
	../NAF/SpecView/ResidueParamView.h \
	../NAF/SpecView/ScrollCtrl.h \
	../NAF/SpecView/SelectRulerCtr.h \
	../NAF/SpecView/SelectZoomCtrl.h \
	../NAF/SpecView/SliceView.h \
	../NAF/SpecView/SpecBufferMdl.h \
	../NAF/SpecView/SpecRuler2D.h \
	../NAF/SpecView/SpecView.h \
	../NAF/SpecView/SpecViewer.h \
	../NAF/SpecView/SpinLineView.h \
	../NAF/SpecView/SpinLinkView.h \
	../NAF/SpecView/SpinPointView.h \
	../NAF/SpecView/Units.h \
	../NAF/SpecView/ViewAreaMdl.h \
	../NAF/SpecView/ZoomCtrl.h \
	../NAF/Lexi/FixedFrame.h \
    ./Icons.h \
	../NAF/SpecView/PeakBatchCurve.h \
	../NAF/SpecView/PeakModelTuner.h \
    ./SingleAlignmentView.h \
    ./StripListGadget.h \
    ./AidaApplication.h \
    ./AidaCentral.h \
    ./AidaCentralAgent.h \
    ./LabelingSchemeView.h \
    ./LuaCaraExplorer.h \
    ./MessageView.h \
	../NAF/SpecView/MoleculeViewer.h \
    ./ObjectDefView.h \
    ./PeakListListView.h \
    ./ResidueTypeView.h \
    ./SampleView.h \
    ./ScriptView.h \
    ./SequenceView.h \
    ./SpectrumListView.h \
    ./SpectrumTypeView.h \
    ./SpinLinkListView.h \
    ./SpinSystemView.h \
    ./SystemTypeView.h \
    ./HomoScope2.h \
    ./MonoScope.h \
    ./MonoScopeAgent.h \
    ./Phaser.h \
    ./PhaserAgent.h \
    ./PolyScope2.h \
    ./PolyScopeAgent2.h \
    ./ReportViewer.h \
    ./SitarViewer.h \
    ./SliceScope.h \
    ./SliceScopeAgent.h \
    ./StripScope2.h \
    ./StripScope2D.h \
    ./StripScopeAgent2.h \
    ./StripScopeAgent2D.h \
    ./SynchroScope2.h \
    ./SystemScope2.h \
    ./SystemScopeAgent2.h \
    ./TestScope.h \
	../NAF/SpecView/CandidateDlg.h \
    ./Dlg.h \
	../NAF/SpecView/GotoDlg.h \
    ./ProposeSpinDlg.h \
	../NAF/SpecView/RotateDlg.h \
	../NAF/SpecView/SpecBatchList.h \
    ../Lua/lapi.h \
    ../Lua/lauxlib.h \
    ../Lua/lcode.h \
    ../Lua/ldebug.h \
    ../Lua/ldo.h \
    ../Lua/lfunc.h \
    ../Lua/lgc.h \
    ../Lua/llex.h \
    ../Lua/llimits.h \
    ../Lua/lmem.h \
    ../Lua/lobject.h \
    ../Lua/lopcodes.h \
    ../Lua/lparser.h \
    ../Lua/lstate.h \
    ../Lua/lstring.h \
    ../Lua/ltable.h \
    ../Lua/ltm.h \
    ../Lua/lua.h \
    ../Lua/luaconf.h \
    ../Lua/lualib.h \
    ../Lua/lundump.h \
    ../Lua/lvm.h \
    ../Lua/lzio.h \
	../Newmat/Base.h \
	../Newmat/controlw.h \
	../Newmat/include.h \
	../Newmat/myexcept.h \
	../Newmat/newmat.h \
	../Newmat/newmatap.h \
	../Newmat/newmatio.h \
	../Newmat/newmatnl.h \
	../Newmat/newmatrc.h \
	../Newmat/newmatrm.h \
	../Newmat/precisio.h \
	../Newmat/solution.h \
	../NAF/LuaSpec2/LuaExperiment.h \
	../NAF/LuaSpec2/LuaObject.h \
	../NAF/LuaSpec2/LuaPeakList.h \
	../NAF/LuaSpec2/LuaProject.h \
	../NAF/LuaSpec2/LuaProtonList.h \
	../NAF/LuaSpec2/LuaRecord.h \
	../NAF/LuaSpec2/LuaRepository.h \
	../NAF/LuaSpec2/LuaResidue.h \
	../NAF/LuaSpec2/LuaSpec2.h \
	../NAF/LuaSpec2/LuaSpectrum.h \
	../NAF/LuaSpec2/LuaSpinSystem.h \
    FourDScope.h \
    FourDScopeAgent.h \
	../NAF/SpecView/PathSimDlg.h \
	../NAF/Script2/RefBinding.h \
	../NAF/Gui/Menu.h \
	../NAF/Gui2/UiFunction.h \
	../NAF/Gui2/NamedFunction.h \
	../NAF/Gui2/AutoMenu.h \
	../NAF/SpecView3/SpecViewer3.h \
	../NAF/SpecView3/SpecView3.h \
	../NAF/SpecView3/Units.h \
	../NAF/SpecView3/ViewAreaMdl3.h \
	../NAF/SpecView3/SpecBufferMdl3.h \
	../NAF/SpecView3/ContourView3.h \
	../NAF/SpecView3/CursorView3.h \
	../NAF/SpecView3/CursorCtrl3.h \
	../NAF/SpecView3/SelectorCtrl.h \
	../NAF/SpecView3/SelectZoomCtrl3.h \
	../NAF/SpecView3/ZoomCtrl3.h \
	../NAF/SpecView3/ScrollCtrl3.h \
	../NAF/SpecView3/IntensityView3.h \
	../NAF/SpecView3/SpinPointView3.h \
	../NAF/SpecView3/PointSelectCtrl3.h \
	../NAF/SpecView3/FoldingView3.h \
	../NAF/Spec/GlobalCursor.h \
	../NAF/SpecView3/CenterLine3.h \
	../NAF/SpecView3/OverviewCtrl3.h \
	../NAF/SpecView3/PeakPlaneView3.h \
	../NAF/SpecView3/PeakSelectCtrl3.h \
	../NAF/SpecView3/SelectRulerCtrl3.h \
	../NAF/SpecView3/SliceView3.h \
    FourDScope2.h \
	../NAF/SpecView3/GenericScope.h \
	../NAF/Gui2/SplitGrid2.h \
	../NAF/SpecView3/ViewStack.h \
	../NAF/SpecView3/LabelView.h \
	../NAF/SpecView3/CommandLine2.h \
	../NAF/SpecView3/SpinPoint1DView3.h \
	./StripListGadget2.h\
    ScriptEditor3.h \
	../NAF/Script/SyntaxHighlighter.h \
	../NAF/Script/CodeEditor.h \
	../NAF/Script/Script.h \
    ../NAF/Script/Lua.h \
    ../NAF/SpecView3/PlaneGrid.h \
    ../NAF/Spec/AnchorSpace.h \
    ../NAF/Spec/SpinPointSpace.h \
    ../NAF/Spec/RangeFilterSpace.h \
    ../NAF/SpecView3/ContourParamDlg.h \
    ../NAF/SpecView3/SpinPointList.h \
    FourDScope3.h \
    ../NAF/SpecView3/OverlayManager.h \
    ../NAF/SpecView3/SpecSelectDlg.h \
    ../NAF/SpecView3/IntensityParamDlg.h \
    ../NAF/SpecView/PeakColorDlg.h \
    ../NAF/Script2/ValueBinding.h \
    ../NAF/Script2/QtObject.h \
    ../NAF/Script2/QtValue.h \
    ../NAF/Qtl2/QtlPainterPath.h \
    ../NAF/Qtl2/QtlButtonGroup.h \
    ../NAF/Qtl2/QtlToolButton.h \
    ../NAF/Qtl2/QtlWidget.h \
    ../NAF/Qtl2/QtlToolBar.h \
    ../NAF/Qtl2/QtlMatrix.h \
    ../NAF/Qtl2/QtlPoint.h \
    ../NAF/Qtl2/QtlMenuBar.h \
    ../NAF/Qtl2/QtlMessageBox.h \
    ../NAF/Qtl2/QtlPushButton.h \
    ../NAF/Qtl2/QtlMenu.h \
    ../NAF/Qtl2/QtlLCDNumber.h \
    ../NAF/Qtl2/QtlAbstractButton.h \
    ../NAF/Qtl2/QtlActionGroup.h \
    ../NAF/Qtl2/QtlFontMetrics.h \
    ../NAF/Qtl2/QtlChar.h \
    ../NAF/Qtl2/QtlFontInfo.h \
    ../NAF/Qtl2/QtlAction.h \
    ../NAF/Qtl2/QtlKeySequence.h \
    ../NAF/Qtl2/QtlSize.h \
    ../NAF/Qtl2/QtlPalette.h \
    ../NAF/Qtl2/QtlLine.h \
    ../NAF/Qtl2/QtlRegion.h \
    ../NAF/Qtl2/QtlRect.h \
    ../NAF/Qtl2/QtlPolygon.h \
    ../NAF/Qtl2/QtlBitmap.h \
    ../NAF/Qtl2/QtlPen.h \
    ../NAF/Qtl2/QtlBrush.h \
    ../NAF/Qtl2/QtlImage.h \
    ../NAF/Qtl2/QtlIcon.h \
    ../NAF/Qtl2/QtlPixmap.h \
    ../NAF/Qtl2/QtlSizePolicy.h \
    ../NAF/Qtl2/QtlBitArray.h \
    ../NAF/Qtl2/Objects.h \
    ../NAF/Qtl2/QtlCheckBox.h \
    ../NAF/Qtl2/QtlAbstractSlider.h \
    ../NAF/Qtl2/QtlToolBox.h \
    ../NAF/Qtl2/Variant.h \
    ../NAF/Qtl2/QtlString.h \
    ../NAF/Qtl2/QtlShortcut.h \
    ../NAF/Qtl2/QtlFileDialog.h \
    ../NAF/Qtl2/QtlGroupBox.h \
    ../NAF/Qtl2/QtlDialog.h \
    ../NAF/Qtl2/QtlDial.h \
    ../NAF/Qtl2/QtlScrollArea.h \
    ../NAF/Qtl2/QtlStatusBar.h \
    ../NAF/Qtl2/QtlStackedWidget.h \
    ../NAF/Qtl2/QtlProgressBar.h \
    ../NAF/Qtl2/QtlUrl.h \
    ../NAF/Qtl2/QtlTextEdit.h \
    ../NAF/Qtl2/QtlTabBar.h \
    ../NAF/Qtl2/QtlTabWidget.h \
    ../NAF/Qtl2/QtlFont.h \
    ../NAF/Qtl2/QtlStringList.h \
    ../NAF/Qtl2/QtlLineEdit.h \
    ../NAF/Qtl2/QtlColor.h \
    ../NAF/Qtl2/QtlDateTime.h \
    ../NAF/Qtl2/QtlTime.h \
    ../NAF/Qtl2/QtlDate.h \
    ../NAF/Qtl2/QtlTreeView.h \
    ../NAF/Qtl2/QtlHeaderView.h \
    ../NAF/Script2/PtrBinding.h \
    ../NAF/Qtl2/QtlTreeWidgetItem.h \
    ../NAF/Qtl2/QtlTreeWidget.h \
    ../NAF/Script/DisAss.h \
    ../NAF/Script/StackView.h \
    ../NAF/Script/LocalsView.h \
    ../NAF/Script/ExpressionParser.h \
    PolyScope3.h \
    ../NAF/Qtl2/QtlFrame.h

#Source files
SOURCES += ../NAF/Root/Action.cpp \
	../NAF/Root/ActionCommand.cpp \
	../NAF/Root/ActionHandler.cpp \
	../NAF/Root/Agent.cpp \
	../NAF/Root/Any.cpp \
	../NAF/Root/Application.cpp \
	../NAF/Root/Command.cpp \
	../NAF/Root/DateTime.cpp \
	../NAF/Root/Exception.cpp \
	../NAF/Root/Host.cpp \
	../NAF/Root/MakroCommand.cpp \
	../NAF/Root/Matrix.cpp \
	../NAF/Root/Mem.cpp \
	../NAF/Root/MenuAction.cpp \
	../NAF/Root/Message.cpp \
	../NAF/Root/MessageLog.cpp \
	../NAF/Root/Messenger.cpp \
	../NAF/Root/Object.cpp \
	../NAF/Root/Resource.cpp \
	../NAF/Root/Subject.cpp \
	../NAF/Root/SymbolString.cpp \
	../NAF/Root/Tag.cpp \
	../NAF/Root/Transaction.cpp \
	../NAF/Root/UndoManager.cpp \
	../NAF/Root/Units.cpp \
	../NAF/Root/UpstreamFilter.cpp \
	../NAF/Gui/InputDlg.cpp \
	../NAF/Gui/ListView.cpp \
	../NAF/Lexi/Align.cpp \
	../NAF/Lexi/Allocation.cpp \
	../NAF/Lexi/AllocationTable.cpp \
	../NAF/Lexi/Background.cpp \
	../NAF/Lexi/Bevel.cpp \
	../NAF/Lexi/Border.cpp \
	../NAF/Lexi/Box.cpp \
	../NAF/Lexi/Canvas.cpp \
	../NAF/Lexi/CommandLine.cpp \
	../NAF/Lexi/CompositeHandler.cpp \
	../NAF/Lexi/ContextMenu.cpp \
	../NAF/Lexi/Event.cpp \
	../NAF/Lexi/Extension.cpp \
	../NAF/Lexi/FocusManager.cpp \
	../NAF/Lexi/Font.cpp \
	../NAF/Lexi/Glyph.cpp \
	../NAF/Lexi/GlyphCommand.cpp \
	../NAF/Lexi/GlyphCommander.cpp \
	../NAF/Lexi/GlyphTraversal.cpp \
	../NAF/Lexi/GlyphWidget.cpp \
	../NAF/Lexi/Handler.cpp \
	../NAF/Lexi/Icon.cpp \
	../NAF/Lexi/Image.cpp \
	../NAF/Lexi/Interactor.cpp \
	../NAF/Lexi/Label.cpp \
	../NAF/Lexi/Layer.cpp \
	../NAF/Lexi/Layout.cpp \
	../NAF/Lexi/LayoutKit.cpp \
	../NAF/Lexi/LexiListView.cpp \
	../NAF/Lexi/MainWindow.cpp \
	../NAF/Lexi/MonoGlyph.cpp \
	../NAF/Lexi/PolyGlyph.cpp \
	../NAF/Lexi/Printer.cpp \
	../NAF/Lexi/Redirector.cpp \
	../NAF/Lexi/Requisition.cpp \
	../NAF/Lexi/SelectorCmd.cpp \
	../NAF/Lexi/Shapes.cpp \
	../NAF/Lexi/Splitter.cpp \
	../NAF/Lexi/Superpose.cpp \
	../NAF/Lexi/Tile.cpp \
	../NAF/Lexi/Viewport.cpp \
	../NAF/Qt/qttableview.cpp \
	../NAF/Xml/DomDocument.cpp \
	../NAF/Xml/XmlHandler.cpp \
	../Expat/xmlparse.cpp \
	../Expat/xmlrole.cpp \
	../Expat/xmltok.cpp \
	../NAF/Script/Engine.cpp \
	../NAF/Script/Terminal.cpp \
	../NAF/Script/Util.cpp \
	../NAF/Spec/AtomType.cpp \
	../NAF/Spec/BackCalculation.cpp \
	../NAF/Spec/BioSample.cpp \
	../NAF/Spec/BrukerSpectrum.cpp \
	../NAF/Spec/Buffer.cpp \
	../NAF/Spec/CaraSpectrum.cpp \
	../NAF/Spec/Conformer.cpp \
	../NAF/Spec/CubeMdl.cpp \
	../NAF/Spec/CursorSet.cpp \
	../NAF/Spec/EasyNumber.cpp \
	../NAF/Spec/EasyPeakList.cpp \
	../NAF/Spec/EasyProtonList.cpp \
	../NAF/Spec/EasySpectrum.cpp \
	../NAF/Spec/Factory.cpp \
	../NAF/Spec/FelixSpectrum.cpp \
	../NAF/Spec/FileSpectrum.cpp \
	../NAF/Spec/FragmentAssignment.cpp \
	../NAF/Spec/Fragmenter.cpp \
	../NAF/Spec/MappedFile.cpp \
	../NAF/Spec/MemSpectrum.cpp \
	../NAF/Spec/NmrExperiment.cpp \
	../NAF/Spec/ObjectBase.cpp \
	../NAF/Spec/ObjectDef.cpp \
	../NAF/Spec/PeakList.cpp \
	../NAF/Spec/PeakListPeer.cpp \
	../NAF/Spec/PeakModel.cpp \
	../NAF/Spec/PeakProjector.cpp \
	../NAF/Spec/PeakSpace.cpp \
	../NAF/Spec/PhasedSpec.cpp \
	../NAF/Spec/PipeSpectrum.cpp \
	../NAF/Spec/PointMdl.cpp \
	../NAF/Spec/PointSet.cpp \
	../NAF/Spec/Project.cpp \
	../NAF/Spec/Repository.cpp \
	../NAF/Spec/Residue.cpp \
	../NAF/Spec/ResidueBase.cpp \
	../NAF/Spec/ResidueType.cpp \
	../NAF/Spec/Scale.cpp \
	../NAF/Spec/SequenceFile.cpp \
	../NAF/Spec/Serializer.cpp \
	../NAF/Spec/SitarSpectrum.cpp \
	../NAF/Spec/SpecGlobal.cpp \
	../NAF/Spec/SpecProjector.cpp \
	../NAF/Spec/SpecRotator.cpp \
	../NAF/Spec/Spectrum.cpp \
	../NAF/Spec/SpectrumPeer.cpp \
	../NAF/Spec/SpectrumType.cpp \
	../NAF/Spec/SpinLabel.cpp \
	../NAF/Spec/SpinMatcher.cpp \
	../NAF/Spec/SpinSpace.cpp \
	../NAF/Spec/SpinSystem.cpp \
	../NAF/Spec/StarFile.cpp \
	../NAF/Spec/Stream.cpp \
	../NAF/Spec/Stripper.cpp \
	../NAF/Spec/StripQuery2.cpp \
	../NAF/Spec/Structure.cpp \
	../NAF/Spec/TransposedTileSpec.cpp \
	../NAF/Spec/TypeBase.cpp \
	../NAF/Spec/UcsfSpectrum.cpp \
	../NAF/Spec/VarianSpectrum.cpp \
	../NAF/SpecView/CenterLine.cpp \
	../NAF/SpecView/ContourView.cpp \
	../NAF/SpecView/CursorCtrl.cpp \
	../NAF/SpecView/CursorMdl.cpp \
	../NAF/SpecView/CursorView.cpp \
	../NAF/SpecView/DynValueEditor.cpp \
	../NAF/SpecView/FocusCtrl.cpp \
	../NAF/SpecView/FoldingView.cpp \
	../NAF/SpecView/IntensityView.cpp \
	../NAF/SpecView/ObjectListView.cpp \
	../NAF/SpecView/OverviewCtrl.cpp \
	./PeakListGadget.cpp \
	../NAF/SpecView/PeakModelView.cpp \
	../NAF/SpecView/PeakPlaneView.cpp \
	../NAF/SpecView/PeakSelectCtrl.cpp \
	../NAF/SpecView/PointSelectCtrl.cpp \
	../NAF/SpecView/ResidueParamView.cpp \
	../NAF/SpecView/ScrollCtrl.cpp \
	../NAF/SpecView/SelectRulerCtr.cpp \
	../NAF/SpecView/SelectZoomCtrl.cpp \
	../NAF/SpecView/SliceView.cpp \
	../NAF/SpecView/SpecBufferMdl.cpp \
	../NAF/SpecView/SpecRuler2D.cpp \
	../NAF/SpecView/SpecView.cpp \
	../NAF/SpecView/SpecViewer.cpp \
	../NAF/SpecView/SpinLineView.cpp \
	../NAF/SpecView/SpinLinkView.cpp \
	../NAF/SpecView/SpinPointView.cpp \
	../NAF/SpecView/ViewAreaMdl.cpp \
	../NAF/SpecView/ZoomCtrl.cpp \
	../NAF/Lexi/FixedFrame.cpp \
    ./Icons.cpp \
	../NAF/SpecView/PeakBatchCurve.cpp \
	../NAF/SpecView/PeakModelTuner.cpp \
    ./SingleAlignmentView.cpp \
    ./StripListGadget.cpp \
    ./AidaApplication.cpp \
    ./mainAida.cpp \
    ./AidaCentral.cpp \
    ./AidaCentralAgent.cpp \
    ./LabelingSchemeView.cpp \
    ./LuaCaraExplorer.cpp \
    ./MessageView.cpp \
	../NAF/SpecView/MoleculeViewer.cpp \
    ./ObjectDefView.cpp \
    ./PeakListListView.cpp \
    ./ResidueTypeView.cpp \
    ./SampleView.cpp \
    ./ScriptView.cpp \
    ./SequenceView.cpp \
    ./SpectrumListView.cpp \
    ./SpectrumTypeView.cpp \
    ./SpinLinkListView.cpp \
    ./SpinSystemView.cpp \
    ./SystemTypeView.cpp \
    ./HomoScope2.cpp \
    ./MonoScope.cpp \
    ./MonoScopeAgent.cpp \
    ./Phaser.cpp \
    ./PhaserAgent.cpp \
    ./PolyScope2.cpp \
    ./PolyScopeAgent2.cpp \
    ./ReportViewer.cpp \
    ./SitarViewer.cpp \
    ./SliceScope.cpp \
    ./SliceScopeAgent.cpp \
    ./StripScope2.cpp \
    ./StripScope2D.cpp \
    ./StripScopeAgent2.cpp \
    ./StripScopeAgent2D.cpp \
    ./SynchroScope2.cpp \
    ./SystemScope2.cpp \
    ./SystemScopeAgent2.cpp \
    ./TestScope.cpp \
	../NAF/SpecView/CandidateDlg.cpp \
    ./Dlg.cpp \
	../NAF/SpecView/GotoDlg.cpp \
    ./ProposeSpinDlg.cpp \
	../NAF/SpecView/RotateDlg.cpp \
	../NAF/SpecView/SpecBatchList.cpp \
	../Lua/lapi.c \
	../Lua/lauxlib.c \
	../Lua/lbaselib.c \
	../Lua/lcode.c \
	../Lua/ldblib.c \
	../Lua/ldebug.c \
	../Lua/ldo.c \
	../Lua/ldump.c \
	../Lua/lfunc.c \
	../Lua/lgc.c \
	../Lua/linit.c \
	../Lua/liolib.c \
	../Lua/llex.c \
	../Lua/lmathlib.c \
	../Lua/lmem.c \
	../Lua/loadlib.c \
	../Lua/lobject.c \
	../Lua/lopcodes.c \
	../Lua/loslib.c \
	../Lua/lparser.c \
	../Lua/lstate.c \
	../Lua/lstring.c \
	../Lua/lstrlib.c \
	../Lua/ltable.c \
	../Lua/ltablib.c \
	../Lua/ltm.c \
	../Lua/lundump.c \
	../Lua/lvm.c \
	../Lua/lzio.c \
	../Newmat/bandmat.cpp \
	../Newmat/cholesky.cpp \
	../Newmat/evalue.cpp \
	../Newmat/fft.cpp \
	../Newmat/hholder.cpp \
	../Newmat/jacobi.cpp \
	../Newmat/myexcept.cpp \
	../Newmat/newfft.cpp \
	../Newmat/newmat1.cpp \
	../Newmat/newmat2.cpp \
	../Newmat/newmat3.cpp \
	../Newmat/newmat4.cpp \
	../Newmat/newmat5.cpp \
	../Newmat/newmat6.cpp \
	../Newmat/newmat7.cpp \
	../Newmat/newmat8.cpp \
	../Newmat/newmat9.cpp \
	../Newmat/newmatex.cpp \
	../Newmat/newmatnl.cpp \
	../Newmat/newmatrm.cpp \
	../Newmat/solution.cpp \
	../Newmat/sort.cpp \
	../Newmat/submat.cpp \
	../Newmat/svd.cpp \
	../NAF/LuaSpec2/LuaBuffer.cpp \
	../NAF/LuaSpec2/LuaExperiment.cpp \
	../NAF/LuaSpec2/LuaObject.cpp \
	../NAF/LuaSpec2/LuaPeakList.cpp \
	../NAF/LuaSpec2/LuaProject.cpp \
	../NAF/LuaSpec2/LuaProtonList.cpp \
	../NAF/LuaSpec2/LuaRecord.cpp \
	../NAF/LuaSpec2/LuaRepository.cpp \
	../NAF/LuaSpec2/LuaResidue.cpp \
	../NAF/LuaSpec2/LuaSpec2.cpp \
	../NAF/LuaSpec2/LuaSpectrum.cpp \
	../NAF/LuaSpec2/LuaSpinSystem.cpp \
    FourDScopeAgent.cpp \
    FourDScope.cpp \
	../NAF/SpecView/PathSimDlg.cpp \
	../NAF/Gui/Menu.cpp \
	../NAF/Gui2/UiFunction.cpp \
	../NAF/Gui2/NamedFunction.cpp \
	../NAF/Gui2/AutoMenu.cpp \
	../NAF/SpecView3/SpecViewer3.cpp \
	../NAF/SpecView3/SpecView3.cpp \
	../NAF/SpecView3/ViewAreaMdl3.cpp \
	../NAF/SpecView3/SpecBufferMdl3.cpp \
	../NAF/SpecView3/ContourView3.cpp \
	../NAF/SpecView3/CursorView3.cpp \
	../NAF/SpecView3/CursorCtrl3.cpp \
	../NAF/SpecView3/SelectorCtrl.cpp \
	../NAF/SpecView3/SelectZoomCtrl3.cpp \
	../NAF/SpecView3/ZoomCtrl3.cpp \
	../NAF/SpecView3/ScrollCtrl3.cpp \
	../NAF/SpecView3/IntensityView3.cpp \
	../NAF/SpecView3/SpinPointView3.cpp \
	../NAF/SpecView3/PointSelectCtrl3.cpp \
	../NAF/SpecView3/FoldingView3.cpp \
	../NAF/Spec/GlobalCursor.cpp \
	../NAF/SpecView3/CenterLine3.cpp \
	../NAF/SpecView3/OverviewCtrl3.cpp \
	../NAF/SpecView3/PeakPlaneView3.cpp \
	../NAF/SpecView3/PeakSelectCtrl3.cpp \
	../NAF/SpecView3/SelectRulerCtrl3.cpp \
	../NAF/SpecView3/SliceView3.cpp \
    FourDScope2.cpp \
	../NAF/SpecView3/GenericScope.cpp \
	../NAF/Gui2/SplitGrid2.cpp \
	../NAF/SpecView3/ViewStack.cpp \
	../NAF/SpecView3/LabelView.cpp \
	../NAF/SpecView3/CommandLine2.cpp \
	../NAF/SpecView3/SpinPoint1DView3.cpp \
	./StripListGadget2.cpp\
    ScriptEditor3.cpp \
	../NAF/Script/SyntaxHighlighter.cpp \
	../NAF/Script/CodeEditor.cpp \
	../NAF/Script/Script.cpp \
    ../NAF/SpecView3/PlaneGrid.cpp \
    ../NAF/Spec/AnchorSpace.cpp \
    ../NAF/Spec/SpinPointSpace.cpp \
    ../NAF/Spec/RangeFilterSpace.cpp \
    ../NAF/SpecView3/ContourParamDlg.cpp \
    ../NAF/SpecView3/SpinPointList.cpp \
    FourDScope3.cpp \
    ../NAF/SpecView3/OverlayManager.cpp \
    ../NAF/SpecView3/SpecSelectDlg.cpp \
    ../NAF/SpecView3/IntensityParamDlg.cpp \
    ../NAF/SpecView/PeakColorDlg.cpp \
    ../NAF/Script/LuaAddOn.c \
    ../NAF/Script2/ValueBinding.cpp \
    ../NAF/Script2/QtObject.cpp \
    ../NAF/Qtl2/QtlMatrix.cpp \
    ../NAF/Qtl2/QtlFontMetrics.cpp \
    ../NAF/Qtl2/QtlRect.cpp \
    ../NAF/Qtl2/QtlBitArray.cpp \
    ../NAF/Qtl2/QtlBitmap.cpp \
    ../NAF/Qtl2/QltIcon.cpp \
    ../NAF/Qtl2/QtlBrush.cpp \
    ../NAF/Qtl2/QtlPen.cpp \
    ../NAF/Qtl2/QtlPolygon.cpp \
    ../NAF/Qtl2/QtlSizePolicy.cpp \
    ../NAF/Qtl2/QtlImage.cpp \
    ../NAF/Qtl2/QtlPixmap.cpp \
    ../NAF/Qtl2/QtlToolButton.cpp \
    ../NAF/Qtl2/QtlToolBar.cpp \
    ../NAF/Qtl2/QtlToolBox.cpp \
    ../NAF/Qtl2/QtlShortcut.cpp \
    ../NAF/Qtl2/QtlProgressBar.cpp \
    ../NAF/Qtl2/QtlMessageBox.cpp \
    ../NAF/Qtl2/QtlStackedWidget.cpp \
    ../NAF/Qtl2/QtlPushButton.cpp \
    ../NAF/Qtl2/QtlMenuBar.cpp \
    ../NAF/Qtl2/QtlLCDNumber.cpp \
    ../NAF/Qtl2/QtlCheckBox.cpp \
    ../NAF/Qtl2/QtlAbstractSlider.cpp \
    ../NAF/Qtl2/QtlAbstractButton.cpp \
    ../NAF/Qtl2/QtlString.cpp \
    ../NAF/Qtl2/QtlFontInfo.cpp \
    ../NAF/Qtl2/QtlPoint.cpp \
    ../NAF/Qtl2/QtlLine.cpp \
    ../NAF/Qtl2/Objects.cpp \
    ../NAF/Qtl2/QtlDial.cpp \
    ../NAF/Qtl2/QtlScrollArea.cpp \
    ../NAF/Qtl2/QtlDialog.cpp \
    ../NAF/Qtl2/QtlSize.cpp \
    ../NAF/Qtl2/QtlPalette.cpp \
    ../NAF/Qtl2/QtlKeySequence.cpp \
    ../NAF/Qtl2/QtlChar.cpp \
    ../NAF/Qtl2/QtlTextEdit.cpp \
    ../NAF/Qtl2/QtlTabBar.cpp \
    ../NAF/Qtl2/QtlButtonGroup.cpp \
    ../NAF/Qtl2/QtlActionGroup.cpp \
    ../NAF/Qtl2/QtlMenu.cpp \
    ../NAF/Qtl2/QtlPainterPath.cpp \
    ../NAF/Qtl2/QtlLineEdit.cpp \
    ../NAF/Qtl2/QtlStringList.cpp \
    ../NAF/Qtl2/QtlGroupBox.cpp \
    ../NAF/Qtl2/QtlStatusBar.cpp \
    ../NAF/Qtl2/QtlAction.cpp \
    ../NAF/Qtl2/QtlFileDialog.cpp \
    ../NAF/Qtl2/QtlRegion.cpp \
    ../NAF/Qtl2/QtlTabWidget.cpp \
    ../NAF/Qtl2/QtlUrl.cpp \
    ../NAF/Qtl2/QtlWidget.cpp \
    ../NAF/Qtl2/QtlFont.cpp \
    ../NAF/Qtl2/QtlColor.cpp \
    ../NAF/Qtl2/QtlDateTime.cpp \
    ../NAF/Qtl2/QtlDate.cpp \
    ../NAF/Qtl2/QtlTime.cpp \
    ../NAF/Qtl2/Variant.cpp \
	../NAF/LuaQt3/LuaPainter2.cpp \
	../NAF/LuaQt3/LuaPlot2.cpp \
	../NAF/LuaQt3/LuaBox2.cpp \
	../NAF/LuaQt3/LuaButton2.cpp \
	../NAF/LuaQt3/LuaMainWindow2.cpp \
	../NAF/LuaQt3/LuaCanvas2.cpp \
	../NAF/LuaQt3/LuaGui2.cpp \
	../NAF/LuaQt3/LuaFrame2.cpp \
	../NAF/LuaQt3/LuaListView2.cpp \
	../NAF/LuaQt3/LuaMyWidget2.cpp \
	../NAF/LuaQt3/LuaWidget2.cpp \
	../NAF/LuaQt3/LuaXml2.cpp \
	../NAF/LuaQt3/LuaDlg2.cpp \
    ../NAF/Script2/QtValue.cpp \
    ../NAF/Qtl2/QtlTreeView.cpp \
    ../NAF/Qtl2/QtlHeaderView.cpp \
    ../NAF/Script2/PtrBinding.cpp \
    ../NAF/Qtl2/QtlTreeWidgetItem.cpp \
    ../NAF/Qtl2/QtlTreeWidget.cpp \
    ../NAF/Script/DisAss.cpp \
    ../NAF/Script2/QtObjectImp.cpp \
    ../NAF/Script/StackView.cpp \
    ../NAF/Script/LocalsView.cpp \
    ../NAF/Script/ExpressionParser.cpp \
    PolyScope3.cpp \
    ../NAF/Qtl2/QtlFrame.cpp


#Resource file(s)
RESOURCES += ./Cara2.qrc
