<mxGraphModel dx="1569" dy="772" grid="1" gridSize="10" guides="1" tooltips="1" connect="1" arrows="1" fold="1" page="1" pageScale="1" pageWidth="827" pageHeight="1169" math="0" shadow="0">
  <root>
    <mxCell id="0" />
    <mxCell id="1" parent="0" />
    <mxCell id="pkg_core" parent="1" style="shape=folder;fontStyle=1;spacingTop=10;tabWidth=130;tabHeight=30;tabPosition=left;html=1;whiteSpace=wrap;fillColor=none;strokeColor=#666666;dashed=1;dashPattern=8 8;align=left;verticalAlign=top;spacingLeft=10;" value="app/core/ports/" vertex="1">
      <mxGeometry height="210" width="800" x="40" y="40" as="geometry" />
    </mxCell>
    <mxCell id="pkg_infra" parent="1" style="shape=folder;fontStyle=1;spacingTop=10;tabWidth=180;tabHeight=40;tabPosition=left;html=1;whiteSpace=wrap;fillColor=none;strokeColor=#666666;dashed=1;dashPattern=8 8;align=left;verticalAlign=top;spacingLeft=10;" value="app/infrastructure/adapters/" vertex="1">
      <mxGeometry height="190" width="800" x="40" y="270" as="geometry" />
    </mxCell>
    <mxCell id="pkg_terzi" parent="1" style="shape=folder;fontStyle=1;spacingTop=10;tabWidth=110;tabHeight=40;tabPosition=left;html=1;whiteSpace=wrap;fillColor=none;strokeColor=#666666;dashed=1;dashPattern=8 8;align=left;verticalAlign=top;spacingLeft=10;" value="librerie di terzi" vertex="1">
      <mxGeometry height="140" width="800" x="40" y="480" as="geometry" />
    </mxCell>
    <mxCell id="llmclient_lol" parent="1" style="shape=ellipse;whiteSpace=wrap;html=1;aspect=fixed;align=center;verticalAlign=bottom;spacingTop=0;labelPosition=center;verticalLabelPosition=bottom;fontStyle=0;fillColor=#FFFFFF;strokeColor=#000000;strokeWidth=2;" value="LLMClient" vertex="1">
      <mxGeometry height="30" width="30" x="215" y="180" as="geometry" />
    </mxCell>
    <mxCell id="extractor_lol" parent="1" style="shape=ellipse;whiteSpace=wrap;html=1;aspect=fixed;align=center;verticalAlign=bottom;spacingTop=0;labelPosition=center;verticalLabelPosition=bottom;fontStyle=0;fillColor=#FFFFFF;strokeColor=#000000;strokeWidth=2;" value="ContentExtractor" vertex="1">
      <mxGeometry height="30" width="30" x="595" y="180" as="geometry" />
    </mxCell>
    <mxCell id="llmerr" parent="1" style="html=1;whiteSpace=wrap;fillColor=#F5F5F5;strokeColor=#000000;align=center;verticalAlign=middle;" value="&amp;laquo;exception&amp;raquo;&lt;br&gt;&lt;b&gt;LLMProviderError&lt;/b&gt;" vertex="1">
      <mxGeometry height="50" width="140" x="215" y="100" as="geometry" />
    </mxCell>
    <mxCell id="exterr" parent="1" style="html=1;whiteSpace=wrap;fillColor=#F5F5F5;strokeColor=#000000;align=center;verticalAlign=middle;" value="&amp;laquo;exception&amp;raquo;&lt;br&gt;&lt;b&gt;ContentExtractorError&lt;/b&gt;" vertex="1">
      <mxGeometry height="50" width="150" x="450" y="105" as="geometry" />
    </mxCell>
    <mxCell id="litellm" parent="1" style="html=1;whiteSpace=wrap;fillColor=#FFFFFF;strokeColor=#000000;align=left;verticalAlign=top;spacingLeft=8;spacingTop=4;" value="&lt;b&gt;LiteLLMClient&lt;/b&gt;&lt;hr size=&quot;1&quot;&gt;- _client: httpx.AsyncClient&lt;hr size=&quot;1&quot;&gt;+ stream(messages)&lt;br&gt;+ aclose()" vertex="1">
      <mxGeometry height="100" width="220" x="120" y="330" as="geometry" />
    </mxCell>
    <mxCell id="tavilyad" parent="1" style="html=1;whiteSpace=wrap;fillColor=#FFFFFF;strokeColor=#000000;align=left;verticalAlign=top;spacingLeft=8;spacingTop=4;" value="&lt;b&gt;TavilyExtractor&lt;/b&gt;&lt;hr size=&quot;1&quot;&gt;- _client: TavilyClient&lt;hr size=&quot;1&quot;&gt;+ extract(url)&lt;br&gt;+ aclose()" vertex="1">
      <mxGeometry height="100" width="220" x="500" y="330" as="geometry" />
    </mxCell>
    <mxCell id="httpx" parent="1" style="html=1;whiteSpace=wrap;fillColor=#F5F5F5;strokeColor=#000000;align=left;verticalAlign=top;spacingLeft=8;spacingTop=4;" value="&lt;b&gt;httpx.AsyncClient&lt;/b&gt;&lt;hr size=&quot;1&quot;&gt;+ stream(...)&lt;br&gt;&lt;i&gt;asincrono&lt;/i&gt;" vertex="1">
      <mxGeometry height="70" width="220" x="120" y="520" as="geometry" />
    </mxCell>
    <mxCell id="tavilycl" parent="1" style="html=1;whiteSpace=wrap;fillColor=#F5F5F5;strokeColor=#000000;align=left;verticalAlign=top;spacingLeft=8;spacingTop=4;" value="&lt;b&gt;TavilyClient&lt;/b&gt;&lt;hr size=&quot;1&quot;&gt;+ extract(urls)&lt;br&gt;&lt;i&gt;sincrono&lt;/i&gt;" vertex="1">
      <mxGeometry height="70" width="220" x="500" y="520" as="geometry" />
    </mxCell>
    <mxCell id="edge_litellm_lol" edge="1" parent="1" source="litellm" style="endArrow=none;html=1;strokeWidth=1;exitX=0.5;exitY=0;entryX=0.5;entryY=1;" target="llmclient_lol">
      <mxGeometry relative="1" as="geometry" />
    </mxCell>
    <mxCell id="edge_tavily_lol" edge="1" parent="1" source="tavilyad" style="endArrow=none;html=1;strokeWidth=1;exitX=0.5;exitY=0;entryX=0.5;entryY=1;" target="extractor_lol">
      <mxGeometry relative="1" as="geometry" />
    </mxCell>
    <mxCell id="edge_litellm_err" edge="1" parent="1" source="litellm" style="endArrow=block;endFill=0;dashed=1;dashPattern=8 8;html=1;exitX=0.75;exitY=0;exitDx=0;exitDy=0;" target="llmerr">
      <mxGeometry relative="1" as="geometry">
        <Array as="points">
          <mxPoint x="285" y="240" />
        </Array>
        <mxPoint x="310" y="330" as="sourcePoint" />
        <mxPoint x="310" y="170" as="targetPoint" />
      </mxGeometry>
    </mxCell>
    <mxCell id="edge_litellm_err_lbl" edge="1" parent="edge_litellm_err" style="edgeLabel;html=1;align=center;verticalAlign=middle;resizable=0;points=[];labelBackgroundColor=#ffffff;fontSize=10;" value="&amp;laquo;throws&amp;raquo;">
      <mxGeometry relative="1" x="0.1" as="geometry">
        <mxPoint as="offset" />
      </mxGeometry>
    </mxCell>
    <mxCell id="edge_tavily_err" edge="1" parent="1" source="tavilyad" style="endArrow=block;endFill=0;dashed=1;dashPattern=8 8;html=1;exitX=0.05;exitY=0;entryX=0.4;entryY=1;" target="exterr">
      <mxGeometry relative="1" as="geometry" />
    </mxCell>
    <mxCell id="edge_tavily_err_lbl" edge="1" parent="edge_tavily_err" style="edgeLabel;html=1;align=center;verticalAlign=middle;resizable=0;points=[];labelBackgroundColor=#ffffff;fontSize=10;" value="&amp;laquo;throws&amp;raquo;">
      <mxGeometry relative="1" x="0.1" as="geometry">
        <mxPoint as="offset" />
      </mxGeometry>
    </mxCell>
    <mxCell id="edge_litellm_httpx" edge="1" parent="1" source="litellm" style="endArrow=none;startArrow=diamondThin;startFill=1;html=1;exitX=0.5;exitY=1;entryX=0.5;entryY=0;" target="httpx">
      <mxGeometry relative="1" as="geometry" />
    </mxCell>
    <mxCell id="edge_litellm_httpx_lbl" edge="1" parent="edge_litellm_httpx" style="edgeLabel;html=1;align=center;verticalAlign=middle;resizable=0;points=[];labelBackgroundColor=#ffffff;fontSize=10;" value="incapsula">
      <mxGeometry relative="1" as="geometry">
        <mxPoint as="offset" />
      </mxGeometry>
    </mxCell>
    <mxCell id="edge_tavily_tavilycl" edge="1" parent="1" source="tavilyad" style="endArrow=none;startArrow=diamondThin;startFill=1;html=1;exitX=0.5;exitY=1;entryX=0.5;entryY=0;" target="tavilycl">
      <mxGeometry relative="1" as="geometry" />
    </mxCell>
    <mxCell id="edge_tavily_tavilycl_lbl" edge="1" parent="edge_tavily_tavilycl" style="edgeLabel;html=1;align=center;verticalAlign=middle;resizable=0;points=[];labelBackgroundColor=#ffffff;fontSize=10;" value="incapsula">
      <mxGeometry relative="1" as="geometry">
        <mxPoint as="offset" />
      </mxGeometry>
    </mxCell>
  </root>
</mxGraphModel>
