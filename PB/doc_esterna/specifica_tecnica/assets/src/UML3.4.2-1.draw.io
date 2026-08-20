<mxGraphModel dx="1020" dy="847" grid="0" gridSize="10" guides="1" tooltips="1" connect="1" arrows="1" fold="1" page="1" pageScale="1" pageWidth="1000" pageHeight="844" math="0" shadow="0">
  <root>
    <mxCell id="0" />
    <mxCell id="1" parent="0" />
    <mxCell id="pApi" parent="1" style="shape=folder;html=1;whiteSpace=wrap;tabWidth=110;tabHeight=24;tabPosition=left;fontStyle=1;verticalAlign=top;align=left;spacingLeft=10;spacingTop=1;container=1;collapsible=0;dashed=0;" value="app.api" vertex="1">
      <mxGeometry height="684" width="690" x="20" y="40" as="geometry" />
    </mxCell>
    <mxCell id="pRoutes" parent="pApi" style="shape=folder;html=1;whiteSpace=wrap;tabWidth=110;tabHeight=24;tabPosition=left;fontStyle=1;verticalAlign=top;align=left;spacingLeft=10;spacingTop=1;container=1;collapsible=0;dashed=0;" value="api.routes" vertex="1">
      <mxGeometry height="624" width="658" x="16" y="44" as="geometry" />
    </mxCell>
    <mxCell id="rSum" parent="pRoutes" style="swimlane;html=1;startSize=46;horizontal=1;fontSize=12;fontStyle=1;align=center;verticalAlign=middle;rounded=0;dashed=0;swimlaneFillColor=#ffffff;" value="&amp;lt;&amp;lt;rotta&amp;gt;&amp;gt;&lt;br&gt;summarize_router" vertex="1">
      <mxGeometry height="109" width="630" x="14" y="42" as="geometry" />
    </mxCell>
    <mxCell id="rSum_r0" parent="rSum" style="text;html=1;align=left;verticalAlign=middle;spacingLeft=6;spacingRight=4;overflow=hidden;whiteSpace=wrap;fontSize=11;" value="router: APIRouter  {prefix=&amp;quot;/api&amp;quot;, tags=[&amp;quot;summarize&amp;quot;]}" vertex="1">
      <mxGeometry height="24" width="630" y="46" as="geometry" />
    </mxCell>
    <mxCell id="rSum_r1" parent="rSum" style="text;html=1;align=left;verticalAlign=middle;spacingLeft=6;spacingRight=4;overflow=hidden;whiteSpace=wrap;fontSize=11;" value="summarize(payload: TextRequest, request: Request, client: LLMClient = Depends(get_llm_client)): StreamingResponse  {async}" vertex="1">
      <mxGeometry height="39" width="630" y="70" as="geometry" />
    </mxCell>
    <mxCell id="alt0" parent="pRoutes" style="rounded=0;whiteSpace=wrap;html=1;fontSize=11;fontStyle=1;verticalAlign=middle;align=center;" value="&amp;lt;&amp;lt;rotta&amp;gt;&amp;gt;&lt;br&gt;generate_router" vertex="1">
      <mxGeometry height="58" width="119.6" x="14" y="165" as="geometry" />
    </mxCell>
    <mxCell id="alt1" parent="pRoutes" style="rounded=0;whiteSpace=wrap;html=1;fontSize=11;fontStyle=1;verticalAlign=middle;align=center;" value="&amp;lt;&amp;lt;rotta&amp;gt;&amp;gt;&lt;br&gt;translate_router" vertex="1">
      <mxGeometry height="58" width="119.6" x="141.6" y="165" as="geometry" />
    </mxCell>
    <mxCell id="alt2" parent="pRoutes" style="rounded=0;whiteSpace=wrap;html=1;fontSize=11;fontStyle=1;verticalAlign=middle;align=center;" value="&amp;lt;&amp;lt;rotta&amp;gt;&amp;gt;&lt;br&gt;rewrite_router" vertex="1">
      <mxGeometry height="58" width="119.6" x="269.2" y="165" as="geometry" />
    </mxCell>
    <mxCell id="alt3" parent="pRoutes" style="rounded=0;whiteSpace=wrap;html=1;fontSize=11;fontStyle=1;verticalAlign=middle;align=center;" value="&amp;lt;&amp;lt;rotta&amp;gt;&amp;gt;&lt;br&gt;grammar_router" vertex="1">
      <mxGeometry height="58" width="119.6" x="396.8" y="165" as="geometry" />
    </mxCell>
    <mxCell id="alt4" parent="pRoutes" style="rounded=0;whiteSpace=wrap;html=1;fontSize=11;fontStyle=1;verticalAlign=middle;align=center;" value="&amp;lt;&amp;lt;rotta&amp;gt;&amp;gt;&lt;br&gt;critique_router" vertex="1">
      <mxGeometry height="58" width="119.6" x="524.4" y="165" as="geometry" />
    </mxCell>
    <mxCell id="rLink" parent="pRoutes" style="swimlane;html=1;startSize=46;horizontal=1;fontSize=12;fontStyle=1;align=center;verticalAlign=middle;rounded=0;dashed=0;swimlaneFillColor=#ffffff;" value="&amp;lt;&amp;lt;rotta&amp;gt;&amp;gt;&lt;br&gt;generate_link_router" vertex="1">
      <mxGeometry height="133" width="630" x="14" y="295" as="geometry" />
    </mxCell>
    <mxCell id="rLink_r0" parent="rLink" style="text;html=1;align=left;verticalAlign=middle;spacingLeft=6;spacingRight=4;overflow=hidden;whiteSpace=wrap;fontSize=11;" value="router: APIRouter  {prefix=&amp;quot;/api&amp;quot;, tags=[&amp;quot;generate-link&amp;quot;]}" vertex="1">
      <mxGeometry height="24" width="630" y="46" as="geometry" />
    </mxCell>
    <mxCell id="rLink_r1" parent="rLink" style="text;html=1;align=left;verticalAlign=middle;spacingLeft=6;spacingRight=4;overflow=hidden;whiteSpace=wrap;fontSize=11;" value="- _URL_TOO_LONG_DETAIL: str        - _FETCH_FAILED_DETAIL: str" vertex="1">
      <mxGeometry height="24" width="630" y="70" as="geometry" />
    </mxCell>
    <mxCell id="rLink_r2" parent="rLink" style="text;html=1;align=left;verticalAlign=middle;spacingLeft=6;spacingRight=4;overflow=hidden;whiteSpace=wrap;fontSize=11;" value="generate_from_link(payload: LinkRequest, request: Request, client: LLMClient = Depends(get_llm_client), extractor: ContentExtractor = Depends(get_content_extractor)): StreamingResponse  {async}" vertex="1">
      <mxGeometry height="39" width="630" y="94" as="geometry" />
    </mxCell>
    <mxCell id="rCon" parent="pRoutes" style="swimlane;html=1;startSize=46;horizontal=1;fontSize=12;fontStyle=1;align=center;verticalAlign=middle;rounded=0;dashed=0;swimlaneFillColor=#ffffff;" value="&amp;lt;&amp;lt;rotta&amp;gt;&amp;gt;&lt;br&gt;constants_router" vertex="1">
      <mxGeometry height="109" width="305" x="14" y="442" as="geometry" />
    </mxCell>
    <mxCell id="rCon_r0" parent="rCon" style="text;html=1;align=left;verticalAlign=middle;spacingLeft=6;spacingRight=4;overflow=hidden;whiteSpace=wrap;fontSize=11;" value="router: APIRouter  {prefix=&amp;quot;/api&amp;quot;, tags=[&amp;quot;constants&amp;quot;]}" vertex="1">
      <mxGeometry height="39" width="305" y="46" as="geometry" />
    </mxCell>
    <mxCell id="rCon_r1" parent="rCon" style="text;html=1;align=left;verticalAlign=middle;spacingLeft=6;spacingRight=4;overflow=hidden;whiteSpace=wrap;fontSize=11;" value="constants(): ApiConstants  {async}" vertex="1">
      <mxGeometry height="24" width="305" y="85" as="geometry" />
    </mxCell>
    <mxCell id="cApiConst" parent="pRoutes" style="swimlane;html=1;startSize=46;horizontal=1;fontSize=12;fontStyle=1;align=center;verticalAlign=middle;rounded=0;dashed=0;swimlaneFillColor=#ffffff;" value="&amp;lt;&amp;lt;DTO&amp;gt;&amp;gt;&lt;br&gt;ApiConstants" vertex="1">
      <mxGeometry height="166" width="305" x="339" y="442" as="geometry" />
    </mxCell>
    <mxCell id="cApiConst_r0" parent="cApiConst" style="text;html=1;align=left;verticalAlign=middle;spacingLeft=6;spacingRight=4;overflow=hidden;whiteSpace=wrap;fontSize=11;" value="+ no_errors_marker: NoErrorsMarker" vertex="1">
      <mxGeometry height="24" width="305" y="46" as="geometry" />
    </mxCell>
    <mxCell id="cApiConst_r1" parent="cApiConst" style="text;html=1;align=left;verticalAlign=middle;spacingLeft=6;spacingRight=4;overflow=hidden;whiteSpace=wrap;fontSize=11;" value="+ min_text_length: MinTextLength" vertex="1">
      <mxGeometry height="24" width="305" y="70" as="geometry" />
    </mxCell>
    <mxCell id="cApiConst_r2" parent="cApiConst" style="text;html=1;align=left;verticalAlign=middle;spacingLeft=6;spacingRight=4;overflow=hidden;whiteSpace=wrap;fontSize=11;" value="+ min_prompt_length: MinPromptLength" vertex="1">
      <mxGeometry height="24" width="305" y="94" as="geometry" />
    </mxCell>
    <mxCell id="cApiConst_r3" parent="cApiConst" style="text;html=1;align=left;verticalAlign=middle;spacingLeft=6;spacingRight=4;overflow=hidden;whiteSpace=wrap;fontSize=11;" value="+ max_text_length: MaxTextLength" vertex="1">
      <mxGeometry height="24" width="305" y="118" as="geometry" />
    </mxCell>
    <mxCell id="cApiConst_r4" parent="cApiConst" style="text;html=1;align=left;verticalAlign=middle;spacingLeft=6;spacingRight=4;overflow=hidden;whiteSpace=wrap;fontSize=11;" value="+ max_prompt_length: MaxPromptLength" vertex="1">
      <mxGeometry height="24" width="305" y="142" as="geometry" />
    </mxCell>
    <mxCell id="refLlm" parent="1" style="swimlane;html=1;startSize=46;horizontal=1;fontSize=12;fontStyle=1;align=center;verticalAlign=middle;rounded=0;dashed=1;swimlaneFillColor=#ffffff;" value="&amp;lt;&amp;lt;porta&amp;gt;&amp;gt;&lt;br&gt;LLMClient" vertex="1">
      <mxGeometry height="70" width="230" x="800" y="121" as="geometry" />
    </mxCell>
    <mxCell id="refLlm_r0" parent="refLlm" style="text;html=1;align=left;verticalAlign=middle;spacingLeft=6;spacingRight=4;overflow=hidden;whiteSpace=wrap;fontSize=11;" value="core.ports" vertex="1">
      <mxGeometry height="24" width="230" y="46" as="geometry" />
    </mxCell>
    <mxCell id="refCe" parent="1" style="swimlane;html=1;startSize=46;horizontal=1;fontSize=12;fontStyle=1;align=center;verticalAlign=middle;rounded=0;dashed=1;swimlaneFillColor=#ffffff;" value="&amp;lt;&amp;lt;porta&amp;gt;&amp;gt;&lt;br&gt;ContentExtractor" vertex="1">
      <mxGeometry height="70" width="230" x="785" y="236" as="geometry" />
    </mxCell>
    <mxCell id="refCe_r0" parent="refCe" style="text;html=1;align=left;verticalAlign=middle;spacingLeft=6;spacingRight=4;overflow=hidden;whiteSpace=wrap;fontSize=11;" value="core.ports" vertex="1">
      <mxGeometry height="24" width="230" y="46" as="geometry" />
    </mxCell>
    <mxCell id="refSrv" parent="1" style="swimlane;html=1;startSize=46;horizontal=1;fontSize=12;fontStyle=1;align=center;verticalAlign=middle;rounded=0;dashed=1;swimlaneFillColor=#ffffff;" value="&amp;lt;&amp;lt;package&amp;gt;&amp;gt;&lt;br&gt;core.services" vertex="1">
      <mxGeometry height="70" width="230" x="844" y="361" as="geometry" />
    </mxCell>
    <mxCell id="refSrv_r0" parent="refSrv" style="text;html=1;align=left;verticalAlign=middle;spacingLeft=6;spacingRight=4;overflow=hidden;whiteSpace=wrap;fontSize=11;" value="i sette casi d&amp;#x27;uso" vertex="1">
      <mxGeometry height="24" width="230" y="46" as="geometry" />
    </mxCell>
    <mxCell id="refSchemas" parent="1" style="swimlane;html=1;startSize=46;horizontal=1;fontSize=12;fontStyle=1;align=center;verticalAlign=middle;rounded=0;dashed=1;swimlaneFillColor=#ffffff;" value="&amp;lt;&amp;lt;modulo&amp;gt;&amp;gt;&lt;br&gt;schemas" vertex="1">
      <mxGeometry height="70" width="230" x="835" y="469" as="geometry" />
    </mxCell>
    <mxCell id="refSchemas_r0" parent="refSchemas" style="text;html=1;align=left;verticalAlign=middle;spacingLeft=6;spacingRight=4;overflow=hidden;whiteSpace=wrap;fontSize=11;" value="api.schemas — i DTO del corpo" vertex="1">
      <mxGeometry height="24" width="230" y="46" as="geometry" />
    </mxCell>
    <mxCell id="refSse" parent="1" style="swimlane;html=1;startSize=46;horizontal=1;fontSize=12;fontStyle=1;align=center;verticalAlign=middle;rounded=0;dashed=1;swimlaneFillColor=#ffffff;" value="&amp;lt;&amp;lt;adattatore primario&amp;gt;&amp;gt;&lt;br&gt;sse_streaming" vertex="1">
      <mxGeometry height="70" width="230" x="819" y="588" as="geometry" />
    </mxCell>
    <mxCell id="refSse_r0" parent="refSse" style="text;html=1;align=left;verticalAlign=middle;spacingLeft=6;spacingRight=4;overflow=hidden;whiteSpace=wrap;fontSize=11;" value="app.api" vertex="1">
      <mxGeometry height="24" width="230" y="46" as="geometry" />
    </mxCell>
    <mxCell id="e001" edge="1" parent="1" source="rSum" style="endArrow=open;endSize=12;dashed=1;strokeWidth=1.5;html=1;rounded=0;edgeStyle=orthogonalEdgeStyle;fontSize=10;labelBackgroundColor=#ffffff;exitX=1;exitY=0.35;exitDx=0;exitDy=0;entryX=0;entryY=0.5;entryDx=0;entryDy=0;" target="refLlm" value="«Depends»">
      <mxGeometry relative="1" as="geometry" />
    </mxCell>
    <mxCell id="e002" edge="1" parent="1" source="rLink" style="endArrow=open;endSize=12;dashed=1;strokeWidth=1.5;html=1;rounded=0;edgeStyle=orthogonalEdgeStyle;fontSize=10;labelBackgroundColor=#ffffff;exitX=1;exitY=0.7;exitDx=0;exitDy=0;entryX=0;entryY=0.5;entryDx=0;entryDy=0;" target="refCe" value="«Depends»">
      <mxGeometry relative="1" as="geometry" />
    </mxCell>
    <mxCell id="e003" edge="1" parent="1" source="pRoutes" style="endArrow=open;endSize=12;dashed=1;strokeWidth=1.5;html=1;rounded=0;edgeStyle=orthogonalEdgeStyle;fontSize=10;labelBackgroundColor=#ffffff;exitX=1;exitY=0.55;exitDx=0;exitDy=0;entryX=0;entryY=0.5;entryDx=0;entryDy=0;" target="refSrv" value="«invoca»">
      <mxGeometry relative="1" as="geometry" />
    </mxCell>
    <mxCell id="e004" edge="1" parent="1" source="pRoutes" style="endArrow=open;endSize=12;dashed=1;strokeWidth=1.5;html=1;rounded=0;edgeStyle=orthogonalEdgeStyle;fontSize=10;labelBackgroundColor=#ffffff;exitX=1;exitY=0.72;exitDx=0;exitDy=0;entryX=0;entryY=0.5;entryDx=0;entryDy=0;" target="refSchemas" value="«valida il corpo con»">
      <mxGeometry relative="1" as="geometry" />
    </mxCell>
    <mxCell id="e005" edge="1" parent="1" source="pRoutes" style="endArrow=open;endSize=12;dashed=1;strokeWidth=1.5;html=1;rounded=0;edgeStyle=orthogonalEdgeStyle;fontSize=10;labelBackgroundColor=#ffffff;exitX=1;exitY=0.9;exitDx=0;exitDy=0;entryX=0;entryY=0.5;entryDx=0;entryDy=0;" target="refSse" value="«consegna il flusso»">
      <mxGeometry relative="1" as="geometry" />
    </mxCell>
  </root>
</mxGraphModel>
