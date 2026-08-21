<mxGraphModel dx="3116" dy="913" grid="1" gridSize="10" guides="1" tooltips="1" connect="1" arrows="1" fold="1" page="1" pageScale="1" pageWidth="827" pageHeight="1169" math="0" shadow="0">
  <root>
    <mxCell id="0" />
    <mxCell id="1" parent="0" />
    <mxCell id="pDom" parent="1" style="shape=folder;html=1;whiteSpace=wrap;tabWidth=120;tabHeight=24;tabPosition=left;fontStyle=1;verticalAlign=top;align=left;spacingLeft=10;spacingTop=1;container=1;collapsible=0;dashed=0;recursiveResize=0;" value="core.domain" vertex="1">
      <mxGeometry height="1142" width="733" x="20" y="40" as="geometry" />
    </mxCell>
    <mxCell id="mValues" parent="pDom" style="swimlane;html=1;startSize=46;horizontal=1;fontSize=12;fontStyle=1;align=center;verticalAlign=middle;rounded=0;dashed=0;swimlaneFillColor=#ffffff;" value="&amp;lt;&amp;lt;modulo&amp;gt;&amp;gt;&lt;br&gt;values" vertex="1">
      <mxGeometry height="228.26640548481882" width="667.2648648648648" x="16.475675675675674" y="44.59157688540647" as="geometry" />
    </mxCell>
    <mxCell id="mValues_r0" parent="mValues" style="text;html=1;align=left;verticalAlign=middle;spacingLeft=6;spacingRight=4;overflow=hidden;whiteSpace=wrap;fontSize=11;" value="Length = Literal[&amp;quot;breve&amp;quot;, &amp;quot;medio&amp;quot;, &amp;quot;dettagliato&amp;quot;]" vertex="1">
      <mxGeometry height="25.480901077375123" width="667.2648648648648" y="48.83839373163565" as="geometry" />
    </mxCell>
    <mxCell id="mValues_r1" parent="mValues" style="text;html=1;align=left;verticalAlign=middle;spacingLeft=6;spacingRight=4;overflow=hidden;whiteSpace=wrap;fontSize=11;" value="Language = Literal[&amp;quot;inglese&amp;quot;, &amp;quot;francese&amp;quot;, &amp;quot;tedesco&amp;quot;, &amp;quot;spagnolo&amp;quot;]" vertex="1">
      <mxGeometry height="25.480901077375123" width="667.2648648648648" y="74.31929480901077" as="geometry" />
    </mxCell>
    <mxCell id="mValues_r2" parent="mValues" style="text;html=1;align=left;verticalAlign=middle;spacingLeft=6;spacingRight=4;overflow=hidden;whiteSpace=wrap;fontSize=11;" value="Style = Literal[&amp;quot;formale&amp;quot;, &amp;quot;informale&amp;quot;, &amp;quot;accademico&amp;quot;]" vertex="1">
      <mxGeometry height="25.480901077375123" width="667.2648648648648" y="99.8001958863859" as="geometry" />
    </mxCell>
    <mxCell id="mValues_r3" parent="mValues" style="text;html=1;align=left;verticalAlign=middle;spacingLeft=6;spacingRight=4;overflow=hidden;whiteSpace=wrap;fontSize=11;" value="Hat = Literal[&amp;quot;bianco&amp;quot;, &amp;quot;rosso&amp;quot;, &amp;quot;giallo&amp;quot;, &amp;quot;nero&amp;quot;, &amp;quot;verde&amp;quot;, &amp;quot;blu&amp;quot;]" vertex="1">
      <mxGeometry height="25.480901077375123" width="667.2648648648648" y="125.28109696376102" as="geometry" />
    </mxCell>
    <mxCell id="mValues_r4" parent="mValues" style="line;html=1;strokeWidth=1;" value="" vertex="1">
      <mxGeometry height="1.0617042115572968" width="667.2648648648648" y="150.76199804113614" as="geometry" />
    </mxCell>
    <mxCell id="mValues_r5" parent="mValues" style="text;html=1;align=left;verticalAlign=middle;spacingLeft=6;spacingRight=4;overflow=hidden;whiteSpace=wrap;fontSize=11;" value="LENGTH_MAX_TOKENS: dict[Length, int]      NO_ERRORS_MARKER: NoErrorsMarker" vertex="1">
      <mxGeometry height="25.480901077375123" width="667.2648648648648" y="151.82370225269344" as="geometry" />
    </mxCell>
    <mxCell id="mValues_r6" parent="mValues" style="text;html=1;align=left;verticalAlign=middle;spacingLeft=6;spacingRight=4;overflow=hidden;whiteSpace=wrap;fontSize=11;" value="MIN_TEXT_LENGTH = 10   MAX_TEXT_LENGTH = 12000   (tipi letterali MinTextLength, MaxTextLength)" vertex="1">
      <mxGeometry height="25.480901077375123" width="667.2648648648648" y="177.30460333006857" as="geometry" />
    </mxCell>
    <mxCell id="mValues_r7" parent="mValues" style="text;html=1;align=left;verticalAlign=middle;spacingLeft=6;spacingRight=4;overflow=hidden;whiteSpace=wrap;fontSize=11;" value="MIN_PROMPT_LENGTH = 3   MAX_PROMPT_LENGTH = 2000   (MinPromptLength, MaxPromptLength)" vertex="1">
      <mxGeometry height="25.480901077375123" width="667.2648648648648" y="202.78550440744368" as="geometry" />
    </mxCell>
    <mxCell id="cMessage" parent="pDom" style="swimlane;html=1;startSize=46;horizontal=1;fontSize=12;fontStyle=1;align=center;verticalAlign=middle;rounded=0;dashed=0;swimlaneFillColor=#ffffff;" value="&amp;lt;&amp;lt;value object&amp;gt;&amp;gt;&lt;br&gt;Message   {frozen}" vertex="1">
      <mxGeometry height="99.8001958863859" width="325.3945945945946" x="358.3459459459459" y="285.59843290891286" as="geometry" />
    </mxCell>
    <mxCell id="cMessage_r0" parent="cMessage" style="text;html=1;align=left;verticalAlign=middle;spacingLeft=6;spacingRight=4;overflow=hidden;whiteSpace=wrap;fontSize=11;" value="+ role: Literal[&amp;quot;system&amp;quot;, &amp;quot;user&amp;quot;, &amp;quot;assistant&amp;quot;]" vertex="1">
      <mxGeometry height="25.480901077375123" width="325.3945945945946" y="48.83839373163565" as="geometry" />
    </mxCell>
    <mxCell id="cMessage_r1" parent="cMessage" style="text;html=1;align=left;verticalAlign=middle;spacingLeft=6;spacingRight=4;overflow=hidden;whiteSpace=wrap;fontSize=11;" value="+ content: str" vertex="1">
      <mxGeometry height="25.480901077375123" width="325.3945945945946" y="74.31929480901077" as="geometry" />
    </mxCell>
    <mxCell id="pPr" parent="pDom" style="shape=folder;html=1;whiteSpace=wrap;tabWidth=170;tabHeight=24;tabPosition=left;fontStyle=1;verticalAlign=top;align=left;spacingLeft=10;spacingTop=1;container=1;collapsible=0;dashed=0;recursiveResize=0;" value="core.domain.prompts" vertex="1">
      <mxGeometry height="721.49" width="667.26" x="22" y="404.51" as="geometry" />
    </mxCell>
    <mxCell id="mRules" parent="pPr" style="swimlane;html=1;startSize=46;horizontal=1;fontSize=12;fontStyle=1;align=center;verticalAlign=middle;rounded=0;dashed=0;swimlaneFillColor=#ffffff;" value="&amp;lt;&amp;lt;modulo&amp;gt;&amp;gt;&lt;br&gt;rules" vertex="1">
      <mxGeometry height="116.78746327130264" width="642.5513513513513" x="12.356756756756756" y="42.46816846229187" as="geometry" />
    </mxCell>
    <mxCell id="mRules_r0" parent="mRules" style="text;html=1;align=left;verticalAlign=middle;spacingLeft=6;spacingRight=4;overflow=hidden;whiteSpace=wrap;fontSize=11;" value="14 costanti di regola: 7 di contenuto e 7 di forma" vertex="1">
      <mxGeometry height="41.40646425073457" width="642.5513513513513" y="48.83839373163565" as="geometry" />
    </mxCell>
    <mxCell id="mRules_r1" parent="mRules" style="line;html=1;strokeWidth=1;" value="" vertex="1">
      <mxGeometry height="1.0617042115572968" width="642.5513513513513" y="90.24485798237022" as="geometry" />
    </mxCell>
    <mxCell id="mRules_r2" parent="mRules" style="text;html=1;align=left;verticalAlign=middle;spacingLeft=6;spacingRight=4;overflow=hidden;whiteSpace=wrap;fontSize=11;" value="LENGTH_INSTRUCTIONS: dict[Length, str]      STYLE_INSTRUCTIONS: dict[Style, str]" vertex="1">
      <mxGeometry height="25.480901077375123" width="642.5513513513513" y="91.30656219392752" as="geometry" />
    </mxCell>
    <mxCell id="mComposer" parent="pPr" style="swimlane;html=1;startSize=46;horizontal=1;fontSize=12;fontStyle=1;align=center;verticalAlign=middle;rounded=0;dashed=0;swimlaneFillColor=#ffffff;" value="&amp;lt;&amp;lt;modulo&amp;gt;&amp;gt;&lt;br&gt;composer" vertex="1">
      <mxGeometry height="142.26836434867778" width="642.5513513513513" x="12.356756756756756" y="200.4860822722821" as="geometry" />
    </mxCell>
    <mxCell id="mComposer_r0" parent="mComposer" style="text;html=1;align=left;verticalAlign=middle;spacingLeft=6;spacingRight=4;overflow=hidden;whiteSpace=wrap;fontSize=11;" value="CONTENT_HEADING · FORM_HEADING · LENGTH_HEADING" vertex="1">
      <mxGeometry height="25.480901077375123" width="642.5513513513513" y="48.83839373163565" as="geometry" />
    </mxCell>
    <mxCell id="mComposer_r1" parent="mComposer" style="line;html=1;strokeWidth=1;" value="" vertex="1">
      <mxGeometry height="1.0617042115572968" width="642.5513513513513" y="74.31929480901077" as="geometry" />
    </mxCell>
    <mxCell id="mComposer_r2" parent="mComposer" style="text;html=1;align=left;verticalAlign=middle;spacingLeft=6;spacingRight=4;overflow=hidden;whiteSpace=wrap;fontSize=11;" value="- _section(heading, rules): str" vertex="1">
      <mxGeometry height="25.480901077375123" width="642.5513513513513" y="75.38099902056807" as="geometry" />
    </mxCell>
    <mxCell id="mComposer_r3" parent="mComposer" style="text;html=1;align=left;verticalAlign=middle;spacingLeft=6;spacingRight=4;overflow=hidden;whiteSpace=wrap;fontSize=11;" value="compose(*, role, user, content_rules=(), form_rules=(), content_heading=CONTENT_HEADING, length=None): list[Message]" vertex="1">
      <mxGeometry height="41.40646425073457" width="642.5513513513513" y="100.86190009794319" as="geometry" />
    </mxCell>
    <mxCell id="mTemplates" parent="pPr" style="swimlane;html=1;startSize=46;horizontal=1;fontSize=12;fontStyle=1;align=center;verticalAlign=middle;rounded=0;dashed=0;swimlaneFillColor=#ffffff;" value="&amp;lt;&amp;lt;modulo&amp;gt;&amp;gt;&lt;br&gt;templates" vertex="1">
      <mxGeometry height="171.51" width="642.55" x="12.36" y="370.49" as="geometry" />
    </mxCell>
    <mxCell id="mTemplates_r0" parent="mTemplates" style="text;html=1;align=left;verticalAlign=middle;spacingLeft=6;spacingRight=4;overflow=hidden;whiteSpace=wrap;fontSize=11;" value="- _FORMA_PROSA_ITALIANA · CRITIQUE_FOCUS · CRITIQUE_PERSPECTIVES" vertex="1">
      <mxGeometry height="25.480901077375123" width="642.5513513513513" y="48.83839373163565" as="geometry" />
    </mxCell>
    <mxCell id="mTemplates_r1" parent="mTemplates" style="line;html=1;strokeWidth=1;" value="" vertex="1">
      <mxGeometry height="1.0617042115572968" width="642.5513513513513" y="74.31929480901077" as="geometry" />
    </mxCell>
    <mxCell id="mTemplates_r2" parent="mTemplates" style="text;html=1;align=left;verticalAlign=middle;spacingLeft=6;spacingRight=4;overflow=hidden;whiteSpace=wrap;fontSize=11;" value="build_summarize_messages(text, length=&amp;quot;medio&amp;quot;)     build_generate_messages(prompt, length)" vertex="1">
      <mxGeometry height="25.480901077375123" width="642.5513513513513" y="75.38099902056807" as="geometry" />
    </mxCell>
    <mxCell id="mTemplates_r3" parent="mTemplates" style="text;html=1;align=left;verticalAlign=middle;spacingLeft=6;spacingRight=4;overflow=hidden;whiteSpace=wrap;fontSize=11;" value="build_generate_from_link_messages(content, length)  build_translate_messages(text, target_language)" vertex="1">
      <mxGeometry height="25.480901077375123" width="642.5513513513513" y="100.86190009794319" as="geometry" />
    </mxCell>
    <mxCell id="mTemplates_r4" parent="mTemplates" style="text;html=1;align=left;verticalAlign=middle;spacingLeft=6;spacingRight=4;overflow=hidden;whiteSpace=wrap;fontSize=11;" value="build_rewrite_messages(text, style)     build_grammar_messages(text)     build_critique_messages(text, hat)" vertex="1">
      <mxGeometry height="41.40646425073457" width="642.5513513513513" y="126.34280117531831" as="geometry" />
    </mxCell>
    <mxCell id="mUntrusted" parent="pPr" style="swimlane;html=1;startSize=46;horizontal=1;fontSize=12;fontStyle=1;align=center;verticalAlign=middle;rounded=0;dashed=0;swimlaneFillColor=#ffffff;" value="&amp;lt;&amp;lt;modulo&amp;gt;&amp;gt;&lt;br&gt;untrusted" vertex="1">
      <mxGeometry height="100.86190009794319" width="642.5513513513513" x="12.356756756756758" y="593.4910773751225" as="geometry" />
    </mxCell>
    <mxCell id="mUntrusted_r0" parent="mUntrusted" style="text;html=1;align=left;verticalAlign=middle;spacingLeft=6;spacingRight=4;overflow=hidden;whiteSpace=wrap;fontSize=11;" value="EXTRACTED_CONTENT_OPEN · EXTRACTED_CONTENT_CLOSE · - _DELIMITER_REDACTION" vertex="1">
      <mxGeometry height="25.480901077375123" width="642.5513513513513" y="48.83839373163565" as="geometry" />
    </mxCell>
    <mxCell id="mUntrusted_r1" parent="mUntrusted" style="line;html=1;strokeWidth=1;" value="" vertex="1">
      <mxGeometry height="1.0617042115572968" width="642.5513513513513" y="74.31929480901077" as="geometry" />
    </mxCell>
    <mxCell id="mUntrusted_r2" parent="mUntrusted" style="text;html=1;align=left;verticalAlign=middle;spacingLeft=6;spacingRight=4;overflow=hidden;whiteSpace=wrap;fontSize=11;" value="- _neutralize_delimiters(content): str      wrap_extracted_content(content): str" vertex="1">
      <mxGeometry height="25.480901077375123" width="642.5513513513513" y="75.38099902056807" as="geometry" />
    </mxCell>
    <mxCell id="e001" edge="1" parent="pPr" source="mTemplates" style="endArrow=open;endSize=12;dashed=1;strokeWidth=1.5;html=1;rounded=0;edgeStyle=orthogonalEdgeStyle;fontSize=10;labelBackgroundColor=#ffffff;exitX=0.06;exitY=0;exitDx=0;exitDy=0;entryX=0.06;entryY=1;entryDx=0;entryDy=0;" target="mComposer" value="">
      <mxGeometry relative="1" as="geometry" />
    </mxCell>
    <mxCell id="e002" edge="1" parent="pPr" source="mTemplates" style="endArrow=open;endSize=12;dashed=1;strokeWidth=1.5;html=1;rounded=0;edgeStyle=orthogonalEdgeStyle;fontSize=10;labelBackgroundColor=#ffffff;exitX=0.16;exitY=0;exitDx=0;exitDy=0;entryX=0.16;entryY=1;entryDx=0;entryDy=0;" target="mRules" value="">
      <mxGeometry relative="1" as="geometry">
        <Array as="points">
          <mxPoint x="115.32972972972972" y="265.4260528893242" />
        </Array>
      </mxGeometry>
    </mxCell>
    <mxCell id="e003" edge="1" parent="pPr" source="mTemplates" style="endArrow=open;endSize=12;dashed=1;strokeWidth=1.5;html=1;rounded=0;edgeStyle=orthogonalEdgeStyle;fontSize=10;labelBackgroundColor=#ffffff;exitX=0.9;exitY=1;exitDx=0;exitDy=0;entryX=0.9;entryY=0;entryDx=0;entryDy=0;" target="mUntrusted" value="">
      <mxGeometry relative="1" as="geometry" />
    </mxCell>
    <mxCell id="e004" edge="1" parent="pPr" source="mComposer" style="endArrow=open;endSize=12;dashed=1;strokeWidth=1.5;html=1;rounded=0;edgeStyle=orthogonalEdgeStyle;fontSize=10;labelBackgroundColor=#ffffff;exitX=0.86;exitY=0;exitDx=0;exitDy=0;entryX=0.86;entryY=1;entryDx=0;entryDy=0;" target="mRules" value="">
      <mxGeometry relative="1" as="geometry" />
    </mxCell>
    <mxCell id="e007" edge="1" parent="pDom" source="mTemplates" style="endArrow=open;endSize=12;dashed=1;strokeWidth=1.5;html=1;rounded=0;edgeStyle=orthogonalEdgeStyle;fontSize=10;labelBackgroundColor=#ffffff;entryX=1;entryY=0.5;entryDx=0;entryDy=0;exitX=1;exitY=0.25;exitDx=0;exitDy=0;" target="mValues" value="«import»&lt;div&gt;Hat&amp;nbsp;&lt;div&gt;Language&amp;nbsp;&lt;div&gt;Length&amp;nbsp;&lt;div&gt;Style&lt;div&gt;NO_ERRORS_MARKER&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;">
      <mxGeometry relative="1" as="geometry">
        <Array as="points">
          <mxPoint x="970" y="817.91" />
          <mxPoint x="970" y="158.64" />
        </Array>
        <mxPoint x="677" y="811" as="sourcePoint" />
      </mxGeometry>
    </mxCell>
    <mxCell id="e005" edge="1" parent="pDom" source="mTemplates_r1" style="endArrow=open;endSize=12;dashed=1;strokeWidth=1.5;html=1;rounded=0;edgeStyle=orthogonalEdgeStyle;fontSize=10;labelBackgroundColor=#ffffff;exitX=1;exitY=0.5;exitDx=0;exitDy=0;exitPerimeter=0;entryX=1;entryY=0.25;entryDx=0;entryDy=0;" target="cMessage" value="«usa»">
      <mxGeometry relative="1" as="geometry">
        <Array as="points">
          <mxPoint x="931" y="849.9" />
          <mxPoint x="931" y="310.5" />
        </Array>
        <mxPoint x="674.4729729729727" y="858.217982370225" as="sourcePoint" />
        <mxPoint x="683.7405405405405" y="314.26444662095986" as="targetPoint" />
      </mxGeometry>
    </mxCell>
    <mxCell id="e006" edge="1" parent="pDom" source="mComposer" style="endArrow=open;endSize=12;dashed=1;strokeWidth=1.5;html=1;rounded=0;edgeStyle=orthogonalEdgeStyle;fontSize=10;labelBackgroundColor=#ffffff;exitX=1;exitY=0.35;exitDx=0;exitDy=0;entryX=1;entryY=0.7;entryDx=0;entryDy=0;" target="cMessage" value="«usa»">
      <mxGeometry relative="1" as="geometry">
        <Array as="points">
          <mxPoint x="676.83" y="660" />
          <mxPoint x="846" y="660" />
          <mxPoint x="846" y="360" />
          <mxPoint x="700" y="360" />
          <mxPoint x="700" y="355.5" />
        </Array>
      </mxGeometry>
    </mxCell>
    <mxCell id="e008" edge="1" parent="pDom" source="mComposer" style="endArrow=open;endSize=12;dashed=1;strokeWidth=1.5;html=1;rounded=0;edgeStyle=orthogonalEdgeStyle;fontSize=10;labelBackgroundColor=#ffffff;exitX=1;exitY=0.72;exitDx=0;exitDy=0;" target="mValues" value="«import» Length">
      <mxGeometry relative="1" as="geometry">
        <Array as="points">
          <mxPoint x="720" y="707.33" />
          <mxPoint x="720" y="70" />
        </Array>
      </mxGeometry>
    </mxCell>
    <mxCell id="refSrv" parent="1" style="swimlane;html=1;startSize=46;horizontal=1;fontSize=12;fontStyle=1;align=center;verticalAlign=middle;rounded=0;dashed=1;swimlaneFillColor=#ffffff;" value="&amp;lt;&amp;lt;package&amp;gt;&amp;gt;&lt;br&gt;core.services" vertex="1">
      <mxGeometry height="70" width="220" x="859" y="940" as="geometry" />
    </mxCell>
    <mxCell id="refSrv_r0" parent="refSrv" style="text;html=1;align=left;verticalAlign=middle;spacingLeft=6;spacingRight=4;overflow=hidden;whiteSpace=wrap;fontSize=11;" value="i sette casi d&amp;#x27;uso" vertex="1">
      <mxGeometry height="24" width="220" y="46" as="geometry" />
    </mxCell>
    <mxCell id="refPorts" parent="1" style="swimlane;html=1;startSize=46;horizontal=1;fontSize=12;fontStyle=1;align=center;verticalAlign=middle;rounded=0;dashed=1;swimlaneFillColor=#ffffff;" value="&amp;lt;&amp;lt;package&amp;gt;&amp;gt;&lt;br&gt;core.ports" vertex="1">
      <mxGeometry height="70" width="220" x="-258" y="342" as="geometry" />
    </mxCell>
    <mxCell id="refPorts_r0" parent="refPorts" style="text;html=1;align=left;verticalAlign=middle;spacingLeft=6;spacingRight=4;overflow=hidden;whiteSpace=wrap;fontSize=11;" value="LLMClient , ContentExtractor" vertex="1">
      <mxGeometry height="24" width="220" y="46" as="geometry" />
    </mxCell>
    <mxCell id="e009" edge="1" parent="1" source="refSrv" style="endArrow=open;endSize=12;dashed=1;strokeWidth=1.5;html=1;rounded=0;edgeStyle=orthogonalEdgeStyle;fontSize=10;labelBackgroundColor=#ffffff;exitX=0;exitY=0.5;exitDx=0;exitDy=0;entryX=1;entryY=0.9;entryDx=0;entryDy=0;" target="mTemplates" value="«usa» i costruttori">
      <mxGeometry relative="1" as="geometry" />
    </mxCell>
    <mxCell id="e010" edge="1" parent="1" source="refPorts_r0" style="endArrow=open;endSize=12;dashed=1;strokeWidth=1.5;html=1;rounded=0;edgeStyle=orthogonalEdgeStyle;fontSize=10;labelBackgroundColor=#ffffff;exitX=1;exitY=0;exitDx=0;exitDy=0;entryX=0;entryY=0.5;entryDx=0;entryDy=0;" target="cMessage" value="«usa»">
      <mxGeometry relative="1" as="geometry" />
    </mxCell>
  </root>
</mxGraphModel>
