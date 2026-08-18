<mxGraphModel dx="2289" dy="913" grid="1" gridSize="10" guides="1" tooltips="1" connect="1" arrows="1" fold="1" page="1" pageScale="1" pageWidth="827" pageHeight="1169" math="0" shadow="0">
  <root>
    <mxCell id="0" />
    <mxCell id="1" parent="0" />
    <UserObject label="" plantUmlData="{&#xa;  &quot;data&quot;: &quot;@startuml\nskinparam style strictuml\nskinparam maxMessageSize 150\nskinparam ParticipantPadding 20\n\nactor \&quot;Utente\&quot; as Utente\nbox \&quot;Frontend (Applicazione Web)\&quot; #LightCyan\nparticipant \&quot;Componente\\nReact\&quot; as FE_React\nparticipant \&quot;Store\\n(Zustand)\&quot; as FE_Store\nparticipant \&quot;Modulo Accesso\\n(Facade)\&quot; as FE_API\nend box\n\nbox \&quot;Backend (Servizio Applicativo)\&quot; #LightYellow\nparticipant \&quot;Rotta FastAPI\\n(Adattatore Primario)\&quot; as BE_Router\nparticipant \&quot;Caso d&#39;Uso\\n(Dominio)\&quot; as BE_Core\nparticipant \&quot;LLMClient\\n(Adattatore Secondario)\&quot; as BE_Adapter\nend box\n\ndatabase \&quot;Gateway\\nLiteLLM\&quot; as Gateway\n\nUtente -&gt; FE_React: Clicca comando operazione assistita\\n(es. Riassunto)\nactivate FE_React\n\nFE_React -&gt; FE_React: Validazione preliminare\\n(limiti lunghezza)\nFE_React -&gt; FE_Store: Imposta indicatore di attesa\nFE_React -&gt; FE_API: Richiede elaborazione\nactivate FE_API\n\nFE_API -&gt; BE_Router: Richiesta HTTP POST (JSON)\nactivate BE_Router\n\nBE_Router -&gt; BE_Router: Validazione schema (Pydantic)\nBE_Router -&gt; BE_Core: Invoca caso d&#39;uso (passando la porta)\nactivate BE_Core\n\nBE_Core -&gt; BE_Core: Compone istruzioni\\n(ruolo, regole, testo utente)\nBE_Core -&gt; BE_Adapter: Richiede flusso incrementale\nactivate BE_Adapter\n\nBE_Adapter -&gt; Gateway: Inoltra richiesta testuale\nactivate Gateway\nBE_Adapter --&gt; BE_Core: Restituisce generatore asincrono (freddo)\ndeactivate BE_Adapter\n\nBE_Core --&gt; BE_Router: Restituisce generatore asincrono\ndeactivate BE_Core\n\nBE_Router -&gt; BE_Adapter: Estrae il primo frammento\\n(Gestione errori 503)\nactivate BE_Adapter\nGateway --&gt; BE_Adapter: Primo blocco di risposta\nBE_Adapter --&gt; BE_Router: Primo frammento pronto\ndeactivate BE_Adapter\n\nBE_Router --&gt; FE_API: Risposta HTTP 200 OK\\n(text/event-stream)\ndeactivate BE_Router\n\nloop Streaming (Server-Sent Events)\n    Gateway --&gt; BE_Adapter: Frammento successivo\n    activate BE_Adapter\n    BE_Adapter --&gt; FE_API: Evento dati (data: ...)\n    deactivate BE_Adapter\n    \n    FE_API -&gt; FE_API: Decodifica struttura evento\n    FE_API -&gt; FE_Store: Accoda frammento alla porzione\\ndi stato (esito in arrivo)\n    \n    FE_Store --&gt; FE_React: Notifica variazione stato\\n(sottoscrizione granulare)\n    FE_React --&gt; Utente: Mostra frammento progressivo a video\nend\n\nGateway --&gt; BE_Adapter: Fine elaborazione\ndeactivate Gateway\nactivate BE_Adapter\nBE_Adapter --&gt; FE_API: Evento terminale convenzionale ([DONE])\ndeactivate BE_Adapter\n\nFE_API --&gt; FE_React: Termina flusso\ndeactivate FE_API\n\nFE_React -&gt; FE_Store: Spegne indicatore di attesa\nFE_React --&gt; Utente: Abilita comandi di Accettazione/Rifiuto\ndeactivate FE_React\n@enduml&quot;,&#xa;  &quot;config&quot;: null&#xa;}" id="M7H68gGplKVeu-4bPKvJ-1">
      <mxCell connectable="0" parent="1" style="group;transparentBounds=1;editIcon=1;lockedGroup=0;groupPadding=10;" vertex="1">
        <mxGeometry as="geometry" />
      </mxCell>
    </UserObject>
    <UserObject label="Frontend (Applicazione Web)" plantUmlId="boxfr_9" plantUmlBaseStyle="rounded=0;fillColor=#E0FFFF;strokeColor=#181818;strokeWidth=0.5;fontSize=14;fontColor=#000000;verticalAlign=top;align=center;spacingTop=2;html=1;whiteSpace=wrap;" plantUmlBaseValue="Frontend (Applicazione Web)" id="M7H68gGplKVeu-4bPKvJ-2">
      <mxCell parent="M7H68gGplKVeu-4bPKvJ-1" style="rounded=0;fillColor=#E0FFFF;strokeColor=#181818;strokeWidth=0.5;fontSize=14;fontColor=#000000;verticalAlign=top;align=center;spacingTop=2;html=1;whiteSpace=wrap;" vertex="1">
        <mxGeometry height="1243.5" width="525.3214285714287" x="261.2571428571429" y="30" as="geometry" />
      </mxCell>
    </UserObject>
    <UserObject label="Backend (Servizio Applicativo)" plantUmlId="boxfr_10" plantUmlBaseStyle="rounded=0;fillColor=#FFFFE0;strokeColor=#181818;strokeWidth=0.5;fontSize=14;fontColor=#000000;verticalAlign=top;align=center;spacingTop=2;html=1;whiteSpace=wrap;" plantUmlBaseValue="Backend (Servizio Applicativo)" id="M7H68gGplKVeu-4bPKvJ-3">
      <mxCell parent="M7H68gGplKVeu-4bPKvJ-1" style="rounded=0;fillColor=#FFFFE0;strokeColor=#181818;strokeWidth=0.5;fontSize=14;fontColor=#000000;verticalAlign=top;align=center;spacingTop=2;html=1;whiteSpace=wrap;" vertex="1">
        <mxGeometry height="1243.5" width="680.8928571428571" x="861.3642857142859" y="30" as="geometry" />
      </mxCell>
    </UserObject>
    <UserObject label="" plantUmlId="life_11" plantUmlBaseStyle="endArrow=none;html=1;strokeColor=#181818;strokeWidth=0.5;dashed=1;dashPattern=5 5;" plantUmlBaseValue="" id="M7H68gGplKVeu-4bPKvJ-4">
      <mxCell edge="1" parent="M7H68gGplKVeu-4bPKvJ-1" style="endArrow=none;html=1;strokeColor=#181818;strokeWidth=0.5;dashed=1;dashPattern=5 5;rounded=0;">
        <mxGeometry relative="1" as="geometry">
          <mxPoint x="53.8" y="109" as="sourcePoint" />
          <mxPoint x="53.8" y="1212.5" as="targetPoint" />
        </mxGeometry>
      </mxCell>
    </UserObject>
    <UserObject label="Componente&#xa;React" plantUmlId="p_12" plantUmlBaseStyle="shape=umlLifeline;perimeter=lifelinePerimeter;size=57;lifelineMirror=1;container=1;dropTarget=0;collapsible=0;recursiveResize=0;outlineConnect=0;portConstraint=eastwest;rounded=1;absoluteArcSize=1;arcSize=5;fillColor=#E2E2F0;strokeColor=#181818;strokeWidth=0.5;fontColor=#000000;fontSize=14;whiteSpace=wrap;html=1;" plantUmlBaseValue="Componente&#xa;React" id="M7H68gGplKVeu-4bPKvJ-5">
      <mxCell parent="M7H68gGplKVeu-4bPKvJ-1" style="shape=umlLifeline;perimeter=lifelinePerimeter;size=57;lifelineMirror=1;container=1;dropTarget=0;collapsible=0;recursiveResize=0;outlineConnect=0;portConstraint=eastwest;rounded=1;absoluteArcSize=1;arcSize=5;fillColor=#E2E2F0;strokeColor=#181818;strokeWidth=0.5;fontColor=#000000;fontSize=14;whiteSpace=wrap;html=1;" vertex="1">
        <mxGeometry height="1216.5" width="92.29999999999998" x="265.2571428571429" y="52" as="geometry" />
      </mxCell>
    </UserObject>
    <UserObject label="Store&#xa;(Zustand)" plantUmlId="p_13" plantUmlBaseStyle="shape=umlLifeline;perimeter=lifelinePerimeter;size=57;lifelineMirror=1;container=1;dropTarget=0;collapsible=0;recursiveResize=0;outlineConnect=0;portConstraint=eastwest;rounded=1;absoluteArcSize=1;arcSize=5;fillColor=#E2E2F0;strokeColor=#181818;strokeWidth=0.5;fontColor=#000000;fontSize=14;whiteSpace=wrap;html=1;" plantUmlBaseValue="Store&#xa;(Zustand)" id="M7H68gGplKVeu-4bPKvJ-6">
      <mxCell parent="M7H68gGplKVeu-4bPKvJ-1" style="shape=umlLifeline;perimeter=lifelinePerimeter;size=57;lifelineMirror=1;container=1;dropTarget=0;collapsible=0;recursiveResize=0;outlineConnect=0;portConstraint=eastwest;rounded=1;absoluteArcSize=1;arcSize=5;fillColor=#E2E2F0;strokeColor=#181818;strokeWidth=0.5;fontColor=#000000;fontSize=14;whiteSpace=wrap;html=1;" vertex="1">
        <mxGeometry height="1216.5" width="73.4" x="469.8285714285715" y="52" as="geometry" />
      </mxCell>
    </UserObject>
    <UserObject label="Modulo Accesso&#xa;(Facade)" plantUmlId="p_14" plantUmlBaseStyle="shape=umlLifeline;perimeter=lifelinePerimeter;size=57;lifelineMirror=1;container=1;dropTarget=0;collapsible=0;recursiveResize=0;outlineConnect=0;portConstraint=eastwest;rounded=1;absoluteArcSize=1;arcSize=5;fillColor=#E2E2F0;strokeColor=#181818;strokeWidth=0.5;fontColor=#000000;fontSize=14;whiteSpace=wrap;html=1;" plantUmlBaseValue="Modulo Accesso&#xa;(Facade)" id="M7H68gGplKVeu-4bPKvJ-7">
      <mxCell parent="M7H68gGplKVeu-4bPKvJ-1" style="shape=umlLifeline;perimeter=lifelinePerimeter;size=57;lifelineMirror=1;container=1;dropTarget=0;collapsible=0;recursiveResize=0;outlineConnect=0;portConstraint=eastwest;rounded=1;absoluteArcSize=1;arcSize=5;fillColor=#E2E2F0;strokeColor=#181818;strokeWidth=0.5;fontColor=#000000;fontSize=14;whiteSpace=wrap;html=1;" vertex="1">
        <mxGeometry height="1216.5" width="119.89999999999999" x="662.6785714285714" y="52" as="geometry" />
      </mxCell>
    </UserObject>
    <UserObject label="Rotta FastAPI&#xa;(Adattatore Primario)" plantUmlId="p_15" plantUmlBaseStyle="shape=umlLifeline;perimeter=lifelinePerimeter;size=57;lifelineMirror=1;container=1;dropTarget=0;collapsible=0;recursiveResize=0;outlineConnect=0;portConstraint=eastwest;rounded=1;absoluteArcSize=1;arcSize=5;fillColor=#E2E2F0;strokeColor=#181818;strokeWidth=0.5;fontColor=#000000;fontSize=14;whiteSpace=wrap;html=1;" plantUmlBaseValue="Rotta FastAPI&#xa;(Adattatore Primario)" id="M7H68gGplKVeu-4bPKvJ-8">
      <mxCell parent="M7H68gGplKVeu-4bPKvJ-1" style="shape=umlLifeline;perimeter=lifelinePerimeter;size=57;lifelineMirror=1;container=1;dropTarget=0;collapsible=0;recursiveResize=0;outlineConnect=0;portConstraint=eastwest;rounded=1;absoluteArcSize=1;arcSize=5;fillColor=#E2E2F0;strokeColor=#181818;strokeWidth=0.5;fontColor=#000000;fontSize=14;whiteSpace=wrap;html=1;" vertex="1">
        <mxGeometry height="1216.5" width="142.1" x="865.3642857142859" y="52" as="geometry" />
      </mxCell>
    </UserObject>
    <UserObject label="Caso d&#39;Uso&#xa;(Dominio)" plantUmlId="p_16" plantUmlBaseStyle="shape=umlLifeline;perimeter=lifelinePerimeter;size=57;lifelineMirror=1;container=1;dropTarget=0;collapsible=0;recursiveResize=0;outlineConnect=0;portConstraint=eastwest;rounded=1;absoluteArcSize=1;arcSize=5;fillColor=#E2E2F0;strokeColor=#181818;strokeWidth=0.5;fontColor=#000000;fontSize=14;whiteSpace=wrap;html=1;" plantUmlBaseValue="Caso d&#39;Uso&#xa;(Dominio)" id="M7H68gGplKVeu-4bPKvJ-9">
      <mxCell parent="M7H68gGplKVeu-4bPKvJ-1" style="shape=umlLifeline;perimeter=lifelinePerimeter;size=57;lifelineMirror=1;container=1;dropTarget=0;collapsible=0;recursiveResize=0;outlineConnect=0;portConstraint=eastwest;rounded=1;absoluteArcSize=1;arcSize=5;fillColor=#E2E2F0;strokeColor=#181818;strokeWidth=0.5;fontColor=#000000;fontSize=14;whiteSpace=wrap;html=1;" vertex="1">
        <mxGeometry height="1216.5" width="84.8" x="1146.8857142857144" y="52" as="geometry" />
      </mxCell>
    </UserObject>
    <UserObject label="LLMClient&#xa;(Adattatore Secondario)" plantUmlId="p_17" plantUmlBaseStyle="shape=umlLifeline;perimeter=lifelinePerimeter;size=57;lifelineMirror=1;container=1;dropTarget=0;collapsible=0;recursiveResize=0;outlineConnect=0;portConstraint=eastwest;rounded=1;absoluteArcSize=1;arcSize=5;fillColor=#E2E2F0;strokeColor=#181818;strokeWidth=0.5;fontColor=#000000;fontSize=14;whiteSpace=wrap;html=1;" plantUmlBaseValue="LLMClient&#xa;(Adattatore Secondario)" id="M7H68gGplKVeu-4bPKvJ-10">
      <mxCell parent="M7H68gGplKVeu-4bPKvJ-1" style="shape=umlLifeline;perimeter=lifelinePerimeter;size=57;lifelineMirror=1;container=1;dropTarget=0;collapsible=0;recursiveResize=0;outlineConnect=0;portConstraint=eastwest;rounded=1;absoluteArcSize=1;arcSize=5;fillColor=#E2E2F0;strokeColor=#181818;strokeWidth=0.5;fontColor=#000000;fontSize=14;whiteSpace=wrap;html=1;" vertex="1">
        <mxGeometry height="1216.5" width="160.99999999999997" x="1377.257142857143" y="52" as="geometry" />
      </mxCell>
    </UserObject>
    <UserObject label="" plantUmlId="life_18" plantUmlBaseStyle="endArrow=none;html=1;strokeColor=#181818;strokeWidth=0.5;dashed=1;dashPattern=5 5;" plantUmlBaseValue="" id="M7H68gGplKVeu-4bPKvJ-11">
      <mxCell edge="1" parent="M7H68gGplKVeu-4bPKvJ-1" style="endArrow=none;html=1;strokeColor=#181818;strokeWidth=0.5;dashed=1;dashPattern=5 5;rounded=0;">
        <mxGeometry relative="1" as="geometry">
          <mxPoint x="1627.6142857142859" y="109" as="sourcePoint" />
          <mxPoint x="1627.6142857142859" y="1212.5" as="targetPoint" />
        </mxGeometry>
      </mxCell>
    </UserObject>
    <UserObject label="" plantUmlId="grpframe_19" plantUmlBaseStyle="rounded=0;fillColor=none;strokeColor=#000000;strokeWidth=1.5;" plantUmlBaseValue="" id="M7H68gGplKVeu-4bPKvJ-12">
      <mxCell parent="M7H68gGplKVeu-4bPKvJ-1" style="rounded=0;fillColor=none;strokeColor=#000000;strokeWidth=1.5;" vertex="1">
        <mxGeometry height="261.5" width="1635.064285714286" x="30" y="774" as="geometry" />
      </mxCell>
    </UserObject>
    <UserObject label="loop" plantUmlId="grptab_20" plantUmlBaseStyle="rounded=0;fillColor=#EEEEEE;strokeColor=#000000;strokeWidth=1.5;fontColor=#000000;fontSize=13;fontStyle=1;align=left;spacingLeft=10;verticalAlign=middle;html=1;" plantUmlBaseValue="loop" id="M7H68gGplKVeu-4bPKvJ-13">
      <mxCell parent="M7H68gGplKVeu-4bPKvJ-1" style="rounded=0;fillColor=#EEEEEE;strokeColor=#000000;strokeWidth=1.5;fontColor=#000000;fontSize=13;fontStyle=1;align=left;spacingLeft=10;verticalAlign=middle;html=1;" vertex="1">
        <mxGeometry height="19.7" width="67.67885714285714" x="30" y="774" as="geometry" />
      </mxCell>
    </UserObject>
    <UserObject label="[Streaming (Server-Sent Events)]" plantUmlId="grpcond_21" plantUmlBaseStyle="text;html=1;fontColor=#000000;fontSize=11;fontStyle=1;align=left;verticalAlign=middle;" plantUmlBaseValue="[Streaming (Server-Sent Events)]" id="M7H68gGplKVeu-4bPKvJ-14">
      <mxCell parent="M7H68gGplKVeu-4bPKvJ-1" style="text;html=1;fontColor=#000000;fontSize=11;fontStyle=1;align=left;verticalAlign=middle;" vertex="1">
        <mxGeometry height="15" width="183.3997142857143" x="107.67885714285714" y="777" as="geometry" />
      </mxCell>
    </UserObject>
    <UserObject label="Clicca comando operazione assistita&#xa;(es. Riassunto)" plantUmlId="msg_22" plantUmlBaseStyle="endArrow=classic;endFill=1;endSize=9;html=1;rounded=0;edgeStyle=elbowEdgeStyle;elbow=vertical;curved=0;strokeColor=#181818;strokeWidth=1;fontColor=#000000;fontSize=13;verticalAlign=bottom;labelBackgroundColor=none;" plantUmlBaseValue="Clicca comando operazione assistita&#xa;(es. Riassunto)" id="M7H68gGplKVeu-4bPKvJ-15">
      <mxCell edge="1" parent="M7H68gGplKVeu-4bPKvJ-1" style="endArrow=classic;endFill=1;endSize=9;html=1;rounded=0;edgeStyle=elbowEdgeStyle;elbow=vertical;curved=0;strokeColor=#181818;strokeWidth=1;fontColor=#000000;fontSize=13;verticalAlign=bottom;labelBackgroundColor=none;" target="M7H68gGplKVeu-4bPKvJ-46">
        <mxGeometry relative="1" x="-0.072" as="geometry">
          <Array as="points">
            <mxPoint x="180" y="159" />
          </Array>
          <mxPoint x="53.8" y="159" as="sourcePoint" />
          <mxPoint x="306.4071428571429" y="159" as="targetPoint" />
        </mxGeometry>
      </mxCell>
    </UserObject>
    <UserObject label="" plantUmlId="msg_23" plantUmlBaseStyle="endArrow=classic;endFill=1;endSize=9;html=1;strokeColor=#181818;strokeWidth=1;exitX=1;exitY=0.045;exitDx=0;exitDy=0;" plantUmlBaseValue="" id="M7H68gGplKVeu-4bPKvJ-16">
      <mxCell edge="1" parent="M7H68gGplKVeu-4bPKvJ-1" source="M7H68gGplKVeu-4bPKvJ-46" style="endArrow=classic;endFill=1;endSize=9;html=1;strokeColor=#181818;strokeWidth=1;exitX=1;exitY=0.045;exitDx=0;exitDy=0;rounded=0;">
        <mxGeometry relative="1" as="geometry">
          <Array as="points">
            <mxPoint x="354.4071428571429" y="206" />
            <mxPoint x="354.4071428571429" y="226" />
          </Array>
          <mxPoint x="316.4071428571429" y="206" as="sourcePoint" />
          <mxPoint x="319.4071428571429" y="226" as="targetPoint" />
        </mxGeometry>
      </mxCell>
    </UserObject>
    <UserObject label="Validazione preliminare&#xa;(limiti lunghezza)" plantUmlId="msglbl_26" plantUmlBaseStyle="text;html=1;fontColor=#000000;fontSize=13;align=left;verticalAlign=middle;" plantUmlBaseValue="Validazione preliminare&#xa;(limiti lunghezza)" id="M7H68gGplKVeu-4bPKvJ-17">
      <mxCell parent="M7H68gGplKVeu-4bPKvJ-1" style="text;html=1;fontColor=#000000;fontSize=13;align=left;verticalAlign=middle;" vertex="1">
        <mxGeometry height="33" width="146.1214285714286" x="318.4071428571429" y="171" as="geometry" />
      </mxCell>
    </UserObject>
    <UserObject label="Imposta indicatore di attesa" plantUmlId="msg_27" plantUmlBaseStyle="endArrow=classic;endFill=1;endSize=9;html=1;rounded=0;edgeStyle=elbowEdgeStyle;elbow=vertical;curved=0;strokeColor=#181818;strokeWidth=1;fontColor=#000000;fontSize=13;verticalAlign=bottom;labelBackgroundColor=none;" plantUmlBaseValue="Imposta indicatore di attesa" id="M7H68gGplKVeu-4bPKvJ-18">
      <mxCell edge="1" parent="M7H68gGplKVeu-4bPKvJ-1" source="M7H68gGplKVeu-4bPKvJ-46" style="endArrow=classic;endFill=1;endSize=9;html=1;rounded=0;edgeStyle=elbowEdgeStyle;elbow=vertical;curved=0;strokeColor=#181818;strokeWidth=1;fontColor=#000000;fontSize=13;verticalAlign=bottom;labelBackgroundColor=none;" target="M7H68gGplKVeu-4bPKvJ-6">
        <mxGeometry relative="1" x="-0.052" as="geometry">
          <Array as="points">
            <mxPoint x="411" y="258" />
          </Array>
          <mxPoint x="316.4071428571429" y="258" as="sourcePoint" />
          <mxPoint x="506.52857142857147" y="258" as="targetPoint" />
        </mxGeometry>
      </mxCell>
    </UserObject>
    <UserObject label="Richiede elaborazione" plantUmlId="msg_28" plantUmlBaseStyle="endArrow=classic;endFill=1;endSize=9;html=1;rounded=0;edgeStyle=elbowEdgeStyle;elbow=vertical;curved=0;strokeColor=#181818;strokeWidth=1;fontColor=#000000;fontSize=13;verticalAlign=bottom;labelBackgroundColor=none;" plantUmlBaseValue="Richiede elaborazione" id="M7H68gGplKVeu-4bPKvJ-19">
      <mxCell edge="1" parent="M7H68gGplKVeu-4bPKvJ-1" source="M7H68gGplKVeu-4bPKvJ-46" style="endArrow=classic;endFill=1;endSize=9;html=1;rounded=0;edgeStyle=elbowEdgeStyle;elbow=vertical;curved=0;strokeColor=#181818;strokeWidth=1;fontColor=#000000;fontSize=13;verticalAlign=bottom;labelBackgroundColor=none;" target="M7H68gGplKVeu-4bPKvJ-47">
        <mxGeometry relative="1" x="-0.636" as="geometry">
          <Array as="points">
            <mxPoint x="517" y="290" />
          </Array>
          <mxPoint x="316.4071428571429" y="290" as="sourcePoint" />
          <mxPoint x="717.6285714285715" y="290" as="targetPoint" />
        </mxGeometry>
      </mxCell>
    </UserObject>
    <UserObject label="Richiesta HTTP POST (JSON)" plantUmlId="msg_29" plantUmlBaseStyle="endArrow=classic;endFill=1;endSize=9;html=1;rounded=0;edgeStyle=elbowEdgeStyle;elbow=vertical;curved=0;strokeColor=#181818;strokeWidth=1;fontColor=#000000;fontSize=13;verticalAlign=bottom;labelBackgroundColor=none;" plantUmlBaseValue="Richiesta HTTP POST (JSON)" id="M7H68gGplKVeu-4bPKvJ-20">
      <mxCell edge="1" parent="M7H68gGplKVeu-4bPKvJ-1" source="M7H68gGplKVeu-4bPKvJ-47" style="endArrow=classic;endFill=1;endSize=9;html=1;rounded=0;edgeStyle=elbowEdgeStyle;elbow=vertical;curved=0;strokeColor=#181818;strokeWidth=1;fontColor=#000000;fontSize=13;verticalAlign=bottom;labelBackgroundColor=none;" target="M7H68gGplKVeu-4bPKvJ-48">
        <mxGeometry relative="1" x="-0.138" as="geometry">
          <Array as="points">
            <mxPoint x="830" y="322" />
          </Array>
          <mxPoint x="727.6285714285715" y="322" as="sourcePoint" />
          <mxPoint x="931.4142857142858" y="322" as="targetPoint" />
        </mxGeometry>
      </mxCell>
    </UserObject>
    <UserObject label="" plantUmlId="msg_30" plantUmlBaseStyle="endArrow=classic;endFill=1;endSize=9;html=1;strokeColor=#181818;strokeWidth=1;exitX=1;exitY=0.073;exitDx=0;exitDy=0;" plantUmlBaseValue="" id="M7H68gGplKVeu-4bPKvJ-21">
      <mxCell edge="1" parent="M7H68gGplKVeu-4bPKvJ-1" source="M7H68gGplKVeu-4bPKvJ-48" style="endArrow=classic;endFill=1;endSize=9;html=1;strokeColor=#181818;strokeWidth=1;exitX=1;exitY=0.073;exitDx=0;exitDy=0;rounded=0;">
        <mxGeometry relative="1" as="geometry">
          <Array as="points">
            <mxPoint x="979.4142857142858" y="354" />
            <mxPoint x="979.4142857142858" y="374" />
          </Array>
          <mxPoint x="941.4142857142858" y="354" as="sourcePoint" />
          <mxPoint x="944.4142857142858" y="374" as="targetPoint" />
        </mxGeometry>
      </mxCell>
    </UserObject>
    <UserObject label="Validazione schema (Pydantic)" plantUmlId="msglbl_33" plantUmlBaseStyle="text;html=1;fontColor=#000000;fontSize=13;align=left;verticalAlign=middle;" plantUmlBaseValue="Validazione schema (Pydantic)" id="M7H68gGplKVeu-4bPKvJ-22">
      <mxCell parent="M7H68gGplKVeu-4bPKvJ-1" style="text;html=1;fontColor=#000000;fontSize=13;align=left;verticalAlign=middle;" vertex="1">
        <mxGeometry height="18" width="189.57857142857145" x="943.4142857142858" y="334" as="geometry" />
      </mxCell>
    </UserObject>
    <UserObject label="Invoca caso d&#39;uso (passando la porta)" plantUmlId="msg_34" plantUmlBaseStyle="endArrow=classic;endFill=1;endSize=9;html=1;rounded=0;edgeStyle=elbowEdgeStyle;elbow=vertical;curved=0;strokeColor=#181818;strokeWidth=1;fontColor=#000000;fontSize=13;verticalAlign=bottom;labelBackgroundColor=none;" plantUmlBaseValue="Invoca caso d&#39;uso (passando la porta)" id="M7H68gGplKVeu-4bPKvJ-23">
      <mxCell edge="1" parent="M7H68gGplKVeu-4bPKvJ-1" source="M7H68gGplKVeu-4bPKvJ-48" style="endArrow=classic;endFill=1;endSize=9;html=1;rounded=0;edgeStyle=elbowEdgeStyle;elbow=vertical;curved=0;strokeColor=#181818;strokeWidth=1;fontColor=#000000;fontSize=13;verticalAlign=bottom;labelBackgroundColor=none;" target="M7H68gGplKVeu-4bPKvJ-49">
        <mxGeometry relative="1" x="-0.004" as="geometry">
          <Array as="points">
            <mxPoint x="1063" y="406" />
          </Array>
          <mxPoint x="941.4142857142858" y="406" as="sourcePoint" />
          <mxPoint x="1184.2857142857144" y="406" as="targetPoint" />
        </mxGeometry>
      </mxCell>
    </UserObject>
    <UserObject label="" plantUmlId="msg_35" plantUmlBaseStyle="endArrow=classic;endFill=1;endSize=9;html=1;strokeColor=#181818;strokeWidth=1;exitX=1;exitY=0.241;exitDx=0;exitDy=0;" plantUmlBaseValue="" id="M7H68gGplKVeu-4bPKvJ-24">
      <mxCell edge="1" parent="M7H68gGplKVeu-4bPKvJ-1" source="M7H68gGplKVeu-4bPKvJ-49" style="endArrow=classic;endFill=1;endSize=9;html=1;strokeColor=#181818;strokeWidth=1;exitX=1;exitY=0.241;exitDx=0;exitDy=0;rounded=0;">
        <mxGeometry relative="1" as="geometry">
          <Array as="points">
            <mxPoint x="1232.2857142857144" y="453" />
            <mxPoint x="1232.2857142857144" y="473" />
          </Array>
          <mxPoint x="1194.2857142857144" y="453" as="sourcePoint" />
          <mxPoint x="1197.2857142857144" y="473" as="targetPoint" />
        </mxGeometry>
      </mxCell>
    </UserObject>
    <UserObject label="Compone istruzioni&#xa;(ruolo, regole, testo utente)" plantUmlId="msglbl_38" plantUmlBaseStyle="text;html=1;fontColor=#000000;fontSize=13;align=left;verticalAlign=middle;" plantUmlBaseValue="Compone istruzioni&#xa;(ruolo, regole, testo utente)" id="M7H68gGplKVeu-4bPKvJ-25">
      <mxCell parent="M7H68gGplKVeu-4bPKvJ-1" style="text;html=1;fontColor=#000000;fontSize=13;align=left;verticalAlign=middle;" vertex="1">
        <mxGeometry height="33" width="165.90000000000003" x="1196.2857142857144" y="418" as="geometry" />
      </mxCell>
    </UserObject>
    <UserObject label="Richiede flusso incrementale" plantUmlId="msg_39" plantUmlBaseStyle="endArrow=classic;endFill=1;endSize=9;html=1;rounded=0;edgeStyle=elbowEdgeStyle;elbow=vertical;curved=0;strokeColor=#181818;strokeWidth=1;fontColor=#000000;fontSize=13;verticalAlign=bottom;labelBackgroundColor=none;" plantUmlBaseValue="Richiede flusso incrementale" id="M7H68gGplKVeu-4bPKvJ-26">
      <mxCell edge="1" parent="M7H68gGplKVeu-4bPKvJ-1" source="M7H68gGplKVeu-4bPKvJ-49" style="endArrow=classic;endFill=1;endSize=9;html=1;rounded=0;edgeStyle=elbowEdgeStyle;elbow=vertical;curved=0;strokeColor=#181818;strokeWidth=1;fontColor=#000000;fontSize=13;verticalAlign=bottom;labelBackgroundColor=none;" target="M7H68gGplKVeu-4bPKvJ-50">
        <mxGeometry relative="1" x="-0.277" as="geometry">
          <Array as="points">
            <mxPoint x="1324" y="505" />
          </Array>
          <mxPoint x="1194.2857142857144" y="505" as="sourcePoint" />
          <mxPoint x="1452.757142857143" y="505" as="targetPoint" />
        </mxGeometry>
      </mxCell>
    </UserObject>
    <UserObject label="Inoltra richiesta testuale" plantUmlId="msg_40" plantUmlBaseStyle="endArrow=classic;endFill=1;endSize=9;html=1;rounded=0;edgeStyle=elbowEdgeStyle;elbow=vertical;curved=0;strokeColor=#181818;strokeWidth=1;fontColor=#000000;fontSize=13;verticalAlign=bottom;labelBackgroundColor=none;" plantUmlBaseValue="Inoltra richiesta testuale" id="M7H68gGplKVeu-4bPKvJ-27">
      <mxCell edge="1" parent="M7H68gGplKVeu-4bPKvJ-1" source="M7H68gGplKVeu-4bPKvJ-50" style="endArrow=classic;endFill=1;endSize=9;html=1;rounded=0;edgeStyle=elbowEdgeStyle;elbow=vertical;curved=0;strokeColor=#181818;strokeWidth=1;fontColor=#000000;fontSize=13;verticalAlign=bottom;labelBackgroundColor=none;" target="M7H68gGplKVeu-4bPKvJ-54">
        <mxGeometry relative="1" x="-0.006" as="geometry">
          <Array as="points">
            <mxPoint x="1543" y="537" />
          </Array>
          <mxPoint x="1462.757142857143" y="537" as="sourcePoint" />
          <mxPoint x="1622.6142857142859" y="537" as="targetPoint" />
        </mxGeometry>
      </mxCell>
    </UserObject>
    <UserObject label="Restituisce generatore asincrono (freddo)" plantUmlId="msg_41" plantUmlBaseStyle="endArrow=classic;endFill=1;endSize=9;html=1;rounded=0;edgeStyle=elbowEdgeStyle;elbow=vertical;curved=0;strokeColor=#181818;strokeWidth=1;fontColor=#000000;fontSize=13;verticalAlign=bottom;labelBackgroundColor=none;dashed=1;dashPattern=2 2;" plantUmlBaseValue="Restituisce generatore asincrono (freddo)" id="M7H68gGplKVeu-4bPKvJ-28">
      <mxCell edge="1" parent="M7H68gGplKVeu-4bPKvJ-1" source="M7H68gGplKVeu-4bPKvJ-50" style="endArrow=classic;endFill=1;endSize=9;html=1;rounded=0;edgeStyle=elbowEdgeStyle;elbow=vertical;curved=0;strokeColor=#181818;strokeWidth=1;fontColor=#000000;fontSize=13;verticalAlign=bottom;labelBackgroundColor=none;dashed=1;dashPattern=2 2;" target="M7H68gGplKVeu-4bPKvJ-49">
        <mxGeometry relative="1" x="-0.074" as="geometry">
          <Array as="points">
            <mxPoint x="1324" y="569" />
          </Array>
          <mxPoint x="1452.757142857143" y="569" as="sourcePoint" />
          <mxPoint x="1194.2857142857144" y="569" as="targetPoint" />
        </mxGeometry>
      </mxCell>
    </UserObject>
    <UserObject label="Restituisce generatore asincrono" plantUmlId="msg_42" plantUmlBaseStyle="endArrow=classic;endFill=1;endSize=9;html=1;rounded=0;edgeStyle=elbowEdgeStyle;elbow=vertical;curved=0;strokeColor=#181818;strokeWidth=1;fontColor=#000000;fontSize=13;verticalAlign=bottom;labelBackgroundColor=none;dashed=1;dashPattern=2 2;" plantUmlBaseValue="Restituisce generatore asincrono" id="M7H68gGplKVeu-4bPKvJ-29">
      <mxCell edge="1" parent="M7H68gGplKVeu-4bPKvJ-1" source="M7H68gGplKVeu-4bPKvJ-49" style="endArrow=classic;endFill=1;endSize=9;html=1;rounded=0;edgeStyle=elbowEdgeStyle;elbow=vertical;curved=0;strokeColor=#181818;strokeWidth=1;fontColor=#000000;fontSize=13;verticalAlign=bottom;labelBackgroundColor=none;dashed=1;dashPattern=2 2;" target="M7H68gGplKVeu-4bPKvJ-48">
        <mxGeometry relative="1" x="0.057" as="geometry">
          <Array as="points">
            <mxPoint x="1063" y="601" />
          </Array>
          <mxPoint x="1184.2857142857144" y="601" as="sourcePoint" />
          <mxPoint x="941.4142857142858" y="601" as="targetPoint" />
        </mxGeometry>
      </mxCell>
    </UserObject>
    <UserObject label="Estrae il primo frammento&#xa;(Gestione errori 503)" plantUmlId="msg_43" plantUmlBaseStyle="endArrow=classic;endFill=1;endSize=9;html=1;rounded=0;edgeStyle=elbowEdgeStyle;elbow=vertical;curved=0;strokeColor=#181818;strokeWidth=1;fontColor=#000000;fontSize=13;verticalAlign=bottom;labelBackgroundColor=none;" plantUmlBaseValue="Estrae il primo frammento&#xa;(Gestione errori 503)" id="M7H68gGplKVeu-4bPKvJ-30">
      <mxCell edge="1" parent="M7H68gGplKVeu-4bPKvJ-1" source="M7H68gGplKVeu-4bPKvJ-48" style="endArrow=classic;endFill=1;endSize=9;html=1;rounded=0;edgeStyle=elbowEdgeStyle;elbow=vertical;curved=0;strokeColor=#181818;strokeWidth=1;fontColor=#000000;fontSize=13;verticalAlign=bottom;labelBackgroundColor=none;" target="M7H68gGplKVeu-4bPKvJ-51">
        <mxGeometry relative="1" x="-0.676" as="geometry">
          <Array as="points">
            <mxPoint x="1197" y="648" />
          </Array>
          <mxPoint x="941.4142857142858" y="648" as="sourcePoint" />
          <mxPoint x="1452.757142857143" y="648" as="targetPoint" />
        </mxGeometry>
      </mxCell>
    </UserObject>
    <UserObject label="Primo blocco di risposta" plantUmlId="msg_44" plantUmlBaseStyle="endArrow=classic;endFill=1;endSize=9;html=1;rounded=0;edgeStyle=elbowEdgeStyle;elbow=vertical;curved=0;strokeColor=#181818;strokeWidth=1;fontColor=#000000;fontSize=13;verticalAlign=bottom;labelBackgroundColor=none;dashed=1;dashPattern=2 2;" plantUmlBaseValue="Primo blocco di risposta" id="M7H68gGplKVeu-4bPKvJ-31">
      <mxCell edge="1" parent="M7H68gGplKVeu-4bPKvJ-1" source="M7H68gGplKVeu-4bPKvJ-54" style="endArrow=classic;endFill=1;endSize=9;html=1;rounded=0;edgeStyle=elbowEdgeStyle;elbow=vertical;curved=0;strokeColor=#181818;strokeWidth=1;fontColor=#000000;fontSize=13;verticalAlign=bottom;labelBackgroundColor=none;dashed=1;dashPattern=2 2;" target="M7H68gGplKVeu-4bPKvJ-51">
        <mxGeometry relative="1" x="-0.114" as="geometry">
          <Array as="points">
            <mxPoint x="1543" y="680" />
          </Array>
          <mxPoint x="1622.6142857142859" y="680" as="sourcePoint" />
          <mxPoint x="1462.757142857143" y="680" as="targetPoint" />
        </mxGeometry>
      </mxCell>
    </UserObject>
    <UserObject label="Primo frammento pronto" plantUmlId="msg_45" plantUmlBaseStyle="endArrow=classic;endFill=1;endSize=9;html=1;rounded=0;edgeStyle=elbowEdgeStyle;elbow=vertical;curved=0;strokeColor=#181818;strokeWidth=1;fontColor=#000000;fontSize=13;verticalAlign=bottom;labelBackgroundColor=none;dashed=1;dashPattern=2 2;" plantUmlBaseValue="Primo frammento pronto" id="M7H68gGplKVeu-4bPKvJ-32">
      <mxCell edge="1" parent="M7H68gGplKVeu-4bPKvJ-1" source="M7H68gGplKVeu-4bPKvJ-51" style="endArrow=classic;endFill=1;endSize=9;html=1;rounded=0;edgeStyle=elbowEdgeStyle;elbow=vertical;curved=0;strokeColor=#181818;strokeWidth=1;fontColor=#000000;fontSize=13;verticalAlign=bottom;labelBackgroundColor=none;dashed=1;dashPattern=2 2;" target="M7H68gGplKVeu-4bPKvJ-48">
        <mxGeometry relative="1" x="0.659" as="geometry">
          <Array as="points">
            <mxPoint x="1197" y="712" />
          </Array>
          <mxPoint x="1452.757142857143" y="712" as="sourcePoint" />
          <mxPoint x="941.4142857142858" y="712" as="targetPoint" />
        </mxGeometry>
      </mxCell>
    </UserObject>
    <UserObject label="Risposta HTTP 200 OK&#xa;(text/event-stream)" plantUmlId="msg_46" plantUmlBaseStyle="endArrow=classic;endFill=1;endSize=9;html=1;rounded=0;edgeStyle=elbowEdgeStyle;elbow=vertical;curved=0;strokeColor=#181818;strokeWidth=1;fontColor=#000000;fontSize=13;verticalAlign=bottom;labelBackgroundColor=none;dashed=1;dashPattern=2 2;" plantUmlBaseValue="Risposta HTTP 200 OK&#xa;(text/event-stream)" id="M7H68gGplKVeu-4bPKvJ-33">
      <mxCell edge="1" parent="M7H68gGplKVeu-4bPKvJ-1" source="M7H68gGplKVeu-4bPKvJ-48" style="endArrow=classic;endFill=1;endSize=9;html=1;rounded=0;edgeStyle=elbowEdgeStyle;elbow=vertical;curved=0;strokeColor=#181818;strokeWidth=1;fontColor=#000000;fontSize=13;verticalAlign=bottom;labelBackgroundColor=none;dashed=1;dashPattern=2 2;" target="M7H68gGplKVeu-4bPKvJ-47">
        <mxGeometry relative="1" x="0.204" as="geometry">
          <Array as="points">
            <mxPoint x="830" y="759" />
          </Array>
          <mxPoint x="931.4142857142858" y="759" as="sourcePoint" />
          <mxPoint x="727.6285714285715" y="759" as="targetPoint" />
        </mxGeometry>
      </mxCell>
    </UserObject>
    <UserObject label="Frammento successivo" plantUmlId="msg_47" plantUmlBaseStyle="endArrow=classic;endFill=1;endSize=9;html=1;rounded=0;edgeStyle=elbowEdgeStyle;elbow=vertical;curved=0;strokeColor=#181818;strokeWidth=1;fontColor=#000000;fontSize=13;verticalAlign=bottom;labelBackgroundColor=none;dashed=1;dashPattern=2 2;" plantUmlBaseValue="Frammento successivo" id="M7H68gGplKVeu-4bPKvJ-34">
      <mxCell edge="1" parent="M7H68gGplKVeu-4bPKvJ-1" source="M7H68gGplKVeu-4bPKvJ-54" style="endArrow=classic;endFill=1;endSize=9;html=1;rounded=0;edgeStyle=elbowEdgeStyle;elbow=vertical;curved=0;strokeColor=#181818;strokeWidth=1;fontColor=#000000;fontSize=13;verticalAlign=bottom;labelBackgroundColor=none;dashed=1;dashPattern=2 2;" target="M7H68gGplKVeu-4bPKvJ-52">
        <mxGeometry relative="1" x="-0.081" as="geometry">
          <Array as="points">
            <mxPoint x="1543" y="817.5" />
          </Array>
          <mxPoint x="1622.6142857142859" y="817.5" as="sourcePoint" />
          <mxPoint x="1462.757142857143" y="817.5" as="targetPoint" />
        </mxGeometry>
      </mxCell>
    </UserObject>
    <UserObject label="Evento dati (data: ...)" plantUmlId="msg_48" plantUmlBaseStyle="endArrow=classic;endFill=1;endSize=9;html=1;rounded=0;edgeStyle=elbowEdgeStyle;elbow=vertical;curved=0;strokeColor=#181818;strokeWidth=1;fontColor=#000000;fontSize=13;verticalAlign=bottom;labelBackgroundColor=none;dashed=1;dashPattern=2 2;" plantUmlBaseValue="Evento dati (data: ...)" id="M7H68gGplKVeu-4bPKvJ-35">
      <mxCell edge="1" parent="M7H68gGplKVeu-4bPKvJ-1" source="M7H68gGplKVeu-4bPKvJ-52" style="endArrow=classic;endFill=1;endSize=9;html=1;rounded=0;edgeStyle=elbowEdgeStyle;elbow=vertical;curved=0;strokeColor=#181818;strokeWidth=1;fontColor=#000000;fontSize=13;verticalAlign=bottom;labelBackgroundColor=none;dashed=1;dashPattern=2 2;" target="M7H68gGplKVeu-4bPKvJ-47">
        <mxGeometry relative="1" x="0.783" as="geometry">
          <Array as="points">
            <mxPoint x="1090" y="849.5" />
          </Array>
          <mxPoint x="1452.757142857143" y="849.5" as="sourcePoint" />
          <mxPoint x="727.6285714285715" y="849.5" as="targetPoint" />
        </mxGeometry>
      </mxCell>
    </UserObject>
    <UserObject label="" plantUmlId="msg_49" plantUmlBaseStyle="endArrow=classic;endFill=1;endSize=9;html=1;strokeColor=#181818;strokeWidth=1;exitX=1;exitY=0.704;exitDx=0;exitDy=0;" plantUmlBaseValue="" id="M7H68gGplKVeu-4bPKvJ-36">
      <mxCell edge="1" parent="M7H68gGplKVeu-4bPKvJ-1" source="M7H68gGplKVeu-4bPKvJ-47" style="endArrow=classic;endFill=1;endSize=9;html=1;strokeColor=#181818;strokeWidth=1;exitX=1;exitY=0.704;exitDx=0;exitDy=0;rounded=0;">
        <mxGeometry relative="1" as="geometry">
          <Array as="points">
            <mxPoint x="765.6285714285715" y="881.5" />
            <mxPoint x="765.6285714285715" y="901.5" />
          </Array>
          <mxPoint x="727.6285714285715" y="881.5" as="sourcePoint" />
          <mxPoint x="730.6285714285715" y="901.5" as="targetPoint" />
        </mxGeometry>
      </mxCell>
    </UserObject>
    <UserObject label="Decodifica struttura evento" plantUmlId="msglbl_52" plantUmlBaseStyle="text;html=1;fontColor=#000000;fontSize=13;align=left;verticalAlign=middle;" plantUmlBaseValue="Decodifica struttura evento" id="M7H68gGplKVeu-4bPKvJ-37">
      <mxCell parent="M7H68gGplKVeu-4bPKvJ-1" style="text;html=1;fontColor=#000000;fontSize=13;align=left;verticalAlign=middle;" vertex="1">
        <mxGeometry height="18" width="164.78571428571433" x="729.6285714285715" y="861.5" as="geometry" />
      </mxCell>
    </UserObject>
    <UserObject label="Accoda frammento alla porzione&#xa;di stato (esito in arrivo)" plantUmlId="msg_53" plantUmlBaseStyle="endArrow=classic;endFill=1;endSize=9;html=1;rounded=0;edgeStyle=elbowEdgeStyle;elbow=vertical;curved=0;strokeColor=#181818;strokeWidth=1;fontColor=#000000;fontSize=13;verticalAlign=bottom;labelBackgroundColor=none;" plantUmlBaseValue="Accoda frammento alla porzione&#xa;di stato (esito in arrivo)" id="M7H68gGplKVeu-4bPKvJ-38">
      <mxCell edge="1" parent="M7H68gGplKVeu-4bPKvJ-1" source="M7H68gGplKVeu-4bPKvJ-47" style="endArrow=classic;endFill=1;endSize=9;html=1;rounded=0;edgeStyle=elbowEdgeStyle;elbow=vertical;curved=0;strokeColor=#181818;strokeWidth=1;fontColor=#000000;fontSize=13;verticalAlign=bottom;labelBackgroundColor=none;" target="M7H68gGplKVeu-4bPKvJ-6">
        <mxGeometry relative="1" x="-0.066" as="geometry">
          <Array as="points">
            <mxPoint x="612" y="948.5" />
          </Array>
          <mxPoint x="717.6285714285715" y="948.5" as="sourcePoint" />
          <mxPoint x="506.52857142857147" y="948.5" as="targetPoint" />
        </mxGeometry>
      </mxCell>
    </UserObject>
    <UserObject label="Notifica variazione stato&#xa;(sottoscrizione granulare)" plantUmlId="msg_54" plantUmlBaseStyle="endArrow=classic;endFill=1;endSize=9;html=1;rounded=0;edgeStyle=elbowEdgeStyle;elbow=vertical;curved=0;strokeColor=#181818;strokeWidth=1;fontColor=#000000;fontSize=13;verticalAlign=bottom;labelBackgroundColor=none;dashed=1;dashPattern=2 2;" plantUmlBaseValue="Notifica variazione stato&#xa;(sottoscrizione granulare)" id="M7H68gGplKVeu-4bPKvJ-39">
      <mxCell edge="1" parent="M7H68gGplKVeu-4bPKvJ-1" source="M7H68gGplKVeu-4bPKvJ-6" style="endArrow=classic;endFill=1;endSize=9;html=1;rounded=0;edgeStyle=elbowEdgeStyle;elbow=vertical;curved=0;strokeColor=#181818;strokeWidth=1;fontColor=#000000;fontSize=13;verticalAlign=bottom;labelBackgroundColor=none;dashed=1;dashPattern=2 2;" target="M7H68gGplKVeu-4bPKvJ-46">
        <mxGeometry relative="1" x="0.024" as="geometry">
          <Array as="points">
            <mxPoint x="411" y="995.5" />
          </Array>
          <mxPoint x="506.52857142857147" y="995.5" as="sourcePoint" />
          <mxPoint x="316.4071428571429" y="995.5" as="targetPoint" />
        </mxGeometry>
      </mxCell>
    </UserObject>
    <UserObject label="Mostra frammento progressivo a video" plantUmlId="msg_55" plantUmlBaseStyle="endArrow=classic;endFill=1;endSize=9;html=1;rounded=0;edgeStyle=elbowEdgeStyle;elbow=vertical;curved=0;strokeColor=#181818;strokeWidth=1;fontColor=#000000;fontSize=13;verticalAlign=bottom;labelBackgroundColor=none;dashed=1;dashPattern=2 2;" plantUmlBaseValue="Mostra frammento progressivo a video" id="M7H68gGplKVeu-4bPKvJ-40">
      <mxCell edge="1" parent="M7H68gGplKVeu-4bPKvJ-1" source="M7H68gGplKVeu-4bPKvJ-46" style="endArrow=classic;endFill=1;endSize=9;html=1;rounded=0;edgeStyle=elbowEdgeStyle;elbow=vertical;curved=0;strokeColor=#181818;strokeWidth=1;fontColor=#000000;fontSize=13;verticalAlign=bottom;labelBackgroundColor=none;dashed=1;dashPattern=2 2;">
        <mxGeometry relative="1" x="-0.038" as="geometry">
          <Array as="points">
            <mxPoint x="180" y="1027.5" />
          </Array>
          <mxPoint x="306.4071428571429" y="1027.5" as="sourcePoint" />
          <mxPoint x="53.8" y="1027.5" as="targetPoint" />
        </mxGeometry>
      </mxCell>
    </UserObject>
    <UserObject label="Fine elaborazione" plantUmlId="msg_56" plantUmlBaseStyle="endArrow=classic;endFill=1;endSize=9;html=1;rounded=0;edgeStyle=elbowEdgeStyle;elbow=vertical;curved=0;strokeColor=#181818;strokeWidth=1;fontColor=#000000;fontSize=13;verticalAlign=bottom;labelBackgroundColor=none;dashed=1;dashPattern=2 2;" plantUmlBaseValue="Fine elaborazione" id="M7H68gGplKVeu-4bPKvJ-41">
      <mxCell edge="1" parent="M7H68gGplKVeu-4bPKvJ-1" source="M7H68gGplKVeu-4bPKvJ-54" style="endArrow=classic;endFill=1;endSize=9;html=1;rounded=0;edgeStyle=elbowEdgeStyle;elbow=vertical;curved=0;strokeColor=#181818;strokeWidth=1;fontColor=#000000;fontSize=13;verticalAlign=bottom;labelBackgroundColor=none;dashed=1;dashPattern=2 2;" target="M7H68gGplKVeu-4bPKvJ-53">
        <mxGeometry relative="1" x="0.122" as="geometry">
          <Array as="points">
            <mxPoint x="1543" y="1066.5" />
          </Array>
          <mxPoint x="1622.6142857142859" y="1066.5" as="sourcePoint" />
          <mxPoint x="1462.757142857143" y="1066.5" as="targetPoint" />
        </mxGeometry>
      </mxCell>
    </UserObject>
    <UserObject label="Evento terminale convenzionale ([DONE])" plantUmlId="msg_57" plantUmlBaseStyle="endArrow=classic;endFill=1;endSize=9;html=1;rounded=0;edgeStyle=elbowEdgeStyle;elbow=vertical;curved=0;strokeColor=#181818;strokeWidth=1;fontColor=#000000;fontSize=13;verticalAlign=bottom;labelBackgroundColor=none;dashed=1;dashPattern=2 2;" plantUmlBaseValue="Evento terminale convenzionale ([DONE])" id="M7H68gGplKVeu-4bPKvJ-42">
      <mxCell edge="1" parent="M7H68gGplKVeu-4bPKvJ-1" source="M7H68gGplKVeu-4bPKvJ-53" style="endArrow=classic;endFill=1;endSize=9;html=1;rounded=0;edgeStyle=elbowEdgeStyle;elbow=vertical;curved=0;strokeColor=#181818;strokeWidth=1;fontColor=#000000;fontSize=13;verticalAlign=bottom;labelBackgroundColor=none;dashed=1;dashPattern=2 2;" target="M7H68gGplKVeu-4bPKvJ-47">
        <mxGeometry relative="1" x="0.623" as="geometry">
          <Array as="points">
            <mxPoint x="1090" y="1098.5" />
          </Array>
          <mxPoint x="1452.757142857143" y="1098.5" as="sourcePoint" />
          <mxPoint x="727.6285714285715" y="1098.5" as="targetPoint" />
        </mxGeometry>
      </mxCell>
    </UserObject>
    <UserObject label="Termina flusso" plantUmlId="msg_58" plantUmlBaseStyle="endArrow=classic;endFill=1;endSize=9;html=1;rounded=0;edgeStyle=elbowEdgeStyle;elbow=vertical;curved=0;strokeColor=#181818;strokeWidth=1;fontColor=#000000;fontSize=13;verticalAlign=bottom;labelBackgroundColor=none;dashed=1;dashPattern=2 2;" plantUmlBaseValue="Termina flusso" id="M7H68gGplKVeu-4bPKvJ-43">
      <mxCell edge="1" parent="M7H68gGplKVeu-4bPKvJ-1" source="M7H68gGplKVeu-4bPKvJ-47" style="endArrow=classic;endFill=1;endSize=9;html=1;rounded=0;edgeStyle=elbowEdgeStyle;elbow=vertical;curved=0;strokeColor=#181818;strokeWidth=1;fontColor=#000000;fontSize=13;verticalAlign=bottom;labelBackgroundColor=none;dashed=1;dashPattern=2 2;" target="M7H68gGplKVeu-4bPKvJ-46">
        <mxGeometry relative="1" x="0.695" as="geometry">
          <Array as="points">
            <mxPoint x="517" y="1130.5" />
          </Array>
          <mxPoint x="717.6285714285715" y="1130.5" as="sourcePoint" />
          <mxPoint x="316.4071428571429" y="1130.5" as="targetPoint" />
        </mxGeometry>
      </mxCell>
    </UserObject>
    <UserObject label="Spegne indicatore di attesa" plantUmlId="msg_59" plantUmlBaseStyle="endArrow=classic;endFill=1;endSize=9;html=1;rounded=0;edgeStyle=elbowEdgeStyle;elbow=vertical;curved=0;strokeColor=#181818;strokeWidth=1;fontColor=#000000;fontSize=13;verticalAlign=bottom;labelBackgroundColor=none;" plantUmlBaseValue="Spegne indicatore di attesa" id="M7H68gGplKVeu-4bPKvJ-44">
      <mxCell edge="1" parent="M7H68gGplKVeu-4bPKvJ-1" source="M7H68gGplKVeu-4bPKvJ-46" style="endArrow=classic;endFill=1;endSize=9;html=1;rounded=0;edgeStyle=elbowEdgeStyle;elbow=vertical;curved=0;strokeColor=#181818;strokeWidth=1;fontColor=#000000;fontSize=13;verticalAlign=bottom;labelBackgroundColor=none;" target="M7H68gGplKVeu-4bPKvJ-6">
        <mxGeometry relative="1" x="-0.074" as="geometry">
          <Array as="points">
            <mxPoint x="411" y="1162.5" />
          </Array>
          <mxPoint x="316.4071428571429" y="1162.5" as="sourcePoint" />
          <mxPoint x="506.52857142857147" y="1162.5" as="targetPoint" />
        </mxGeometry>
      </mxCell>
    </UserObject>
    <UserObject label="Abilita comandi di Accettazione/Rifiuto" plantUmlId="msg_60" plantUmlBaseStyle="endArrow=classic;endFill=1;endSize=9;html=1;rounded=0;edgeStyle=elbowEdgeStyle;elbow=vertical;curved=0;strokeColor=#181818;strokeWidth=1;fontColor=#000000;fontSize=13;verticalAlign=bottom;labelBackgroundColor=none;dashed=1;dashPattern=2 2;" plantUmlBaseValue="Abilita comandi di Accettazione/Rifiuto" id="M7H68gGplKVeu-4bPKvJ-45">
      <mxCell edge="1" parent="M7H68gGplKVeu-4bPKvJ-1" source="M7H68gGplKVeu-4bPKvJ-46" style="endArrow=classic;endFill=1;endSize=9;html=1;rounded=0;edgeStyle=elbowEdgeStyle;elbow=vertical;curved=0;strokeColor=#181818;strokeWidth=1;fontColor=#000000;fontSize=13;verticalAlign=bottom;labelBackgroundColor=none;dashed=1;dashPattern=2 2;">
        <mxGeometry relative="1" x="-0.055" as="geometry">
          <Array as="points">
            <mxPoint x="180" y="1194.5" />
          </Array>
          <mxPoint x="306.4071428571429" y="1194.5" as="sourcePoint" />
          <mxPoint x="53.8" y="1194.5" as="targetPoint" />
        </mxGeometry>
      </mxCell>
    </UserObject>
    <UserObject label="" plantUmlId="act_0" plantUmlBaseStyle="rounded=0;fillColor=#FFFFFF;strokeColor=#181818;strokeWidth=1;points=[];perimeter=orthogonalPerimeter;outlineConnect=0;portConstraint=eastwest;" plantUmlBaseValue="" id="M7H68gGplKVeu-4bPKvJ-46">
      <mxCell parent="M7H68gGplKVeu-4bPKvJ-1" style="rounded=0;fillColor=#FFFFFF;strokeColor=#181818;strokeWidth=1;points=[];perimeter=orthogonalPerimeter;outlineConnect=0;portConstraint=eastwest;" vertex="1">
        <mxGeometry height="1035.5" width="10" x="306.4071428571429" y="159" as="geometry" />
      </mxCell>
    </UserObject>
    <UserObject label="" plantUmlId="act_1" plantUmlBaseStyle="rounded=0;fillColor=#FFFFFF;strokeColor=#181818;strokeWidth=1;points=[];perimeter=orthogonalPerimeter;outlineConnect=0;portConstraint=eastwest;" plantUmlBaseValue="" id="M7H68gGplKVeu-4bPKvJ-47">
      <mxCell parent="M7H68gGplKVeu-4bPKvJ-1" style="rounded=0;fillColor=#FFFFFF;strokeColor=#181818;strokeWidth=1;points=[];perimeter=orthogonalPerimeter;outlineConnect=0;portConstraint=eastwest;" vertex="1">
        <mxGeometry height="840.5" width="10" x="717.6285714285715" y="290" as="geometry" />
      </mxCell>
    </UserObject>
    <UserObject label="" plantUmlId="act_2" plantUmlBaseStyle="rounded=0;fillColor=#FFFFFF;strokeColor=#181818;strokeWidth=1;points=[];perimeter=orthogonalPerimeter;outlineConnect=0;portConstraint=eastwest;" plantUmlBaseValue="" id="M7H68gGplKVeu-4bPKvJ-48">
      <mxCell parent="M7H68gGplKVeu-4bPKvJ-1" style="rounded=0;fillColor=#FFFFFF;strokeColor=#181818;strokeWidth=1;points=[];perimeter=orthogonalPerimeter;outlineConnect=0;portConstraint=eastwest;" vertex="1">
        <mxGeometry height="437" width="10" x="931.4142857142858" y="322" as="geometry" />
      </mxCell>
    </UserObject>
    <UserObject label="" plantUmlId="act_3" plantUmlBaseStyle="rounded=0;fillColor=#FFFFFF;strokeColor=#181818;strokeWidth=1;points=[];perimeter=orthogonalPerimeter;outlineConnect=0;portConstraint=eastwest;" plantUmlBaseValue="" id="M7H68gGplKVeu-4bPKvJ-49">
      <mxCell parent="M7H68gGplKVeu-4bPKvJ-1" style="rounded=0;fillColor=#FFFFFF;strokeColor=#181818;strokeWidth=1;points=[];perimeter=orthogonalPerimeter;outlineConnect=0;portConstraint=eastwest;" vertex="1">
        <mxGeometry height="195" width="10" x="1184.2857142857144" y="406" as="geometry" />
      </mxCell>
    </UserObject>
    <UserObject label="" plantUmlId="act_4" plantUmlBaseStyle="rounded=0;fillColor=#FFFFFF;strokeColor=#181818;strokeWidth=1;points=[];perimeter=orthogonalPerimeter;outlineConnect=0;portConstraint=eastwest;" plantUmlBaseValue="" id="M7H68gGplKVeu-4bPKvJ-50">
      <mxCell parent="M7H68gGplKVeu-4bPKvJ-1" style="rounded=0;fillColor=#FFFFFF;strokeColor=#181818;strokeWidth=1;points=[];perimeter=orthogonalPerimeter;outlineConnect=0;portConstraint=eastwest;" vertex="1">
        <mxGeometry height="64" width="10" x="1452.757142857143" y="505" as="geometry" />
      </mxCell>
    </UserObject>
    <UserObject label="" plantUmlId="act_5" plantUmlBaseStyle="rounded=0;fillColor=#FFFFFF;strokeColor=#181818;strokeWidth=1;points=[];perimeter=orthogonalPerimeter;outlineConnect=0;portConstraint=eastwest;" plantUmlBaseValue="" id="M7H68gGplKVeu-4bPKvJ-51">
      <mxCell parent="M7H68gGplKVeu-4bPKvJ-1" style="rounded=0;fillColor=#FFFFFF;strokeColor=#181818;strokeWidth=1;points=[];perimeter=orthogonalPerimeter;outlineConnect=0;portConstraint=eastwest;" vertex="1">
        <mxGeometry height="64" width="10" x="1452.757142857143" y="648" as="geometry" />
      </mxCell>
    </UserObject>
    <UserObject label="" plantUmlId="act_6" plantUmlBaseStyle="rounded=0;fillColor=#FFFFFF;strokeColor=#181818;strokeWidth=1;points=[];perimeter=orthogonalPerimeter;outlineConnect=0;portConstraint=eastwest;" plantUmlBaseValue="" id="M7H68gGplKVeu-4bPKvJ-52">
      <mxCell parent="M7H68gGplKVeu-4bPKvJ-1" style="rounded=0;fillColor=#FFFFFF;strokeColor=#181818;strokeWidth=1;points=[];perimeter=orthogonalPerimeter;outlineConnect=0;portConstraint=eastwest;" vertex="1">
        <mxGeometry height="32" width="10" x="1452.757142857143" y="817.5" as="geometry" />
      </mxCell>
    </UserObject>
    <UserObject label="" plantUmlId="act_7" plantUmlBaseStyle="rounded=0;fillColor=#FFFFFF;strokeColor=#181818;strokeWidth=1;points=[];perimeter=orthogonalPerimeter;outlineConnect=0;portConstraint=eastwest;" plantUmlBaseValue="" id="M7H68gGplKVeu-4bPKvJ-53">
      <mxCell parent="M7H68gGplKVeu-4bPKvJ-1" style="rounded=0;fillColor=#FFFFFF;strokeColor=#181818;strokeWidth=1;points=[];perimeter=orthogonalPerimeter;outlineConnect=0;portConstraint=eastwest;" vertex="1">
        <mxGeometry height="32" width="10" x="1452.757142857143" y="1066.5" as="geometry" />
      </mxCell>
    </UserObject>
    <UserObject label="" plantUmlId="act_8" plantUmlBaseStyle="rounded=0;fillColor=#FFFFFF;strokeColor=#181818;strokeWidth=1;points=[];perimeter=orthogonalPerimeter;outlineConnect=0;portConstraint=eastwest;" plantUmlBaseValue="" id="M7H68gGplKVeu-4bPKvJ-54">
      <mxCell parent="M7H68gGplKVeu-4bPKvJ-1" style="rounded=0;fillColor=#FFFFFF;strokeColor=#181818;strokeWidth=1;points=[];perimeter=orthogonalPerimeter;outlineConnect=0;portConstraint=eastwest;" vertex="1">
        <mxGeometry height="529.5" width="10" x="1622.6142857142859" y="537" as="geometry" />
      </mxCell>
    </UserObject>
    <UserObject label="Utente" plantUmlId="p_61" plantUmlBaseStyle="shape=umlActor;verticalLabelPosition=bottom;verticalAlign=top;fillColor=#E2E2F0;strokeColor=#181818;fontColor=#000000;fontSize=14;html=1;" plantUmlBaseValue="Utente" id="M7H68gGplKVeu-4bPKvJ-55">
      <mxCell parent="M7H68gGplKVeu-4bPKvJ-1" style="shape=umlActor;verticalLabelPosition=bottom;verticalAlign=top;fillColor=#E2E2F0;strokeColor=#181818;fontColor=#000000;fontSize=14;html=1;" vertex="1">
        <mxGeometry height="38" width="24" x="41.8" y="52" as="geometry" />
      </mxCell>
    </UserObject>
    <UserObject label="Utente" plantUmlId="pf_62" plantUmlBaseStyle="shape=umlActor;verticalLabelPosition=top;verticalAlign=bottom;fillColor=#E2E2F0;strokeColor=#181818;fontColor=#000000;fontSize=14;html=1;" plantUmlBaseValue="Utente" id="M7H68gGplKVeu-4bPKvJ-56">
      <mxCell parent="M7H68gGplKVeu-4bPKvJ-1" style="shape=umlActor;verticalLabelPosition=top;verticalAlign=bottom;fillColor=#E2E2F0;strokeColor=#181818;fontColor=#000000;fontSize=14;html=1;" vertex="1">
        <mxGeometry height="38" width="24" x="41.8" y="1230.5" as="geometry" />
      </mxCell>
    </UserObject>
    <UserObject label="Gateway&#xa;LiteLLM" plantUmlId="p_63" plantUmlBaseStyle="shape=cylinder3;size=6;verticalLabelPosition=bottom;verticalAlign=top;fillColor=#E2E2F0;strokeColor=#181818;fontColor=#000000;fontSize=14;html=1;" plantUmlBaseValue="Gateway&#xa;LiteLLM" id="M7H68gGplKVeu-4bPKvJ-57">
      <mxCell parent="M7H68gGplKVeu-4bPKvJ-1" style="shape=cylinder3;size=6;verticalLabelPosition=bottom;verticalAlign=top;fillColor=#E2E2F0;strokeColor=#181818;fontColor=#000000;fontSize=14;html=1;" vertex="1">
        <mxGeometry height="34" width="36" x="1609.6142857142859" y="56" as="geometry" />
      </mxCell>
    </UserObject>
    <UserObject label="Gateway&#xa;LiteLLM" plantUmlId="pf_64" plantUmlBaseStyle="shape=cylinder3;size=6;verticalLabelPosition=top;verticalAlign=bottom;fillColor=#E2E2F0;strokeColor=#181818;fontColor=#000000;fontSize=14;html=1;" plantUmlBaseValue="Gateway&#xa;LiteLLM" id="M7H68gGplKVeu-4bPKvJ-58">
      <mxCell parent="M7H68gGplKVeu-4bPKvJ-1" style="shape=cylinder3;size=6;verticalLabelPosition=top;verticalAlign=bottom;fillColor=#E2E2F0;strokeColor=#181818;fontColor=#000000;fontSize=14;html=1;" vertex="1">
        <mxGeometry height="34" width="36" x="1609.6142857142859" y="1230.5" as="geometry" />
      </mxCell>
    </UserObject>
  </root>
</mxGraphModel>
