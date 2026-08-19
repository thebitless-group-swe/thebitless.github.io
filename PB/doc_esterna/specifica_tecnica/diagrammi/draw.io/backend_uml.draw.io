<mxfile host="app.diagrams.net" scale="1" border="0">
  <diagram name="Page-1" id="lIvVXPzjx3aSEQoJDuq0">
    <mxGraphModel dx="4723" dy="3440" grid="1" gridSize="10" guides="1" tooltips="1" connect="1" arrows="1" fold="1" page="1" pageScale="1" pageWidth="827" pageHeight="1169" math="0" shadow="0">
      <root>
        <mxCell id="0" />
        <mxCell id="1" parent="0" />
        <mxCell id="2" parent="1" style="shape=folder;html=1;whiteSpace=wrap;tabWidth=140;tabHeight=24;tabPosition=left;fontStyle=1;verticalAlign=top;align=left;spacingLeft=10;spacingTop=1;container=1;collapsible=0;fillColor=none;" value="app.core.ports" vertex="1">
          <mxGeometry height="470" width="440" x="250" y="-330" as="geometry" />
        </mxCell>
        <mxCell id="3" parent="2" style="swimlane;fontStyle=3;align=center;verticalAlign=top;childLayout=stackLayout;horizontal=1;startSize=40;horizontalStack=0;resizeParent=1;resizeParentMax=0;resizeLast=0;collapsible=0;marginBottom=0;whiteSpace=wrap;html=1;" value="&lt;div&gt;«porta»&lt;/div&gt;&lt;div&gt;LLMClient&lt;/div&gt;" vertex="1">
          <mxGeometry height="66" width="400" x="20" y="45" as="geometry" />
        </mxCell>
        <mxCell id="4" parent="3" style="text;strokeColor=none;fillColor=none;align=left;verticalAlign=top;spacingLeft=4;spacingRight=4;overflow=hidden;rotatable=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;whiteSpace=wrap;html=1;fontStyle=2" value="+ stream(messages: Sequence[Message]): AsyncIterator[str] {abstract}" vertex="1">
          <mxGeometry height="26" width="400" y="40" as="geometry" />
        </mxCell>
        <mxCell id="5" parent="2" style="html=1;whiteSpace=wrap;fontStyle=1" value="&lt;div&gt;«eccezione»&lt;/div&gt;&lt;div&gt;LLMProviderError&lt;/div&gt;" vertex="1">
          <mxGeometry height="50" width="260" x="50" y="155" as="geometry" />
        </mxCell>
        <mxCell id="6" parent="2" style="swimlane;fontStyle=3;align=center;verticalAlign=top;childLayout=stackLayout;horizontal=1;startSize=40;horizontalStack=0;resizeParent=1;resizeParentMax=0;resizeLast=0;collapsible=0;marginBottom=0;whiteSpace=wrap;html=1;" value="&lt;div&gt;«porta»&lt;/div&gt;&lt;div&gt;ContentExtractor&lt;/div&gt;" vertex="1">
          <mxGeometry height="66" width="400" x="20" y="215" as="geometry" />
        </mxCell>
        <mxCell id="7" parent="6" style="text;strokeColor=none;fillColor=none;align=left;verticalAlign=top;spacingLeft=4;spacingRight=4;overflow=hidden;rotatable=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;whiteSpace=wrap;html=1;fontStyle=2" value="+ async extract(url: str): str {abstract, async}" vertex="1">
          <mxGeometry height="26" width="400" y="40" as="geometry" />
        </mxCell>
        <mxCell id="8" parent="2" style="html=1;whiteSpace=wrap;fontStyle=1" value="&lt;div&gt;«eccezione»&lt;/div&gt;&lt;div&gt;ContentExtractorError&lt;/div&gt;" vertex="1">
          <mxGeometry height="50" width="260" x="50" y="400" as="geometry" />
        </mxCell>
        <mxCell id="9" edge="1" parent="2" source="3" style="endArrow=open;endSize=12;dashed=1;html=1;rounded=0;edgeStyle=orthogonalEdgeStyle;exitX=0.25;exitY=1;exitDx=0;exitDy=0;entryX=0.25;entryY=0;entryDx=0;entryDy=0;fontSize=10;" target="5" value="«dichiara»">
          <mxGeometry relative="1" as="geometry">
            <Array as="points">
              <mxPoint x="115.03" y="111" />
            </Array>
          </mxGeometry>
        </mxCell>
        <mxCell id="10" edge="1" parent="2" source="6" style="endArrow=open;endSize=12;dashed=1;html=1;rounded=0;edgeStyle=orthogonalEdgeStyle;exitX=0.25;exitY=1;exitDx=0;exitDy=0;entryX=0.25;entryY=0;entryDx=0;entryDy=0;fontSize=10;" target="8" value="«dichiara»">
          <mxGeometry relative="1" as="geometry" />
        </mxCell>
        <mxCell id="11" parent="1" style="shape=folder;html=1;whiteSpace=wrap;tabWidth=150;tabHeight=24;tabPosition=left;fontStyle=1;verticalAlign=top;align=left;spacingLeft=10;spacingTop=1;container=1;collapsible=0;fillColor=none;" value="app.core.services" vertex="1">
          <mxGeometry height="340" width="480" x="250" y="170" as="geometry" />
        </mxCell>
        <mxCell id="12" parent="11" style="swimlane;fontStyle=1;align=center;verticalAlign=top;childLayout=stackLayout;horizontal=1;startSize=40;horizontalStack=0;resizeParent=1;resizeParentMax=0;resizeLast=0;collapsible=0;marginBottom=0;whiteSpace=wrap;html=1;" value="&lt;div&gt;«modulo»&lt;/div&gt;&lt;div&gt;generate_from_link&lt;/div&gt;" vertex="1">
          <mxGeometry height="166.93333333333334" width="440" x="20" y="51" as="geometry" />
        </mxCell>
        <mxCell id="13" parent="12" style="text;strokeColor=none;fillColor=none;align=left;verticalAlign=top;spacingLeft=4;spacingRight=4;overflow=hidden;rotatable=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;whiteSpace=wrap;html=1;fontStyle=4" value="+ MAX_URL_LENGTH: int = 2048" vertex="1">
          <mxGeometry height="29.466666666666665" width="440" y="40" as="geometry" />
        </mxCell>
        <mxCell id="14" parent="12" style="line;strokeWidth=1;fillColor=none;align=left;verticalAlign=middle;spacingTop=-1;spacingLeft=3;spacingRight=3;rotatable=0;labelPosition=right;points=[];portConstraint=eastwest;strokeColor=inherit;" value="" vertex="1">
          <mxGeometry height="9.066666666666666" width="440" y="69.46666666666667" as="geometry" />
        </mxCell>
        <mxCell id="15" parent="12" style="text;strokeColor=none;fillColor=none;align=left;verticalAlign=top;spacingLeft=4;spacingRight=4;overflow=hidden;rotatable=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;whiteSpace=wrap;html=1;fontStyle=4" value="&lt;div&gt;+ validate_link(url: str): None&lt;/div&gt;&lt;div&gt;+ fetch_and_extract(url: str, extractor: ContentExtractor): str {async}&lt;/div&gt;&lt;div&gt;+ generate_from_link(url: str, length: Length,&lt;/div&gt;&lt;div&gt;&amp;nbsp; &amp;nbsp;extractor: ContentExtractor, llm: LLMClient): AsyncIterator[str] {async}&lt;/div&gt;" vertex="1">
          <mxGeometry height="88.39999999999999" width="440" y="78.53333333333333" as="geometry" />
        </mxCell>
        <mxCell id="16" parent="11" style="html=1;whiteSpace=wrap;fontStyle=1" value="&lt;div&gt;«eccezione»&lt;/div&gt;&lt;div&gt;FetchError&lt;/div&gt;" vertex="1">
          <mxGeometry height="56.666666666666664" width="180" x="20" y="272" as="geometry" />
        </mxCell>
        <mxCell id="17" parent="11" style="html=1;whiteSpace=wrap;fontStyle=1" value="&lt;div&gt;«eccezione»&lt;/div&gt;&lt;div&gt;InvalidLinkError&lt;/div&gt;" vertex="1">
          <mxGeometry height="56.666666666666664" width="180" x="284" y="272" as="geometry" />
        </mxCell>
        <mxCell id="18" edge="1" parent="11" source="17" style="endArrow=block;endFill=0;html=1;rounded=0;edgeStyle=orthogonalEdgeStyle;exitX=0;exitY=0.5;exitDx=0;exitDy=0;entryX=1;entryY=0.5;entryDx=0;entryDy=0;" target="16" value="">
          <mxGeometry relative="1" as="geometry" />
        </mxCell>
        <mxCell id="19" edge="1" parent="11" source="12" style="endArrow=open;endSize=12;dashed=1;html=1;rounded=0;edgeStyle=orthogonalEdgeStyle;exitX=0.1;exitY=1;exitDx=0;exitDy=0;entryX=0.5;entryY=0;entryDx=0;entryDy=0;fontSize=10;" target="16" value="«solleva»">
          <mxGeometry relative="1" x="0.5506" y="14" as="geometry">
            <mxPoint x="-4" y="-10" as="offset" />
            <Array as="points">
              <mxPoint x="64.04" y="249.33333333333331" />
              <mxPoint x="110.04" y="249.33333333333331" />
            </Array>
          </mxGeometry>
        </mxCell>
        <mxCell id="20" edge="1" parent="11" source="12" style="endArrow=open;endSize=12;dashed=1;html=1;rounded=0;edgeStyle=orthogonalEdgeStyle;exitX=0.9;exitY=1;exitDx=0;exitDy=0;entryX=0.5;entryY=0;entryDx=0;entryDy=0;fontSize=10;" target="17" value="«solleva»">
          <mxGeometry relative="1" as="geometry" />
        </mxCell>
        <mxCell id="21" parent="1" style="shape=folder;html=1;whiteSpace=wrap;tabWidth=220;tabHeight=24;tabPosition=left;fontStyle=1;verticalAlign=top;align=left;spacingLeft=10;spacingTop=1;container=1;collapsible=0;fillColor=none;" value="app.infrastructure.adapters" vertex="1">
          <mxGeometry height="630" width="630" x="820" y="-330" as="geometry" />
        </mxCell>
        <mxCell id="22" parent="21" style="swimlane;fontStyle=1;align=center;verticalAlign=top;childLayout=stackLayout;horizontal=1;startSize=40;horizontalStack=0;resizeParent=1;resizeParentMax=0;resizeLast=0;collapsible=0;marginBottom=0;whiteSpace=wrap;html=1;" value="&lt;div&gt;«adattatore secondario»&lt;/div&gt;&lt;div&gt;LiteLLMClient&lt;/div&gt;" vertex="1">
          <mxGeometry height="237.08510638297872" width="610" x="20" y="60.319148936170215" as="geometry" />
        </mxCell>
        <mxCell id="23" parent="22" style="text;strokeColor=none;fillColor=none;align=left;verticalAlign=top;spacingLeft=4;spacingRight=4;overflow=hidden;rotatable=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;whiteSpace=wrap;html=1;" value="&lt;div&gt;- _client: httpx.AsyncClient&lt;/div&gt;" vertex="1">
          <mxGeometry height="34.851063829787236" width="610" y="40" as="geometry" />
        </mxCell>
        <mxCell id="24" parent="22" style="line;strokeWidth=1;fillColor=none;align=left;verticalAlign=middle;spacingTop=-1;spacingLeft=3;spacingRight=3;rotatable=0;labelPosition=right;points=[];portConstraint=eastwest;strokeColor=inherit;" value="" vertex="1">
          <mxGeometry height="10.72340425531915" width="610" y="74.85106382978724" as="geometry" />
        </mxCell>
        <mxCell id="25" parent="22" style="text;strokeColor=none;fillColor=none;align=left;verticalAlign=top;spacingLeft=4;spacingRight=4;overflow=hidden;rotatable=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;whiteSpace=wrap;html=1;" value="&lt;div&gt;«create» + LiteLLMClient(settings: Settings)&lt;/div&gt;&lt;div&gt;+ async stream(messages: Sequence[Message], max_tokens: int | None = None): AsyncIterator[str] {async}&lt;/div&gt;&lt;div&gt;+ async aclose(): None {async}&lt;/div&gt;" vertex="1">
          <mxGeometry height="96.51063829787235" width="610" y="85.57446808510639" as="geometry" />
        </mxCell>
        <mxCell id="26" parent="22" style="shape=note;whiteSpace=wrap;html=1;size=14;align=left;verticalAlign=top;spacingLeft=6;spacingTop=2;fontSize=10;" value="&lt;div&gt;Costanti di modulo (litellm_client.py), fuori dalla classe:&amp;nbsp;&lt;span style=&quot;background-color: transparent; color: light-dark(rgb(0, 0, 0), rgb(255, 255, 255));&quot;&gt;CONNECT_TIMEOUT_SECONDS = 10.0, READ_TIMEOUT_SECONDS = 180.0, WRITE_TIMEOUT_SECONDS = 30.0, POOL_TIMEOUT_SECONDS = 10.0.&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;background-color: transparent; color: light-dark(rgb(0, 0, 0), rgb(255, 255, 255));&quot;&gt;read è alto perché in streaming misura la pausa fra due chunk, non l&#39;intera generazione; un test verifica connect &amp;lt; read.&lt;/span&gt;&lt;/div&gt;" vertex="1">
          <mxGeometry height="55" width="610" y="182.08510638297872" as="geometry" />
        </mxCell>
        <mxCell id="27" parent="21" style="swimlane;fontStyle=1;align=center;verticalAlign=top;childLayout=stackLayout;horizontal=1;startSize=40;horizontalStack=0;resizeParent=1;resizeParentMax=0;resizeLast=0;collapsible=0;marginBottom=0;whiteSpace=wrap;html=1;" value="&lt;div&gt;«adattatore secondario»&lt;/div&gt;&lt;div&gt;TavilyExtractor&lt;/div&gt;" vertex="1">
          <mxGeometry height="223.10638297872342" width="430" x="100" y="354.9963829787234" as="geometry" />
        </mxCell>
        <mxCell id="28" parent="27" style="text;strokeColor=none;fillColor=none;align=left;verticalAlign=top;spacingLeft=4;spacingRight=4;overflow=hidden;rotatable=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;whiteSpace=wrap;html=1;" value="&lt;div&gt;- _api_key: str&lt;/div&gt;&lt;div&gt;- _client: TavilyClient&lt;/div&gt;" vertex="1">
          <mxGeometry height="50" width="430" y="40" as="geometry" />
        </mxCell>
        <mxCell id="29" parent="27" style="line;strokeWidth=1;fillColor=none;align=left;verticalAlign=middle;spacingTop=-1;spacingLeft=3;spacingRight=3;rotatable=0;labelPosition=right;points=[];portConstraint=eastwest;strokeColor=inherit;" value="" vertex="1">
          <mxGeometry height="10.72340425531915" width="430" y="90" as="geometry" />
        </mxCell>
        <mxCell id="30" parent="27" style="text;strokeColor=none;fillColor=none;align=left;verticalAlign=top;spacingLeft=4;spacingRight=4;overflow=hidden;rotatable=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;whiteSpace=wrap;html=1;" value="&lt;div&gt;«create» + TavilyExtractor(api_key: str)&lt;/div&gt;&lt;div&gt;+ async extract(url: str): str&lt;/div&gt;&lt;div&gt;+ async aclose(): None&lt;/div&gt;" vertex="1">
          <mxGeometry height="72.38297872340426" width="430" y="100.72340425531915" as="geometry" />
        </mxCell>
        <mxCell id="31" parent="27" style="shape=note;whiteSpace=wrap;html=1;size=14;align=left;verticalAlign=top;spacingLeft=6;spacingTop=2;fontSize=10;" value="Nessuna porta dichiara aclose(): il ciclo di vita delle risorse di trasporto è dell&#39;adattatore concreto, e solo il composition root (app/dependencies.py) sa quale sia." vertex="1">
          <mxGeometry height="50" width="430" y="173.10638297872342" as="geometry" />
        </mxCell>
        <mxCell id="32" parent="1" style="shape=folder;html=1;whiteSpace=wrap;tabWidth=80;tabHeight=24;tabPosition=left;fontStyle=1;verticalAlign=top;align=left;spacingLeft=10;spacingTop=1;container=1;collapsible=0;fillColor=none;" value="app" vertex="1">
          <mxGeometry height="200" width="320" x="820" y="330" as="geometry" />
        </mxCell>
        <mxCell id="33" parent="32" style="swimlane;fontStyle=1;align=center;verticalAlign=top;childLayout=stackLayout;horizontal=1;startSize=40;horizontalStack=0;resizeParent=1;resizeParentMax=0;resizeLast=0;collapsible=0;marginBottom=0;whiteSpace=wrap;html=1;" value="&lt;div&gt;«configurazione»&lt;/div&gt;&lt;div&gt;Settings&lt;/div&gt;" vertex="1">
          <mxGeometry height="130" width="280" x="20" y="45" as="geometry" />
        </mxCell>
        <mxCell id="34" parent="33" style="text;strokeColor=none;fillColor=none;align=left;verticalAlign=top;spacingLeft=4;spacingRight=4;overflow=hidden;rotatable=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;whiteSpace=wrap;html=1;" value="&lt;div&gt;+ litellm_base_url: str&lt;/div&gt;&lt;div&gt;+ litellm_model: str&lt;/div&gt;&lt;div&gt;+ litellm_api_key: str&lt;/div&gt;&lt;div&gt;+ tavily_api_key: str&lt;/div&gt;&lt;div&gt;+ cors_origins: list[str]&lt;/div&gt;" vertex="1">
          <mxGeometry height="90" width="280" y="40" as="geometry" />
        </mxCell>
        <mxCell id="35" edge="1" parent="1" source="22" style="endArrow=block;endFill=0;dashed=1;endSize=12;html=1;rounded=0;edgeStyle=orthogonalEdgeStyle;exitX=0;exitY=0.5;exitDx=0;exitDy=0;entryX=1;entryY=0.5;entryDx=0;entryDy=0;" target="3" value="">
          <mxGeometry relative="1" as="geometry" />
        </mxCell>
        <mxCell id="36" edge="1" parent="1" source="27" style="endArrow=block;endFill=0;dashed=1;endSize=12;html=1;rounded=0;edgeStyle=orthogonalEdgeStyle;exitX=0;exitY=0.5;exitDx=0;exitDy=0;entryX=1;entryY=0.5;entryDx=0;entryDy=0;" target="6" value="">
          <mxGeometry relative="1" as="geometry" />
        </mxCell>
        <mxCell id="37" edge="1" parent="1" source="22" style="endArrow=open;endSize=8;html=1;rounded=0;edgeStyle=orthogonalEdgeStyle;exitX=1;exitY=0.25;exitDx=0;exitDy=0;" target="33" value="">
          <mxGeometry relative="1" as="geometry">
            <Array as="points">
              <mxPoint x="1450" y="-244.87" />
              <mxPoint x="1480.13" y="-244.87" />
              <mxPoint x="1480.13" y="440" />
            </Array>
          </mxGeometry>
        </mxCell>
        <mxCell id="38" connectable="0" parent="37" style="edgeLabel;html=1;align=center;verticalAlign=middle;resizable=0;points=[];fontSize=10;" value="- _settings" vertex="1">
          <mxGeometry relative="1" x="0.55" as="geometry">
            <mxPoint x="36" y="-10" as="offset" />
          </mxGeometry>
        </mxCell>
        <mxCell id="39" connectable="0" parent="37" style="edgeLabel;html=1;align=center;verticalAlign=middle;resizable=0;points=[];fontSize=10;" value="1" vertex="1">
          <mxGeometry relative="1" x="0.9" as="geometry">
            <mxPoint y="-10" as="offset" />
          </mxGeometry>
        </mxCell>
        <mxCell id="40" edge="1" parent="1" source="22" style="endArrow=open;endSize=12;dashed=1;html=1;rounded=0;edgeStyle=orthogonalEdgeStyle;exitX=0.5;exitY=0;exitDx=0;exitDy=0;fontSize=10;" target="47" value="«usa»">
          <mxGeometry relative="1" x="0.2542" as="geometry">
            <mxPoint x="-1" as="offset" />
            <Array as="points">
              <mxPoint x="1055.04" y="-269.70000000000005" />
              <mxPoint x="1055.04" y="-439.96000000000004" />
            </Array>
            <mxPoint x="620" y="-440" as="targetPoint" />
          </mxGeometry>
        </mxCell>
        <mxCell id="41" edge="1" parent="1" source="3" style="endArrow=open;endSize=12;dashed=1;html=1;rounded=0;edgeStyle=orthogonalEdgeStyle;exitX=0.5;exitY=0;exitDx=0;exitDy=0;fontSize=10;" target="48" value="«usa»">
          <mxGeometry relative="1" as="geometry">
            <Array as="points">
              <mxPoint x="470" y="-370" />
              <mxPoint x="470" y="-370" />
            </Array>
          </mxGeometry>
        </mxCell>
        <mxCell id="42" edge="1" parent="1" source="22" style="endArrow=open;endSize=12;dashed=1;html=1;rounded=0;edgeStyle=orthogonalEdgeStyle;exitX=0;exitY=0.75;exitDx=0;exitDy=0;entryX=1;entryY=0.5;entryDx=0;entryDy=0;fontSize=10;" target="5" value="«solleva»">
          <mxGeometry relative="1" as="geometry">
            <Array as="points">
              <mxPoint x="840.09" y="-149.91000000000008" />
            </Array>
          </mxGeometry>
        </mxCell>
        <mxCell id="43" edge="1" parent="1" source="27" style="endArrow=open;endSize=12;dashed=1;html=1;rounded=0;edgeStyle=orthogonalEdgeStyle;exitX=0;exitY=0.75;exitDx=0;exitDy=0;entryX=1;entryY=0.5;entryDx=0;entryDy=0;fontSize=10;" target="8" value="«solleva»">
          <mxGeometry relative="1" as="geometry">
            <Array as="points">
              <mxPoint x="720.06" y="20.529999999999973" />
              <mxPoint x="720.06" y="95" />
            </Array>
          </mxGeometry>
        </mxCell>
        <mxCell id="44" edge="1" parent="1" source="12" style="endArrow=open;endSize=12;dashed=1;html=1;rounded=0;edgeStyle=orthogonalEdgeStyle;exitX=0.75;exitY=0;exitDx=0;exitDy=0;fontSize=10;" value="«usa»">
          <mxGeometry relative="1" x="0.3256" y="10" as="geometry">
            <mxPoint as="offset" />
            <Array as="points">
              <mxPoint x="600.05" y="-48.94999999999999" />
            </Array>
            <mxPoint x="600" y="-49" as="targetPoint" />
          </mxGeometry>
        </mxCell>
        <mxCell id="45" edge="1" parent="1" style="endArrow=open;endSize=12;dashed=1;html=1;rounded=0;edgeStyle=orthogonalEdgeStyle;entryX=0.9;entryY=1;entryDx=0;entryDy=0;fontSize=10;" target="3" value="«usa»">
          <mxGeometry relative="1" as="geometry">
            <Array as="points">
              <mxPoint x="630" y="215" />
            </Array>
            <mxPoint x="630" y="215" as="sourcePoint" />
          </mxGeometry>
        </mxCell>
        <mxCell id="46" parent="1" style="shape=folder;html=1;whiteSpace=wrap;tabWidth=160;tabHeight=24;tabPosition=left;fontStyle=1;verticalAlign=top;align=left;spacingLeft=10;spacingTop=1;container=1;collapsible=0;fillColor=none;" value="app.core.domain" vertex="1">
          <mxGeometry height="380" width="360" x="510" y="-730" as="geometry" />
        </mxCell>
        <mxCell id="47" parent="46" style="swimlane;fontStyle=1;align=center;verticalAlign=top;childLayout=stackLayout;horizontal=1;startSize=40;horizontalStack=0;resizeParent=1;resizeParentMax=0;resizeLast=0;collapsible=0;marginBottom=0;whiteSpace=wrap;html=1;" value="&lt;div&gt;«value object»&lt;/div&gt;&lt;div&gt;Message&lt;/div&gt;" vertex="1">
          <mxGeometry height="111.65111111111112" width="320" x="20" y="228" as="geometry" />
        </mxCell>
        <mxCell id="48" parent="47" style="text;strokeColor=none;fillColor=none;align=left;verticalAlign=top;spacingLeft=4;spacingRight=4;overflow=hidden;rotatable=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;whiteSpace=wrap;html=1;" value="&lt;div&gt;+ role: Literal[&quot;system&quot;, &quot;user&quot;, &quot;assistant&quot;]&lt;/div&gt;&lt;div&gt;+ content: str&lt;/div&gt;" vertex="1">
          <mxGeometry height="42.22222222222223" width="320" y="40" as="geometry" />
        </mxCell>
        <mxCell id="49" parent="47" style="shape=note;whiteSpace=wrap;html=1;size=14;align=left;verticalAlign=top;spacingLeft=6;spacingTop=2;fontSize=10;" value="&lt;b&gt;«definita in values.py»&lt;/b&gt;" vertex="1">
          <mxGeometry height="29.428888888888892" width="320" y="82.22222222222223" as="geometry" />
        </mxCell>
        <mxCell id="50" parent="46" style="swimlane;fontStyle=1;align=center;verticalAlign=top;childLayout=stackLayout;horizontal=1;startSize=40;horizontalStack=0;resizeParent=1;resizeParentMax=0;resizeLast=0;collapsible=0;marginBottom=0;whiteSpace=wrap;html=1;" value="&lt;div&gt;«module»&lt;/div&gt;&lt;div&gt;values&lt;/div&gt;" vertex="1">
          <mxGeometry height="147.91503267973854" width="320" x="20" y="55.88235294117647" as="geometry" />
        </mxCell>
        <mxCell id="51" parent="50" style="text;strokeColor=none;fillColor=none;align=left;verticalAlign=top;spacingLeft=4;spacingRight=4;overflow=hidden;rotatable=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;whiteSpace=wrap;html=1;" value="&lt;div&gt;+ Length: Literal[&quot;breve&quot;, &quot;medio&quot;, &quot;dettagliato&quot;]&lt;/div&gt;&lt;div&gt;+ LENGTH_MAX_TOKENS: dict[Length, int]&lt;/div&gt;&lt;div&gt;+ MAX_TEXT_LENGTH: MaxTextLength = 12000&lt;/div&gt;" vertex="1">
          <mxGeometry height="61.47058823529412" width="320" y="40" as="geometry" />
        </mxCell>
        <mxCell id="52" parent="50" style="shape=note;whiteSpace=wrap;html=1;size=14;align=left;verticalAlign=top;spacingLeft=6;spacingTop=2;fontSize=10;" value="values.py definisce anche Language, Style, Hat, MIN_TEXT_LENGTH, MIN/MAX_PROMPT_LENGTH, NO_ERRORS_MARKER; omessi perché fuori dallo scopo di UC67.2." vertex="1">
          <mxGeometry height="46.44444444444444" width="320" y="101.47058823529412" as="geometry" />
        </mxCell>
        <mxCell id="53" edge="1" parent="1" source="15" style="endArrow=open;endSize=12;dashed=1;html=1;rounded=0;edgeStyle=orthogonalEdgeStyle;" target="50" value="Use">
          <mxGeometry relative="1" width="160" as="geometry">
            <Array as="points">
              <mxPoint x="220" y="343.79999999999995" />
              <mxPoint x="220" y="-660" />
            </Array>
            <mxPoint x="-140" y="220" as="sourcePoint" />
            <mxPoint x="-10" y="130" as="targetPoint" />
          </mxGeometry>
        </mxCell>
        <mxCell id="54" edge="1" parent="1" source="15" style="endArrow=open;endSize=12;dashed=1;html=1;rounded=0;edgeStyle=orthogonalEdgeStyle;" target="8" value="«cattura»">
          <mxGeometry relative="1" width="160" as="geometry">
            <mxPoint x="-60" y="410" as="sourcePoint" />
            <mxPoint x="100" y="410" as="targetPoint" />
          </mxGeometry>
        </mxCell>
      </root>
    </mxGraphModel>
  </diagram>
</mxfile>
