<mxGraphModel dx="1679" dy="669" grid="1" gridSize="10" guides="1" tooltips="1" connect="1" arrows="1" fold="1" page="1" pageScale="1" pageWidth="827" pageHeight="1169" math="0" shadow="0">
  <root>
    <mxCell id="0" />
    <mxCell id="1" parent="0" />
    <mxCell id="ospite" parent="1" style="shape=cube;whiteSpace=wrap;html=1;boundedLbl=1;backgroundOutline=1;size=12;fillColor=none;strokeColor=#000000;verticalAlign=top;align=left;spacingLeft=10;spacingTop=4;fontSize=12;" value="&amp;laquo;device&amp;raquo;&lt;br&gt;&lt;u&gt;&lt;b&gt;Macchina ospite&lt;/b&gt;&lt;/u&gt;" vertex="1">
      <mxGeometry height="615" width="740" x="30" y="60" as="geometry" />
    </mxCell>
    <mxCell id="browser" parent="1" style="shape=cube;whiteSpace=wrap;html=1;boundedLbl=1;backgroundOutline=1;darkOpacity=0.05;darkOpacity2=0.1;size=12;fillColor=#FFFFFF;strokeColor=#000000;verticalAlign=top;align=left;spacingLeft=10;spacingTop=4;fontSize=12;" value="&amp;laquo;executionEnvironment&amp;raquo;&lt;br&gt;&lt;u&gt;&lt;b&gt;Browser&lt;/b&gt;&lt;/u&gt;" vertex="1">
      <mxGeometry height="145" width="300" x="70" y="110" as="geometry" />
    </mxCell>
    <mxCell id="browser_art" parent="1" style="rounded=0;whiteSpace=wrap;html=1;fillColor=#FFFFFF;strokeColor=#000000;fontSize=11;verticalAlign=middle;" value="&amp;laquo;artifact&amp;raquo;&lt;br&gt;&lt;b&gt;Applicazione web&lt;/b&gt;" vertex="1">
      <mxGeometry height="60" width="230" x="100" y="175" as="geometry" />
    </mxCell>
    <mxCell id="docker" parent="1" style="shape=cube;whiteSpace=wrap;html=1;boundedLbl=1;backgroundOutline=1;size=12;fillColor=none;strokeColor=#000000;verticalAlign=top;align=left;spacingLeft=10;spacingTop=4;fontSize=12;" value="&amp;laquo;executionEnvironment&amp;raquo;&lt;br&gt;&lt;u&gt;&lt;b&gt;Docker Engine&lt;/b&gt;&lt;/u&gt;" vertex="1">
      <mxGeometry height="340" width="670" x="70" y="295" as="geometry" />
    </mxCell>
    <mxCell id="cweb" parent="1" style="shape=cube;whiteSpace=wrap;html=1;boundedLbl=1;backgroundOutline=1;darkOpacity=0.05;darkOpacity2=0.1;size=12;fillColor=#FFFFFF;strokeColor=#000000;verticalAlign=top;align=left;spacingLeft=10;spacingTop=4;fontSize=11;" value="&amp;laquo;executionEnvironment&amp;raquo;&lt;br&gt;&lt;u&gt;&lt;b&gt;web&lt;/b&gt;&lt;/u&gt;&lt;br&gt;&lt;i&gt;{image = node:22-alpine}&lt;/i&gt;" vertex="1">
      <mxGeometry height="180" width="270" x="105" y="355" as="geometry" />
    </mxCell>
    <mxCell id="cweb_art" parent="1" style="rounded=0;whiteSpace=wrap;html=1;fillColor=#FFFFFF;strokeColor=#000000;fontSize=11;verticalAlign=middle;" value="«artifact»&lt;br&gt;&lt;b&gt;web/&lt;/b&gt;&lt;i&gt;,&lt;br&gt;&lt;br&gt;&lt;/i&gt;" vertex="1">
      <mxGeometry height="85" width="215" x="125" y="430" as="geometry" />
    </mxCell>
    <mxCell id="port5173" parent="1" style="rounded=0;whiteSpace=wrap;html=1;fillColor=#FFFFFF;strokeColor=#000000;" value="" vertex="1">
      <mxGeometry height="22" width="22" x="222" y="355" as="geometry" />
    </mxCell>
    <mxCell id="port5173_l" parent="1" style="text;html=1;strokeColor=none;fillColor=none;align=left;verticalAlign=middle;fontSize=11;" value="&lt;b&gt;:5173&lt;/b&gt;" vertex="1">
      <mxGeometry height="22" width="50" x="244" y="355" as="geometry" />
    </mxCell>
    <mxCell id="capi" parent="1" style="shape=cube;whiteSpace=wrap;html=1;boundedLbl=1;backgroundOutline=1;darkOpacity=0.05;darkOpacity2=0.1;size=12;fillColor=#FFFFFF;strokeColor=#000000;verticalAlign=top;align=left;spacingLeft=10;spacingTop=4;fontSize=11;" value="&amp;laquo;executionEnvironment&amp;raquo;&lt;br&gt;&lt;u&gt;&lt;b&gt;api&lt;/b&gt;&lt;/u&gt;&lt;br&gt;&lt;i&gt;{image = python:3.12-slim}&lt;/i&gt;" vertex="1">
      <mxGeometry height="180" width="280" x="435" y="355" as="geometry" />
    </mxCell>
    <mxCell id="capi_art" parent="1" style="rounded=0;whiteSpace=wrap;html=1;fillColor=#FFFFFF;strokeColor=#000000;fontSize=11;verticalAlign=middle;" value="«artifact»&lt;br&gt;&lt;b&gt;api/&lt;/b&gt;" vertex="1">
      <mxGeometry height="85" width="225" x="455" y="430" as="geometry" />
    </mxCell>
    <mxCell id="port8000" parent="1" style="rounded=0;whiteSpace=wrap;html=1;fillColor=#FFFFFF;strokeColor=#000000;" value="" vertex="1">
      <mxGeometry height="22" width="22" x="558" y="355" as="geometry" />
    </mxCell>
    <mxCell id="port8000_l" parent="1" style="text;html=1;strokeColor=none;fillColor=none;align=left;verticalAlign=middle;fontSize=11;" value="&lt;b&gt;:8000&lt;/b&gt;" vertex="1">
      <mxGeometry height="22" width="50" x="586" y="355" as="geometry" />
    </mxCell>
    <mxCell id="rete" parent="1" style="rounded=0;whiteSpace=wrap;html=1;fillColor=#FFFFFF;strokeColor=#000000;fontSize=11;verticalAlign=middle;align=center;" value="&amp;laquo;communication path&amp;raquo; &amp;nbsp;&lt;b&gt;second-brain-net&lt;/b&gt; &amp;nbsp;(bridge)" vertex="1">
      <mxGeometry height="42" width="610" x="105" y="565" as="geometry" />
    </mxCell>
    <mxCell id="litellm" parent="1" style="shape=cube;whiteSpace=wrap;html=1;boundedLbl=1;backgroundOutline=1;darkOpacity=0.05;darkOpacity2=0.1;size=12;fillColor=#F5F5F5;strokeColor=#000000;verticalAlign=top;align=left;spacingLeft=10;spacingTop=4;fontSize=11;" value="&amp;laquo;external system&amp;raquo;&lt;br&gt;&lt;u&gt;&lt;b&gt;Gateway LiteLLM&lt;/b&gt;&lt;/u&gt;&lt;br&gt;&lt;br&gt;Inferenza del modello linguistico" vertex="1">
      <mxGeometry height="110" width="230" x="860" y="300" as="geometry" />
    </mxCell>
    <mxCell id="tavily" parent="1" style="shape=cube;whiteSpace=wrap;html=1;boundedLbl=1;backgroundOutline=1;darkOpacity=0.05;darkOpacity2=0.1;size=12;fillColor=#F5F5F5;strokeColor=#000000;verticalAlign=top;align=left;spacingLeft=10;spacingTop=4;fontSize=11;" value="&amp;laquo;external system&amp;raquo;&lt;br&gt;&lt;u&gt;&lt;b&gt;Tavily&lt;/b&gt;&lt;/u&gt;&lt;br&gt;&lt;br&gt;Estrazione del contenuto&lt;br&gt;testuale di una pagina web" vertex="1">
      <mxGeometry height="110" width="230" x="870" y="450" as="geometry" />
    </mxCell>
    <mxCell id="e_5173" edge="1" parent="1" source="browser" style="edgeStyle=orthogonalEdgeStyle;rounded=0;html=1;exitX=0.3;exitY=1;exitDx=0;exitDy=0;entryX=0.5;entryY=0;entryDx=0;entryDy=0;endArrow=open;endFill=0;fontSize=10;" target="port5173">
      <mxGeometry relative="1" as="geometry">
        <Array as="points">
          <mxPoint x="233" y="255" />
        </Array>
      </mxGeometry>
    </mxCell>
    <mxCell id="e_5173_l" connectable="0" parent="e_5173" style="edgeLabel;html=1;align=center;verticalAlign=middle;resizable=0;points=[];fontSize=10;labelBackgroundColor=#FFFFFF;" value="&amp;laquo;HTTP&amp;raquo;&lt;br&gt;caricamento&lt;br&gt;dell&#39;applicazione" vertex="1">
      <mxGeometry relative="1" x="-0.2" as="geometry">
        <mxPoint x="-59" y="25" as="offset" />
      </mxGeometry>
    </mxCell>
    <mxCell id="e_8000" edge="1" parent="1" source="browser" style="edgeStyle=orthogonalEdgeStyle;rounded=0;html=1;exitX=0.92;exitY=1;exitDx=0;exitDy=0;entryX=0.5;entryY=0;entryDx=0;entryDy=0;endArrow=open;endFill=0;fontSize=10;" target="port8000">
      <mxGeometry relative="1" as="geometry">
        <Array as="points">
          <mxPoint x="569" y="255" />
        </Array>
      </mxGeometry>
    </mxCell>
    <mxCell id="e_8000_l" connectable="0" parent="e_8000" style="edgeLabel;html=1;align=center;verticalAlign=middle;resizable=0;points=[];fontSize=10;labelBackgroundColor=#FFFFFF;" value="&amp;laquo;HTTP&amp;raquo;&lt;br&gt;chiamate all&#39;API&lt;br&gt;risposte in streaming (SSE)" vertex="1">
      <mxGeometry relative="1" x="0.35" as="geometry">
        <mxPoint x="-24" y="-35" as="offset" />
      </mxGeometry>
    </mxCell>
    <mxCell id="e_litellm" edge="1" parent="1" source="capi" style="edgeStyle=orthogonalEdgeStyle;rounded=0;html=1;exitX=1;exitY=0.25;exitDx=0;exitDy=0;entryX=0;entryY=0.5;entryDx=0;entryDy=0;endArrow=open;endFill=0;fontSize=10;" target="litellm">
      <mxGeometry relative="1" as="geometry" />
    </mxCell>
    <mxCell id="e_litellm_l" connectable="0" parent="e_litellm" style="edgeLabel;html=1;align=center;verticalAlign=bottom;resizable=0;points=[];fontSize=10;labelBackgroundColor=#FFFFFF;" value="&amp;laquo;HTTP&amp;raquo;" vertex="1">
      <mxGeometry relative="1" x="0.2" as="geometry">
        <mxPoint x="13" y="-4" as="offset" />
      </mxGeometry>
    </mxCell>
    <mxCell id="e_tavily" edge="1" parent="1" source="capi" style="edgeStyle=orthogonalEdgeStyle;rounded=0;html=1;exitX=1;exitY=0.7;exitDx=0;exitDy=0;entryX=0;entryY=0.5;entryDx=0;entryDy=0;endArrow=open;endFill=0;fontSize=10;" target="tavily">
      <mxGeometry relative="1" as="geometry" />
    </mxCell>
    <mxCell id="e_tavily_l" connectable="0" parent="e_tavily" style="edgeLabel;html=1;align=center;verticalAlign=bottom;resizable=0;points=[];fontSize=10;labelBackgroundColor=#FFFFFF;" value="&amp;laquo;HTTP&amp;raquo;" vertex="1">
      <mxGeometry relative="1" x="0.2" as="geometry">
        <mxPoint x="34" y="-5" as="offset" />
      </mxGeometry>
    </mxCell>
    <mxCell id="e_rete_web" edge="1" parent="1" source="cweb" style="edgeStyle=orthogonalEdgeStyle;rounded=0;html=1;exitX=0.45;exitY=1;exitDx=0;exitDy=0;entryX=0.2;entryY=0;entryDx=0;entryDy=0;endArrow=none;strokeColor=#000000;" target="rete">
      <mxGeometry relative="1" as="geometry" />
    </mxCell>
    <mxCell id="e_rete_api" edge="1" parent="1" source="capi" style="edgeStyle=orthogonalEdgeStyle;rounded=0;html=1;exitX=0.45;exitY=1;exitDx=0;exitDy=0;entryX=0.75;entryY=0;entryDx=0;entryDy=0;endArrow=none;strokeColor=#000000;" target="rete">
      <mxGeometry relative="1" as="geometry">
        <Array as="points">
          <mxPoint x="561" y="550" />
          <mxPoint x="560" y="550" />
          <mxPoint x="560" y="565" />
        </Array>
      </mxGeometry>
    </mxCell>
    <mxCell id="e_depends" edge="1" parent="1" source="cweb" style="edgeStyle=orthogonalEdgeStyle;rounded=0;html=1;exitX=1;exitY=0.45;exitDx=0;exitDy=0;entryX=0;entryY=0.45;entryDx=0;entryDy=0;endArrow=open;endFill=0;dashed=1;dashPattern=8 8;strokeColor=#666666;fontSize=10;" target="capi">
      <mxGeometry relative="1" as="geometry" />
    </mxCell>
    <mxCell id="e_depends_l" connectable="0" parent="e_depends" style="edgeLabel;html=1;align=center;verticalAlign=middle;resizable=0;points=[];fontSize=10;labelBackgroundColor=#FFFFFF;fontColor=#333333;" value="&amp;laquo;depends_on&amp;raquo;&lt;br&gt;&lt;i&gt;solo ordine di avvio&lt;/i&gt;" vertex="1">
      <mxGeometry relative="1" as="geometry">
        <mxPoint x="-5" y="24" as="offset" />
      </mxGeometry>
    </mxCell>
  </root>
</mxGraphModel>
