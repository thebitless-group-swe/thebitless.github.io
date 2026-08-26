<mxGraphModel dx="2444" dy="1186" grid="0" gridSize="10" guides="1" tooltips="1" connect="1" arrows="1" fold="1" page="1" pageScale="1" pageWidth="990" pageHeight="953" math="0" shadow="0">
  <root>
    <mxCell id="0" />
    <mxCell id="1" parent="0" />
    <mxCell id="pSrv" parent="1" style="shape=folder;html=1;whiteSpace=wrap;tabWidth=120;tabHeight=24;tabPosition=left;fontStyle=1;verticalAlign=top;align=left;spacingLeft=10;spacingTop=1;container=1;collapsible=0;dashed=0;recursiveResize=0;" value="core.services" vertex="1">
      <mxGeometry height="904" width="506" x="252" y="82" as="geometry" />
    </mxCell>
    <mxCell id="uSum" parent="pSrv" style="swimlane;html=1;startSize=46;horizontal=1;fontSize=12;fontStyle=1;align=center;verticalAlign=middle;rounded=0;dashed=0;swimlaneFillColor=#ffffff;" value="&amp;lt;&amp;lt;caso d&amp;#x27;uso&amp;gt;&amp;gt;&lt;br&gt;summarize" vertex="1">
      <mxGeometry height="85" width="414" x="16" y="42" as="geometry" />
    </mxCell>
    <mxCell id="uSum_r0" parent="uSum" style="text;html=1;align=left;verticalAlign=middle;spacingLeft=6;spacingRight=4;overflow=hidden;whiteSpace=wrap;fontSize=11;" value="summarize(text: str, length: Length, llm: LLMClient): AsyncIterator[str]" vertex="1">
      <mxGeometry height="39" width="414" y="46" as="geometry" />
    </mxCell>
    <mxCell id="uGen" parent="pSrv" style="swimlane;html=1;startSize=46;horizontal=1;fontSize=12;fontStyle=1;align=center;verticalAlign=middle;rounded=0;dashed=0;swimlaneFillColor=#ffffff;" value="&amp;lt;&amp;lt;caso d&amp;#x27;uso&amp;gt;&amp;gt;&lt;br&gt;generate" vertex="1">
      <mxGeometry height="85" width="414" x="16" y="139" as="geometry" />
    </mxCell>
    <mxCell id="uGen_r0" parent="uGen" style="text;html=1;align=left;verticalAlign=middle;spacingLeft=6;spacingRight=4;overflow=hidden;whiteSpace=wrap;fontSize=11;" value="generate(prompt: str, length: Length, llm: LLMClient): AsyncIterator[str]" vertex="1">
      <mxGeometry height="39" width="414" y="46" as="geometry" />
    </mxCell>
    <mxCell id="uTra" parent="pSrv" style="swimlane;html=1;startSize=46;horizontal=1;fontSize=12;fontStyle=1;align=center;verticalAlign=middle;rounded=0;dashed=0;swimlaneFillColor=#ffffff;" value="&amp;lt;&amp;lt;caso d&amp;#x27;uso&amp;gt;&amp;gt;&lt;br&gt;translate" vertex="1">
      <mxGeometry height="85" width="414" x="16" y="236" as="geometry" />
    </mxCell>
    <mxCell id="uTra_r0" parent="uTra" style="text;html=1;align=left;verticalAlign=middle;spacingLeft=6;spacingRight=4;overflow=hidden;whiteSpace=wrap;fontSize=11;" value="translate(text: str, target_language: Language, llm: LLMClient): AsyncIterator[str]" vertex="1">
      <mxGeometry height="39" width="414" y="46" as="geometry" />
    </mxCell>
    <mxCell id="uRew" parent="pSrv" style="swimlane;html=1;startSize=46;horizontal=1;fontSize=12;fontStyle=1;align=center;verticalAlign=middle;rounded=0;dashed=0;swimlaneFillColor=#ffffff;" value="&amp;lt;&amp;lt;caso d&amp;#x27;uso&amp;gt;&amp;gt;&lt;br&gt;rewrite" vertex="1">
      <mxGeometry height="85" width="414" x="16" y="333" as="geometry" />
    </mxCell>
    <mxCell id="uRew_r0" parent="uRew" style="text;html=1;align=left;verticalAlign=middle;spacingLeft=6;spacingRight=4;overflow=hidden;whiteSpace=wrap;fontSize=11;" value="rewrite(text: str, style: Style, llm: LLMClient): AsyncIterator[str]" vertex="1">
      <mxGeometry height="39" width="414" y="46" as="geometry" />
    </mxCell>
    <mxCell id="uGra" parent="pSrv" style="swimlane;html=1;startSize=46;horizontal=1;fontSize=12;fontStyle=1;align=center;verticalAlign=middle;rounded=0;dashed=0;swimlaneFillColor=#ffffff;" value="&amp;lt;&amp;lt;caso d&amp;#x27;uso&amp;gt;&amp;gt;&lt;br&gt;grammar" vertex="1">
      <mxGeometry height="70" width="414" x="16" y="430" as="geometry" />
    </mxCell>
    <mxCell id="uGra_r0" parent="uGra" style="text;html=1;align=left;verticalAlign=middle;spacingLeft=6;spacingRight=4;overflow=hidden;whiteSpace=wrap;fontSize=11;" value="grammar(text: str, llm: LLMClient): AsyncIterator[str]" vertex="1">
      <mxGeometry height="24" width="414" y="46" as="geometry" />
    </mxCell>
    <mxCell id="uCri" parent="pSrv" style="swimlane;html=1;startSize=46;horizontal=1;fontSize=12;fontStyle=1;align=center;verticalAlign=middle;rounded=0;dashed=0;swimlaneFillColor=#ffffff;" value="&amp;lt;&amp;lt;caso d&amp;#x27;uso&amp;gt;&amp;gt;&lt;br&gt;critique" vertex="1">
      <mxGeometry height="70" width="414" x="16" y="512" as="geometry" />
    </mxCell>
    <mxCell id="uCri_r0" parent="uCri" style="text;html=1;align=left;verticalAlign=middle;spacingLeft=6;spacingRight=4;overflow=hidden;whiteSpace=wrap;fontSize=11;" value="critique(text: str, hat: Hat, llm: LLMClient): AsyncIterator[str]" vertex="1">
      <mxGeometry height="24" width="414" y="46" as="geometry" />
    </mxCell>
    <mxCell id="uLink" parent="pSrv" style="swimlane;html=1;startSize=46;horizontal=1;fontSize=12;fontStyle=1;align=center;verticalAlign=middle;rounded=0;dashed=0;swimlaneFillColor=#ffffff;" value="&amp;lt;&amp;lt;caso d&amp;#x27;uso&amp;gt;&amp;gt;&lt;br&gt;generate_from_link" vertex="1">
      <mxGeometry height="173" width="414" x="16" y="594" as="geometry" />
    </mxCell>
    <mxCell id="uLink_r0" parent="uLink" style="text;html=1;align=left;verticalAlign=middle;spacingLeft=6;spacingRight=4;overflow=hidden;whiteSpace=wrap;fontSize=11;" value="MAX_URL_LENGTH: int = 2_048" vertex="1">
      <mxGeometry height="24" width="414" y="46" as="geometry" />
    </mxCell>
    <mxCell id="uLink_r1" parent="uLink" style="line;html=1;strokeWidth=1;" value="" vertex="1">
      <mxGeometry height="1" width="414" y="70" as="geometry" />
    </mxCell>
    <mxCell id="uLink_r2" parent="uLink" style="text;html=1;align=left;verticalAlign=middle;spacingLeft=6;spacingRight=4;overflow=hidden;whiteSpace=wrap;fontSize=11;" value="validate_link(url: str): None" vertex="1">
      <mxGeometry height="24" width="414" y="71" as="geometry" />
    </mxCell>
    <mxCell id="uLink_r3" parent="uLink" style="text;html=1;align=left;verticalAlign=middle;spacingLeft=6;spacingRight=4;overflow=hidden;whiteSpace=wrap;fontSize=11;" value="fetch_and_extract(url: str, extractor: ContentExtractor): str  {async}" vertex="1">
      <mxGeometry height="39" width="414" y="95" as="geometry" />
    </mxCell>
    <mxCell id="uLink_r4" parent="uLink" style="text;html=1;align=left;verticalAlign=middle;spacingLeft=6;spacingRight=4;overflow=hidden;whiteSpace=wrap;fontSize=11;" value="generate_from_link(url: str, length: Length, extractor: ContentExtractor, llm: LLMClient): AsyncIterator[str]  {async}" vertex="1">
      <mxGeometry height="39" width="414" y="134" as="geometry" />
    </mxCell>
    <mxCell id="xFetch" parent="pSrv" style="swimlane;html=1;startSize=44;horizontal=1;fontSize=12;fontStyle=1;align=center;verticalAlign=middle;rounded=0;dashed=0;swimlaneFillColor=#ffffff;" value="&amp;lt;&amp;lt;eccezione&amp;gt;&amp;gt;&lt;br&gt;FetchError" vertex="1">
      <mxGeometry height="70" width="199" x="5" y="822" as="geometry" />
    </mxCell>
    <mxCell id="xFetch_r0" parent="xFetch" style="text;html=1;align=left;verticalAlign=middle;spacingLeft=6;spacingRight=4;overflow=hidden;whiteSpace=wrap;fontSize=11;" value="estrazione fallita" vertex="1">
      <mxGeometry height="24" width="199" y="46" as="geometry" />
    </mxCell>
    <mxCell id="xInv" parent="pSrv" style="swimlane;html=1;startSize=46;horizontal=1;fontSize=12;fontStyle=1;align=center;verticalAlign=middle;rounded=0;dashed=0;swimlaneFillColor=#ffffff;" value="&amp;lt;&amp;lt;eccezione&amp;gt;&amp;gt;&lt;br&gt;InvalidLinkError" vertex="1">
      <mxGeometry height="70" width="199" x="294" y="822" as="geometry" />
    </mxCell>
    <mxCell id="xInv_r0" parent="xInv" style="text;html=1;align=left;verticalAlign=middle;spacingLeft=6;spacingRight=4;overflow=hidden;whiteSpace=wrap;fontSize=11;" value="scartato prima della rete" vertex="1">
      <mxGeometry height="24" width="199" y="46" as="geometry" />
    </mxCell>
    <mxCell id="e016" edge="1" parent="pSrv" source="uLink" style="endArrow=open;endSize=12;dashed=1;strokeWidth=1.5;html=1;rounded=0;edgeStyle=orthogonalEdgeStyle;fontSize=10;labelBackgroundColor=#ffffff;exitX=0.2;exitY=1;exitDx=0;exitDy=0;entryX=0.5;entryY=0;entryDx=0;entryDy=0;" target="xFetch" value="«solleva»">
      <mxGeometry relative="1" as="geometry" />
    </mxCell>
    <mxCell id="e017" edge="1" parent="pSrv" source="uLink" style="endArrow=open;endSize=12;dashed=1;strokeWidth=1.5;html=1;rounded=0;edgeStyle=orthogonalEdgeStyle;fontSize=10;labelBackgroundColor=#ffffff;exitX=0.8;exitY=1;exitDx=0;exitDy=0;entryX=0.5;entryY=0;entryDx=0;entryDy=0;" target="xInv" value="«solleva»">
      <mxGeometry relative="1" as="geometry" />
    </mxCell>
    <mxCell id="e018" edge="1" parent="pSrv" source="xInv" style="endArrow=block;endFill=0;endSize=12;strokeWidth=1.5;html=1;rounded=0;edgeStyle=orthogonalEdgeStyle;fontSize=10;labelBackgroundColor=#ffffff;exitX=0;exitY=0.5;exitDx=0;exitDy=0;entryX=1;entryY=0.5;entryDx=0;entryDy=0;" target="xFetch" value="">
      <mxGeometry relative="1" as="geometry" />
    </mxCell>
    <mxCell id="refTpl" parent="1" style="swimlane;html=1;startSize=46;horizontal=1;fontSize=12;fontStyle=1;align=center;verticalAlign=middle;rounded=0;dashed=1;swimlaneFillColor=#ffffff;" value="&amp;lt;&amp;lt;modulo&amp;gt;&amp;gt;&lt;br&gt;templates" vertex="1">
      <mxGeometry height="109" width="200" x="-91" y="197.14" as="geometry" />
    </mxCell>
    <mxCell id="refTpl_r0" parent="refTpl" style="text;html=1;align=left;verticalAlign=middle;spacingLeft=6;spacingRight=4;overflow=hidden;whiteSpace=wrap;fontSize=11;" value="core.domain.prompts" vertex="1">
      <mxGeometry height="24" width="200" y="46" as="geometry" />
    </mxCell>
    <mxCell id="refTpl_r1" parent="refTpl" style="text;html=1;align=left;verticalAlign=middle;spacingLeft=6;spacingRight=4;overflow=hidden;whiteSpace=wrap;fontSize=11;" value="i sette costruttori delle istruzioni" vertex="1">
      <mxGeometry height="39" width="200" y="70" as="geometry" />
    </mxCell>
    <mxCell id="refLlm2" parent="1" style="swimlane;html=1;startSize=46;horizontal=1;fontSize=12;fontStyle=1;align=center;verticalAlign=middle;rounded=0;dashed=1;swimlaneFillColor=#ffffff;" value="&amp;lt;&amp;lt;porta&amp;gt;&amp;gt;&lt;br&gt;LLMClient" vertex="1">
      <mxGeometry height="109" width="230" x="810" y="197.14" as="geometry" />
    </mxCell>
    <mxCell id="refLlm2_r0" parent="refLlm2" style="text;html=1;align=left;verticalAlign=middle;spacingLeft=6;spacingRight=4;overflow=hidden;whiteSpace=wrap;fontSize=11;" value="core.ports" vertex="1">
      <mxGeometry height="24" width="230" y="46" as="geometry" />
    </mxCell>
    <mxCell id="refLlm2_r1" parent="refLlm2" style="text;html=1;align=left;verticalAlign=middle;spacingLeft=6;spacingRight=4;overflow=hidden;whiteSpace=wrap;fontSize=11;" value="+ stream(messages, max_tokens): AsyncIterator[str]" vertex="1">
      <mxGeometry height="39" width="230" y="70" as="geometry" />
    </mxCell>
    <mxCell id="refCe2" parent="1" style="swimlane;html=1;startSize=46;horizontal=1;fontSize=12;fontStyle=1;align=center;verticalAlign=middle;rounded=0;dashed=1;swimlaneFillColor=#ffffff;" value="&amp;lt;&amp;lt;porta&amp;gt;&amp;gt;&lt;br&gt;ContentExtractor" vertex="1">
      <mxGeometry height="94" width="230" x="823" y="755" as="geometry" />
    </mxCell>
    <mxCell id="refCe2_r0" parent="refCe2" style="text;html=1;align=left;verticalAlign=middle;spacingLeft=6;spacingRight=4;overflow=hidden;whiteSpace=wrap;fontSize=11;" value="core.ports" vertex="1">
      <mxGeometry height="24" width="230" y="46" as="geometry" />
    </mxCell>
    <mxCell id="refCe2_r1" parent="refCe2" style="text;html=1;align=left;verticalAlign=middle;spacingLeft=6;spacingRight=4;overflow=hidden;whiteSpace=wrap;fontSize=11;" value="+ extract(url): str" vertex="1">
      <mxGeometry height="24" width="230" y="70" as="geometry" />
    </mxCell>
    <mxCell id="e001" edge="1" parent="1" source="uSum" style="endArrow=open;endSize=12;dashed=1;strokeWidth=1.5;html=1;rounded=0;edgeStyle=orthogonalEdgeStyle;fontSize=10;labelBackgroundColor=#ffffff;exitX=1;exitY=0.5;exitDx=0;exitDy=0;entryX=0;entryY=0.15;entryDx=0;entryDy=0;" target="refLlm2" value="">
      <mxGeometry relative="1" as="geometry" />
    </mxCell>
    <mxCell id="e002" edge="1" parent="1" source="uSum" style="endArrow=open;endSize=12;dashed=1;strokeWidth=1.5;html=1;rounded=0;edgeStyle=orthogonalEdgeStyle;fontSize=10;labelBackgroundColor=#ffffff;exitX=0;exitY=0.5;exitDx=0;exitDy=0;entryX=1;entryY=0.15;entryDx=0;entryDy=0;" target="refTpl" value="">
      <mxGeometry relative="1" as="geometry" />
    </mxCell>
    <mxCell id="e003" edge="1" parent="1" source="uGen" style="endArrow=open;endSize=12;dashed=1;strokeWidth=1.5;html=1;rounded=0;edgeStyle=orthogonalEdgeStyle;fontSize=10;labelBackgroundColor=#ffffff;exitX=1;exitY=0.5;exitDx=0;exitDy=0;entryX=0;entryY=0.265;entryDx=0;entryDy=0;" target="refLlm2" value="">
      <mxGeometry relative="1" as="geometry" />
    </mxCell>
    <mxCell id="e004" edge="1" parent="1" source="uGen" style="endArrow=open;endSize=12;dashed=1;strokeWidth=1.5;html=1;rounded=0;edgeStyle=orthogonalEdgeStyle;fontSize=10;labelBackgroundColor=#ffffff;exitX=0;exitY=0.5;exitDx=0;exitDy=0;entryX=1;entryY=0.265;entryDx=0;entryDy=0;" target="refTpl" value="">
      <mxGeometry relative="1" as="geometry" />
    </mxCell>
    <mxCell id="e005" edge="1" parent="1" source="uTra" style="endArrow=open;endSize=12;dashed=1;strokeWidth=1.5;html=1;rounded=0;edgeStyle=orthogonalEdgeStyle;fontSize=10;labelBackgroundColor=#ffffff;exitX=1;exitY=0.5;exitDx=0;exitDy=0;entryX=0;entryY=0.38;entryDx=0;entryDy=0;" target="refLlm2" value="">
      <mxGeometry relative="1" as="geometry" />
    </mxCell>
    <mxCell id="e006" edge="1" parent="1" source="uTra" style="endArrow=open;endSize=12;dashed=1;strokeWidth=1.5;html=1;rounded=0;edgeStyle=orthogonalEdgeStyle;fontSize=10;labelBackgroundColor=#ffffff;exitX=0;exitY=0.5;exitDx=0;exitDy=0;entryX=1;entryY=0.38;entryDx=0;entryDy=0;" target="refTpl" value="">
      <mxGeometry relative="1" as="geometry" />
    </mxCell>
    <mxCell id="e007" edge="1" parent="1" source="uRew" style="endArrow=open;endSize=12;dashed=1;strokeWidth=1.5;html=1;rounded=0;edgeStyle=orthogonalEdgeStyle;fontSize=10;labelBackgroundColor=#ffffff;exitX=1;exitY=0.5;exitDx=0;exitDy=0;entryX=0;entryY=0.495;entryDx=0;entryDy=0;" target="refLlm2" value="">
      <mxGeometry relative="1" as="geometry" />
    </mxCell>
    <mxCell id="e008" edge="1" parent="1" source="uRew" style="endArrow=open;endSize=12;dashed=1;strokeWidth=1.5;html=1;rounded=0;edgeStyle=orthogonalEdgeStyle;fontSize=10;labelBackgroundColor=#ffffff;exitX=0;exitY=0.5;exitDx=0;exitDy=0;entryX=1;entryY=0.495;entryDx=0;entryDy=0;" target="refTpl" value="">
      <mxGeometry relative="1" as="geometry" />
    </mxCell>
    <mxCell id="e009" edge="1" parent="1" source="uGra" style="endArrow=open;endSize=12;dashed=1;strokeWidth=1.5;html=1;rounded=0;edgeStyle=orthogonalEdgeStyle;fontSize=10;labelBackgroundColor=#ffffff;exitX=1;exitY=0.5;exitDx=0;exitDy=0;entryX=0;entryY=0.61;entryDx=0;entryDy=0;" target="refLlm2" value="">
      <mxGeometry relative="1" as="geometry" />
    </mxCell>
    <mxCell id="e010" edge="1" parent="1" source="uGra" style="endArrow=open;endSize=12;dashed=1;strokeWidth=1.5;html=1;rounded=0;edgeStyle=orthogonalEdgeStyle;fontSize=10;labelBackgroundColor=#ffffff;exitX=0;exitY=0.5;exitDx=0;exitDy=0;entryX=1;entryY=0.61;entryDx=0;entryDy=0;" target="refTpl" value="">
      <mxGeometry relative="1" as="geometry" />
    </mxCell>
    <mxCell id="e011" edge="1" parent="1" source="uCri" style="endArrow=open;endSize=12;dashed=1;strokeWidth=1.5;html=1;rounded=0;edgeStyle=orthogonalEdgeStyle;fontSize=10;labelBackgroundColor=#ffffff;exitX=1;exitY=0.5;exitDx=0;exitDy=0;entryX=0;entryY=0.725;entryDx=0;entryDy=0;" target="refLlm2" value="">
      <mxGeometry relative="1" as="geometry" />
    </mxCell>
    <mxCell id="e012" edge="1" parent="1" source="uCri" style="endArrow=open;endSize=12;dashed=1;strokeWidth=1.5;html=1;rounded=0;edgeStyle=orthogonalEdgeStyle;fontSize=10;labelBackgroundColor=#ffffff;exitX=0;exitY=0.5;exitDx=0;exitDy=0;entryX=1;entryY=0.725;entryDx=0;entryDy=0;" target="refTpl" value="">
      <mxGeometry relative="1" as="geometry" />
    </mxCell>
    <mxCell id="e013" edge="1" parent="1" source="uLink" style="endArrow=open;endSize=12;dashed=1;strokeWidth=1.5;html=1;rounded=0;edgeStyle=orthogonalEdgeStyle;fontSize=10;labelBackgroundColor=#ffffff;exitX=1;exitY=0.25;exitDx=0;exitDy=0;entryX=0;entryY=0.92;entryDx=0;entryDy=0;" target="refLlm2" value="«usa»">
      <mxGeometry relative="1" as="geometry" />
    </mxCell>
    <mxCell id="e014" edge="1" parent="1" source="uLink" style="endArrow=open;endSize=12;dashed=1;strokeWidth=1.5;html=1;rounded=0;edgeStyle=orthogonalEdgeStyle;fontSize=10;labelBackgroundColor=#ffffff;exitX=0;exitY=0.25;exitDx=0;exitDy=0;entryX=1;entryY=0.92;entryDx=0;entryDy=0;" target="refTpl" value="«usa»">
      <mxGeometry relative="1" as="geometry" />
    </mxCell>
    <mxCell id="e015" edge="1" parent="1" source="uLink" style="endArrow=open;endSize=12;dashed=1;strokeWidth=1.5;html=1;rounded=0;edgeStyle=orthogonalEdgeStyle;fontSize=10;labelBackgroundColor=#ffffff;exitX=1;exitY=0.72;exitDx=0;exitDy=0;entryX=0;entryY=0.5;entryDx=0;entryDy=0;" target="refCe2" value="«usa»">
      <mxGeometry relative="1" as="geometry" />
    </mxCell>
  </root>
</mxGraphModel>
