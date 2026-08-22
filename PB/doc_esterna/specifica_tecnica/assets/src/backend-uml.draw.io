<mxGraphModel dx="2925" dy="837" grid="1" gridSize="10" guides="1" tooltips="1" connect="1" arrows="1" fold="1" page="1" pageScale="1" pageWidth="827" pageHeight="1169" math="0" shadow="0">
  <root>
    <mxCell id="0" />
    <mxCell id="1" parent="0" />
    <mxCell id="pApi" parent="1" style="shape=folder;html=1;whiteSpace=wrap;tabWidth=100;tabHeight=22;tabPosition=left;fontStyle=1;verticalAlign=top;align=left;spacingLeft=8;spacingTop=1;container=1;collapsible=0;dashed=0;fontSize=12;" value="app.api" vertex="1">
      <mxGeometry height="450" width="250" x="-41" y="122" as="geometry" />
    </mxCell>
    <mxCell id="tApiSub" parent="pApi" style="text;html=1;align=center;verticalAlign=middle;whiteSpace=wrap;fontSize=11;" value="&lt;i&gt;adattatori primari&lt;/i&gt;" vertex="1">
      <mxGeometry height="20" width="230" x="10" y="30" as="geometry" />
    </mxCell>
    <mxCell id="pRoutes" parent="pApi" style="shape=folder;html=1;whiteSpace=wrap;tabWidth=110;tabHeight=22;tabPosition=left;fontStyle=1;verticalAlign=top;align=left;spacingLeft=8;spacingTop=1;container=1;collapsible=0;dashed=0;fontSize=12;" value="api/routes" vertex="1">
      <mxGeometry height="190" width="226" x="12" y="56" as="geometry" />
    </mxCell>
    <mxCell id="tRoutes" parent="pRoutes" style="text;html=1;align=center;verticalAlign=middle;whiteSpace=wrap;fontSize=11;" value="summarize_router&lt;br&gt;generate_router&lt;br&gt;generate_link_router&lt;br&gt;translate_router&lt;br&gt;rewrite_router&lt;br&gt;grammar_router&lt;br&gt;critique_router&lt;br&gt;constants_router" vertex="1">
      <mxGeometry height="154" width="210" x="8" y="28" as="geometry" />
    </mxCell>
    <mxCell id="iSchemas" parent="pApi" style="rounded=0;whiteSpace=wrap;html=1;fontSize=11;verticalAlign=middle;align=center;" value="schemas.py&lt;br&gt;&lt;font style=&#39;font-size:10px&#39;&gt;otto DTO + FIELD_LABELS&lt;/font&gt;" vertex="1">
      <mxGeometry height="46" width="226" x="12" y="262" as="geometry" />
    </mxCell>
    <mxCell id="iErrors" parent="pApi" style="rounded=0;whiteSpace=wrap;html=1;fontSize=11;verticalAlign=middle;align=center;" value="errors.py" vertex="1">
      <mxGeometry height="34" width="226" x="12" y="320" as="geometry" />
    </mxCell>
    <mxCell id="iSse" parent="pApi" style="rounded=0;whiteSpace=wrap;html=1;fontSize=11;verticalAlign=middle;align=center;" value="sse_streaming.py&lt;br&gt;&lt;font style=&#39;font-size:10px&#39;&gt;adattatore di trasporto&lt;/font&gt;" vertex="1">
      <mxGeometry height="46" width="226" x="12" y="366" as="geometry" />
    </mxCell>
    <mxCell id="pCore" parent="1" style="shape=folder;html=1;whiteSpace=wrap;tabWidth=100;tabHeight=22;tabPosition=left;fontStyle=1;verticalAlign=top;align=left;spacingLeft=8;spacingTop=1;container=1;collapsible=0;dashed=0;fontSize=12;" value="app.core" vertex="1">
      <mxGeometry height="590" width="330" x="300" y="60" as="geometry" />
    </mxCell>
    <mxCell id="pPorts" parent="pCore" style="shape=folder;html=1;whiteSpace=wrap;tabWidth=110;tabHeight=22;tabPosition=left;fontStyle=1;verticalAlign=top;align=left;spacingLeft=8;spacingTop=1;container=1;collapsible=0;dashed=0;fontSize=12;" value="core.ports" vertex="1">
      <mxGeometry height="120" width="298" x="16" y="40" as="geometry" />
    </mxCell>
    <mxCell id="iLlm" parent="pPorts" style="rounded=0;whiteSpace=wrap;html=1;fontSize=11;verticalAlign=middle;align=center;" value="LLMClient" vertex="1">
      <mxGeometry height="34" width="138" x="10" y="26" as="geometry" />
    </mxCell>
    <mxCell id="iCe" parent="pPorts" style="rounded=0;whiteSpace=wrap;html=1;fontSize=11;verticalAlign=middle;align=center;" value="ContentExtractor" vertex="1">
      <mxGeometry height="34" width="136" x="152" y="26" as="geometry" />
    </mxCell>
    <mxCell id="iELlm" parent="pPorts" style="rounded=0;whiteSpace=wrap;html=1;fontSize=11;verticalAlign=middle;align=center;" value="LLMProviderError" vertex="1">
      <mxGeometry height="34" width="138" x="10" y="68" as="geometry" />
    </mxCell>
    <mxCell id="iECe" parent="pPorts" style="rounded=0;whiteSpace=wrap;html=1;fontSize=11;verticalAlign=middle;align=center;" value="ContentExtractorError" vertex="1">
      <mxGeometry height="34" width="136" x="152" y="68" as="geometry" />
    </mxCell>
    <mxCell id="pSrv" parent="pCore" style="shape=folder;html=1;whiteSpace=wrap;tabWidth=120;tabHeight=22;tabPosition=left;fontStyle=1;verticalAlign=top;align=left;spacingLeft=8;spacingTop=1;container=1;collapsible=0;dashed=0;fontSize=12;" value="core.services" vertex="1">
      <mxGeometry height="190" width="298" x="16" y="180" as="geometry" />
    </mxCell>
    <mxCell id="tSrv" parent="pSrv" style="text;html=1;align=center;verticalAlign=middle;whiteSpace=wrap;fontSize=11;" value="summarize, generate, translate&lt;br&gt;rewrite, grammar, critique&lt;br&gt;generate_from_link" vertex="1">
      <mxGeometry height="58" width="278" x="10" y="26" as="geometry" />
    </mxCell>
    <mxCell id="iFetch" parent="pSrv" style="rounded=0;whiteSpace=wrap;html=1;fontSize=11;verticalAlign=middle;align=center;" value="FetchError" vertex="1">
      <mxGeometry height="34" width="138" x="10" y="92" as="geometry" />
    </mxCell>
    <mxCell id="iInv" parent="pSrv" style="rounded=0;whiteSpace=wrap;html=1;fontSize=11;verticalAlign=middle;align=center;" value="InvalidLinkError" vertex="1">
      <mxGeometry height="34" width="136" x="152" y="92" as="geometry" />
    </mxCell>
    <mxCell id="tSrv2" parent="pSrv" style="text;html=1;align=center;verticalAlign=middle;whiteSpace=wrap;fontSize=11;" value="sette casi d&#39;uso (una funzione ciascuno)" vertex="1">
      <mxGeometry height="44" width="278" x="10" y="132" as="geometry" />
    </mxCell>
    <mxCell id="pDom" parent="pCore" style="shape=folder;html=1;whiteSpace=wrap;tabWidth=110;tabHeight=22;tabPosition=left;fontStyle=1;verticalAlign=top;align=left;spacingLeft=8;spacingTop=1;container=1;collapsible=0;dashed=0;fontSize=12;" value="core.domain" vertex="1">
      <mxGeometry height="180" width="298" x="16" y="390" as="geometry" />
    </mxCell>
    <mxCell id="iValues" parent="pDom" style="rounded=0;whiteSpace=wrap;html=1;fontSize=11;verticalAlign=middle;align=center;" value="values.py&lt;br&gt;&lt;font style=&#39;font-size:10px&#39;&gt;vocabolari, soglie, Message&lt;/font&gt;" vertex="1">
      <mxGeometry height="46" width="278" x="10" y="26" as="geometry" />
    </mxCell>
    <mxCell id="pPrompts" parent="pDom" style="shape=folder;html=1;whiteSpace=wrap;tabWidth=90;tabHeight=22;tabPosition=left;fontStyle=1;verticalAlign=top;align=left;spacingLeft=8;spacingTop=1;container=1;collapsible=0;dashed=0;fontSize=12;" value="prompts/" vertex="1">
      <mxGeometry height="82" width="278" x="10" y="84" as="geometry" />
    </mxCell>
    <mxCell id="tPrompts" parent="pPrompts" style="text;html=1;align=center;verticalAlign=middle;whiteSpace=wrap;fontSize=11;" value="rules · composer&lt;br&gt;templates · untrusted" vertex="1">
      <mxGeometry height="48" width="262" x="8" y="24" as="geometry" />
    </mxCell>
    <mxCell id="pInfra" parent="1" style="shape=folder;html=1;whiteSpace=wrap;tabWidth=200;tabHeight=22;tabPosition=left;fontStyle=1;verticalAlign=top;align=left;spacingLeft=8;spacingTop=1;container=1;collapsible=0;dashed=0;fontSize=12;" value="app.infrastructure.adapters" vertex="1">
      <mxGeometry height="180" width="250" x="728" y="133" as="geometry" />
    </mxCell>
    <mxCell id="tInfraSub" parent="pInfra" style="text;html=1;align=center;verticalAlign=middle;whiteSpace=wrap;fontSize=11;" value="&lt;i&gt;adattatori secondari&lt;/i&gt;" vertex="1">
      <mxGeometry height="20" width="230" x="10" y="30" as="geometry" />
    </mxCell>
    <mxCell id="iLite" parent="pInfra" style="rounded=0;whiteSpace=wrap;html=1;fontSize=11;verticalAlign=middle;align=center;" value="litellm_client.py&lt;br&gt;&lt;font style=&#39;font-size:10px&#39;&gt;LiteLLMClient&lt;/font&gt;" vertex="1">
      <mxGeometry height="46" width="226" x="12" y="56" as="geometry" />
    </mxCell>
    <mxCell id="iTav" parent="pInfra" style="rounded=0;whiteSpace=wrap;html=1;fontSize=11;verticalAlign=middle;align=center;" value="tavily_extractor.py&lt;br&gt;&lt;font style=&#39;font-size:10px&#39;&gt;TavilyExtractor&lt;/font&gt;" vertex="1">
      <mxGeometry height="46" width="226" x="12" y="114" as="geometry" />
    </mxCell>
    <mxCell id="pExt" parent="1" style="shape=folder;html=1;whiteSpace=wrap;tabWidth=130;tabHeight=22;tabPosition=left;fontStyle=1;verticalAlign=top;align=left;spacingLeft=8;spacingTop=1;container=1;collapsible=0;dashed=1;fontSize=12;" value="servizi esterni" vertex="1">
      <mxGeometry height="140" width="250" x="663" y="575" as="geometry" />
    </mxCell>
    <mxCell id="iGw" parent="pExt" style="rounded=0;whiteSpace=wrap;html=1;fontSize=11;verticalAlign=middle;align=center;" value="Gateway LiteLLM" vertex="1">
      <mxGeometry height="40" width="226" x="12" y="34" as="geometry" />
    </mxCell>
    <mxCell id="iTv" parent="pExt" style="rounded=0;whiteSpace=wrap;html=1;fontSize=11;verticalAlign=middle;align=center;" value="API Tavily" vertex="1">
      <mxGeometry height="40" width="226" x="12" y="86" as="geometry" />
    </mxCell>
    <mxCell id="pRad" parent="1" style="shape=folder;html=1;whiteSpace=wrap;tabWidth=180;tabHeight=22;tabPosition=left;fontStyle=1;verticalAlign=top;align=left;spacingLeft=8;spacingTop=1;container=1;collapsible=0;dashed=1;fontSize=12;" value="app   (moduli di radice)" vertex="1">
      <mxGeometry height="120" width="610" x="20" y="690" as="geometry" />
    </mxCell>
    <mxCell id="iMain" parent="pRad" style="rounded=0;whiteSpace=wrap;html=1;fontSize=11;verticalAlign=middle;align=center;" value="main.py" vertex="1">
      <mxGeometry height="34" width="138" x="14" y="43" as="geometry" />
    </mxCell>
    <mxCell id="iDep" parent="pRad" style="rounded=0;whiteSpace=wrap;html=1;fontSize=11;verticalAlign=middle;align=center;" value="dependencies.py&lt;br&gt;&lt;font style=&#39;font-size:10px&#39;&gt;composition root&lt;/font&gt;" vertex="1">
      <mxGeometry height="46" width="158" x="162" y="40" as="geometry" />
    </mxCell>
    <mxCell id="iSet" parent="pRad" style="rounded=0;whiteSpace=wrap;html=1;fontSize=11;verticalAlign=middle;align=center;" value="settings.py" vertex="1">
      <mxGeometry height="34" width="130" x="330" y="43" as="geometry" />
    </mxCell>
    <mxCell id="iExp" parent="pRad" style="rounded=0;whiteSpace=wrap;html=1;fontSize=11;verticalAlign=middle;align=center;" value="export_openapi.py" vertex="1">
      <mxGeometry height="34" width="126" x="470" y="43" as="geometry" />
    </mxCell>
    <mxCell id="e001" edge="1" parent="1" source="pApi" style="endArrow=open;endSize=12;dashed=1;strokeWidth=1.5;html=1;rounded=0;edgeStyle=orthogonalEdgeStyle;fontSize=10;labelBackgroundColor=#ffffff;exitX=1;exitY=0.42;exitDx=0;exitDy=0;entryX=0;entryY=0.42;entryDx=0;entryDy=0;" target="pCore" value="«import»">
      <mxGeometry relative="1" as="geometry" />
    </mxCell>
    <mxCell id="e002" edge="1" parent="1" source="pInfra" style="endArrow=open;endSize=12;dashed=1;strokeWidth=1.5;html=1;rounded=0;edgeStyle=orthogonalEdgeStyle;fontSize=10;labelBackgroundColor=#ffffff;exitX=0;exitY=0.5;exitDx=0;exitDy=0;entryX=1;entryY=0.28;entryDx=0;entryDy=0;" target="pCore" value="«import»">
      <mxGeometry relative="1" as="geometry" />
    </mxCell>
    <mxCell id="e003" edge="1" parent="1" source="iLite" style="endArrow=open;endSize=12;dashed=1;strokeWidth=1.5;html=1;rounded=0;edgeStyle=orthogonalEdgeStyle;fontSize=10;labelBackgroundColor=#ffffff;exitX=0.3;exitY=1;exitDx=0;exitDy=0;entryX=0.608;entryY=0.069;entryDx=0;entryDy=0;entryPerimeter=0;" target="iGw" value="HTTP/SSE">
      <mxGeometry relative="1" as="geometry">
        <Array as="points">
          <mxPoint x="808" y="422" />
          <mxPoint x="811" y="422" />
          <mxPoint x="811" y="612" />
        </Array>
      </mxGeometry>
    </mxCell>
    <mxCell id="e004" edge="1" parent="1" source="iTav" style="endArrow=open;endSize=12;dashed=1;strokeWidth=1.5;html=1;rounded=0;edgeStyle=orthogonalEdgeStyle;fontSize=10;labelBackgroundColor=#ffffff;exitX=0.75;exitY=1;exitDx=0;exitDy=0;entryX=0.75;entryY=0;entryDx=0;entryDy=0;" target="iTv" value="HTTPS">
      <mxGeometry relative="1" as="geometry" />
    </mxCell>
    <mxCell id="e005" edge="1" parent="1" source="iMain" style="endArrow=open;endSize=12;dashed=1;strokeWidth=1.5;html=1;rounded=0;edgeStyle=orthogonalEdgeStyle;fontSize=10;labelBackgroundColor=#ffffff;exitX=0;exitY=0.5;exitDx=0;exitDy=0;fontColor=#666666;" target="pApi" value="&lt;font style=&quot;color: light-dark(rgb(0, 0, 0), rgb(255, 255, 255));&quot;&gt;monta i router&lt;/font&gt;">
      <mxGeometry relative="1" x="0.1698" as="geometry">
        <mxPoint as="offset" />
        <Array as="points">
          <mxPoint y="750" />
        </Array>
      </mxGeometry>
    </mxCell>
    <mxCell id="e006" edge="1" parent="1" source="pRad" style="endArrow=open;endSize=12;dashed=1;strokeWidth=1.5;html=1;rounded=0;edgeStyle=orthogonalEdgeStyle;fontSize=10;labelBackgroundColor=#ffffff;exitX=0.634;exitY=0.176;exitDx=0;exitDy=0;entryX=0.32;entryY=1;entryDx=0;entryDy=0;fontColor=#666666;exitPerimeter=0;" target="pCore" value="&lt;font style=&quot;color: light-dark(rgb(0, 0, 0), rgb(255, 255, 255));&quot;&gt;usa le porte come tipo&lt;/font&gt;">
      <mxGeometry relative="1" as="geometry" />
    </mxCell>
    <mxCell id="e007" edge="1" parent="1" style="endArrow=open;endSize=12;dashed=1;strokeWidth=1.5;html=1;rounded=0;edgeStyle=orthogonalEdgeStyle;fontSize=10;labelBackgroundColor=#ffffff;exitX=0.407;exitY=-0.008;exitDx=0;exitDy=0;fontColor=#666666;strokeColor=light-dark(#000000,#FFFFFF);exitPerimeter=0;" value="&lt;font style=&quot;color: light-dark(rgb(0, 0, 0), rgb(255, 255, 255));&quot;&gt;istanzia gli adattatori&lt;/font&gt;">
      <mxGeometry relative="1" x="0.4179" y="-35" as="geometry">
        <mxPoint as="offset" />
        <Array as="points">
          <mxPoint x="270.9" y="830" />
          <mxPoint x="645" y="830" />
          <mxPoint x="645" y="283" />
        </Array>
        <mxPoint x="270.8739999999998" y="773.808" as="sourcePoint" />
        <mxPoint x="726" y="283" as="targetPoint" />
      </mxGeometry>
    </mxCell>
  </root>
</mxGraphModel>
