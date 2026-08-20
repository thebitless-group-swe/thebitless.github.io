<mxGraphModel dx="2518" dy="1004" grid="1" gridSize="10" guides="1" tooltips="1" connect="1" arrows="1" fold="1" page="1" pageScale="1" pageWidth="827" pageHeight="1169" math="0" shadow="0">
  <root>
    <mxCell id="0" />
    <mxCell id="1" parent="0" />
    <mxCell id="subsysBox" parent="1" style="rounded=1;whiteSpace=wrap;html=1;dashed=1;dashPattern=8 8;fillColor=#F7F7F7;strokeColor=#999999;verticalAlign=top;align=left;spacingLeft=12;spacingTop=6;fontSize=12;fontColor=#666666;" value="&lt;b&gt;Sottosistema incapsulato&lt;/b&gt; — nessun componente React importa questi moduli" vertex="1">
      <mxGeometry height="250" width="1300" x="150" y="570" as="geometry" />
    </mxCell>
    <mxCell id="cDialog" parent="1" style="swimlane;childLayout=stackLayout;horizontal=1;startSize=54;horizontalStack=0;resizeParent=1;resizeParentMax=0;html=1;verticalAlign=middle;align=center;whiteSpace=wrap;collapsible=0;strokeColor=#1B5E9E;fillColor=#DAE8FC;fontSize=12;" value="«Client»&lt;br&gt;&lt;b&gt;AiActionDialog&lt;/b&gt;&lt;br&gt;&lt;i&gt;web/src/components/AiActionDialog.tsx&lt;/i&gt;" vertex="1">
      <mxGeometry height="106" width="340" x="340" y="60" as="geometry" />
    </mxCell>
    <mxCell id="cd_1" parent="cDialog" style="text;strokeColor=none;fillColor=none;align=left;verticalAlign=middle;spacingLeft=6;spacingRight=6;overflow=hidden;rotatable=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;html=1;fontSize=11;" value="- streamFn : () ⟶ AsyncIterable&amp;lt;string&amp;gt;" vertex="1">
      <mxGeometry height="26" width="340" y="54" as="geometry" />
    </mxCell>
    <mxCell id="cd_2" parent="cDialog" style="text;strokeColor=none;fillColor=none;align=left;verticalAlign=middle;spacingLeft=6;spacingRight=6;overflow=hidden;rotatable=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;html=1;fontSize=11;" value="- handleGenerate() : void" vertex="1">
      <mxGeometry height="26" width="340" y="80" as="geometry" />
    </mxCell>
    <mxCell id="cStream" parent="1" style="swimlane;childLayout=stackLayout;horizontal=1;startSize=54;horizontalStack=0;resizeParent=1;resizeParentMax=0;html=1;verticalAlign=middle;align=center;whiteSpace=wrap;collapsible=0;strokeColor=#1B5E9E;fillColor=#DAE8FC;fontSize=12;" value="«Client»&lt;br&gt;&lt;b&gt;useAiStream&lt;/b&gt;&lt;br&gt;&lt;i&gt;web/src/hooks/useAiStream.ts&lt;/i&gt;" vertex="1">
      <mxGeometry height="106" width="330" x="760" y="60" as="geometry" />
    </mxCell>
    <mxCell id="cs_1" parent="cStream" style="text;strokeColor=none;fillColor=none;align=left;verticalAlign=middle;spacingLeft=6;spacingRight=6;overflow=hidden;rotatable=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;html=1;fontSize=11;" value="+ start(fn) : Promise&amp;lt;void&amp;gt;" vertex="1">
      <mxGeometry height="26" width="330" y="54" as="geometry" />
    </mxCell>
    <mxCell id="cs_2" parent="cStream" style="text;strokeColor=none;fillColor=none;align=left;verticalAlign=middle;spacingLeft=6;spacingRight=6;overflow=hidden;rotatable=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;html=1;fontSize=11;" value="+ abort() : void" vertex="1">
      <mxGeometry height="26" width="330" y="80" as="geometry" />
    </mxCell>
    <mxCell id="facade" parent="1" style="swimlane;childLayout=stackLayout;horizontal=1;startSize=54;horizontalStack=0;resizeParent=1;resizeParentMax=0;html=1;verticalAlign=middle;align=center;whiteSpace=wrap;collapsible=0;strokeColor=#82B366;fillColor=#D5E8D4;fontSize=13;fontStyle=0;" value="«Facade»&lt;br&gt;&lt;b&gt;api&lt;/b&gt;&lt;br&gt;&lt;i&gt;web/src/lib/api.ts&lt;/i&gt;" vertex="1">
      <mxGeometry height="236" width="700" x="380" y="250" as="geometry" />
    </mxCell>
    <mxCell id="f_1" parent="facade" style="text;strokeColor=none;fillColor=none;align=left;verticalAlign=middle;spacingLeft=6;spacingRight=6;overflow=hidden;rotatable=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;html=1;fontSize=11;" value="+ summarize(text : string, length : Length = &#39;medio&#39;) : AsyncIterable&amp;lt;string&amp;gt;" vertex="1">
      <mxGeometry height="26" width="700" y="54" as="geometry" />
    </mxCell>
    <mxCell id="f_2" parent="facade" style="text;strokeColor=none;fillColor=none;align=left;verticalAlign=middle;spacingLeft=6;spacingRight=6;overflow=hidden;rotatable=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;html=1;fontSize=11;" value="+ translate(text : string, target_language : Language) : AsyncIterable&amp;lt;string&amp;gt;" vertex="1">
      <mxGeometry height="26" width="700" y="80" as="geometry" />
    </mxCell>
    <mxCell id="f_3" parent="facade" style="text;strokeColor=none;fillColor=none;align=left;verticalAlign=middle;spacingLeft=6;spacingRight=6;overflow=hidden;rotatable=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;html=1;fontSize=11;" value="+ rewrite(text : string, style : Style) : AsyncIterable&amp;lt;string&amp;gt;" vertex="1">
      <mxGeometry height="26" width="700" y="106" as="geometry" />
    </mxCell>
    <mxCell id="f_4" parent="facade" style="text;strokeColor=none;fillColor=none;align=left;verticalAlign=middle;spacingLeft=6;spacingRight=6;overflow=hidden;rotatable=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;html=1;fontSize=11;" value="+ grammar(text : string) : AsyncIterable&amp;lt;string&amp;gt;" vertex="1">
      <mxGeometry height="26" width="700" y="132" as="geometry" />
    </mxCell>
    <mxCell id="f_5" parent="facade" style="text;strokeColor=none;fillColor=none;align=left;verticalAlign=middle;spacingLeft=6;spacingRight=6;overflow=hidden;rotatable=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;html=1;fontSize=11;" value="+ critique(text : string, hat : Hat) : AsyncIterable&amp;lt;string&amp;gt;" vertex="1">
      <mxGeometry height="26" width="700" y="158" as="geometry" />
    </mxCell>
    <mxCell id="f_6" parent="facade" style="text;strokeColor=none;fillColor=none;align=left;verticalAlign=middle;spacingLeft=6;spacingRight=6;overflow=hidden;rotatable=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;html=1;fontSize=11;" value="+ generate(prompt : string, length : Length = &#39;medio&#39;) : AsyncIterable&amp;lt;string&amp;gt;" vertex="1">
      <mxGeometry height="26" width="700" y="184" as="geometry" />
    </mxCell>
    <mxCell id="f_7" parent="facade" style="text;strokeColor=none;fillColor=none;align=left;verticalAlign=middle;spacingLeft=6;spacingRight=6;overflow=hidden;rotatable=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;html=1;fontSize=11;" value="+ generateFromLink(url : string, length : Length = &#39;medio&#39;) : AsyncIterable&amp;lt;string&amp;gt;" vertex="1">
      <mxGeometry height="26" width="700" y="210" as="geometry" />
    </mxCell>
    <mxCell id="models" parent="1" style="swimlane;childLayout=stackLayout;horizontal=1;startSize=54;horizontalStack=0;resizeParent=1;resizeParentMax=0;html=1;verticalAlign=middle;align=center;whiteSpace=wrap;collapsible=0;strokeColor=#666666;fillColor=#FFFFFF;fontSize=12;" value="«type alias»&lt;br&gt;&lt;b&gt;types/models.ts&lt;/b&gt;&lt;br&gt;&lt;i&gt;vocabolario del contratto&lt;/i&gt;" vertex="1">
      <mxGeometry height="158" width="300" x="1150" y="240" as="geometry" />
    </mxCell>
    <mxCell id="m_1" parent="models" style="text;strokeColor=none;fillColor=none;align=left;verticalAlign=middle;spacingLeft=6;spacingRight=6;overflow=hidden;rotatable=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;html=1;fontSize=10;" value="Length = breve | medio | dettagliato" vertex="1">
      <mxGeometry height="26" width="300" y="54" as="geometry" />
    </mxCell>
    <mxCell id="m_2" parent="models" style="text;strokeColor=none;fillColor=none;align=left;verticalAlign=middle;spacingLeft=6;spacingRight=6;overflow=hidden;rotatable=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;html=1;fontSize=10;" value="Language = inglese | francese | ..." vertex="1">
      <mxGeometry height="26" width="300" y="80" as="geometry" />
    </mxCell>
    <mxCell id="m_3" parent="models" style="text;strokeColor=none;fillColor=none;align=left;verticalAlign=middle;spacingLeft=6;spacingRight=6;overflow=hidden;rotatable=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;html=1;fontSize=10;" value="Style = formale | informale | accademico" vertex="1">
      <mxGeometry height="26" width="300" y="106" as="geometry" />
    </mxCell>
    <mxCell id="m_4" parent="models" style="text;strokeColor=none;fillColor=none;align=left;verticalAlign=middle;spacingLeft=6;spacingRight=6;overflow=hidden;rotatable=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;html=1;fontSize=10;" value="Hat = bianco | rosso | giallo | nero | ..." vertex="1">
      <mxGeometry height="26" width="300" y="132" as="geometry" />
    </mxCell>
    <mxCell id="streamFn" parent="1" style="swimlane;childLayout=stackLayout;horizontal=1;startSize=54;horizontalStack=0;resizeParent=1;resizeParentMax=0;html=1;verticalAlign=middle;align=center;whiteSpace=wrap;collapsible=0;strokeColor=#B85450;fillColor=#F8CECC;fontSize=12;" value="«function» — non esportata&lt;br&gt;&lt;b&gt;stream(endpoint, body)&lt;/b&gt;&lt;br&gt;&lt;i&gt;lib/api.ts&lt;/i&gt;" vertex="1">
      <mxGeometry height="158" width="290" x="180" y="620" as="geometry" />
    </mxCell>
    <mxCell id="sf_1" parent="streamFn" style="text;strokeColor=none;fillColor=none;align=left;verticalAlign=middle;spacingLeft=6;spacingRight=6;overflow=hidden;rotatable=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;html=1;fontSize=10;" value="compone l&#39;URL con API_BASE_URL" vertex="1">
      <mxGeometry height="26" width="290" y="54" as="geometry" />
    </mxCell>
    <mxCell id="sf_2" parent="streamFn" style="text;strokeColor=none;fillColor=none;align=left;verticalAlign=middle;spacingLeft=6;spacingRight=6;overflow=hidden;rotatable=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;html=1;fontSize=10;" value="serializza il corpo in JSON" vertex="1">
      <mxGeometry height="26" width="290" y="80" as="geometry" />
    </mxCell>
    <mxCell id="sf_3" parent="streamFn" style="text;strokeColor=none;fillColor=none;align=left;verticalAlign=middle;spacingLeft=6;spacingRight=6;overflow=hidden;rotatable=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;html=1;fontSize=10;" value="estrae detail dalle risposte non ok" vertex="1">
      <mxGeometry height="26" width="290" y="106" as="geometry" />
    </mxCell>
    <mxCell id="sf_4" parent="streamFn" style="text;strokeColor=none;fillColor=none;align=left;verticalAlign=middle;spacingLeft=6;spacingRight=6;overflow=hidden;rotatable=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;html=1;fontSize=10;" value="converte SseEvent &#39;error&#39; in throw" vertex="1">
      <mxGeometry height="26" width="290" y="132" as="geometry" />
    </mxCell>
    <mxCell id="fetchApi" parent="1" style="rounded=0;whiteSpace=wrap;html=1;fillColor=#F8CECC;strokeColor=#B85450;align=center;verticalAlign=middle;fontSize=11;" value="«Web API»&lt;br&gt;&lt;b&gt;fetch&lt;/b&gt;&lt;br&gt;&lt;i&gt;Response&lt;/i&gt;" vertex="1">
      <mxGeometry height="80" width="170" x="500" y="660" as="geometry" />
    </mxCell>
    <mxCell id="reader" parent="1" style="rounded=0;whiteSpace=wrap;html=1;fillColor=#F8CECC;strokeColor=#B85450;align=center;verticalAlign=middle;fontSize=11;" value="«Streams API»&lt;br&gt;&lt;b&gt;ReadableStreamDefault&lt;br&gt;Reader&amp;lt;Uint8Array&amp;gt;&lt;/b&gt;" vertex="1">
      <mxGeometry height="80" width="200" x="700" y="660" as="geometry" />
    </mxCell>
    <mxCell id="sseParser" parent="1" style="swimlane;childLayout=stackLayout;horizontal=1;startSize=54;horizontalStack=0;resizeParent=1;resizeParentMax=0;html=1;verticalAlign=middle;align=center;whiteSpace=wrap;collapsible=0;strokeColor=#B85450;fillColor=#F8CECC;fontSize=12;" value="«module»&lt;br&gt;&lt;b&gt;parseSseStream&lt;/b&gt;&lt;br&gt;&lt;i&gt;web/src/lib/sse.ts&lt;/i&gt;" vertex="1">
      <mxGeometry height="158" width="300" x="930" y="620" as="geometry" />
    </mxCell>
    <mxCell id="sp_1" parent="sseParser" style="text;strokeColor=none;fillColor=none;align=left;verticalAlign=middle;spacingLeft=6;spacingRight=6;overflow=hidden;rotatable=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;html=1;fontSize=10;" value="bufferizza le righe spezzate" vertex="1">
      <mxGeometry height="26" width="300" y="54" as="geometry" />
    </mxCell>
    <mxCell id="sp_2" parent="sseParser" style="text;strokeColor=none;fillColor=none;align=left;verticalAlign=middle;spacingLeft=6;spacingRight=6;overflow=hidden;rotatable=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;html=1;fontSize=10;" value="riunisce le righe data: di un evento" vertex="1">
      <mxGeometry height="26" width="300" y="80" as="geometry" />
    </mxCell>
    <mxCell id="sp_3" parent="sseParser" style="text;strokeColor=none;fillColor=none;align=left;verticalAlign=middle;spacingLeft=6;spacingRight=6;overflow=hidden;rotatable=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;html=1;fontSize=10;" value="normalizza CRLF, ignora i commenti" vertex="1">
      <mxGeometry height="26" width="300" y="106" as="geometry" />
    </mxCell>
    <mxCell id="sp_4" parent="sseParser" style="text;strokeColor=none;fillColor=none;align=left;verticalAlign=middle;spacingLeft=6;spacingRight=6;overflow=hidden;rotatable=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;html=1;fontSize=10;" value="distingue [DONE] / error / troncamento" vertex="1">
      <mxGeometry height="26" width="300" y="132" as="geometry" />
    </mxCell>
    <mxCell id="decoder" parent="1" style="rounded=0;whiteSpace=wrap;html=1;fillColor=#F8CECC;strokeColor=#B85450;align=center;verticalAlign=middle;fontSize=11;" value="«Encoding API»&lt;br&gt;&lt;b&gt;TextDecoder&lt;/b&gt;" vertex="1">
      <mxGeometry height="66" width="170" x="1260" y="620" as="geometry" />
    </mxCell>
    <mxCell id="sseEvent" parent="1" style="rounded=0;whiteSpace=wrap;html=1;fillColor=#F8CECC;strokeColor=#B85450;align=center;verticalAlign=middle;fontSize=11;" value="«union type»&lt;br&gt;&lt;b&gt;SseEvent&lt;/b&gt;&lt;br&gt;chunk | error" vertex="1">
      <mxGeometry height="72" width="170" x="1260" y="706" as="geometry" />
    </mxCell>
    <mxCell id="backend" parent="1" style="rounded=0;whiteSpace=wrap;html=1;fillColor=#E1D5E7;strokeColor=#9673A6;align=center;verticalAlign=middle;fontSize=11;" value="«boundary»&lt;br&gt;&lt;b&gt;Backend FastAPI&lt;/b&gt;&lt;br&gt;&lt;br&gt;POST /api/summarize&amp;nbsp;&amp;nbsp;&amp;nbsp;POST /api/translate&amp;nbsp;&amp;nbsp;&amp;nbsp;POST /api/rewrite&lt;br&gt;POST /api/grammar&amp;nbsp;&amp;nbsp;&amp;nbsp;POST /api/critique&amp;nbsp;&amp;nbsp;&amp;nbsp;POST /api/generate&lt;br&gt;POST /api/generate-from-link&lt;br&gt;&lt;br&gt;&lt;i&gt;risposta: text/event-stream&lt;/i&gt;" vertex="1">
      <mxGeometry height="160" width="720" x="330" y="890" as="geometry" />
    </mxCell>
    <mxCell id="legend" parent="1" style="rounded=0;whiteSpace=wrap;html=1;fillColor=#FFFFFF;strokeColor=#666666;align=left;verticalAlign=top;spacingLeft=8;spacingTop=4;fontSize=11;" value="&lt;b&gt;Legenda&lt;/b&gt;&lt;br&gt;&lt;br&gt;&lt;font color=&quot;#82B366&quot;&gt;■&lt;/font&gt;&amp;nbsp; Facade — unico punto d&#39;ingresso esposto&lt;br&gt;&lt;font color=&quot;#1B5E9E&quot;&gt;■&lt;/font&gt;&amp;nbsp; Client — cio&#39; che la usa&lt;br&gt;&lt;font color=&quot;#B85450&quot;&gt;■&lt;/font&gt;&amp;nbsp; Sottosistema — cio&#39; che nasconde&lt;br&gt;&lt;font color=&quot;#9673A6&quot;&gt;■&lt;/font&gt;&amp;nbsp; Confine di sistema&lt;br&gt;&lt;br&gt;— — →&amp;nbsp;&amp;nbsp;dipendenza / delega&lt;br&gt;———▶&amp;nbsp;&amp;nbsp;chiamata di rete" vertex="1">
      <mxGeometry height="180" width="290" x="20" y="890" as="geometry" />
    </mxCell>
    <mxCell id="e1" edge="1" parent="1" source="cDialog" style="endArrow=open;endSize=12;dashed=1;html=1;edgeStyle=orthogonalEdgeStyle;rounded=0;exitX=0.25;exitY=1;exitDx=0;exitDy=0;entryX=0.15;entryY=0;entryDx=0;entryDy=0;fontSize=10;" target="facade" value="«use»">
      <mxGeometry relative="1" as="geometry" />
    </mxCell>
    <mxCell id="e2" edge="1" parent="1" source="cDialog" style="endArrow=open;endSize=12;dashed=1;html=1;edgeStyle=orthogonalEdgeStyle;rounded=0;exitX=1;exitY=0.5;exitDx=0;exitDy=0;entryX=0;entryY=0.5;entryDx=0;entryDy=0;fontSize=10;verticalAlign=bottom;" target="cStream" value="start(streamFn)">
      <mxGeometry relative="1" as="geometry" />
    </mxCell>
    <mxCell id="e3" edge="1" parent="1" source="cStream" style="endArrow=open;endSize=12;dashed=1;html=1;edgeStyle=orthogonalEdgeStyle;rounded=0;exitX=0.5;exitY=1;exitDx=0;exitDy=0;entryX=0.85;entryY=0;entryDx=0;entryDy=0;fontSize=10;" target="facade" value="consuma AsyncIterable&amp;lt;string&amp;gt;">
      <mxGeometry relative="1" as="geometry" />
    </mxCell>
    <mxCell id="e4" edge="1" parent="1" source="facade" style="endArrow=open;endSize=12;dashed=1;html=1;edgeStyle=orthogonalEdgeStyle;rounded=0;exitX=1;exitY=0.3;exitDx=0;exitDy=0;entryX=0;entryY=0.5;entryDx=0;entryDy=0;fontSize=10;verticalAlign=bottom;" target="models" value="«use»">
      <mxGeometry relative="1" as="geometry" />
    </mxCell>
    <mxCell id="e5" edge="1" parent="1" source="facade" style="endArrow=open;endSize=12;dashed=1;html=1;edgeStyle=orthogonalEdgeStyle;rounded=0;exitX=0.15;exitY=1;exitDx=0;exitDy=0;entryX=0.5;entryY=0;entryDx=0;entryDy=0;fontSize=10;fontStyle=1;" target="streamFn" value="delega — i 7 metodi sono&lt;br&gt;una sola riga ciascuno">
      <mxGeometry relative="1" as="geometry" />
    </mxCell>
    <mxCell id="e6" edge="1" parent="1" source="streamFn" style="endArrow=open;endSize=12;dashed=1;html=1;edgeStyle=orthogonalEdgeStyle;rounded=0;exitX=1;exitY=0.5;exitDx=0;exitDy=0;entryX=0;entryY=0.5;entryDx=0;entryDy=0;fontSize=10;verticalAlign=bottom;" target="fetchApi" value="POST + JSON">
      <mxGeometry relative="1" x="-0.0377" y="39" as="geometry">
        <mxPoint x="-39" y="-39" as="offset" />
      </mxGeometry>
    </mxCell>
    <mxCell id="e7" edge="1" parent="1" source="fetchApi" style="endArrow=open;endSize=12;dashed=1;html=1;edgeStyle=orthogonalEdgeStyle;rounded=0;exitX=1;exitY=0.5;exitDx=0;exitDy=0;entryX=0;entryY=0.5;entryDx=0;entryDy=0;fontSize=10;verticalAlign=bottom;" target="reader" value="response.body&lt;br&gt;.getReader()">
      <mxGeometry relative="1" x="0.3333" y="40" as="geometry">
        <mxPoint as="offset" />
      </mxGeometry>
    </mxCell>
    <mxCell id="e8" edge="1" parent="1" source="reader" style="endArrow=open;endSize=12;dashed=1;html=1;edgeStyle=orthogonalEdgeStyle;rounded=0;exitX=1;exitY=0.5;exitDx=0;exitDy=0;entryX=0;entryY=0.5;entryDx=0;entryDy=0;fontSize=10;verticalAlign=bottom;" target="sseParser" value="parseSseStream(reader)">
      <mxGeometry relative="1" x="0.0377" y="39" as="geometry">
        <mxPoint as="offset" />
      </mxGeometry>
    </mxCell>
    <mxCell id="e9" edge="1" parent="1" source="sseParser" style="endArrow=open;endSize=12;dashed=1;html=1;edgeStyle=orthogonalEdgeStyle;rounded=0;exitX=1;exitY=0.2;exitDx=0;exitDy=0;entryX=0;entryY=0.5;entryDx=0;entryDy=0;fontSize=10;verticalAlign=bottom;" target="decoder" value="«use»">
      <mxGeometry relative="1" as="geometry" />
    </mxCell>
    <mxCell id="e10" edge="1" parent="1" source="sseParser" style="endArrow=open;endSize=12;dashed=1;html=1;edgeStyle=orthogonalEdgeStyle;rounded=0;exitX=1;exitY=0.75;exitDx=0;exitDy=0;entryX=0;entryY=0.5;entryDx=0;entryDy=0;fontSize=10;verticalAlign=bottom;" target="sseEvent" value="«yield»">
      <mxGeometry relative="1" as="geometry" />
    </mxCell>
    <mxCell id="e11" edge="1" parent="1" source="fetchApi" style="endArrow=block;endFill=1;endSize=8;dashed=0;html=1;edgeStyle=orthogonalEdgeStyle;rounded=0;strokeWidth=2;strokeColor=#9673A6;fontColor=#9673A6;exitX=0.5;exitY=1;exitDx=0;exitDy=0;entryX=0.35;entryY=0;entryDx=0;entryDy=0;fontSize=10;verticalAlign=bottom;" target="backend" value="HTTP POST&lt;br&gt;text/event-stream">
      <mxGeometry relative="1" as="geometry">
        <Array as="points">
          <mxPoint x="590" y="740" />
          <mxPoint x="590" y="890" />
        </Array>
      </mxGeometry>
    </mxCell>
  </root>
</mxGraphModel>
