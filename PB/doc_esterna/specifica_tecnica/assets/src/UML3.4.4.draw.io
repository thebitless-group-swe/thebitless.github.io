<mxGraphModel dx="1446" dy="1186" grid="0" gridSize="10" guides="1" tooltips="1" connect="1" arrows="1" fold="1" page="1" pageScale="1" pageWidth="1000" pageHeight="1010" math="0" shadow="0">
  <root>
    <mxCell id="0" />
    <mxCell id="1" parent="0" />
    <mxCell id="pAd" parent="1" style="shape=folder;html=1;whiteSpace=wrap;tabWidth=200;tabHeight=24;tabPosition=left;fontStyle=1;verticalAlign=top;align=left;spacingLeft=10;spacingTop=1;container=0;collapsible=0;dashed=0;resizeWidth=1;resizeHeight=1;expand=0;editable=1;movable=1;resizable=1;rotatable=1;deletable=1;locked=0;connectable=0;dropTarget=0;recursiveResize=0;" value="app.infrastructure.adapters" vertex="1">
      <mxGeometry height="622" width="640" x="24" y="36" as="geometry" />
    </mxCell>
    <mxCell id="kLite" parent="pAd" style="swimlane;html=1;startSize=46;horizontal=1;fontSize=12;fontStyle=1;align=center;verticalAlign=middle;rounded=0;dashed=0;swimlaneFillColor=#ffffff;" value="&amp;lt;&amp;lt;modulo&amp;gt;&amp;gt;&lt;br&gt;litellm_client   (costanti di modulo)" vertex="1">
      <mxGeometry height="102.55" width="589" x="16" y="36.5" as="geometry" />
    </mxCell>
    <mxCell id="kLite_r0" parent="kLite" style="text;html=1;align=left;verticalAlign=middle;spacingLeft=6;spacingRight=4;overflow=hidden;whiteSpace=wrap;fontSize=11;" value="CONNECT_TIMEOUT_SECONDS = 10.0      READ_TIMEOUT_SECONDS = 180.0" vertex="1">
      <mxGeometry height="20.85804416403785" width="608" y="39.97791798107254" as="geometry" />
    </mxCell>
    <mxCell id="kLite_r1" parent="kLite" style="text;html=1;align=left;verticalAlign=middle;spacingLeft=6;spacingRight=4;overflow=hidden;whiteSpace=wrap;fontSize=11;" value="WRITE_TIMEOUT_SECONDS = 30.0        POOL_TIMEOUT_SECONDS = 10.0" vertex="1">
      <mxGeometry height="20.85804416403785" width="608" y="60.83596214511038" as="geometry" />
    </mxCell>
    <mxCell id="kLite_r2" parent="kLite" style="text;html=1;align=left;verticalAlign=middle;spacingLeft=6;spacingRight=4;overflow=hidden;whiteSpace=wrap;fontSize=11;" value="SSE_DATA_PREFIX = &amp;quot;data:&amp;quot;           SSE_DONE_MARKER = &amp;quot;[DONE]&amp;quot;" vertex="1">
      <mxGeometry height="20.85804416403785" width="608" y="81.69400630914824" as="geometry" />
    </mxCell>
    <mxCell id="cLite" parent="pAd" style="swimlane;html=1;startSize=46;horizontal=1;fontSize=12;fontStyle=1;align=center;verticalAlign=middle;rounded=0;dashed=0;swimlaneFillColor=#ffffff;" value="&amp;lt;&amp;lt;adattatore secondario&amp;gt;&amp;gt;&lt;br&gt;LiteLLMClient" vertex="1">
      <mxGeometry height="145.13722397476334" width="608" x="12" y="187.0008201892744" as="geometry" />
    </mxCell>
    <mxCell id="cLite_r0" parent="cLite" style="text;html=1;align=left;verticalAlign=middle;spacingLeft=6;spacingRight=4;overflow=hidden;whiteSpace=wrap;fontSize=11;" value="- _client: httpx.AsyncClient" vertex="1">
      <mxGeometry height="20.858044164037842" width="608" y="39.97791798107254" as="geometry" />
    </mxCell>
    <mxCell id="cLite_r1" parent="cLite" style="line;html=1;strokeWidth=1;" value="" vertex="1">
      <mxGeometry height="0.8690851735015771" width="608" y="60.83596214511038" as="geometry" />
    </mxCell>
    <mxCell id="cLite_r2" parent="cLite" style="text;html=1;align=left;verticalAlign=middle;spacingLeft=6;spacingRight=4;overflow=hidden;whiteSpace=wrap;fontSize=11;" value="«create» + LiteLLMClient(settings: Settings)" vertex="1">
      <mxGeometry height="20.858044164037842" width="608" y="61.705047318611975" as="geometry" />
    </mxCell>
    <mxCell id="cLite_r3" parent="cLite" style="text;html=1;align=left;verticalAlign=middle;spacingLeft=6;spacingRight=4;overflow=hidden;whiteSpace=wrap;fontSize=11;" value="+ stream(messages: Sequence[Message], max_tokens: int | None = None): AsyncIterator[str]   {async}" vertex="1">
      <mxGeometry height="20.858044164037842" width="608" y="82.56309148264981" as="geometry" />
    </mxCell>
    <mxCell id="cLite_r4" parent="cLite" style="text;html=1;align=left;verticalAlign=middle;spacingLeft=6;spacingRight=4;overflow=hidden;whiteSpace=wrap;fontSize=11;" value="+ aclose(): None   {async}" vertex="1">
      <mxGeometry height="20.858044164037842" width="608" y="103.42113564668765" as="geometry" />
    </mxCell>
    <mxCell id="cLite_r5" parent="cLite" style="text;html=1;align=left;verticalAlign=middle;spacingLeft=6;spacingRight=4;overflow=hidden;whiteSpace=wrap;fontSize=11;" value="- _parse_sse_line(line: str): str | None   {static}" vertex="1">
      <mxGeometry height="20.858044164037842" width="608" y="124.27917981072551" as="geometry" />
    </mxCell>
    <mxCell id="kTav" parent="pAd" style="swimlane;html=1;startSize=46;horizontal=1;fontSize=12;fontStyle=1;align=center;verticalAlign=middle;rounded=0;dashed=0;swimlaneFillColor=#ffffff;" value="&amp;lt;&amp;lt;modulo&amp;gt;&amp;gt;&lt;br&gt;tavily_extractor   (costante di modulo)" vertex="1">
      <mxGeometry height="60.83596214511038" width="608" x="16" y="343.0042586750788" as="geometry" />
    </mxCell>
    <mxCell id="kTav_r0" parent="kTav" style="text;html=1;align=left;verticalAlign=middle;spacingLeft=6;spacingRight=4;overflow=hidden;whiteSpace=wrap;fontSize=11;" value="MAX_CHARS = 12_000" vertex="1">
      <mxGeometry height="20.858044164037846" width="608" y="39.97791798107253" as="geometry" />
    </mxCell>
    <mxCell id="cTav" parent="pAd" style="swimlane;html=1;startSize=40;horizontal=1;fontSize=12;fontStyle=1;align=center;verticalAlign=middle;rounded=0;dashed=0;swimlaneFillColor=#ffffff;" value="&amp;lt;&amp;lt;adattatore secondario&amp;gt;&amp;gt;&lt;br&gt;TavilyExtractor" vertex="1">
      <mxGeometry height="145.13722397476334" width="608" x="16" y="450.9974132492112" as="geometry" />
    </mxCell>
    <mxCell id="cTav_r0" parent="cTav" style="text;html=1;align=left;verticalAlign=middle;spacingLeft=6;spacingRight=4;overflow=hidden;whiteSpace=wrap;fontSize=11;" value="- _api_key: str" vertex="1">
      <mxGeometry height="20.858044164037842" width="608" y="39.97791798107254" as="geometry" />
    </mxCell>
    <mxCell id="cTav_r1" parent="cTav" style="text;html=1;align=left;verticalAlign=middle;spacingLeft=6;spacingRight=4;overflow=hidden;whiteSpace=wrap;fontSize=11;" value="- _client: TavilyClient" vertex="1">
      <mxGeometry height="20.858044164037842" width="608" y="60.83596214511038" as="geometry" />
    </mxCell>
    <mxCell id="cTav_r2" parent="cTav" style="line;html=1;strokeWidth=1;" value="" vertex="1">
      <mxGeometry height="0.8690851735015771" width="608" y="81.69400630914824" as="geometry" />
    </mxCell>
    <mxCell id="cTav_r3" parent="cTav" style="text;html=1;align=left;verticalAlign=middle;spacingLeft=6;spacingRight=4;overflow=hidden;whiteSpace=wrap;fontSize=11;" value="«create» + TavilyExtractor(api_key: str)" vertex="1">
      <mxGeometry height="20.858044164037842" width="608" y="82.56309148264981" as="geometry" />
    </mxCell>
    <mxCell id="cTav_r4" parent="cTav" style="text;html=1;align=left;verticalAlign=middle;spacingLeft=6;spacingRight=4;overflow=hidden;whiteSpace=wrap;fontSize=11;" value="+ extract(url: str): str   {async}" vertex="1">
      <mxGeometry height="20.858044164037842" width="608" y="103.42113564668765" as="geometry" />
    </mxCell>
    <mxCell id="cTav_r5" parent="cTav" style="text;html=1;align=left;verticalAlign=middle;spacingLeft=6;spacingRight=4;overflow=hidden;whiteSpace=wrap;fontSize=11;" value="+ aclose(): None   {async}" vertex="1">
      <mxGeometry height="20.858044164037842" width="608" y="124.27917981072551" as="geometry" />
    </mxCell>
    <mxCell id="e007" edge="1" parent="pAd" source="cLite" style="endArrow=open;endSize=12;dashed=1;strokeWidth=1.5;html=1;rounded=0;edgeStyle=orthogonalEdgeStyle;fontSize=10;labelBackgroundColor=#ffffff;exitX=0.06;exitY=0;exitDx=0;exitDy=0;entryX=0.06;entryY=1;entryDx=0;entryDy=0;" target="kLite" value="">
      <mxGeometry relative="1" as="geometry" />
    </mxCell>
    <mxCell id="e008" edge="1" parent="pAd" source="cTav" style="endArrow=open;endSize=12;dashed=1;strokeWidth=1.5;html=1;rounded=0;edgeStyle=orthogonalEdgeStyle;fontSize=10;labelBackgroundColor=#ffffff;exitX=0.06;exitY=0;exitDx=0;exitDy=0;entryX=0.06;entryY=1;entryDx=0;entryDy=0;" target="kTav" value="">
      <mxGeometry relative="1" as="geometry" />
    </mxCell>
    <mxCell id="refLlmP" parent="1" style="swimlane;html=1;startSize=46;horizontal=1;fontSize=12;fontStyle=1;align=center;verticalAlign=middle;rounded=0;dashed=1;swimlaneFillColor=#ffffff;" value="&amp;lt;&amp;lt;porta&amp;gt;&amp;gt;&lt;br&gt;LLMClient" vertex="1">
      <mxGeometry height="70" width="260" x="752" y="69" as="geometry" />
    </mxCell>
    <mxCell id="refLlmP_r0" parent="refLlmP" style="text;html=1;align=left;verticalAlign=middle;spacingLeft=6;spacingRight=4;overflow=hidden;whiteSpace=wrap;fontSize=11;" value="core.ports" vertex="1">
      <mxGeometry height="24" width="260" y="46" as="geometry" />
    </mxCell>
    <mxCell id="refEllm" parent="1" style="swimlane;html=1;startSize=46;horizontal=1;fontSize=12;fontStyle=1;align=center;verticalAlign=middle;rounded=0;dashed=1;swimlaneFillColor=#ffffff;" value="&amp;lt;&amp;lt;eccezione&amp;gt;&amp;gt;&lt;br&gt;LLMProviderError" vertex="1">
      <mxGeometry height="70" width="260" x="733" y="167" as="geometry" />
    </mxCell>
    <mxCell id="refEllm_r0" parent="refEllm" style="text;html=1;align=left;verticalAlign=middle;spacingLeft=6;spacingRight=4;overflow=hidden;whiteSpace=wrap;fontSize=11;" value="core.ports" vertex="1">
      <mxGeometry height="24" width="260" y="46" as="geometry" />
    </mxCell>
    <mxCell id="refMsg2" parent="1" style="swimlane;html=1;startSize=46;horizontal=1;fontSize=12;fontStyle=1;align=center;verticalAlign=middle;rounded=0;dashed=1;swimlaneFillColor=#ffffff;" value="&amp;lt;&amp;lt;value object&amp;gt;&amp;gt;&lt;br&gt;Message" vertex="1">
      <mxGeometry height="70" width="260" x="736" y="284" as="geometry" />
    </mxCell>
    <mxCell id="refMsg2_r0" parent="refMsg2" style="text;html=1;align=left;verticalAlign=middle;spacingLeft=6;spacingRight=4;overflow=hidden;whiteSpace=wrap;fontSize=11;" value="core.domain.values" vertex="1">
      <mxGeometry height="24" width="260" y="46" as="geometry" />
    </mxCell>
    <mxCell id="refSet" parent="1" style="swimlane;html=1;startSize=46;horizontal=1;fontSize=12;fontStyle=1;align=center;verticalAlign=middle;rounded=0;dashed=1;swimlaneFillColor=#ffffff;" value="&amp;lt;&amp;lt;configurazione&amp;gt;&amp;gt;&lt;br&gt;Settings" vertex="1">
      <mxGeometry height="70" width="260" x="768" y="385" as="geometry" />
    </mxCell>
    <mxCell id="refSet_r0" parent="refSet" style="text;html=1;align=left;verticalAlign=middle;spacingLeft=6;spacingRight=4;overflow=hidden;whiteSpace=wrap;fontSize=11;" value="app.settings" vertex="1">
      <mxGeometry height="24" width="260" y="46" as="geometry" />
    </mxCell>
    <mxCell id="refCeP" parent="1" style="swimlane;html=1;startSize=46;horizontal=1;fontSize=12;fontStyle=1;align=center;verticalAlign=middle;rounded=0;dashed=1;swimlaneFillColor=#ffffff;" value="&amp;lt;&amp;lt;porta&amp;gt;&amp;gt;&lt;br&gt;ContentExtractor" vertex="1">
      <mxGeometry height="70" width="260" x="752" y="494" as="geometry" />
    </mxCell>
    <mxCell id="refCeP_r0" parent="refCeP" style="text;html=1;align=left;verticalAlign=middle;spacingLeft=6;spacingRight=4;overflow=hidden;whiteSpace=wrap;fontSize=11;" value="core.ports" vertex="1">
      <mxGeometry height="24" width="260" y="46" as="geometry" />
    </mxCell>
    <mxCell id="refEce" parent="1" style="swimlane;html=1;startSize=46;horizontal=1;fontSize=12;fontStyle=1;align=center;verticalAlign=middle;rounded=0;dashed=1;swimlaneFillColor=#ffffff;" value="&amp;lt;&amp;lt;eccezione&amp;gt;&amp;gt;&lt;br&gt;ContentExtractorError" vertex="1">
      <mxGeometry height="70" width="260" x="740" y="638" as="geometry" />
    </mxCell>
    <mxCell id="refEce_r0" parent="refEce" style="text;html=1;align=left;verticalAlign=middle;spacingLeft=6;spacingRight=4;overflow=hidden;whiteSpace=wrap;fontSize=11;" value="core.ports" vertex="1">
      <mxGeometry height="24" width="260" y="46" as="geometry" />
    </mxCell>
    <mxCell id="pExt" parent="1" style="shape=folder;html=1;whiteSpace=wrap;tabWidth=140;tabHeight=24;tabPosition=left;fontStyle=1;verticalAlign=top;align=left;spacingLeft=10;spacingTop=1;container=1;collapsible=0;dashed=1;" value="servizi esterni" vertex="1">
      <mxGeometry height="150" width="640" x="20" y="704" as="geometry" />
    </mxCell>
    <mxCell id="xGw" parent="pExt" style="swimlane;html=1;startSize=46;horizontal=1;fontSize=12;fontStyle=1;align=center;verticalAlign=middle;rounded=0;dashed=0;swimlaneFillColor=#ffffff;" value="&amp;lt;&amp;lt;sistema esterno&amp;gt;&amp;gt;&lt;br&gt;Gateway LiteLLM" vertex="1">
      <mxGeometry height="70" width="300" x="16" y="40" as="geometry" />
    </mxCell>
    <mxCell id="xGw_r0" parent="xGw" style="text;html=1;align=left;verticalAlign=middle;spacingLeft=6;spacingRight=4;overflow=hidden;whiteSpace=wrap;fontSize=11;" value="API compatibile OpenAI · POST /chat/completions" vertex="1">
      <mxGeometry height="24" width="300" y="46" as="geometry" />
    </mxCell>
    <mxCell id="xTav" parent="pExt" style="swimlane;html=1;startSize=46;horizontal=1;fontSize=12;fontStyle=1;align=center;verticalAlign=middle;rounded=0;dashed=0;swimlaneFillColor=#ffffff;" value="&amp;lt;&amp;lt;sistema esterno&amp;gt;&amp;gt;&lt;br&gt;API Tavily" vertex="1">
      <mxGeometry height="70" width="296" x="328" y="40" as="geometry" />
    </mxCell>
    <mxCell id="xTav_r0" parent="xTav" style="text;html=1;align=left;verticalAlign=middle;spacingLeft=6;spacingRight=4;overflow=hidden;whiteSpace=wrap;fontSize=11;" value="estrazione del contenuto di una pagina" vertex="1">
      <mxGeometry height="24" width="296" y="46" as="geometry" />
    </mxCell>
    <mxCell id="e001" edge="1" parent="1" source="cLite" style="endArrow=block;endFill=0;endSize=12;strokeWidth=1.5;html=1;rounded=0;edgeStyle=orthogonalEdgeStyle;fontSize=10;labelBackgroundColor=#ffffff;exitX=1;exitY=0.12;exitDx=0;exitDy=0;entryX=0;entryY=0.5;entryDx=0;entryDy=0;" target="refLlmP" value="">
      <mxGeometry relative="1" as="geometry">
        <Array as="points">
          <mxPoint x="644" y="104" />
        </Array>
      </mxGeometry>
    </mxCell>
    <mxCell id="e002" edge="1" parent="1" source="cTav" style="endArrow=block;endFill=0;endSize=12;strokeWidth=1.5;html=1;rounded=0;edgeStyle=orthogonalEdgeStyle;fontSize=10;labelBackgroundColor=#ffffff;exitX=1;exitY=0.3;exitDx=0;exitDy=0;entryX=0;entryY=0.5;entryDx=0;entryDy=0;" target="refCeP" value="">
      <mxGeometry relative="1" as="geometry" />
    </mxCell>
    <mxCell id="e003" edge="1" parent="1" source="cLite" style="endArrow=open;endSize=12;dashed=1;strokeWidth=1.5;html=1;rounded=0;edgeStyle=orthogonalEdgeStyle;fontSize=10;labelBackgroundColor=#ffffff;exitX=1;exitY=0.4;exitDx=0;exitDy=0;entryX=0;entryY=0.5;entryDx=0;entryDy=0;" target="refEllm" value="«solleva»">
      <mxGeometry relative="1" as="geometry" />
    </mxCell>
    <mxCell id="e004" edge="1" parent="1" source="cTav" style="endArrow=open;endSize=12;dashed=1;strokeWidth=1.5;html=1;rounded=0;edgeStyle=orthogonalEdgeStyle;fontSize=10;labelBackgroundColor=#ffffff;exitX=1;exitY=0.7;exitDx=0;exitDy=0;entryX=0;entryY=0.5;entryDx=0;entryDy=0;" target="refEce" value="«solleva»">
      <mxGeometry relative="1" as="geometry" />
    </mxCell>
    <mxCell id="e005" edge="1" parent="1" source="cLite" style="endArrow=open;endSize=12;dashed=1;strokeWidth=1.5;html=1;rounded=0;edgeStyle=orthogonalEdgeStyle;fontSize=10;labelBackgroundColor=#ffffff;exitX=1;exitY=0.68;exitDx=0;exitDy=0;entryX=0;entryY=0.5;entryDx=0;entryDy=0;" target="refMsg2" value="«usa»">
      <mxGeometry relative="1" as="geometry" />
    </mxCell>
    <mxCell id="e006" edge="1" parent="1" source="cLite" style="endArrow=open;endSize=12;dashed=1;strokeWidth=1.5;html=1;rounded=0;edgeStyle=orthogonalEdgeStyle;fontSize=10;labelBackgroundColor=#ffffff;exitX=1;exitY=0.9;exitDx=0;exitDy=0;entryX=0;entryY=0.5;entryDx=0;entryDy=0;" target="refSet" value="«usa»  - _settings   1">
      <mxGeometry relative="1" as="geometry" />
    </mxCell>
    <mxCell id="e009" edge="1" parent="1" source="cLite" style="endArrow=open;endSize=12;dashed=1;strokeWidth=1.5;html=1;rounded=0;edgeStyle=orthogonalEdgeStyle;fontSize=10;labelBackgroundColor=#ffffff;exitX=0.3;exitY=1;exitDx=0;exitDy=0;" target="xGw" value="HTTP/SSE">
      <mxGeometry relative="1" as="geometry">
        <Array as="points">
          <mxPoint x="218" y="552" />
          <mxPoint x="283" y="552" />
        </Array>
      </mxGeometry>
    </mxCell>
    <mxCell id="e010" edge="1" parent="1" source="cTav" style="endArrow=open;endSize=12;dashed=1;strokeWidth=1.5;html=1;rounded=0;edgeStyle=orthogonalEdgeStyle;fontSize=10;labelBackgroundColor=#ffffff;exitX=0.75;exitY=1;exitDx=0;exitDy=0;" target="xTav" value="HTTPS">
      <mxGeometry relative="1" as="geometry">
        <Array as="points" />
      </mxGeometry>
    </mxCell>
  </root>
</mxGraphModel>
