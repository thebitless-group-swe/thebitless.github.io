<mxGraphModel dx="2289" dy="913" grid="1" gridSize="10" guides="1" tooltips="1" connect="1" arrows="1" fold="1" page="1" pageScale="1" pageWidth="827" pageHeight="1169" math="0" shadow="0">
  <root>
    <mxCell id="0" />
    <mxCell id="1" parent="0" />
    <mxCell id="frameRoutes" parent="1" style="rounded=1;whiteSpace=wrap;html=1;dashed=1;dashPattern=8 8;fillColor=#F5F9FF;strokeColor=#6C8EBF;verticalAlign=top;align=left;spacingLeft=12;spacingTop=6;fontSize=12;fontColor=#6C8EBF;" value="&lt;b&gt;app/api/routes/&lt;/b&gt; — adattatori primari" vertex="1">
      <mxGeometry height="220" width="990" x="170" y="30" as="geometry" />
    </mxCell>
    <mxCell id="frameCore" parent="1" style="rounded=1;whiteSpace=wrap;html=1;dashed=1;dashPattern=8 8;fillColor=#FAFAFA;strokeColor=#333333;verticalAlign=top;align=left;spacingLeft=12;spacingTop=6;fontSize=12;fontColor=#333333;" value="&lt;b&gt;app/core/&lt;/b&gt; — il dominio: non importa nulla dagli altri package" vertex="1">
      <mxGeometry height="210" width="1030" x="170" y="760" as="geometry" />
    </mxCell>
    <mxCell id="frameProd" parent="1" style="rounded=1;whiteSpace=wrap;html=1;dashed=1;dashPattern=8 8;fillColor=#FFF6EC;strokeColor=#D79B00;verticalAlign=top;align=left;spacingLeft=12;spacingTop=6;fontSize=12;fontColor=#D79B00;" value="&lt;b&gt;app/infrastructure/adapters/&lt;/b&gt; — adattatori secondari" vertex="1">
      <mxGeometry height="170" width="580" x="170" y="1010" as="geometry" />
    </mxCell>
    <mxCell id="frameTest" parent="1" style="rounded=1;whiteSpace=wrap;html=1;dashed=1;dashPattern=8 8;fillColor=#FFFBE6;strokeColor=#D6B656;verticalAlign=top;align=left;spacingLeft=12;spacingTop=6;fontSize=12;fontColor=#B8860B;" value="&lt;b&gt;tests/conftest.py&lt;/b&gt; — i doppi" vertex="1">
      <mxGeometry height="170" width="590" x="810" y="1010" as="geometry" />
    </mxCell>
    <mxCell id="routeSix" parent="1" style="swimlane;childLayout=stackLayout;horizontal=1;startSize=62;horizontalStack=0;resizeParent=1;resizeParentMax=0;html=1;verticalAlign=middle;align=center;whiteSpace=wrap;collapsible=0;strokeColor=#6C8EBF;fillColor=#DAE8FC;fontSize=12;" value="«adattatore primario»&lt;br&gt;&lt;b&gt;le sei rotte a una porta&lt;/b&gt;&lt;br&gt;&lt;i&gt;summarize · translate · rewrite · grammar · critique · generate&lt;/i&gt;" vertex="1">
      <mxGeometry height="166" width="440" x="200" y="70" as="geometry" />
    </mxCell>
    <mxCell id="r6_1" parent="routeSix" style="text;strokeColor=none;fillColor=none;align=left;verticalAlign=middle;spacingLeft=6;spacingRight=6;overflow=hidden;rotatable=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;html=1;fontSize=10;" value="@router.post(&quot;/summarize&quot;)" vertex="1">
      <mxGeometry height="26" width="440" y="62" as="geometry" />
    </mxCell>
    <mxCell id="r6_2" parent="routeSix" style="text;strokeColor=none;fillColor=none;align=left;verticalAlign=middle;spacingLeft=6;spacingRight=6;overflow=hidden;rotatable=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;html=1;fontSize=10;" value="async def summarize(payload, request," vertex="1">
      <mxGeometry height="26" width="440" y="88" as="geometry" />
    </mxCell>
    <mxCell id="r6_3" parent="routeSix" style="text;strokeColor=none;fillColor=none;align=left;verticalAlign=middle;spacingLeft=6;spacingRight=6;overflow=hidden;rotatable=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;html=1;fontSize=10;" value="&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;client: &lt;b&gt;LLMClient&lt;/b&gt; = Depends(get_llm_client))" vertex="1">
      <mxGeometry height="26" width="440" y="114" as="geometry" />
    </mxCell>
    <mxCell id="r6_4" parent="routeSix" style="text;strokeColor=none;fillColor=none;align=left;verticalAlign=middle;spacingLeft=6;spacingRight=6;overflow=hidden;rotatable=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;html=1;fontSize=10;" value="⟶ summarize_service(text, length, &lt;b&gt;client&lt;/b&gt;)" vertex="1">
      <mxGeometry height="26" width="440" y="140" as="geometry" />
    </mxCell>
    <mxCell id="routeLink" parent="1" style="swimlane;childLayout=stackLayout;horizontal=1;startSize=62;horizontalStack=0;resizeParent=1;resizeParentMax=0;html=1;verticalAlign=middle;align=center;whiteSpace=wrap;collapsible=0;strokeColor=#6C8EBF;fillColor=#DAE8FC;fontSize=12;" value="«adattatore primario»&lt;br&gt;&lt;b&gt;la rotta a due porte&lt;/b&gt;&lt;br&gt;&lt;i&gt;app/api/routes/generate_link.py&lt;/i&gt;" vertex="1">
      <mxGeometry height="166" width="450" x="680" y="70" as="geometry" />
    </mxCell>
    <mxCell id="rl_1" parent="routeLink" style="text;strokeColor=none;fillColor=none;align=left;verticalAlign=middle;spacingLeft=6;spacingRight=6;overflow=hidden;rotatable=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;html=1;fontSize=10;" value="@router.post(&quot;/generate-from-link&quot;)" vertex="1">
      <mxGeometry height="26" width="450" y="62" as="geometry" />
    </mxCell>
    <mxCell id="rl_2" parent="routeLink" style="text;strokeColor=none;fillColor=none;align=left;verticalAlign=middle;spacingLeft=6;spacingRight=6;overflow=hidden;rotatable=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;html=1;fontSize=10;" value="async def generate_from_link(payload, request," vertex="1">
      <mxGeometry height="26" width="450" y="88" as="geometry" />
    </mxCell>
    <mxCell id="rl_3" parent="routeLink" style="text;strokeColor=none;fillColor=none;align=left;verticalAlign=middle;spacingLeft=6;spacingRight=6;overflow=hidden;rotatable=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;html=1;fontSize=10;" value="&amp;nbsp;&amp;nbsp;extractor: &lt;b&gt;ContentExtractor&lt;/b&gt; = Depends(get_content_extractor)," vertex="1">
      <mxGeometry height="26" width="450" y="114" as="geometry" />
    </mxCell>
    <mxCell id="rl_4" parent="routeLink" style="text;strokeColor=none;fillColor=none;align=left;verticalAlign=middle;spacingLeft=6;spacingRight=6;overflow=hidden;rotatable=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;html=1;fontSize=10;" value="&amp;nbsp;&amp;nbsp;client: &lt;b&gt;LLMClient&lt;/b&gt; = Depends(get_llm_client))" vertex="1">
      <mxGeometry height="26" width="450" y="140" as="geometry" />
    </mxCell>
    <mxCell id="resolver" parent="1" style="swimlane;childLayout=stackLayout;horizontal=1;startSize=50;horizontalStack=0;resizeParent=1;resizeParentMax=0;html=1;verticalAlign=middle;align=center;whiteSpace=wrap;collapsible=0;strokeColor=#9673A6;fillColor=#E1D5E7;fontSize=12;" value="«meccanismo FastAPI»&lt;br&gt;&lt;b&gt;Risoluzione delle dipendenze&lt;/b&gt;" vertex="1">
      <mxGeometry height="154" width="560" x="380" y="300" as="geometry" />
    </mxCell>
    <mxCell id="rs_1" parent="resolver" style="text;strokeColor=none;fillColor=none;align=left;verticalAlign=middle;spacingLeft=6;spacingRight=6;overflow=hidden;rotatable=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;html=1;fontSize=11;" value="1. cerca la funzione in &lt;b&gt;app.dependency_overrides&lt;/b&gt;" vertex="1">
      <mxGeometry height="26" width="560" y="50" as="geometry" />
    </mxCell>
    <mxCell id="rs_2" parent="resolver" style="text;strokeColor=none;fillColor=none;align=left;verticalAlign=middle;spacingLeft=6;spacingRight=6;overflow=hidden;rotatable=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;html=1;fontSize=11;" value="2. se assente, invoca il provider dichiarato in Depends(...)" vertex="1">
      <mxGeometry height="26" width="560" y="76" as="geometry" />
    </mxCell>
    <mxCell id="rs_3" parent="resolver" style="text;strokeColor=none;fillColor=none;align=left;verticalAlign=middle;spacingLeft=6;spacingRight=6;overflow=hidden;rotatable=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;html=1;fontSize=11;" value="3. risolve TUTTE le dipendenze prima del corpo della rotta" vertex="1">
      <mxGeometry height="26" width="560" y="102" as="geometry" />
    </mxCell>
    <mxCell id="rs_4" parent="resolver" style="text;strokeColor=none;fillColor=none;align=left;verticalAlign=middle;spacingLeft=6;spacingRight=6;overflow=hidden;rotatable=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;html=1;fontSize=11;" value="4. passa l&#39;istanza come argomento tipizzato con la porta" vertex="1">
      <mxGeometry height="26" width="560" y="128" as="geometry" />
    </mxCell>
    <mxCell id="deps" parent="1" style="swimlane;childLayout=stackLayout;horizontal=1;startSize=62;horizontalStack=0;resizeParent=1;resizeParentMax=0;html=1;verticalAlign=middle;align=center;whiteSpace=wrap;collapsible=0;strokeColor=#82B366;fillColor=#D5E8D4;fontSize=13;" value="«composition root»&lt;br&gt;&lt;b&gt;app/dependencies.py&lt;/b&gt;&lt;br&gt;&lt;i&gt;l&#39;unico modulo che nomina gli adattatori concreti&lt;/i&gt;" vertex="1">
      <mxGeometry height="226" width="760" x="280" y="510" as="geometry" />
    </mxCell>
    <mxCell id="dp_1" parent="deps" style="text;strokeColor=none;fillColor=none;align=left;verticalAlign=middle;spacingLeft=6;spacingRight=6;overflow=hidden;rotatable=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;html=1;fontSize=11;" value="@lru_cache&amp;nbsp; get_settings() ⟶ Settings&amp;nbsp;&amp;nbsp;&lt;i&gt;— non iniettata via Depends&lt;/i&gt;" vertex="1">
      <mxGeometry height="26" width="760" y="62" as="geometry" />
    </mxCell>
    <mxCell id="dp_2" parent="deps" style="text;strokeColor=none;fillColor=none;align=left;verticalAlign=middle;spacingLeft=6;spacingRight=6;overflow=hidden;rotatable=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;html=1;fontSize=11;" value="@lru_cache&amp;nbsp; get_llm_client() ⟶ &lt;b&gt;LLMClient&lt;/b&gt;" vertex="1">
      <mxGeometry height="26" width="760" y="88" as="geometry" />
    </mxCell>
    <mxCell id="dp_3" parent="deps" style="text;strokeColor=none;fillColor=none;align=left;verticalAlign=middle;spacingLeft=6;spacingRight=6;overflow=hidden;rotatable=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;html=1;fontSize=10;fontColor=#7F3F00;" value="&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;⟶ LiteLLMClient(get_settings())&amp;nbsp;&amp;nbsp;|&amp;nbsp;&amp;nbsp;503 se manca LITELLM_API_KEY" vertex="1">
      <mxGeometry height="26" width="760" y="114" as="geometry" />
    </mxCell>
    <mxCell id="dp_4" parent="deps" style="text;strokeColor=none;fillColor=none;align=left;verticalAlign=middle;spacingLeft=6;spacingRight=6;overflow=hidden;rotatable=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;html=1;fontSize=11;" value="@lru_cache&amp;nbsp; get_content_extractor() ⟶ &lt;b&gt;ContentExtractor&lt;/b&gt;" vertex="1">
      <mxGeometry height="26" width="760" y="140" as="geometry" />
    </mxCell>
    <mxCell id="dp_5" parent="deps" style="text;strokeColor=none;fillColor=none;align=left;verticalAlign=middle;spacingLeft=6;spacingRight=6;overflow=hidden;rotatable=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;html=1;fontSize=10;fontColor=#7F3F00;" value="&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;⟶ TavilyExtractor(api_key)&amp;nbsp;&amp;nbsp;|&amp;nbsp;&amp;nbsp;503 se manca TAVILY_API_KEY" vertex="1">
      <mxGeometry height="26" width="760" y="166" as="geometry" />
    </mxCell>
    <mxCell id="dp_div" parent="deps" style="line;strokeWidth=1;fillColor=none;align=left;verticalAlign=middle;spacingTop=-1;spacingLeft=3;spacingRight=3;rotatable=0;labelPosition=right;points=[];portConstraint=eastwest;html=1;" value="" vertex="1">
      <mxGeometry height="8" width="760" y="192" as="geometry" />
    </mxCell>
    <mxCell id="dp_6" parent="deps" style="text;strokeColor=none;fillColor=none;align=left;verticalAlign=middle;spacingLeft=6;spacingRight=6;overflow=hidden;rotatable=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;html=1;fontSize=10;" value="verifica_chiavi_obbligatorie() · close_llm_client() · close_content_extractor()" vertex="1">
      <mxGeometry height="26" width="760" y="200" as="geometry" />
    </mxCell>
    <mxCell id="settings" parent="1" style="rounded=0;whiteSpace=wrap;html=1;fillColor=#FFFFFF;strokeColor=#666666;align=center;verticalAlign=middle;fontSize=11;" value="«configurazione»&lt;br&gt;&lt;b&gt;app/settings.py&lt;/b&gt;&lt;br&gt;&lt;i&gt;Settings&lt;/i&gt; — cosa e&#39; la configurazione,&lt;br&gt;non come la si ottiene" vertex="1">
      <mxGeometry height="100" width="250" x="1220" y="510" as="geometry" />
    </mxCell>
    <mxCell id="useCase" parent="1" style="swimlane;childLayout=stackLayout;horizontal=1;startSize=62;horizontalStack=0;resizeParent=1;resizeParentMax=0;html=1;verticalAlign=middle;align=center;whiteSpace=wrap;collapsible=0;strokeColor=#009900;fillColor=#EAFFEA;fontSize=12;" value="«use case»&lt;br&gt;&lt;b&gt;core/services/&lt;/b&gt;&lt;br&gt;&lt;i&gt;sette funzioni, una per file&lt;/i&gt;" vertex="1">
      <mxGeometry height="114" width="290" x="200" y="800" as="geometry" />
    </mxCell>
    <mxCell id="uc_1" parent="useCase" style="text;strokeColor=none;fillColor=none;align=left;verticalAlign=middle;spacingLeft=6;spacingRight=6;overflow=hidden;rotatable=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;html=1;fontSize=10;" value="summarize(text, length, llm: LLMClient)" vertex="1">
      <mxGeometry height="26" width="290" y="62" as="geometry" />
    </mxCell>
    <mxCell id="uc_2" parent="useCase" style="text;strokeColor=none;fillColor=none;align=left;verticalAlign=middle;spacingLeft=6;spacingRight=6;overflow=hidden;rotatable=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;html=1;fontSize=10;" value="generate_from_link(url, length, extractor, llm)" vertex="1">
      <mxGeometry height="26" width="290" y="88" as="geometry" />
    </mxCell>
    <mxCell id="portLLM" parent="1" style="swimlane;childLayout=stackLayout;horizontal=1;startSize=62;horizontalStack=0;resizeParent=1;resizeParentMax=0;html=1;verticalAlign=middle;align=center;whiteSpace=wrap;collapsible=0;strokeColor=#333333;fillColor=#FFFFFF;fontSize=12;" value="«porta» — ABC&lt;br&gt;&lt;i&gt;&lt;b&gt;LLMClient&lt;/b&gt;&lt;/i&gt;&lt;br&gt;&lt;i&gt;core/ports/llm_client.py&lt;/i&gt;" vertex="1">
      <mxGeometry height="114" width="310" x="530" y="800" as="geometry" />
    </mxCell>
    <mxCell id="pl_1" parent="portLLM" style="text;strokeColor=none;fillColor=none;align=left;verticalAlign=middle;spacingLeft=6;spacingRight=6;overflow=hidden;rotatable=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;html=1;fontSize=10;" value="&lt;i&gt;+ stream(messages) ⟶ AsyncIterator[str]&lt;/i&gt;" vertex="1">
      <mxGeometry height="26" width="310" y="62" as="geometry" />
    </mxCell>
    <mxCell id="pl_2" parent="portLLM" style="text;strokeColor=none;fillColor=none;align=left;verticalAlign=middle;spacingLeft=6;spacingRight=6;overflow=hidden;rotatable=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;html=1;fontSize=10;" value="LLMProviderError" vertex="1">
      <mxGeometry height="26" width="310" y="88" as="geometry" />
    </mxCell>
    <mxCell id="portCE" parent="1" style="swimlane;childLayout=stackLayout;horizontal=1;startSize=62;horizontalStack=0;resizeParent=1;resizeParentMax=0;html=1;verticalAlign=middle;align=center;whiteSpace=wrap;collapsible=0;strokeColor=#333333;fillColor=#FFFFFF;fontSize=12;" value="«porta» — ABC&lt;br&gt;&lt;i&gt;&lt;b&gt;ContentExtractor&lt;/b&gt;&lt;/i&gt;&lt;br&gt;&lt;i&gt;core/ports/content_extractor.py&lt;/i&gt;" vertex="1">
      <mxGeometry height="114" width="310" x="870" y="800" as="geometry" />
    </mxCell>
    <mxCell id="pc_1" parent="portCE" style="text;strokeColor=none;fillColor=none;align=left;verticalAlign=middle;spacingLeft=6;spacingRight=6;overflow=hidden;rotatable=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;html=1;fontSize=10;" value="&lt;i&gt;+ extract(url) ⟶ str&lt;/i&gt;" vertex="1">
      <mxGeometry height="26" width="310" y="62" as="geometry" />
    </mxCell>
    <mxCell id="pc_2" parent="portCE" style="text;strokeColor=none;fillColor=none;align=left;verticalAlign=middle;spacingLeft=6;spacingRight=6;overflow=hidden;rotatable=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;html=1;fontSize=10;" value="ContentExtractorError" vertex="1">
      <mxGeometry height="26" width="310" y="88" as="geometry" />
    </mxCell>
    <mxCell id="litellm" parent="1" style="rounded=0;whiteSpace=wrap;html=1;fillColor=#FFE6CC;strokeColor=#D79B00;align=center;verticalAlign=middle;fontSize=11;" value="&lt;b&gt;LiteLLMClient&lt;/b&gt;&lt;br&gt;&lt;i&gt;litellm_client.py&lt;/i&gt;&lt;br&gt;httpx · SSE del provider" vertex="1">
      <mxGeometry height="100" width="260" x="200" y="1060" as="geometry" />
    </mxCell>
    <mxCell id="tavily" parent="1" style="rounded=0;whiteSpace=wrap;html=1;fillColor=#FFE6CC;strokeColor=#D79B00;align=center;verticalAlign=middle;fontSize=11;" value="&lt;b&gt;TavilyExtractor&lt;/b&gt;&lt;br&gt;&lt;i&gt;tavily_extractor.py&lt;/i&gt;&lt;br&gt;API Tavily · troncamento" vertex="1">
      <mxGeometry height="100" width="250" x="480" y="1060" as="geometry" />
    </mxCell>
    <mxCell id="dummyLLM" parent="1" style="rounded=0;whiteSpace=wrap;html=1;fillColor=#FFF2CC;strokeColor=#D6B656;align=center;verticalAlign=middle;fontSize=11;" value="&lt;b&gt;DummyLLMClient&lt;/b&gt;&lt;br&gt;chunk fissi, nessun I/O&lt;br&gt;&lt;i&gt;registra received_messages&lt;/i&gt;" vertex="1">
      <mxGeometry height="100" width="260" x="840" y="1060" as="geometry" />
    </mxCell>
    <mxCell id="dummyCE" parent="1" style="rounded=0;whiteSpace=wrap;html=1;fillColor=#FFF2CC;strokeColor=#D6B656;align=center;verticalAlign=middle;fontSize=11;" value="&lt;b&gt;DummyContentExtractor&lt;/b&gt;&lt;br&gt;&lt;b&gt;FailingContentExtractor&lt;/b&gt;&lt;br&gt;&lt;i&gt;contenuto statico / errore simulato&lt;/i&gt;" vertex="1">
      <mxGeometry height="100" width="260" x="1120" y="1060" as="geometry" />
    </mxCell>
    <mxCell id="e1" edge="1" parent="1" source="routeSix" style="endArrow=open;endSize=12;dashed=1;html=1;edgeStyle=orthogonalEdgeStyle;rounded=0;exitX=0.5;exitY=1;exitDx=0;exitDy=0;entryX=0.2;entryY=0;entryDx=0;entryDy=0;fontSize=10;verticalAlign=bottom;" target="resolver" value="Depends(get_llm_client)">
      <mxGeometry relative="1" as="geometry" />
    </mxCell>
    <mxCell id="e2" edge="1" parent="1" source="routeLink" style="endArrow=open;endSize=12;dashed=1;html=1;edgeStyle=orthogonalEdgeStyle;rounded=0;exitX=0.5;exitY=1;exitDx=0;exitDy=0;entryX=0.75;entryY=0;entryDx=0;entryDy=0;fontSize=10;verticalAlign=bottom;" target="resolver" value="Depends(get_content_extractor)&lt;br&gt;Depends(get_llm_client)">
      <mxGeometry relative="1" as="geometry" />
    </mxCell>
    <mxCell id="e3" edge="1" parent="1" source="resolver" style="endArrow=open;endSize=12;dashed=1;html=1;edgeStyle=orthogonalEdgeStyle;rounded=0;strokeColor=#3333FF;fontColor=#3333FF;exitX=0;exitY=0.5;exitDx=0;exitDy=0;entryX=0.05;entryY=1;entryDx=0;entryDy=0;fontSize=10;" target="routeSix" value="&lt;b&gt;inietta l&#39;istanza&lt;/b&gt;&lt;br&gt;tipizzata con la porta">
      <mxGeometry relative="1" as="geometry">
        <Array as="points">
          <mxPoint x="222" y="377" />
        </Array>
      </mxGeometry>
    </mxCell>
    <mxCell id="e4" edge="1" parent="1" source="resolver" style="endArrow=open;endSize=12;dashed=1;html=1;edgeStyle=orthogonalEdgeStyle;rounded=0;exitX=0.5;exitY=1;exitDx=0;exitDy=0;entryX=0.5;entryY=0;entryDx=0;entryDy=0;fontSize=10;verticalAlign=bottom;" target="deps" value="2. invoca il provider&lt;br&gt;&lt;i&gt;(solo se non c&#39;e&#39; override)&lt;/i&gt;">
      <mxGeometry relative="1" as="geometry" />
    </mxCell>
    <mxCell id="e5" edge="1" parent="1" source="deps" style="endArrow=open;endSize=12;dashed=1;html=1;edgeStyle=orthogonalEdgeStyle;rounded=0;exitX=1;exitY=0.25;exitDx=0;exitDy=0;entryX=0;entryY=0.5;entryDx=0;entryDy=0;fontSize=10;verticalAlign=bottom;" target="settings" value="«use»">
      <mxGeometry relative="1" as="geometry" />
    </mxCell>
    <mxCell id="e6" edge="1" parent="1" source="deps" style="endArrow=open;endSize=12;dashed=1;html=1;edgeStyle=orthogonalEdgeStyle;rounded=0;strokeColor=#D79B00;fontColor=#B8860B;exitX=0;exitY=0.75;exitDx=0;exitDy=0;entryX=0;entryY=0.6;entryDx=0;entryDy=0;fontSize=10;verticalAlign=bottom;" target="frameProd" value="«create» — l&#39;unico punto&lt;br&gt;che nomina le classi concrete">
      <mxGeometry relative="1" as="geometry">
        <Array as="points">
          <mxPoint x="140" y="680" />
          <mxPoint x="140" y="1112" />
        </Array>
      </mxGeometry>
    </mxCell>
    <mxCell id="e7" edge="1" parent="1" source="routeSix" style="endArrow=open;endSize=12;dashed=1;html=1;edgeStyle=orthogonalEdgeStyle;rounded=0;exitX=0;exitY=0.75;exitDx=0;exitDy=0;entryX=0;entryY=0.5;entryDx=0;entryDy=0;fontSize=10;verticalAlign=bottom;" target="useCase" value="passa la porta iniettata&lt;br&gt;come ultimo parametro">
      <mxGeometry relative="1" as="geometry">
        <Array as="points">
          <mxPoint x="80" y="195" />
          <mxPoint x="80" y="857" />
        </Array>
      </mxGeometry>
    </mxCell>
    <mxCell id="e8" edge="1" parent="1" source="useCase" style="endArrow=open;endSize=12;dashed=1;html=1;edgeStyle=orthogonalEdgeStyle;rounded=0;exitX=1;exitY=0.5;exitDx=0;exitDy=0;entryX=0;entryY=0.5;entryDx=0;entryDy=0;fontSize=10;verticalAlign=bottom;" target="portLLM" value="«use»">
      <mxGeometry relative="1" as="geometry" />
    </mxCell>
    <mxCell id="e9" edge="1" parent="1" source="useCase" style="endArrow=open;endSize=12;dashed=1;html=1;edgeStyle=orthogonalEdgeStyle;rounded=0;exitX=0.5;exitY=0;exitDx=0;exitDy=0;entryX=0.5;entryY=0;entryDx=0;entryDy=0;fontSize=10;" target="portCE" value="«use»">
      <mxGeometry relative="1" as="geometry">
        <Array as="points">
          <mxPoint x="345" y="780" />
          <mxPoint x="1025" y="780" />
        </Array>
      </mxGeometry>
    </mxCell>
    <mxCell id="e10" edge="1" parent="1" source="litellm" style="endArrow=block;endFill=0;endSize=10;dashed=1;html=1;edgeStyle=orthogonalEdgeStyle;rounded=0;exitX=0.5;exitY=0;exitDx=0;exitDy=0;entryX=0.15;entryY=1;entryDx=0;entryDy=0;" target="portLLM">
      <mxGeometry relative="1" as="geometry" />
    </mxCell>
    <mxCell id="e11" edge="1" parent="1" source="tavily" style="endArrow=block;endFill=0;endSize=10;dashed=1;html=1;edgeStyle=orthogonalEdgeStyle;rounded=0;exitX=0.5;exitY=0;exitDx=0;exitDy=0;entryX=0.2;entryY=1;entryDx=0;entryDy=0;" target="portCE">
      <mxGeometry relative="1" as="geometry" />
    </mxCell>
    <mxCell id="e12" edge="1" parent="1" source="dummyLLM" style="endArrow=block;endFill=0;endSize=10;dashed=1;html=1;edgeStyle=orthogonalEdgeStyle;rounded=0;strokeColor=#B8860B;exitX=0.5;exitY=0;exitDx=0;exitDy=0;entryX=0.85;entryY=1;entryDx=0;entryDy=0;" target="portLLM">
      <mxGeometry relative="1" as="geometry" />
    </mxCell>
    <mxCell id="e13" edge="1" parent="1" source="dummyCE" style="endArrow=block;endFill=0;endSize=10;dashed=1;html=1;edgeStyle=orthogonalEdgeStyle;rounded=0;strokeColor=#B8860B;exitX=0.5;exitY=0;exitDx=0;exitDy=0;entryX=0.85;entryY=1;entryDx=0;entryDy=0;" target="portCE">
      <mxGeometry relative="1" as="geometry" />
    </mxCell>
    <mxCell id="e14" edge="1" parent="1" source="frameTest" style="endArrow=open;endSize=12;dashed=1;html=1;edgeStyle=orthogonalEdgeStyle;rounded=0;strokeColor=#B85450;fontColor=#B85450;strokeWidth=2;exitX=1;exitY=0;exitDx=0;exitDy=0;entryX=0.9;entryY=0;entryDx=0;entryDy=0;fontSize=10;verticalAlign=bottom;" target="resolver" value="&lt;b&gt;app.dependency_overrides[get_llm_client] = lambda: DummyLLMClient()&lt;/b&gt;&lt;br&gt;il provider non viene mai invocato">
      <mxGeometry relative="1" as="geometry">
        <Array as="points">
          <mxPoint x="1590" y="1010" />
          <mxPoint x="1590" y="270" />
          <mxPoint x="884" y="270" />
        </Array>
      </mxGeometry>
    </mxCell>
  </root>
</mxGraphModel>
