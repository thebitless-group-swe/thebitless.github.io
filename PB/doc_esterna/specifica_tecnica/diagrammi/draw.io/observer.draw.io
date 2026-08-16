<mxGraphModel dx="1855" dy="913" grid="1" gridSize="10" guides="1" tooltips="1" connect="1" arrows="1" fold="1" page="1" pageScale="1" pageWidth="827" pageHeight="1169" math="0" shadow="0">
  <root>
    <mxCell id="0" />
    <mxCell id="1" parent="0" />
    <mxCell id="storeApi" parent="1" style="swimlane;childLayout=stackLayout;horizontal=1;startSize=54;horizontalStack=0;resizeParent=1;resizeParentMax=0;html=1;verticalAlign=middle;align=center;whiteSpace=wrap;collapsible=0;strokeColor=#4D4D4D;fillColor=#EFEFEF;fontSize=12;" value="«interface»&lt;br&gt;&lt;b&gt;StoreApi&amp;lt;T&amp;gt;&lt;/b&gt;&lt;br&gt;&lt;i&gt;zustand&lt;/i&gt;" vertex="1">
      <mxGeometry height="132" width="340" x="630" y="20" as="geometry" />
    </mxCell>
    <mxCell id="storeApi_r1" parent="storeApi" style="text;strokeColor=none;fillColor=none;align=left;verticalAlign=middle;spacingLeft=6;spacingRight=6;overflow=hidden;rotatable=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;html=1;fontSize=11;" value="+ subscribe(listener) : Unsubscribe" vertex="1">
      <mxGeometry height="26" width="340" y="54" as="geometry" />
    </mxCell>
    <mxCell id="storeApi_r2" parent="storeApi" style="text;strokeColor=none;fillColor=none;align=left;verticalAlign=middle;spacingLeft=6;spacingRight=6;overflow=hidden;rotatable=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;html=1;fontSize=11;" value="+ getState() : T" vertex="1">
      <mxGeometry height="26" width="340" y="80" as="geometry" />
    </mxCell>
    <mxCell id="storeApi_r3" parent="storeApi" style="text;strokeColor=none;fillColor=none;align=left;verticalAlign=middle;spacingLeft=6;spacingRight=6;overflow=hidden;rotatable=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;html=1;fontSize=11;" value="+ setState(partial) : void" vertex="1">
      <mxGeometry height="26" width="340" y="106" as="geometry" />
    </mxCell>
    <mxCell id="editorStore" parent="1" style="swimlane;childLayout=stackLayout;horizontal=1;startSize=54;horizontalStack=0;resizeParent=1;resizeParentMax=0;html=1;verticalAlign=middle;align=center;whiteSpace=wrap;collapsible=0;strokeColor=#8C4A00;fillColor=#FFE6CC;fontSize=12;" value="&lt;font face=&quot;Helvetica&quot;&gt;«ConcreteSubject»&lt;br&gt;&lt;b&gt;useEditorStore&lt;/b&gt;&lt;br&gt;&lt;i&gt;web/src/store/useEditorStore.ts&lt;/i&gt;&lt;/font&gt;" vertex="1">
      <mxGeometry height="348" width="420" x="380" y="210" as="geometry" />
    </mxCell>
    <mxCell id="es_a1" parent="editorStore" style="text;strokeColor=none;fillColor=none;align=left;verticalAlign=middle;spacingLeft=6;spacingRight=6;overflow=hidden;rotatable=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;html=1;fontSize=11;" value="- currentText : string" vertex="1">
      <mxGeometry height="26" width="420" y="54" as="geometry" />
    </mxCell>
    <mxCell id="es_a2" parent="editorStore" style="text;strokeColor=none;fillColor=none;align=left;verticalAlign=middle;spacingLeft=6;spacingRight=6;overflow=hidden;rotatable=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;html=1;fontSize=11;" value="- selectedText : string" vertex="1">
      <mxGeometry height="26" width="420" y="80" as="geometry" />
    </mxCell>
    <mxCell id="es_a3" parent="editorStore" style="text;strokeColor=none;fillColor=none;align=left;verticalAlign=middle;spacingLeft=6;spacingRight=6;overflow=hidden;rotatable=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;html=1;fontSize=11;" value="- streamedOutput : string" vertex="1">
      <mxGeometry height="26" width="420" y="106" as="geometry" />
    </mxCell>
    <mxCell id="es_a4" parent="editorStore" style="text;strokeColor=none;fillColor=none;align=left;verticalAlign=middle;spacingLeft=6;spacingRight=6;overflow=hidden;rotatable=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;html=1;fontSize=11;" value="- isGenerating : boolean" vertex="1">
      <mxGeometry height="26" width="420" y="132" as="geometry" />
    </mxCell>
    <mxCell id="es_a5" parent="editorStore" style="text;strokeColor=none;fillColor=none;align=left;verticalAlign=middle;spacingLeft=6;spacingRight=6;overflow=hidden;rotatable=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;html=1;fontSize=11;" value="- errorMessage : string | null" vertex="1">
      <mxGeometry height="26" width="420" y="158" as="geometry" />
    </mxCell>
    <mxCell id="es_a6" parent="editorStore" style="text;strokeColor=none;fillColor=none;align=left;verticalAlign=middle;spacingLeft=6;spacingRight=6;overflow=hidden;rotatable=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;html=1;fontSize=11;" value="- viewMode : ViewMode" vertex="1">
      <mxGeometry height="26" width="420" y="184" as="geometry" />
    </mxCell>
    <mxCell id="es_a7" parent="editorStore" style="text;strokeColor=none;fillColor=none;align=left;verticalAlign=middle;spacingLeft=6;spacingRight=6;overflow=hidden;rotatable=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;html=1;fontSize=11;" value="- aiModal : AiActionId | null" vertex="1">
      <mxGeometry height="26" width="420" y="210" as="geometry" />
    </mxCell>
    <mxCell id="es_div" parent="editorStore" style="line;strokeWidth=1;fillColor=none;align=left;verticalAlign=middle;spacingTop=-1;spacingLeft=3;spacingRight=3;rotatable=0;labelPosition=right;points=[];portConstraint=eastwest;html=1;" value="" vertex="1">
      <mxGeometry height="8" width="420" y="236" as="geometry" />
    </mxCell>
    <mxCell id="es_m1" parent="editorStore" style="text;strokeColor=none;fillColor=none;align=left;verticalAlign=middle;spacingLeft=6;spacingRight=6;overflow=hidden;rotatable=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;html=1;fontSize=11;" value="+ setCurrentText(text) / loadDocument(text)" vertex="1">
      <mxGeometry height="26" width="420" y="244" as="geometry" />
    </mxCell>
    <mxCell id="es_m2" parent="editorStore" style="text;strokeColor=none;fillColor=none;align=left;verticalAlign=middle;spacingLeft=6;spacingRight=6;overflow=hidden;rotatable=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;html=1;fontSize=11;" value="+ startStreaming() / appendChunk(c) / finishStreaming()" vertex="1">
      <mxGeometry height="26" width="420" y="270" as="geometry" />
    </mxCell>
    <mxCell id="es_m3" parent="editorStore" style="text;strokeColor=none;fillColor=none;align=left;verticalAlign=middle;spacingLeft=6;spacingRight=6;overflow=hidden;rotatable=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;html=1;fontSize=11;" value="+ setError(msg) / clearError() / setSelectedText(t)" vertex="1">
      <mxGeometry height="26" width="420" y="296" as="geometry" />
    </mxCell>
    <mxCell id="es_m4" parent="editorStore" style="text;strokeColor=none;fillColor=none;align=left;verticalAlign=middle;spacingLeft=6;spacingRight=6;overflow=hidden;rotatable=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;html=1;fontSize=11;" value="+ setViewMode(m) / setAiModal(m) / insertOutputIntoNote()" vertex="1">
      <mxGeometry height="26" width="420" y="322" as="geometry" />
    </mxCell>
    <mxCell id="notesStore" parent="1" style="swimlane;childLayout=stackLayout;horizontal=1;startSize=54;horizontalStack=0;resizeParent=1;resizeParentMax=0;html=1;verticalAlign=middle;align=center;whiteSpace=wrap;collapsible=0;strokeColor=#8C4A00;fillColor=#FFE6CC;fontSize=12;" value="«ConcreteSubject»&lt;br&gt;&lt;b&gt;useNotesStore&lt;/b&gt;&lt;br&gt;&lt;i&gt;web/src/store/notes.ts&lt;/i&gt; — middleware &lt;code&gt;persist&lt;/code&gt;" vertex="1">
      <mxGeometry height="244" width="355" x="1180" y="210" as="geometry" />
    </mxCell>
    <mxCell id="ns_a1" parent="notesStore" style="text;strokeColor=none;fillColor=none;align=left;verticalAlign=middle;spacingLeft=6;spacingRight=6;overflow=hidden;rotatable=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;html=1;fontSize=11;" value="- list : Note[]" vertex="1">
      <mxGeometry height="26" width="355" y="54" as="geometry" />
    </mxCell>
    <mxCell id="ns_a2" parent="notesStore" style="text;strokeColor=none;fillColor=none;align=left;verticalAlign=middle;spacingLeft=6;spacingRight=6;overflow=hidden;rotatable=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;html=1;fontSize=11;" value="- currentId : string | null" vertex="1">
      <mxGeometry height="26" width="355" y="80" as="geometry" />
    </mxCell>
    <mxCell id="ns_div" parent="notesStore" style="line;strokeWidth=1;fillColor=none;align=left;verticalAlign=middle;spacingTop=-1;spacingLeft=3;spacingRight=3;rotatable=0;labelPosition=right;points=[];portConstraint=eastwest;html=1;" value="" vertex="1">
      <mxGeometry height="8" width="355" y="106" as="geometry" />
    </mxCell>
    <mxCell id="ns_m1" parent="notesStore" style="text;strokeColor=none;fillColor=none;align=left;verticalAlign=middle;spacingLeft=6;spacingRight=6;overflow=hidden;rotatable=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;html=1;fontSize=11;" value="+ createEmpty(title?) : Note" vertex="1">
      <mxGeometry height="26" width="355" y="114" as="geometry" />
    </mxCell>
    <mxCell id="ns_m2" parent="notesStore" style="text;strokeColor=none;fillColor=none;align=left;verticalAlign=middle;spacingLeft=6;spacingRight=6;overflow=hidden;rotatable=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;html=1;fontSize=11;" value="+ select(id) : void" vertex="1">
      <mxGeometry height="26" width="355" y="140" as="geometry" />
    </mxCell>
    <mxCell id="ns_m3" parent="notesStore" style="text;strokeColor=none;fillColor=none;align=left;verticalAlign=middle;spacingLeft=6;spacingRight=6;overflow=hidden;rotatable=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;html=1;fontSize=11;" value="+ updateCurrent(patch) : void" vertex="1">
      <mxGeometry height="26" width="355" y="166" as="geometry" />
    </mxCell>
    <mxCell id="ns_m4" parent="notesStore" style="text;strokeColor=none;fillColor=none;align=left;verticalAlign=middle;spacingLeft=6;spacingRight=6;overflow=hidden;rotatable=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;html=1;fontSize=11;" value="+ deleteNote(id) : void" vertex="1">
      <mxGeometry height="26" width="355" y="192" as="geometry" />
    </mxCell>
    <mxCell id="ns_m5" parent="notesStore" style="text;strokeColor=none;fillColor=none;align=left;verticalAlign=middle;spacingLeft=6;spacingRight=6;overflow=hidden;rotatable=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;html=1;fontSize=11;" value="+ loadNote(note) : void" vertex="1">
      <mxGeometry height="26" width="355" y="218" as="geometry" />
    </mxCell>
    <mxCell id="aiStream" parent="1" style="swimlane;childLayout=stackLayout;horizontal=1;startSize=54;horizontalStack=0;resizeParent=1;resizeParentMax=0;html=1;verticalAlign=middle;align=center;whiteSpace=wrap;collapsible=0;strokeColor=#6C3483;fillColor=#EDE0F5;fontSize=12;" value="«notificatore»&lt;br&gt;&lt;b&gt;useAiStream&lt;/b&gt;&lt;br&gt;&lt;i&gt;web/src/hooks/useAiStream.ts&lt;/i&gt;" vertex="1">
      <mxGeometry height="106" width="280" x="890" y="240" as="geometry" />
    </mxCell>
    <mxCell id="ai_m1" parent="aiStream" style="text;strokeColor=none;fillColor=none;align=left;verticalAlign=middle;spacingLeft=6;spacingRight=6;overflow=hidden;rotatable=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;html=1;fontSize=11;" value="+ start(fn) : Promise" vertex="1">
      <mxGeometry height="26" width="280" y="54" as="geometry" />
    </mxCell>
    <mxCell id="ai_m2" parent="aiStream" style="text;strokeColor=none;fillColor=none;align=left;verticalAlign=middle;spacingLeft=6;spacingRight=6;overflow=hidden;rotatable=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;html=1;fontSize=11;" value="+ abort() : void" vertex="1">
      <mxGeometry height="26" width="280" y="80" as="geometry" />
    </mxCell>
    <mxCell id="selCurrentText" parent="1" style="rounded=1;whiteSpace=wrap;html=1;fillColor=#D5E8D4;strokeColor=#2E7D32;align=center;verticalAlign=middle;fontSize=11;" value="«selector»&lt;br&gt;&lt;b&gt;useCurrentText()&lt;/b&gt;&lt;br&gt;s ⟶ s.currentText" vertex="1">
      <mxGeometry height="60" width="140" x="30" y="620" as="geometry" />
    </mxCell>
    <mxCell id="selViewMode" parent="1" style="rounded=1;whiteSpace=wrap;html=1;fillColor=#D5E8D4;strokeColor=#2E7D32;align=center;verticalAlign=middle;fontSize=11;" value="«selector»&lt;br&gt;&lt;b&gt;useViewMode()&lt;/b&gt;&lt;br&gt;s ⟶ s.viewMode" vertex="1">
      <mxGeometry height="60" width="140" x="200" y="620" as="geometry" />
    </mxCell>
    <mxCell id="selAiModal" parent="1" style="rounded=1;whiteSpace=wrap;html=1;fillColor=#D5E8D4;strokeColor=#2E7D32;align=center;verticalAlign=middle;fontSize=11;" value="«selector»&lt;br&gt;&lt;b&gt;useAiModal()&lt;/b&gt;&lt;br&gt;s ⟶ s.aiModal" vertex="1">
      <mxGeometry height="60" width="140" x="390" y="620" as="geometry" />
    </mxCell>
    <mxCell id="selStreamed" parent="1" style="rounded=1;whiteSpace=wrap;html=1;fillColor=#D5E8D4;strokeColor=#2E7D32;align=center;verticalAlign=middle;fontSize=11;" value="«selector»&lt;br&gt;&lt;b&gt;useStreamedOutput()&lt;/b&gt;&lt;br&gt;s ⟶ s.streamedOutput" vertex="1">
      <mxGeometry height="60" width="140" x="545" y="620" as="geometry" />
    </mxCell>
    <mxCell id="selGenerating" parent="1" style="rounded=1;whiteSpace=wrap;html=1;fillColor=#D5E8D4;strokeColor=#2E7D32;align=center;verticalAlign=middle;fontSize=11;" value="«selector»&lt;br&gt;&lt;b&gt;useIsGenerating()&lt;/b&gt;&lt;br&gt;s ⟶ s.isGenerating" vertex="1">
      <mxGeometry height="60" width="140" x="700" y="620" as="geometry" />
    </mxCell>
    <mxCell id="selError" parent="1" style="rounded=1;whiteSpace=wrap;html=1;fillColor=#D5E8D4;strokeColor=#2E7D32;align=center;verticalAlign=middle;fontSize=11;" value="«selector»&lt;br&gt;&lt;b&gt;useErrorMessage()&lt;/b&gt;&lt;br&gt;s ⟶ s.errorMessage" vertex="1">
      <mxGeometry height="60" width="140" x="855" y="620" as="geometry" />
    </mxCell>
    <mxCell id="selNotesList" parent="1" style="rounded=1;whiteSpace=wrap;html=1;fillColor=#D5E8D4;strokeColor=#2E7D32;align=center;verticalAlign=middle;fontSize=11;" value="«selector»&lt;br&gt;&lt;b&gt;useNotesList()&lt;/b&gt;&lt;br&gt;s ⟶ s.list" vertex="1">
      <mxGeometry height="60" width="140" x="1190" y="620" as="geometry" />
    </mxCell>
    <mxCell id="selCurrentNote" parent="1" style="rounded=1;whiteSpace=wrap;html=1;fillColor=#D5E8D4;strokeColor=#2E7D32;align=center;verticalAlign=middle;fontSize=10;" value="«selector»&lt;br&gt;&lt;b&gt;useCurrentNote()&lt;/b&gt;&lt;br&gt;s ⟶ s.list.find(n ⟶ n.id === s.currentId)" vertex="1">
      <mxGeometry height="60" width="190" x="1345" y="620" as="geometry" />
    </mxCell>
    <mxCell id="cEditor" parent="1" style="rounded=0;whiteSpace=wrap;html=1;fillColor=#DAE8FC;strokeColor=#1B5E9E;align=center;verticalAlign=middle;fontSize=11;" value="«Observer»&lt;br&gt;&lt;b&gt;Editor&lt;/b&gt;&lt;br&gt;&lt;i&gt;components/Editor.tsx&lt;/i&gt;" vertex="1">
      <mxGeometry height="80" width="150" x="20" y="840" as="geometry" />
    </mxCell>
    <mxCell id="cPreview" parent="1" style="rounded=0;whiteSpace=wrap;html=1;fillColor=#DAE8FC;strokeColor=#1B5E9E;align=center;verticalAlign=middle;fontSize=11;" value="«Observer»&lt;br&gt;&lt;b&gt;Preview&lt;/b&gt;&lt;br&gt;&lt;i&gt;components/Preview.tsx&lt;/i&gt;" vertex="1">
      <mxGeometry height="80" width="150" x="190" y="840" as="geometry" />
    </mxCell>
    <mxCell id="cApp" parent="1" style="rounded=0;whiteSpace=wrap;html=1;fillColor=#DAE8FC;strokeColor=#1B5E9E;align=center;verticalAlign=middle;fontSize=11;" value="«Observer»&lt;br&gt;&lt;b&gt;App&lt;/b&gt;&lt;br&gt;&lt;i&gt;App.tsx&lt;/i&gt;" vertex="1">
      <mxGeometry height="80" width="140" x="380" y="840" as="geometry" />
    </mxCell>
    <mxCell id="cViewToggle" parent="1" style="rounded=0;whiteSpace=wrap;html=1;fillColor=#DAE8FC;strokeColor=#1B5E9E;align=center;verticalAlign=middle;fontSize=11;" value="«Observer»&lt;br&gt;&lt;b&gt;ViewToggle&lt;/b&gt;&lt;br&gt;&lt;i&gt;components/ViewToggle.tsx&lt;/i&gt;" vertex="1">
      <mxGeometry height="80" width="140" x="560" y="840" as="geometry" />
    </mxCell>
    <mxCell id="cDialog" parent="1" style="rounded=0;whiteSpace=wrap;html=1;fillColor=#DAE8FC;strokeColor=#1B5E9E;align=center;verticalAlign=middle;fontSize=11;" value="«Observer»&lt;br&gt;&lt;b&gt;AiActionDialog&lt;/b&gt;&lt;br&gt;&lt;i&gt;components/AiActionDialog.tsx&lt;/i&gt;" vertex="1">
      <mxGeometry height="80" width="320" x="730" y="840" as="geometry" />
    </mxCell>
    <mxCell id="cSidebar" parent="1" style="rounded=0;whiteSpace=wrap;html=1;fillColor=#DAE8FC;strokeColor=#1B5E9E;align=center;verticalAlign=middle;fontSize=11;" value="«Observer»&lt;br&gt;&lt;b&gt;Sidebar&lt;/b&gt;&lt;br&gt;&lt;i&gt;components/Sidebar.tsx&lt;/i&gt;" vertex="1">
      <mxGeometry height="80" width="355" x="1180" y="840" as="geometry" />
    </mxCell>
    <mxCell id="e1" edge="1" parent="1" source="editorStore" style="endArrow=block;endFill=0;dashed=1;html=1;edgeStyle=orthogonalEdgeStyle;rounded=0;exitX=0.75;exitY=0;exitDx=0;exitDy=0;entryX=0.25;entryY=1;entryDx=0;entryDy=0;startSize=7;endSize=11;" target="storeApi">
      <mxGeometry relative="1" as="geometry">
        <Array as="points">
          <mxPoint x="715" y="210.09" />
        </Array>
      </mxGeometry>
    </mxCell>
    <mxCell id="e2" edge="1" parent="1" source="notesStore" style="endArrow=block;endFill=0;dashed=1;html=1;edgeStyle=orthogonalEdgeStyle;rounded=0;exitX=0.25;exitY=0;exitDx=0;exitDy=0;entryX=0.75;entryY=1;entryDx=0;entryDy=0;startSize=7;endSize=11;" target="storeApi">
      <mxGeometry relative="1" as="geometry">
        <Array as="points">
          <mxPoint x="1268.82" y="190.09" />
          <mxPoint x="885" y="190.09" />
        </Array>
      </mxGeometry>
    </mxCell>
    <mxCell id="e3" edge="1" parent="1" source="selCurrentText" style="endArrow=open;endSize=12;dashed=1;html=1;edgeStyle=orthogonalEdgeStyle;rounded=0;exitX=0.5;exitY=0;exitDx=0;exitDy=0;entryX=0;entryY=0.55;entryDx=0;entryDy=0;fontSize=10;" target="editorStore" value="«use»">
      <mxGeometry relative="1" as="geometry" />
    </mxCell>
    <mxCell id="e4" edge="1" parent="1" source="selViewMode" style="endArrow=open;endSize=12;dashed=1;html=1;edgeStyle=orthogonalEdgeStyle;rounded=0;exitX=0.5;exitY=0;exitDx=0;exitDy=0;entryX=0.15;entryY=1;entryDx=0;entryDy=0;fontSize=10;" target="editorStore" value="«use»">
      <mxGeometry relative="1" as="geometry" />
    </mxCell>
    <mxCell id="e5" edge="1" parent="1" source="selAiModal" style="endArrow=open;endSize=12;dashed=1;html=1;edgeStyle=orthogonalEdgeStyle;rounded=0;exitX=0.5;exitY=0;exitDx=0;exitDy=0;entryX=0.35;entryY=1;entryDx=0;entryDy=0;fontSize=10;" target="editorStore" value="«use»">
      <mxGeometry relative="1" as="geometry" />
    </mxCell>
    <mxCell id="e6" edge="1" parent="1" source="selStreamed" style="endArrow=open;endSize=12;dashed=1;html=1;edgeStyle=orthogonalEdgeStyle;rounded=0;exitX=0.5;exitY=0;exitDx=0;exitDy=0;entryX=0.6;entryY=1;entryDx=0;entryDy=0;fontSize=10;" target="editorStore" value="«use»">
      <mxGeometry relative="1" as="geometry" />
    </mxCell>
    <mxCell id="e7" edge="1" parent="1" source="selGenerating" style="endArrow=open;endSize=12;dashed=1;html=1;edgeStyle=orthogonalEdgeStyle;rounded=0;exitX=0.5;exitY=0;exitDx=0;exitDy=0;entryX=0.85;entryY=1;entryDx=0;entryDy=0;fontSize=10;" target="editorStore" value="«use»">
      <mxGeometry relative="1" as="geometry" />
    </mxCell>
    <mxCell id="e8" edge="1" parent="1" source="selError" style="endArrow=open;endSize=12;dashed=1;html=1;edgeStyle=orthogonalEdgeStyle;rounded=0;exitX=0.5;exitY=0;exitDx=0;exitDy=0;entryX=1;entryY=0.9;entryDx=0;entryDy=0;fontSize=10;" target="editorStore" value="«use»">
      <mxGeometry relative="1" as="geometry" />
    </mxCell>
    <mxCell id="e9" edge="1" parent="1" source="selNotesList" style="endArrow=open;endSize=12;dashed=1;html=1;edgeStyle=orthogonalEdgeStyle;rounded=0;exitX=0.5;exitY=0;exitDx=0;exitDy=0;entryX=0.25;entryY=1;entryDx=0;entryDy=0;fontSize=10;" target="notesStore" value="«use»">
      <mxGeometry relative="1" as="geometry" />
    </mxCell>
    <mxCell id="e10" edge="1" parent="1" source="selCurrentNote" style="endArrow=open;endSize=12;dashed=1;html=1;edgeStyle=orthogonalEdgeStyle;rounded=0;exitX=0.5;exitY=0;exitDx=0;exitDy=0;entryX=0.75;entryY=1;entryDx=0;entryDy=0;fontSize=10;" target="notesStore" value="«use»">
      <mxGeometry relative="1" as="geometry" />
    </mxCell>
    <mxCell id="e11" edge="1" parent="1" source="cEditor" style="endArrow=open;endSize=12;dashed=1;html=1;edgeStyle=orthogonalEdgeStyle;rounded=0;exitX=0.407;exitY=0.014;exitDx=0;exitDy=0;entryX=0.35;entryY=1;entryDx=0;entryDy=0;fontSize=10;exitPerimeter=0;" target="selCurrentText" value="«subscribe»">
      <mxGeometry relative="1" x="0.2045" y="19" as="geometry">
        <mxPoint as="offset" />
        <Array as="points">
          <mxPoint x="81.08" y="840" />
          <mxPoint x="80" y="840" />
          <mxPoint x="80" y="760" />
          <mxPoint x="79" y="760" />
        </Array>
      </mxGeometry>
    </mxCell>
    <mxCell id="e12" edge="1" parent="1" source="cPreview" style="endArrow=open;endSize=12;dashed=1;html=1;edgeStyle=orthogonalEdgeStyle;rounded=0;exitX=0.5;exitY=0;exitDx=0;exitDy=0;entryX=0.75;entryY=1;entryDx=0;entryDy=0;fontSize=10;" target="selCurrentText" value="«subscribe»">
      <mxGeometry relative="1" x="0.0294" y="-10" as="geometry">
        <mxPoint as="offset" />
        <Array as="points">
          <mxPoint x="290" y="840" />
          <mxPoint x="290" y="760" />
          <mxPoint x="135" y="760" />
        </Array>
      </mxGeometry>
    </mxCell>
    <mxCell id="e13" edge="1" parent="1" source="cApp" style="endArrow=open;endSize=12;dashed=1;html=1;edgeStyle=orthogonalEdgeStyle;rounded=0;exitX=0.5;exitY=0;exitDx=0;exitDy=0;entryX=0.65;entryY=1;entryDx=0;entryDy=0;fontSize=10;" target="selViewMode" value="«subscribe»">
      <mxGeometry relative="1" x="0.0658" y="-10" as="geometry">
        <mxPoint as="offset" />
      </mxGeometry>
    </mxCell>
    <mxCell id="e15" edge="1" parent="1" style="endArrow=open;endSize=12;dashed=1;html=1;edgeStyle=orthogonalEdgeStyle;rounded=0;entryX=0.439;entryY=0.976;entryDx=0;entryDy=0;fontSize=10;entryPerimeter=0;" value="«subscribe»">
      <mxGeometry relative="1" x="0.0279" y="-10" as="geometry">
        <mxPoint as="offset" />
        <Array as="points">
          <mxPoint x="450" y="760" />
          <mxPoint x="450" y="680" />
          <mxPoint x="448.53" y="680" />
        </Array>
        <mxPoint x="620" y="760" as="sourcePoint" />
        <mxPoint x="448.46000000000004" y="678.5600000000001" as="targetPoint" />
      </mxGeometry>
    </mxCell>
    <mxCell id="e16" edge="1" parent="1" style="endArrow=open;endSize=12;dashed=1;html=1;edgeStyle=orthogonalEdgeStyle;rounded=0;exitX=0.3;exitY=0;exitDx=0;exitDy=0;entryX=0.5;entryY=1;entryDx=0;entryDy=0;fontSize=10;" value="«subscribe»">
      <mxGeometry relative="1" x="0.0566" y="-10" as="geometry">
        <mxPoint as="offset" />
        <Array as="points">
          <mxPoint x="770.02" y="840.02" />
          <mxPoint x="770.02" y="760.02" />
          <mxPoint x="616.02" y="760.02" />
        </Array>
        <mxPoint x="827" y="840" as="sourcePoint" />
        <mxPoint x="616" y="680" as="targetPoint" />
      </mxGeometry>
    </mxCell>
    <mxCell id="e17" edge="1" parent="1" source="cDialog" style="endArrow=open;endSize=12;dashed=1;html=1;edgeStyle=orthogonalEdgeStyle;rounded=0;exitX=0.6;exitY=0;exitDx=0;exitDy=0;entryX=0.5;entryY=1;entryDx=0;entryDy=0;fontSize=10;" target="selGenerating" value="«subscribe»">
      <mxGeometry relative="1" x="-0.0256" y="-10" as="geometry">
        <mxPoint as="offset" />
      </mxGeometry>
    </mxCell>
    <mxCell id="e18" edge="1" parent="1" source="cDialog" style="endArrow=open;endSize=12;dashed=1;html=1;edgeStyle=orthogonalEdgeStyle;rounded=0;exitX=0.9;exitY=0;exitDx=0;exitDy=0;entryX=0.5;entryY=1;entryDx=0;entryDy=0;fontSize=10;" target="selError" value="«subscribe»">
      <mxGeometry relative="1" x="0.012" y="-10" as="geometry">
        <mxPoint as="offset" />
        <Array as="points">
          <mxPoint x="1000" y="840" />
          <mxPoint x="1000" y="760" />
          <mxPoint x="925" y="760" />
        </Array>
      </mxGeometry>
    </mxCell>
    <mxCell id="e19" edge="1" parent="1" source="cSidebar" style="endArrow=open;endSize=12;dashed=1;html=1;edgeStyle=orthogonalEdgeStyle;rounded=0;exitX=0.2;exitY=0;exitDx=0;exitDy=0;entryX=0.5;entryY=1;entryDx=0;entryDy=0;fontSize=10;" target="selNotesList" value="«subscribe»">
      <mxGeometry relative="1" as="geometry" />
    </mxCell>
    <mxCell id="e20" edge="1" parent="1" source="cSidebar" style="endArrow=open;endSize=12;dashed=1;html=1;edgeStyle=orthogonalEdgeStyle;rounded=0;exitX=0.7;exitY=0;exitDx=0;exitDy=0;entryX=0.5;entryY=1;entryDx=0;entryDy=0;fontSize=10;" target="selCurrentNote" value="«subscribe»">
      <mxGeometry relative="1" as="geometry" />
    </mxCell>
    <mxCell id="e21" edge="1" parent="1" source="cEditor" style="endArrow=open;endSize=12;dashed=1;html=1;edgeStyle=orthogonalEdgeStyle;rounded=0;strokeColor=#B85450;fontColor=#B85450;exitX=1;exitY=0.5;exitDx=0;exitDy=0;entryX=0;entryY=0.83;entryDx=0;entryDy=0;fontSize=10;verticalAlign=bottom;" target="editorStore" value="setCurrentText() / setSelectedText()&lt;br&gt;&lt;i&gt;via getState() — non reattivo&lt;/i&gt;">
      <mxGeometry relative="1" x="0.0148" y="-20" as="geometry">
        <mxPoint as="offset" />
        <Array as="points">
          <mxPoint x="180" y="880" />
          <mxPoint x="180" y="499" />
        </Array>
      </mxGeometry>
    </mxCell>
    <mxCell id="e22" edge="1" parent="1" source="cSidebar" style="endArrow=open;endSize=12;dashed=1;html=1;edgeStyle=orthogonalEdgeStyle;rounded=0;strokeColor=#B85450;fontColor=#B85450;exitX=1;exitY=0.5;exitDx=0;exitDy=0;entryX=1;entryY=0.7;entryDx=0;entryDy=0;fontSize=10;" target="notesStore" value="createEmpty() / select() / deleteNote()&lt;br&gt;&lt;i&gt;via getState() — non reattivo&lt;/i&gt;">
      <mxGeometry relative="1" x="0.0998" as="geometry">
        <mxPoint as="offset" />
        <Array as="points">
          <mxPoint x="1590" y="880" />
          <mxPoint x="1590" y="381" />
        </Array>
      </mxGeometry>
    </mxCell>
    <mxCell id="e23" edge="1" parent="1" source="aiStream" style="endArrow=open;endSize=12;dashed=1;html=1;edgeStyle=orthogonalEdgeStyle;rounded=0;strokeColor=#B85450;fontColor=#B85450;exitX=0;exitY=0.5;exitDx=0;exitDy=0;entryX=1;entryY=0.24;entryDx=0;entryDy=0;fontSize=10;verticalAlign=bottom;" target="editorStore" value="startStreaming() / appendChunk() / finishStreaming() / setError()">
      <mxGeometry relative="1" x="1" y="70" as="geometry">
        <mxPoint x="-60" y="-34" as="offset" />
      </mxGeometry>
    </mxCell>
    <mxCell id="e24" edge="1" parent="1" style="endArrow=open;endSize=12;dashed=1;html=1;edgeStyle=orthogonalEdgeStyle;rounded=0;exitX=0.85;exitY=0;exitDx=0;exitDy=0;fontSize=10;" target="ai_m2" value="«use»">
      <mxGeometry relative="1" as="geometry">
        <Array as="points">
          <mxPoint x="1020" y="840" />
        </Array>
        <mxPoint x="1030" y="840" as="sourcePoint" />
        <mxPoint x="1020" y="370" as="targetPoint" />
      </mxGeometry>
    </mxCell>
    <mxCell id="e25" edge="1" parent="1" source="notesStore" style="endArrow=open;endSize=12;dashed=1;html=1;edgeStyle=orthogonalEdgeStyle;rounded=0;strokeColor=#B85450;fontColor=#B85450;exitX=0;exitY=0.9;exitDx=0;exitDy=0;entryX=1;entryY=0.63;entryDx=0;entryDy=0;fontSize=10;verticalAlign=bottom;" target="editorStore" value="loadDocument(note.content)">
      <mxGeometry relative="1" as="geometry" />
    </mxCell>
  </root>
</mxGraphModel>
