<mxGraphModel dx="2416" dy="1186" grid="0" gridSize="10" guides="1" tooltips="1" connect="1" arrows="1" fold="1" page="1" pageScale="1" pageWidth="970" pageHeight="634" math="0" shadow="0">
  <root>
    <mxCell id="0" />
    <mxCell id="1" parent="0" />
    <mxCell id="pPorts" parent="1" style="shape=folder;html=1;whiteSpace=wrap;tabWidth=110;tabHeight=24;tabPosition=left;fontStyle=1;verticalAlign=top;align=left;spacingLeft=10;spacingTop=1;container=0;collapsible=0;fillColor=none;strokeColor=#1F5C99;dashed=0;connectable=0;allowArrows=0;dropTarget=0;expand=0;recursiveResize=0;editable=0;" value="core.ports" vertex="1">
      <mxGeometry height="520" width="628" x="-20" y="36" as="geometry" />
    </mxCell>
    <mxCell id="iLlm" parent="pPorts" style="swimlane;html=1;startSize=46;horizontal=1;fontSize=12;fontStyle=1;align=center;verticalAlign=middle;rounded=0;dashed=0;swimlaneFillColor=#ffffff;" value="&amp;lt;&amp;lt;porta&amp;gt;&amp;gt;&lt;br&gt;LLMClient" vertex="1">
      <mxGeometry height="88.07" width="546" x="16" y="43.52" as="geometry" />
    </mxCell>
    <mxCell id="iLlm_r0" parent="iLlm" style="text;html=1;align=left;verticalAlign=middle;spacingLeft=6;spacingRight=4;overflow=hidden;whiteSpace=wrap;fontSize=11;" value="+ stream(messages: Sequence[Message], max_tokens: int | None = None): AsyncIterator[str]   {abstract, async}" vertex="1">
      <mxGeometry height="40.408577878103834" width="568" y="47.66139954853273" as="geometry" />
    </mxCell>
    <mxCell id="eLlm" parent="pPorts" style="swimlane;html=1;startSize=46;horizontal=1;fontSize=12;fontStyle=1;align=center;verticalAlign=middle;rounded=0;dashed=0;swimlaneFillColor=#ffffff;" value="&amp;lt;&amp;lt;eccezione&amp;gt;&amp;gt;&lt;br&gt;LLMProviderError" vertex="1">
      <mxGeometry height="97.39503386004513" width="420" x="7" y="177.00478555304738" as="geometry" />
    </mxCell>
    <mxCell id="eLlm_r0" parent="eLlm" style="text;html=1;align=left;verticalAlign=middle;spacingLeft=6;spacingRight=4;overflow=hidden;whiteSpace=wrap;fontSize=11;" value="gateway irraggiungibile · tempo massimo scaduto" vertex="1">
      <mxGeometry height="24.866817155756205" width="420" y="47.66139954853273" as="geometry" />
    </mxCell>
    <mxCell id="eLlm_r1" parent="eLlm" style="text;html=1;align=left;verticalAlign=middle;spacingLeft=6;spacingRight=4;overflow=hidden;whiteSpace=wrap;fontSize=11;" value="risposta con stato di errore · risposta malformata" vertex="1">
      <mxGeometry height="24.866817155756205" width="420" y="72.52821670428894" as="geometry" />
    </mxCell>
    <mxCell id="iCe" parent="pPorts" style="swimlane;html=1;startSize=46;horizontal=1;fontSize=12;fontStyle=1;align=center;verticalAlign=middle;rounded=0;dashed=0;swimlaneFillColor=#ffffff;" value="&amp;lt;&amp;lt;porta&amp;gt;&amp;gt;&lt;br&gt;ContentExtractor" vertex="1">
      <mxGeometry height="72.53" width="426" x="60" y="283.32" as="geometry" />
    </mxCell>
    <mxCell id="iCe_r0" parent="iCe" style="text;html=1;align=left;verticalAlign=middle;spacingLeft=6;spacingRight=4;overflow=hidden;whiteSpace=wrap;fontSize=11;" value="+ extract(url: str): str   {abstract, async}" vertex="1">
      <mxGeometry height="24.866817155756205" width="568" y="47.66139954853273" as="geometry" />
    </mxCell>
    <mxCell id="eCe" parent="pPorts" style="swimlane;html=1;startSize=46;horizontal=1;fontSize=12;fontStyle=1;align=center;verticalAlign=middle;rounded=0;dashed=0;swimlaneFillColor=#ffffff;" value="&amp;lt;&amp;lt;eccezione&amp;gt;&amp;gt;&lt;br&gt;ContentExtractorError" vertex="1">
      <mxGeometry height="72.52821670428894" width="420" x="22" y="423.9951918735891" as="geometry" />
    </mxCell>
    <mxCell id="eCe_r0" parent="eCe" style="text;html=1;align=left;verticalAlign=middle;spacingLeft=6;spacingRight=4;overflow=hidden;whiteSpace=wrap;fontSize=11;" value="rete · permessi · pagina inesistente · pagina priva di testo" vertex="1">
      <mxGeometry height="24.866817155756205" width="420" y="47.66139954853273" as="geometry" />
    </mxCell>
    <mxCell id="e001" edge="1" parent="pPorts" source="iLlm" style="endArrow=open;endSize=12;dashed=1;strokeWidth=1.5;html=1;rounded=0;edgeStyle=orthogonalEdgeStyle;fontSize=10;labelBackgroundColor=#ffffff;exitX=0.25;exitY=1;exitDx=0;exitDy=0;entryX=0.35;entryY=0;entryDx=0;entryDy=0;" target="eLlm" value="«dichiara nel contratto»">
      <mxGeometry relative="1" as="geometry" />
    </mxCell>
    <mxCell id="e002" edge="1" parent="pPorts" source="iCe" style="endArrow=open;endSize=12;dashed=1;strokeWidth=1.5;html=1;rounded=0;edgeStyle=orthogonalEdgeStyle;fontSize=10;labelBackgroundColor=#ffffff;exitX=0.25;exitY=1;exitDx=0;exitDy=0;entryX=0.35;entryY=0;entryDx=0;entryDy=0;" target="eCe" value="«dichiara nel contratto»">
      <mxGeometry relative="1" as="geometry" />
    </mxCell>
    <mxCell id="refLite" parent="1" style="swimlane;html=1;startSize=46;horizontal=1;fontSize=12;fontStyle=1;align=center;verticalAlign=middle;rounded=0;dashed=1;swimlaneFillColor=#ffffff;" value="&amp;lt;&amp;lt;adattatore secondario&amp;gt;&amp;gt;&lt;br&gt;LiteLLMClient" vertex="1">
      <mxGeometry height="70" width="250" x="693" y="89.5" as="geometry" />
    </mxCell>
    <mxCell id="refLite_r0" parent="refLite" style="text;html=1;align=left;verticalAlign=middle;spacingLeft=6;spacingRight=4;overflow=hidden;whiteSpace=wrap;fontSize=11;" value="app.infrastructure.adapters" vertex="1">
      <mxGeometry height="24" width="250" y="46" as="geometry" />
    </mxCell>
    <mxCell id="refTav" parent="1" style="swimlane;html=1;startSize=46;horizontal=1;fontSize=12;fontStyle=1;align=center;verticalAlign=middle;rounded=0;dashed=1;swimlaneFillColor=#ffffff;" value="&amp;lt;&amp;lt;adattatore secondario&amp;gt;&amp;gt;&lt;br&gt;TavilyExtractor" vertex="1">
      <mxGeometry height="70" width="250" x="687" y="321.32" as="geometry" />
    </mxCell>
    <mxCell id="refTav_r0" parent="refTav" style="text;html=1;align=left;verticalAlign=middle;spacingLeft=6;spacingRight=4;overflow=hidden;whiteSpace=wrap;fontSize=11;" value="app.infrastructure.adapters" vertex="1">
      <mxGeometry height="24" width="250" y="46" as="geometry" />
    </mxCell>
    <mxCell id="refMsg" parent="1" style="swimlane;html=1;startSize=46;horizontal=1;fontSize=12;fontStyle=1;align=center;verticalAlign=middle;rounded=0;dashed=1;swimlaneFillColor=#ffffff;" value="&amp;lt;&amp;lt;value object&amp;gt;&amp;gt;&lt;br&gt;Message" vertex="1">
      <mxGeometry height="70" width="250" x="702" y="191" as="geometry" />
    </mxCell>
    <mxCell id="refMsg_r0" parent="refMsg" style="text;html=1;align=left;verticalAlign=middle;spacingLeft=6;spacingRight=4;overflow=hidden;whiteSpace=wrap;fontSize=11;" value="core.domain.values" vertex="1">
      <mxGeometry height="24" width="250" y="46" as="geometry" />
    </mxCell>
    <mxCell id="e003" edge="1" parent="1" source="refLite" style="endArrow=block;endFill=0;endSize=12;strokeWidth=1.5;html=1;rounded=0;edgeStyle=orthogonalEdgeStyle;fontSize=10;labelBackgroundColor=#ffffff;exitX=0;exitY=0.5;exitDx=0;exitDy=0;entryX=1;entryY=0.5;entryDx=0;entryDy=0;" target="iLlm" value="">
      <mxGeometry relative="1" as="geometry" />
    </mxCell>
    <mxCell id="e004" edge="1" parent="1" source="refTav" style="endArrow=block;endFill=0;endSize=12;strokeWidth=1.5;html=1;rounded=0;edgeStyle=orthogonalEdgeStyle;fontSize=10;labelBackgroundColor=#ffffff;exitX=0;exitY=0.5;exitDx=0;exitDy=0;entryX=1;entryY=0.5;entryDx=0;entryDy=0;" target="iCe" value="">
      <mxGeometry relative="1" as="geometry" />
    </mxCell>
    <mxCell id="e005" edge="1" parent="1" source="iLlm" style="endArrow=open;endSize=12;dashed=1;strokeWidth=1.5;html=1;rounded=0;edgeStyle=orthogonalEdgeStyle;fontSize=10;labelBackgroundColor=#ffffff;exitX=1;exitY=0.85;exitDx=0;exitDy=0;entryX=0;entryY=0.5;entryDx=0;entryDy=0;" target="refMsg" value="«usa»">
      <mxGeometry relative="1" as="geometry">
        <Array as="points">
          <mxPoint x="643" y="154" />
          <mxPoint x="643" y="225" />
        </Array>
      </mxGeometry>
    </mxCell>
  </root>
</mxGraphModel>
