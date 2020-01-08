<?xml version="1.0" encoding="UTF-8"?>
<?PowerDesigner AppLocale="UTF16" ID="{F1FAFAF0-4AAD-418F-8095-7905D078EF49}" Label="" LastModificationDate="1578175842" Name="MOO Projet S3" Objects="200" Symbols="61" Target="Analyse" TargetLink="Reference" Type="{18112060-1A4B-11D1-83D9-444553540000}" signature="CLD_OBJECT_MODEL" version="16.6.4.5517"?>
<!-- Veuillez ne pas modifier ce fichier -->

<Model xmlns:a="attribute" xmlns:c="collection" xmlns:o="object">

<o:RootObject Id="o1">
<a:SessionID>00000000-0000-0000-0000-000000000000</a:SessionID>
<c:Children>
<o:Model Id="o2">
<a:ObjectID>F1FAFAF0-4AAD-418F-8095-7905D078EF49</a:ObjectID>
<a:Name>MOO Projet S3</a:Name>
<a:Code>MOO_PROJET_S3</a:Code>
<a:CreationDate>1575241108</a:CreationDate>
<a:Creator>germa</a:Creator>
<a:ModificationDate>1578175841</a:ModificationDate>
<a:Modifier>germa</a:Modifier>
<a:History>ORG {D8B047F4-F430-42D5-945E-EE3914C40E67}
DAT 1578175841
DLD {48E40240-76EF-4900-9679-18BE2CABA975}
DLD {A8A55E57-CFFC-49B8-B23D-C158FDCA4DA4}
DLD {68985CAC-DD62-4350-9FFD-548FFB8F0D23}
DLD {9C7FD561-E9D5-4D80-9F14-A59CB4B7A68E}
DLD {7FC062F1-192B-46F7-A540-C057938B7506}
DLD {6827F62B-8BE4-47AE-9D1F-C80391F84B81}
DLD {9E4D7E75-6189-4436-9619-C1D7ADEEC17A}
DLD {66C3A699-76A5-41EC-81E5-D027D4E41741}
DLD {DDFB5043-C66E-490D-8483-DB555F697F24}</a:History>
<a:PackageOptionsText>[FolderOptions]

[FolderOptions\Class Diagram Objects]
GenerationCheckModel=Yes
GenerationPath=
GenerationOptions=
GenerationTasks=
GenerationTargets=
GenerationSelections=</a:PackageOptionsText>
<a:ModelOptionsText>[ModelOptions]

[ModelOptions\Cld]
CaseSensitive=No
DisplayName=Yes
EnableTrans=Yes
UseTerm=No
EnableRequirements=No
EnableFullShortcut=Yes
SynchroCode=Yes
ShowClss=No
DeftAttr=int
DeftMthd=int
DeftParm=int
DeftCont=
DomnDttp=Yes
DomnChck=No
DomnRule=No
SupportDelay=No
PreviewEditable=Yes
AutoRealize=No
DttpFullName=Yes
DeftClssAttrVisi=private
VBNetPreprocessingSymbols=
CSharpPreprocessingSymbols=

[ModelOptions\Cld\NamingOptionsTemplates]

[ModelOptions\Cld\ClssNamingOptions]

[ModelOptions\Cld\ClssNamingOptions\CLDPCKG]

[ModelOptions\Cld\ClssNamingOptions\CLDPCKG\Name]
Template=
MaxLen=254
Case=M
ValidChar=
InvldChar=
AllValid=Yes
NoAccent=No
DefaultChar=_
Script=.convert_name(%Name%,,,firstLowerWord)
ConvTable=
ConvTablePath=%_HOME%\Resource Files\Conversion Tables

[ModelOptions\Cld\ClssNamingOptions\CLDPCKG\Code]
Template=
MaxLen=254
Case=M
ValidChar=&#39;a&#39;-&#39;z&#39;,&#39;A&#39;-&#39;Z&#39;,&#39;0&#39;-&#39;9&#39;,&quot;_&quot;
InvldChar=&quot; +-*/!=&lt;&gt;&#39;&quot;&quot;().&quot;
AllValid=Yes
NoAccent=Yes
DefaultChar=_
Script=.convert_code(%Code%,&quot; &quot;)
ConvTable=
ConvTablePath=%_HOME%\Resource Files\Conversion Tables

[ModelOptions\Cld\ClssNamingOptions\CLDDOMN]

[ModelOptions\Cld\ClssNamingOptions\CLDDOMN\Name]
Template=
MaxLen=254
Case=M
ValidChar=
InvldChar=
AllValid=Yes
NoAccent=No
DefaultChar=_
Script=.convert_name(%Name%,&quot;_&quot;)
ConvTable=
ConvTablePath=%_HOME%\Resource Files\Conversion Tables

[ModelOptions\Cld\ClssNamingOptions\CLDDOMN\Code]
Template=
MaxLen=254
Case=U
ValidChar=&#39;a&#39;-&#39;z&#39;,&#39;A&#39;-&#39;Z&#39;,&#39;0&#39;-&#39;9&#39;,&quot;_&quot;
InvldChar=&quot; +-*/!=&lt;&gt;&#39;&quot;&quot;().&quot;
AllValid=Yes
NoAccent=Yes
DefaultChar=_
Script=.convert_code(%Code%,&quot; &quot;)
ConvTable=
ConvTablePath=%_HOME%\Resource Files\Conversion Tables

[ModelOptions\Cld\ClssNamingOptions\CLDCLASS]

[ModelOptions\Cld\ClssNamingOptions\CLDCLASS\Name]
Template=
MaxLen=254
Case=M
ValidChar=
InvldChar=
AllValid=Yes
NoAccent=No
DefaultChar=_
Script=.convert_name(%Name%,,,FirstUpperChar)
ConvTable=
ConvTablePath=%_HOME%\Resource Files\Conversion Tables

[ModelOptions\Cld\ClssNamingOptions\CLDCLASS\Code]
Template=
MaxLen=254
Case=M
ValidChar=&#39;a&#39;-&#39;z&#39;,&#39;A&#39;-&#39;Z&#39;,&#39;0&#39;-&#39;9&#39;,&quot;_&quot;
InvldChar=&quot; +-*/!=&lt;&gt;&#39;&quot;&quot;().&quot;
AllValid=Yes
NoAccent=Yes
DefaultChar=_
Script=.convert_code(%Code%,&quot; &quot;)
ConvTable=
ConvTablePath=%_HOME%\Resource Files\Conversion Tables

[ModelOptions\Cld\ClssNamingOptions\CLDINTF]

[ModelOptions\Cld\ClssNamingOptions\CLDINTF\Name]
Template=
MaxLen=254
Case=M
ValidChar=
InvldChar=
AllValid=Yes
NoAccent=No
DefaultChar=_
Script=.convert_name(%Name%,,,FirstUpperChar)
ConvTable=
ConvTablePath=%_HOME%\Resource Files\Conversion Tables

[ModelOptions\Cld\ClssNamingOptions\CLDINTF\Code]
Template=
MaxLen=254
Case=M
ValidChar=&#39;a&#39;-&#39;z&#39;,&#39;A&#39;-&#39;Z&#39;,&#39;0&#39;-&#39;9&#39;,&quot;_&quot;
InvldChar=&quot; +-*/!=&lt;&gt;&#39;&quot;&quot;().&quot;
AllValid=Yes
NoAccent=Yes
DefaultChar=_
Script=.convert_code(%Code%,&quot; &quot;)
ConvTable=
ConvTablePath=%_HOME%\Resource Files\Conversion Tables

[ModelOptions\Cld\ClssNamingOptions\UCDACTR]

[ModelOptions\Cld\ClssNamingOptions\UCDACTR\Name]
Template=
MaxLen=254
Case=M
ValidChar=
InvldChar=
AllValid=Yes
NoAccent=No
DefaultChar=_
Script=.convert_name(%Name%,&quot;_&quot;)
ConvTable=
ConvTablePath=%_HOME%\Resource Files\Conversion Tables

[ModelOptions\Cld\ClssNamingOptions\UCDACTR\Code]
Template=
MaxLen=254
Case=M
ValidChar=&#39;a&#39;-&#39;z&#39;,&#39;A&#39;-&#39;Z&#39;,&#39;0&#39;-&#39;9&#39;,&quot;_&quot;
InvldChar=&quot; +-*/!=&lt;&gt;&#39;&quot;&quot;().&quot;
AllValid=Yes
NoAccent=Yes
DefaultChar=_
Script=.convert_code(%Code%,&quot; &quot;)
ConvTable=
ConvTablePath=%_HOME%\Resource Files\Conversion Tables

[ModelOptions\Cld\ClssNamingOptions\UCDUCAS]

[ModelOptions\Cld\ClssNamingOptions\UCDUCAS\Name]
Template=
MaxLen=254
Case=M
ValidChar=
InvldChar=
AllValid=Yes
NoAccent=No
DefaultChar=_
Script=.convert_name(%Name%,&quot;_&quot;)
ConvTable=
ConvTablePath=%_HOME%\Resource Files\Conversion Tables

[ModelOptions\Cld\ClssNamingOptions\UCDUCAS\Code]
Template=
MaxLen=254
Case=M
ValidChar=&#39;a&#39;-&#39;z&#39;,&#39;A&#39;-&#39;Z&#39;,&#39;0&#39;-&#39;9&#39;,&quot;_&quot;
InvldChar=&quot; +-*/!=&lt;&gt;&#39;&quot;&quot;().&quot;
AllValid=Yes
NoAccent=Yes
DefaultChar=_
Script=.convert_code(%Code%,&quot; &quot;)
ConvTable=
ConvTablePath=%_HOME%\Resource Files\Conversion Tables

[ModelOptions\Cld\ClssNamingOptions\SQDOBJT]

[ModelOptions\Cld\ClssNamingOptions\SQDOBJT\Name]
Template=
MaxLen=254
Case=M
ValidChar=
InvldChar=
AllValid=Yes
NoAccent=No
DefaultChar=_
Script=.convert_name(%Name%,&quot;_&quot;)
ConvTable=
ConvTablePath=%_HOME%\Resource Files\Conversion Tables

[ModelOptions\Cld\ClssNamingOptions\SQDOBJT\Code]
Template=
MaxLen=254
Case=M
ValidChar=&#39;a&#39;-&#39;z&#39;,&#39;A&#39;-&#39;Z&#39;,&#39;0&#39;-&#39;9&#39;,&quot;_&quot;
InvldChar=&quot; +-*/!=&lt;&gt;&#39;&quot;&quot;().&quot;
AllValid=Yes
NoAccent=Yes
DefaultChar=_
Script=.convert_code(%Code%,&quot; &quot;)
ConvTable=
ConvTablePath=%_HOME%\Resource Files\Conversion Tables

[ModelOptions\Cld\ClssNamingOptions\SQDMSSG]

[ModelOptions\Cld\ClssNamingOptions\SQDMSSG\Name]
Template=
MaxLen=254
Case=M
ValidChar=
InvldChar=
AllValid=Yes
NoAccent=No
DefaultChar=_
Script=.convert_name(%Name%,&quot;_&quot;)
ConvTable=
ConvTablePath=%_HOME%\Resource Files\Conversion Tables

[ModelOptions\Cld\ClssNamingOptions\SQDMSSG\Code]
Template=
MaxLen=254
Case=M
ValidChar=&#39;a&#39;-&#39;z&#39;,&#39;A&#39;-&#39;Z&#39;,&#39;0&#39;-&#39;9&#39;,&quot;_&quot;
InvldChar=&quot; +-*/!=&lt;&gt;&#39;&quot;&quot;().&quot;
AllValid=Yes
NoAccent=Yes
DefaultChar=_
Script=.convert_code(%Code%,&quot; &quot;)
ConvTable=
ConvTablePath=%_HOME%\Resource Files\Conversion Tables

[ModelOptions\Cld\ClssNamingOptions\CPDCOMP]

[ModelOptions\Cld\ClssNamingOptions\CPDCOMP\Name]
Template=
MaxLen=254
Case=M
ValidChar=
InvldChar=
AllValid=Yes
NoAccent=No
DefaultChar=_
Script=.convert_name(%Name%,,,FirstUpperChar)
ConvTable=
ConvTablePath=%_HOME%\Resource Files\Conversion Tables

[ModelOptions\Cld\ClssNamingOptions\CPDCOMP\Code]
Template=
MaxLen=254
Case=M
ValidChar=&#39;a&#39;-&#39;z&#39;,&#39;A&#39;-&#39;Z&#39;,&#39;0&#39;-&#39;9&#39;,&quot;_&quot;
InvldChar=&quot; +-*/!=&lt;&gt;&#39;&quot;&quot;().&quot;
AllValid=Yes
NoAccent=Yes
DefaultChar=_
Script=.convert_code(%Code%,&quot; &quot;)
ConvTable=
ConvTablePath=%_HOME%\Resource Files\Conversion Tables

[ModelOptions\Cld\ClssNamingOptions\CLDATTR]

[ModelOptions\Cld\ClssNamingOptions\CLDATTR\Name]
Template=
MaxLen=254
Case=M
ValidChar=
InvldChar=
AllValid=Yes
NoAccent=No
DefaultChar=_
Script=.convert_name(%Name%,,,firstLowerWord)
ConvTable=
ConvTablePath=%_HOME%\Resource Files\Conversion Tables

[ModelOptions\Cld\ClssNamingOptions\CLDATTR\Code]
Template=
MaxLen=254
Case=M
ValidChar=&#39;a&#39;-&#39;z&#39;,&#39;A&#39;-&#39;Z&#39;,&#39;0&#39;-&#39;9&#39;,&quot;_&quot;
InvldChar=&quot; +-*/!=&lt;&gt;&#39;&quot;&quot;().&quot;
AllValid=Yes
NoAccent=Yes
DefaultChar=_
Script=.convert_code(%Code%,&quot; &quot;)
ConvTable=
ConvTablePath=%_HOME%\Resource Files\Conversion Tables

[ModelOptions\Cld\ClssNamingOptions\CLDMETHOD]

[ModelOptions\Cld\ClssNamingOptions\CLDMETHOD\Name]
Template=
MaxLen=254
Case=M
ValidChar=
InvldChar=
AllValid=Yes
NoAccent=No
DefaultChar=_
Script=.convert_name(%Name%,,,firstLowerWord)
ConvTable=
ConvTablePath=%_HOME%\Resource Files\Conversion Tables

[ModelOptions\Cld\ClssNamingOptions\CLDMETHOD\Code]
Template=
MaxLen=254
Case=M
ValidChar=&#39;a&#39;-&#39;z&#39;,&#39;A&#39;-&#39;Z&#39;,&#39;0&#39;-&#39;9&#39;,&quot;_&quot;
InvldChar=&quot; +-*/!=&lt;&gt;&#39;&quot;&quot;().&quot;
AllValid=Yes
NoAccent=Yes
DefaultChar=_
Script=.convert_code(%Code%,&quot; &quot;)
ConvTable=
ConvTablePath=%_HOME%\Resource Files\Conversion Tables

[ModelOptions\Cld\ClssNamingOptions\CLDPARM]

[ModelOptions\Cld\ClssNamingOptions\CLDPARM\Name]
Template=
MaxLen=254
Case=M
ValidChar=
InvldChar=
AllValid=Yes
NoAccent=No
DefaultChar=_
Script=.convert_name(%Name%,,,firstLowerWord)
ConvTable=
ConvTablePath=%_HOME%\Resource Files\Conversion Tables

[ModelOptions\Cld\ClssNamingOptions\CLDPARM\Code]
Template=
MaxLen=254
Case=M
ValidChar=&#39;a&#39;-&#39;z&#39;,&#39;A&#39;-&#39;Z&#39;,&#39;0&#39;-&#39;9&#39;,&quot;_&quot;
InvldChar=&quot; +-*/!=&lt;&gt;&#39;&quot;&quot;().&quot;
AllValid=Yes
NoAccent=Yes
DefaultChar=_
Script=.convert_code(%Code%,&quot; &quot;)
ConvTable=
ConvTablePath=%_HOME%\Resource Files\Conversion Tables

[ModelOptions\Cld\ClssNamingOptions\OOMPORT]

[ModelOptions\Cld\ClssNamingOptions\OOMPORT\Name]
Template=
MaxLen=254
Case=M
ValidChar=
InvldChar=
AllValid=Yes
NoAccent=No
DefaultChar=_
Script=.convert_name(%Name%,&quot;_&quot;)
ConvTable=
ConvTablePath=%_HOME%\Resource Files\Conversion Tables

[ModelOptions\Cld\ClssNamingOptions\OOMPORT\Code]
Template=
MaxLen=254
Case=M
ValidChar=&#39;a&#39;-&#39;z&#39;,&#39;A&#39;-&#39;Z&#39;,&#39;0&#39;-&#39;9&#39;,&quot;_&quot;
InvldChar=&quot; +-*/!=&lt;&gt;&#39;&quot;&quot;().&quot;
AllValid=Yes
NoAccent=Yes
DefaultChar=_
Script=.convert_code(%Code%,&quot; &quot;)
ConvTable=
ConvTablePath=%_HOME%\Resource Files\Conversion Tables

[ModelOptions\Cld\ClssNamingOptions\OOMPART]

[ModelOptions\Cld\ClssNamingOptions\OOMPART\Name]
Template=
MaxLen=254
Case=M
ValidChar=
InvldChar=
AllValid=Yes
NoAccent=No
DefaultChar=_
Script=.convert_name(%Name%,&quot;_&quot;)
ConvTable=
ConvTablePath=%_HOME%\Resource Files\Conversion Tables

[ModelOptions\Cld\ClssNamingOptions\OOMPART\Code]
Template=
MaxLen=254
Case=M
ValidChar=&#39;a&#39;-&#39;z&#39;,&#39;A&#39;-&#39;Z&#39;,&#39;0&#39;-&#39;9&#39;,&quot;_&quot;
InvldChar=&quot; +-*/!=&lt;&gt;&#39;&quot;&quot;().&quot;
AllValid=Yes
NoAccent=Yes
DefaultChar=_
Script=.convert_code(%Code%,&quot; &quot;)
ConvTable=
ConvTablePath=%_HOME%\Resource Files\Conversion Tables

[ModelOptions\Cld\ClssNamingOptions\CLDASSC]

[ModelOptions\Cld\ClssNamingOptions\CLDASSC\Name]
Template=
MaxLen=254
Case=M
ValidChar=
InvldChar=
AllValid=Yes
NoAccent=No
DefaultChar=_
Script=.convert_name(%Name%,,,firstLowerWord)
ConvTable=
ConvTablePath=%_HOME%\Resource Files\Conversion Tables

[ModelOptions\Cld\ClssNamingOptions\CLDASSC\Code]
Template=
MaxLen=254
Case=M
ValidChar=&#39;a&#39;-&#39;z&#39;,&#39;A&#39;-&#39;Z&#39;,&#39;0&#39;-&#39;9&#39;,&quot;_&quot;
InvldChar=&quot; +-*/!=&lt;&gt;&#39;&quot;&quot;().&quot;
AllValid=Yes
NoAccent=Yes
DefaultChar=_
Script=.convert_code(%Code%,&quot; &quot;)
ConvTable=
ConvTablePath=%_HOME%\Resource Files\Conversion Tables

[ModelOptions\Cld\ClssNamingOptions\UCDASSC]

[ModelOptions\Cld\ClssNamingOptions\UCDASSC\Name]
Template=
MaxLen=254
Case=M
ValidChar=
InvldChar=
AllValid=Yes
NoAccent=No
DefaultChar=_
Script=.convert_name(%Name%,&quot;_&quot;)
ConvTable=
ConvTablePath=%_HOME%\Resource Files\Conversion Tables

[ModelOptions\Cld\ClssNamingOptions\UCDASSC\Code]
Template=
MaxLen=254
Case=M
ValidChar=&#39;a&#39;-&#39;z&#39;,&#39;A&#39;-&#39;Z&#39;,&#39;0&#39;-&#39;9&#39;,&quot;_&quot;
InvldChar=&quot; +-*/!=&lt;&gt;&#39;&quot;&quot;().&quot;
AllValid=Yes
NoAccent=Yes
DefaultChar=_
Script=.convert_code(%Code%,&quot; &quot;)
ConvTable=
ConvTablePath=%_HOME%\Resource Files\Conversion Tables

[ModelOptions\Cld\ClssNamingOptions\GNRLLINK]

[ModelOptions\Cld\ClssNamingOptions\GNRLLINK\Name]
Template=
MaxLen=254
Case=M
ValidChar=
InvldChar=
AllValid=Yes
NoAccent=No
DefaultChar=_
Script=.convert_name(%Name%,&quot;_&quot;)
ConvTable=
ConvTablePath=%_HOME%\Resource Files\Conversion Tables

[ModelOptions\Cld\ClssNamingOptions\GNRLLINK\Code]
Template=
MaxLen=254
Case=M
ValidChar=&#39;a&#39;-&#39;z&#39;,&#39;A&#39;-&#39;Z&#39;,&#39;0&#39;-&#39;9&#39;,&quot;_&quot;
InvldChar=&quot; +-*/!=&lt;&gt;&#39;&quot;&quot;().&quot;
AllValid=Yes
NoAccent=Yes
DefaultChar=_
Script=.convert_code(%Code%,&quot; &quot;)
ConvTable=
ConvTablePath=%_HOME%\Resource Files\Conversion Tables

[ModelOptions\Cld\ClssNamingOptions\RQLINK]

[ModelOptions\Cld\ClssNamingOptions\RQLINK\Name]
Template=
MaxLen=254
Case=M
ValidChar=
InvldChar=
AllValid=Yes
NoAccent=No
DefaultChar=_
Script=.convert_name(%Name%,&quot;_&quot;)
ConvTable=
ConvTablePath=%_HOME%\Resource Files\Conversion Tables

[ModelOptions\Cld\ClssNamingOptions\RQLINK\Code]
Template=
MaxLen=254
Case=M
ValidChar=&#39;a&#39;-&#39;z&#39;,&#39;A&#39;-&#39;Z&#39;,&#39;0&#39;-&#39;9&#39;,&quot;_&quot;
InvldChar=&quot; +-*/!=&lt;&gt;&#39;&quot;&quot;().&quot;
AllValid=Yes
NoAccent=Yes
DefaultChar=_
Script=.convert_code(%Code%,&quot; &quot;)
ConvTable=
ConvTablePath=%_HOME%\Resource Files\Conversion Tables

[ModelOptions\Cld\ClssNamingOptions\RLZSLINK]

[ModelOptions\Cld\ClssNamingOptions\RLZSLINK\Name]
Template=
MaxLen=254
Case=M
ValidChar=
InvldChar=
AllValid=Yes
NoAccent=No
DefaultChar=_
Script=.convert_name(%Name%,&quot;_&quot;)
ConvTable=
ConvTablePath=%_HOME%\Resource Files\Conversion Tables

[ModelOptions\Cld\ClssNamingOptions\RLZSLINK\Code]
Template=
MaxLen=254
Case=M
ValidChar=&#39;a&#39;-&#39;z&#39;,&#39;A&#39;-&#39;Z&#39;,&#39;0&#39;-&#39;9&#39;,&quot;_&quot;
InvldChar=&quot; +-*/!=&lt;&gt;&#39;&quot;&quot;().&quot;
AllValid=Yes
NoAccent=Yes
DefaultChar=_
Script=.convert_code(%Code%,&quot; &quot;)
ConvTable=
ConvTablePath=%_HOME%\Resource Files\Conversion Tables

[ModelOptions\Cld\ClssNamingOptions\DEPDLINK]

[ModelOptions\Cld\ClssNamingOptions\DEPDLINK\Name]
Template=
MaxLen=254
Case=M
ValidChar=
InvldChar=
AllValid=Yes
NoAccent=No
DefaultChar=_
Script=.convert_name(%Name%,&quot;_&quot;)
ConvTable=
ConvTablePath=%_HOME%\Resource Files\Conversion Tables

[ModelOptions\Cld\ClssNamingOptions\DEPDLINK\Code]
Template=
MaxLen=254
Case=M
ValidChar=&#39;a&#39;-&#39;z&#39;,&#39;A&#39;-&#39;Z&#39;,&#39;0&#39;-&#39;9&#39;,&quot;_&quot;
InvldChar=&quot; +-*/!=&lt;&gt;&#39;&quot;&quot;().&quot;
AllValid=Yes
NoAccent=Yes
DefaultChar=_
Script=.convert_code(%Code%,&quot; &quot;)
ConvTable=
ConvTablePath=%_HOME%\Resource Files\Conversion Tables

[ModelOptions\Cld\ClssNamingOptions\OOMACTV]

[ModelOptions\Cld\ClssNamingOptions\OOMACTV\Name]
Template=
MaxLen=254
Case=M
ValidChar=
InvldChar=
AllValid=Yes
NoAccent=No
DefaultChar=_
Script=.convert_name(%Name%,&quot;_&quot;)
ConvTable=
ConvTablePath=%_HOME%\Resource Files\Conversion Tables

[ModelOptions\Cld\ClssNamingOptions\OOMACTV\Code]
Template=
MaxLen=254
Case=M
ValidChar=&#39;a&#39;-&#39;z&#39;,&#39;A&#39;-&#39;Z&#39;,&#39;0&#39;-&#39;9&#39;,&quot;_&quot;
InvldChar=&quot; +-*/!=&lt;&gt;&#39;&quot;&quot;().&quot;
AllValid=Yes
NoAccent=Yes
DefaultChar=_
Script=.convert_code(%Code%,&quot; &quot;)
ConvTable=
ConvTablePath=%_HOME%\Resource Files\Conversion Tables

[ModelOptions\Cld\ClssNamingOptions\ACDOBST]

[ModelOptions\Cld\ClssNamingOptions\ACDOBST\Name]
Template=
MaxLen=254
Case=M
ValidChar=
InvldChar=
AllValid=Yes
NoAccent=No
DefaultChar=_
Script=.convert_name(%Name%,&quot;_&quot;)
ConvTable=
ConvTablePath=%_HOME%\Resource Files\Conversion Tables

[ModelOptions\Cld\ClssNamingOptions\ACDOBST\Code]
Template=
MaxLen=254
Case=M
ValidChar=&#39;a&#39;-&#39;z&#39;,&#39;A&#39;-&#39;Z&#39;,&#39;0&#39;-&#39;9&#39;,&quot;_&quot;
InvldChar=&quot; +-*/!=&lt;&gt;&#39;&quot;&quot;().&quot;
AllValid=Yes
NoAccent=Yes
DefaultChar=_
Script=.convert_code(%Code%,&quot; &quot;)
ConvTable=
ConvTablePath=%_HOME%\Resource Files\Conversion Tables

[ModelOptions\Cld\ClssNamingOptions\STAT]

[ModelOptions\Cld\ClssNamingOptions\STAT\Name]
Template=
MaxLen=254
Case=M
ValidChar=
InvldChar=
AllValid=Yes
NoAccent=No
DefaultChar=_
Script=.convert_name(%Name%,&quot;_&quot;)
ConvTable=
ConvTablePath=%_HOME%\Resource Files\Conversion Tables

[ModelOptions\Cld\ClssNamingOptions\STAT\Code]
Template=
MaxLen=254
Case=M
ValidChar=&#39;a&#39;-&#39;z&#39;,&#39;A&#39;-&#39;Z&#39;,&#39;0&#39;-&#39;9&#39;,&quot;_&quot;
InvldChar=&quot; +-*/!=&lt;&gt;&#39;&quot;&quot;().&quot;
AllValid=Yes
NoAccent=Yes
DefaultChar=_
Script=.convert_code(%Code%,&quot; &quot;)
ConvTable=
ConvTablePath=%_HOME%\Resource Files\Conversion Tables

[ModelOptions\Cld\ClssNamingOptions\DPDNODE]

[ModelOptions\Cld\ClssNamingOptions\DPDNODE\Name]
Template=
MaxLen=254
Case=M
ValidChar=
InvldChar=
AllValid=Yes
NoAccent=No
DefaultChar=_
Script=.convert_name(%Name%,&quot;_&quot;)
ConvTable=
ConvTablePath=%_HOME%\Resource Files\Conversion Tables

[ModelOptions\Cld\ClssNamingOptions\DPDNODE\Code]
Template=
MaxLen=254
Case=M
ValidChar=&#39;a&#39;-&#39;z&#39;,&#39;A&#39;-&#39;Z&#39;,&#39;0&#39;-&#39;9&#39;,&quot;_&quot;
InvldChar=&quot; +-*/!=&lt;&gt;&#39;&quot;&quot;().&quot;
AllValid=Yes
NoAccent=Yes
DefaultChar=_
Script=.convert_code(%Code%,&quot; &quot;)
ConvTable=
ConvTablePath=%_HOME%\Resource Files\Conversion Tables

[ModelOptions\Cld\ClssNamingOptions\DPDCMPI]

[ModelOptions\Cld\ClssNamingOptions\DPDCMPI\Name]
Template=
MaxLen=254
Case=M
ValidChar=
InvldChar=
AllValid=Yes
NoAccent=No
DefaultChar=_
Script=.convert_name(%Name%,&quot;_&quot;)
ConvTable=
ConvTablePath=%_HOME%\Resource Files\Conversion Tables

[ModelOptions\Cld\ClssNamingOptions\DPDCMPI\Code]
Template=
MaxLen=254
Case=M
ValidChar=&#39;a&#39;-&#39;z&#39;,&#39;A&#39;-&#39;Z&#39;,&#39;0&#39;-&#39;9&#39;,&quot;_&quot;
InvldChar=&quot; +-*/!=&lt;&gt;&#39;&quot;&quot;().&quot;
AllValid=Yes
NoAccent=Yes
DefaultChar=_
Script=.convert_code(%Code%,&quot; &quot;)
ConvTable=
ConvTablePath=%_HOME%\Resource Files\Conversion Tables

[ModelOptions\Cld\ClssNamingOptions\DPDASSC]

[ModelOptions\Cld\ClssNamingOptions\DPDASSC\Name]
Template=
MaxLen=254
Case=M
ValidChar=
InvldChar=
AllValid=Yes
NoAccent=No
DefaultChar=_
Script=.convert_name(%Name%,&quot;_&quot;)
ConvTable=
ConvTablePath=%_HOME%\Resource Files\Conversion Tables

[ModelOptions\Cld\ClssNamingOptions\DPDASSC\Code]
Template=
MaxLen=254
Case=M
ValidChar=&#39;a&#39;-&#39;z&#39;,&#39;A&#39;-&#39;Z&#39;,&#39;0&#39;-&#39;9&#39;,&quot;_&quot;
InvldChar=&quot; +-*/!=&lt;&gt;&#39;&quot;&quot;().&quot;
AllValid=Yes
NoAccent=Yes
DefaultChar=_
Script=.convert_code(%Code%,&quot; &quot;)
ConvTable=
ConvTablePath=%_HOME%\Resource Files\Conversion Tables

[ModelOptions\Cld\ClssNamingOptions\OOMVAR]

[ModelOptions\Cld\ClssNamingOptions\OOMVAR\Name]
Template=
MaxLen=254
Case=M
ValidChar=
InvldChar=
AllValid=Yes
NoAccent=No
DefaultChar=_
Script=.convert_name(%Name%,&quot;_&quot;)
ConvTable=
ConvTablePath=%_HOME%\Resource Files\Conversion Tables

[ModelOptions\Cld\ClssNamingOptions\OOMVAR\Code]
Template=
MaxLen=254
Case=M
ValidChar=&#39;a&#39;-&#39;z&#39;,&#39;A&#39;-&#39;Z&#39;,&#39;0&#39;-&#39;9&#39;,&quot;_&quot;
InvldChar=&quot; +-*/!=&lt;&gt;&#39;&quot;&quot;().&quot;
AllValid=Yes
NoAccent=Yes
DefaultChar=_
Script=.convert_code(%Code%,&quot; &quot;)
ConvTable=
ConvTablePath=%_HOME%\Resource Files\Conversion Tables

[ModelOptions\Cld\ClssNamingOptions\FILO]

[ModelOptions\Cld\ClssNamingOptions\FILO\Name]
Template=
MaxLen=254
Case=M
ValidChar=
InvldChar=&quot;\/:*?&lt;&gt;|&quot;
AllValid=Yes
NoAccent=No
DefaultChar=_
Script=.convert_name(%Name%,&quot;_&quot;)
ConvTable=
ConvTablePath=%_HOME%\Resource Files\Conversion Tables

[ModelOptions\Cld\ClssNamingOptions\FILO\Code]
Template=
MaxLen=254
Case=M
ValidChar=&#39;a&#39;-&#39;z&#39;,&#39;A&#39;-&#39;Z&#39;,&#39;0&#39;-&#39;9&#39;,&quot;_. &quot;
InvldChar=&quot; +-*/!=&lt;&gt;&#39;&quot;&quot;().&quot;
AllValid=Yes
NoAccent=Yes
DefaultChar=_
Script=.convert_code(%Code%,&quot; &quot;)
ConvTable=
ConvTablePath=%_HOME%\Resource Files\Conversion Tables

[ModelOptions\Cld\ClssNamingOptions\FRMEOBJ]

[ModelOptions\Cld\ClssNamingOptions\FRMEOBJ\Name]
Template=
MaxLen=254
Case=M
ValidChar=
InvldChar=
AllValid=Yes
NoAccent=No
DefaultChar=_
Script=.convert_name(%Name%,&quot;_&quot;)
ConvTable=
ConvTablePath=%_HOME%\Resource Files\Conversion Tables

[ModelOptions\Cld\ClssNamingOptions\FRMEOBJ\Code]
Template=
MaxLen=254
Case=M
ValidChar=&#39;a&#39;-&#39;z&#39;,&#39;A&#39;-&#39;Z&#39;,&#39;0&#39;-&#39;9&#39;,&quot;_&quot;
InvldChar=&quot; +-*/!=&lt;&gt;&#39;&quot;&quot;().&quot;
AllValid=Yes
NoAccent=Yes
DefaultChar=_
Script=.convert_code(%Code%,&quot; &quot;)
ConvTable=
ConvTablePath=%_HOME%\Resource Files\Conversion Tables

[ModelOptions\Cld\ClssNamingOptions\FRMELNK]

[ModelOptions\Cld\ClssNamingOptions\FRMELNK\Name]
Template=
MaxLen=254
Case=M
ValidChar=
InvldChar=
AllValid=Yes
NoAccent=No
DefaultChar=_
Script=.convert_name(%Name%,&quot;_&quot;)
ConvTable=
ConvTablePath=%_HOME%\Resource Files\Conversion Tables

[ModelOptions\Cld\ClssNamingOptions\FRMELNK\Code]
Template=
MaxLen=254
Case=M
ValidChar=&#39;a&#39;-&#39;z&#39;,&#39;A&#39;-&#39;Z&#39;,&#39;0&#39;-&#39;9&#39;,&quot;_&quot;
InvldChar=&quot; +-*/!=&lt;&gt;&#39;&quot;&quot;().&quot;
AllValid=Yes
NoAccent=Yes
DefaultChar=_
Script=.convert_code(%Code%,&quot; &quot;)
ConvTable=
ConvTablePath=%_HOME%\Resource Files\Conversion Tables

[ModelOptions\Cld\ClssNamingOptions\AREA]

[ModelOptions\Cld\ClssNamingOptions\AREA\Name]
Template=
MaxLen=254
Case=M
ValidChar=
InvldChar=
AllValid=Yes
NoAccent=No
DefaultChar=_
Script=.convert_name(%Name%,&quot;_&quot;)
ConvTable=
ConvTablePath=%_HOME%\Resource Files\Conversion Tables

[ModelOptions\Cld\ClssNamingOptions\AREA\Code]
Template=
MaxLen=254
Case=M
ValidChar=&#39;a&#39;-&#39;z&#39;,&#39;A&#39;-&#39;Z&#39;,&#39;0&#39;-&#39;9&#39;,&quot;_&quot;
InvldChar=&quot; +-*/!=&lt;&gt;&#39;&quot;&quot;().&quot;
AllValid=Yes
NoAccent=Yes
DefaultChar=_
Script=.convert_code(%Code%,&quot; &quot;)
ConvTable=
ConvTablePath=%_HOME%\Resource Files\Conversion Tables

[ModelOptions\Cld\ClssNamingOptions\DefaultClass]

[ModelOptions\Cld\ClssNamingOptions\DefaultClass\Name]
Template=
MaxLen=254
Case=M
ValidChar=
InvldChar=
AllValid=Yes
NoAccent=No
DefaultChar=_
Script=.convert_name(%Name%,&quot;_&quot;)
ConvTable=
ConvTablePath=%_HOME%\Resource Files\Conversion Tables

[ModelOptions\Cld\ClssNamingOptions\DefaultClass\Code]
Template=
MaxLen=254
Case=U
ValidChar=&#39;a&#39;-&#39;z&#39;,&#39;A&#39;-&#39;Z&#39;,&#39;0&#39;-&#39;9&#39;,&quot;_&quot;
InvldChar=&quot; +-*/!=&lt;&gt;&#39;&quot;&quot;().&quot;
AllValid=Yes
NoAccent=Yes
DefaultChar=_
Script=.convert_code(%Code%,&quot; &quot;)
ConvTable=
ConvTablePath=%_HOME%\Resource Files\Conversion Tables

[ModelOptions\Generate]

[ModelOptions\Generate\Xsm]
GenRootElement=Yes
GenComplexType=No
GenAttribute=Yes
CheckModel=Yes
SaveLinks=Yes
ORMapping=No
NameToCode=No

[ModelOptions\Generate\Cdm]
CheckModel=Yes
SaveLinks=Yes
NameToCode=No
Notation=2

[ModelOptions\Generate\Pdm]
CheckModel=Yes
SaveLinks=Yes
ORMapping=No
NameToCode=No
BuildTrgr=No
TablePrefix=
IndxPKName=%TABLE%_PK
IndxAKName=%TABLE%_AK
IndxFKName=%REFR%_FK
IndxThreshold=
ColnFKName=%.3:PARENT%_%COLUMN%
ColnFKNameUse=No</a:ModelOptionsText>
<a:RepositoryFilename>D:\projects\iut\projet-s3\analyse_and_bd\powerdesigner\MOO Projet S3.moo</a:RepositoryFilename>
<c:GenerationOrigins>
<o:Shortcut Id="o3">
<a:ObjectID>895AE5B1-256D-48D8-A1B9-9678776C552C</a:ObjectID>
<a:Name>Mcd Projet S3</a:Name>
<a:Code>mcd_projet_s3</a:Code>
<a:CreationDate>1578175842</a:CreationDate>
<a:Creator>germa</a:Creator>
<a:ModificationDate>1578175842</a:ModificationDate>
<a:Modifier>germa</a:Modifier>
<a:TargetStereotype/>
<a:TargetID>D8B047F4-F430-42D5-945E-EE3914C40E67</a:TargetID>
<a:TargetClassID>1E597170-9350-11D1-AB3C-0020AF71E433</a:TargetClassID>
</o:Shortcut>
</c:GenerationOrigins>
<c:ObjectLanguage>
<o:Shortcut Id="o4">
<a:ObjectID>0E367585-6C01-4B02-A68A-24390B6ADB93</a:ObjectID>
<a:Name>Analyse</a:Name>
<a:Code>Analysis</a:Code>
<a:CreationDate>1575241116</a:CreationDate>
<a:Creator>germa</a:Creator>
<a:ModificationDate>1575241116</a:ModificationDate>
<a:Modifier>germa</a:Modifier>
<a:TargetStereotype/>
<a:TargetID>87317290-AF03-469F-BC1E-99593F18A4AB</a:TargetID>
<a:TargetClassID>1811206C-1A4B-11D1-83D9-444553540000</a:TargetClassID>
</o:Shortcut>
</c:ObjectLanguage>
<c:ClassDiagrams>
<o:ClassDiagram Id="o5">
<a:ObjectID>4F4A2226-0541-4228-8BB4-28FA4B1B0EE8</a:ObjectID>
<a:Name>Diagramme MOO-S3</a:Name>
<a:Code>DIAGRAMME_MOO_S3</a:Code>
<a:CreationDate>1575241151</a:CreationDate>
<a:Creator>germa</a:Creator>
<a:ModificationDate>1578175841</a:ModificationDate>
<a:Modifier>germa</a:Modifier>
<a:History>ORG {C8E5547C-C9B7-4A23-804B-7F5CECC5F644}
DAT 1575241152
ATT DIAGNAME
ATT DISPNAME
ATT CODE</a:History>
<a:DisplayPreferences>[DisplayPreferences]

[DisplayPreferences\CLD]

[DisplayPreferences\General]
Adjust to text=Yes
Snap Grid=No
Constrain Labels=Yes
Display Grid=No
Show Page Delimiter=Yes
Show Links intersections=No
Activate automatic link routing=No
Grid size=0
Graphic unit=2
Window color=255, 255, 255
Background image=
Background mode=8
Watermark image=
Watermark mode=8
Show watermark on screen=No
Gradient mode=0
Gradient end color=255, 255, 255
Show Swimlane=No
SwimlaneVert=Yes
TreeVert=No
CompDark=0

[DisplayPreferences\Object]
Show Icon=No
Mode=0
Trunc Length=80
Word Length=80
Word Text=!&quot;&quot;#$%&amp;&#39;()*+,-./:;&lt;=&gt;?@[\]^_`{|}~
Shortcut IntIcon=Yes
Shortcut IntLoct=Yes
Shortcut IntFullPath=No
Shortcut IntLastPackage=Yes
Shortcut ExtIcon=Yes
Shortcut ExtLoct=No
Shortcut ExtFullPath=No
Shortcut ExtLastPackage=Yes
Shortcut ExtIncludeModl=Yes
Area.IconPicture=Yes
Area.Stereotype=Yes
Area.Comment=No
Area.TextStyle=No
Area.SubSymbols=Yes
Area_SymbolLayout=&lt;Form&gt;[CRLF] &lt;StandardAttribute Name=&quot;Icône&quot; Attribute=&quot;IconPicture&quot; Prefix=&quot;&quot; Suffix=&quot;&quot; Alignment=&quot;CNTR&quot; Caption=&quot;&quot; Mandatory=&quot;Yes&quot; /&gt;[CRLF] &lt;StandardAttribute Name=&quot;Stéréotype&quot; Attribute=&quot;Stereotype&quot; Prefix=&quot;&amp;lt;&amp;lt;&quot; Suffix=&quot;&amp;gt;&amp;gt;&quot; Alignment=&quot;CNTR&quot; Caption=&quot;&quot; Mandatory=&quot;No&quot; /&gt;[CRLF] &lt;StandardAttribute Name=&quot;Nom de zone d&amp;#39;architecture&quot; Attribute=&quot;DisplayName&quot; Prefix=&quot;&quot; Suffix=&quot;&quot; Alignment=&quot;CNTR&quot; Caption=&quot;&quot; Mandatory=&quot;Yes&quot; /&gt;[CRLF] &lt;Separator Name=&quot;Séparateur&quot; /&gt;[CRLF] &lt;StandardAttribute Name=&quot;Commentaire&quot; Attribute=&quot;Comment&quot; Prefix=&quot;&quot; Suffix=&quot;&quot; Alignment=&quot;LEFT&quot; Caption=&quot;&quot; Mandatory=&quot;No&quot; /&gt;[CRLF] &lt;StandardAttribute Name=&quot;Forcer l&amp;#39;alignement en haut&quot; Attribute=&quot;TextStyle&quot; Prefix=&quot;&quot; Suffix=&quot;&quot; Alignment=&quot;CNTR&quot; Caption=&quot;&quot; Mandatory=&quot;Yes&quot; /&gt;[CRLF]&lt;/Form&gt;
EObjShowStrn=Yes
ExtendedObject.Comment=No
ExtendedObject.IconPicture=No
ExtendedObject.TextStyle=No
ExtendedObject_SymbolLayout=&lt;Form&gt;[CRLF] &lt;StandardAttribute Name=&quot;Stéréotype&quot; Attribute=&quot;Stereotype&quot; Prefix=&quot;&amp;lt;&amp;lt;&quot; Suffix=&quot;&amp;gt;&amp;gt;&quot; Alignment=&quot;CNTR&quot; Caption=&quot;&quot; Mandatory=&quot;No&quot; /&gt;[CRLF] &lt;StandardAttribute Name=&quot;Nom de l&amp;#39;objet&quot; Attribute=&quot;DisplayName&quot; Prefix=&quot;&quot; Suffix=&quot;&quot; Alignment=&quot;CNTR&quot; Caption=&quot;&quot; Mandatory=&quot;Yes&quot; /&gt;[CRLF] &lt;Separator Name=&quot;Séparateur&quot; /&gt;[CRLF] &lt;StandardAttribute Name=&quot;Commentaire&quot; Attribute=&quot;Comment&quot; Prefix=&quot;&quot; Suffix=&quot;&quot; Alignment=&quot;LEFT&quot; Caption=&quot;&quot; Mandatory=&quot;No&quot; /&gt;[CRLF] &lt;StandardAttribute Name=&quot;Icône&quot; Attribute=&quot;IconPicture&quot; Prefix=&quot;&quot; Suffix=&quot;&quot; Alignment=&quot;CNTR&quot; Caption=&quot;&quot; Mandatory=&quot;Yes&quot; /&gt;[CRLF] &lt;StandardAttribute Name=&quot;Forcer l&amp;#39;alignement en haut&quot; Attribute=&quot;TextStyle&quot; Prefix=&quot;&quot; Suffix=&quot;&quot; Alignment=&quot;CNTR&quot; Caption=&quot;&quot; Mandatory=&quot;Yes&quot; /&gt;[CRLF]&lt;/Form&gt;
ELnkShowStrn=Yes
ELnkShowName=Yes
ExtendedLink_SymbolLayout=&lt;Form&gt;[CRLF] &lt;Form Name=&quot;Centre&quot; &gt;[CRLF]  &lt;StandardAttribute Name=&quot;Stéréotype&quot; Attribute=&quot;Stereotype&quot; Prefix=&quot;&amp;lt;&amp;lt;&quot; Suffix=&quot;&amp;gt;&amp;gt;&quot; Caption=&quot;&quot; Mandatory=&quot;No&quot; /&gt;[CRLF]  &lt;StandardAttribute Name=&quot;Nom&quot; Attribute=&quot;DisplayName&quot; Prefix=&quot;&quot; Suffix=&quot;&quot; Caption=&quot;&quot; Mandatory=&quot;No&quot; /&gt;[CRLF] &lt;/Form&gt;[CRLF] &lt;Form Name=&quot;Source&quot; &gt;[CRLF] &lt;/Form&gt;[CRLF] &lt;Form Name=&quot;Destination&quot; &gt;[CRLF] &lt;/Form&gt;[CRLF]&lt;/Form&gt;
ExtDpdShowStrn=Yes
ExtendedDependency_SymbolLayout=&lt;Form&gt;[CRLF] &lt;Form Name=&quot;Centre&quot; &gt;[CRLF]  &lt;StandardAttribute Name=&quot;Stéréotype&quot; Attribute=&quot;Stereotype&quot; Prefix=&quot;&amp;lt;&amp;lt;&quot; Suffix=&quot;&amp;gt;&amp;gt;&quot; Caption=&quot;&quot; Mandatory=&quot;No&quot; /&gt;[CRLF] &lt;/Form&gt;[CRLF] &lt;Form Name=&quot;Source&quot; &gt;[CRLF] &lt;/Form&gt;[CRLF] &lt;Form Name=&quot;Destination&quot; &gt;[CRLF] &lt;/Form&gt;[CRLF]&lt;/Form&gt;
FileObject.Stereotype=No
FileObject.DisplayName=Yes
FileObject.LocationOrName=No
FileObject.IconPicture=No
FileObject.TextStyle=No
FileObject.IconMode=Yes
FileObject_SymbolLayout=&lt;Form&gt;[CRLF] &lt;StandardAttribute Name=&quot;Stéréotype&quot; Attribute=&quot;Stereotype&quot; Prefix=&quot;&amp;lt;&amp;lt;&quot; Suffix=&quot;&amp;gt;&amp;gt;&quot; Alignment=&quot;CNTR&quot; Caption=&quot;&quot; Mandatory=&quot;No&quot; /&gt;[CRLF] &lt;ExclusiveChoice Name=&quot;Choix exclusif&quot; Mandatory=&quot;Yes&quot; Display=&quot;HorizontalRadios&quot; &gt;[CRLF]  &lt;StandardAttribute Name=&quot;Nom&quot; Attribute=&quot;DisplayName&quot; Prefix=&quot;&quot; Suffix=&quot;&quot; Alignment=&quot;CNTR&quot; Caption=&quot;&quot; Mandatory=&quot;No&quot; /&gt;[CRLF]  &lt;StandardAttribute Name=&quot;Emplacement&quot; Attribute=&quot;LocationOrName&quot; Prefix=&quot;&quot; Suffix=&quot;&quot; Alignment=&quot;CNTR&quot; Caption=&quot;&quot; Mandatory=&quot;No&quot; /&gt;[CRLF] &lt;/ExclusiveChoice&gt;[CRLF] &lt;StandardAttribute Name=&quot;Icône&quot; Attribute=&quot;IconPicture&quot; Prefix=&quot;&quot; Suffix=&quot;&quot; Alignment=&quot;CNTR&quot; Caption=&quot;&quot; Mandatory=&quot;Yes&quot; /&gt;[CRLF] &lt;StandardAttribute Name=&quot;Forcer l&amp;#39;alignement en haut&quot; Attribute=&quot;TextStyle&quot; Prefix=&quot;&quot; Suffix=&quot;&quot; Alignment=&quot;CNTR&quot; Caption=&quot;&quot; Mandatory=&quot;Yes&quot; /&gt;[CRLF]&lt;/Form&gt;
Package.Stereotype=Yes
Package.Comment=No
Package.IconPicture=No
Package.TextStyle=No
Package_SymbolLayout=&lt;Form&gt;[CRLF] &lt;StandardAttribute Name=&quot;Stéréotype&quot; Attribute=&quot;Stereotype&quot; Prefix=&quot;&amp;lt;&amp;lt;&quot; Suffix=&quot;&amp;gt;&amp;gt;&quot; Alignment=&quot;CNTR&quot; Caption=&quot;&quot; Mandatory=&quot;No&quot; /&gt;[CRLF] &lt;StandardAttribute Name=&quot;Nom&quot; Attribute=&quot;DisplayName&quot; Prefix=&quot;&quot; Suffix=&quot;&quot; Alignment=&quot;CNTR&quot; Caption=&quot;&quot; Mandatory=&quot;Yes&quot; /&gt;[CRLF] &lt;Separator Name=&quot;Séparateur&quot; /&gt;[CRLF] &lt;StandardAttribute Name=&quot;Commentaire&quot; Attribute=&quot;Comment&quot; Prefix=&quot;&quot; Suffix=&quot;&quot; Alignment=&quot;LEFT&quot; Caption=&quot;&quot; Mandatory=&quot;No&quot; /&gt;[CRLF] &lt;StandardAttribute Name=&quot;Icône&quot; Attribute=&quot;IconPicture&quot; Prefix=&quot;&quot; Suffix=&quot;&quot; Alignment=&quot;CNTR&quot; Caption=&quot;&quot; Mandatory=&quot;Yes&quot; /&gt;[CRLF] &lt;StandardAttribute Name=&quot;Forcer l&amp;#39;alignement en haut&quot; Attribute=&quot;TextStyle&quot; Prefix=&quot;&quot; Suffix=&quot;&quot; Alignment=&quot;CNTR&quot; Caption=&quot;&quot; Mandatory=&quot;Yes&quot; /&gt;[CRLF]&lt;/Form&gt;
Display Model Version=Yes
Generalization.DisplayedStereotype=Yes
Generalization.DisplayName=No
Generalization.DisplayedRules=Yes
Generalization_SymbolLayout=&lt;Form&gt;[CRLF] &lt;Form Name=&quot;Centre&quot; &gt;[CRLF]  &lt;StandardAttribute Name=&quot;Stéréotype&quot; Attribute=&quot;DisplayedStereotype&quot; Prefix=&quot;&quot; Suffix=&quot;&quot; Caption=&quot;&quot; Mandatory=&quot;No&quot; /&gt;[CRLF]  &lt;StandardAttribute Name=&quot;Nom&quot; Attribute=&quot;DisplayName&quot; Prefix=&quot;&quot; Suffix=&quot;&quot; Caption=&quot;&quot; Mandatory=&quot;No&quot; /&gt;[CRLF]  &lt;StandardAttribute Name=&quot;Contrainte&quot; Attribute=&quot;DisplayedRules&quot; Prefix=&quot;&quot; Suffix=&quot;&quot; Caption=&quot;&quot; Mandatory=&quot;No&quot; /&gt;[CRLF] &lt;/Form&gt;[CRLF] &lt;Form Name=&quot;Source&quot; &gt;[CRLF] &lt;/Form&gt;[CRLF] &lt;Form Name=&quot;Destination&quot; &gt;[CRLF] &lt;/Form&gt;[CRLF]&lt;/Form&gt;
Realization.DisplayedStereotype=Yes
Realization.DisplayName=No
Realization.DisplayedRules=Yes
Realization_SymbolLayout=
Dependency.DisplayedStereotype=Yes
Dependency.DisplayName=No
Dependency.DisplayedRules=Yes
Dependency_SymbolLayout=&lt;Form&gt;[CRLF] &lt;Form Name=&quot;Centre&quot; &gt;[CRLF]  &lt;StandardAttribute Name=&quot;Stéréotype&quot; Attribute=&quot;DisplayedStereotype&quot; Prefix=&quot;&quot; Suffix=&quot;&quot; Caption=&quot;&quot; Mandatory=&quot;No&quot; /&gt;[CRLF]  &lt;StandardAttribute Name=&quot;Nom&quot; Attribute=&quot;DisplayName&quot; Prefix=&quot;&quot; Suffix=&quot;&quot; Caption=&quot;&quot; Mandatory=&quot;No&quot; /&gt;[CRLF]  &lt;StandardAttribute Name=&quot;Contrainte&quot; Attribute=&quot;DisplayedRules&quot; Prefix=&quot;&quot; Suffix=&quot;&quot; Caption=&quot;&quot; Mandatory=&quot;No&quot; /&gt;[CRLF] &lt;/Form&gt;[CRLF] &lt;Form Name=&quot;Source&quot; &gt;[CRLF] &lt;/Form&gt;[CRLF] &lt;Form Name=&quot;Destination&quot; &gt;[CRLF] &lt;/Form&gt;[CRLF]&lt;/Form&gt;
Class.Stereotype=Yes
Class.Constraint=Yes
Class.Attributes=Yes
Class.Attributes._Columns=DisplayVisibilityMarker Stereotype DataType InitialValue
Class.Attributes._Limit=-3
Class.Operations=Yes
Class.Operations._Columns=DisplayVisibilityMarker Stereotype SignatureWithParameters ReturnType
Class.Operations._Limit=-3
Class.InnerClassifiers=Yes
Class.Comment=No
Class.IconPicture=No
Class.TextStyle=No
Class_SymbolLayout=&lt;Form&gt;[CRLF] &lt;StandardAttribute Name=&quot;Stéréotype&quot; Attribute=&quot;Stereotype&quot; Prefix=&quot;&amp;lt;&amp;lt;&quot; Suffix=&quot;&amp;gt;&amp;gt;&quot; Alignment=&quot;CNTR&quot; Caption=&quot;&quot; Mandatory=&quot;No&quot; /&gt;[CRLF] &lt;StandardAttribute Name=&quot;Nom de classe&quot; Attribute=&quot;DisplayedQualifiedName&quot; Prefix=&quot;&quot; Suffix=&quot;&quot; Alignment=&quot;CNTR&quot; Caption=&quot;&quot; Mandatory=&quot;Yes&quot; /&gt;[CRLF] &lt;StandardAttribute Name=&quot;Contrainte&quot; Attribute=&quot;Constraint&quot; Prefix=&quot;{&quot; Suffix=&quot;}&quot; Alignment=&quot;RGHT&quot; Caption=&quot;&quot; Mandatory=&quot;No&quot; /&gt;[CRLF] &lt;Separator Name=&quot;Séparateur&quot; /&gt;[CRLF] &lt;StandardCollection Name=&quot;Attributs&quot; Collection=&quot;Attributes&quot; Columns=&quot;DisplayVisibilityMarker No\r\nDisplayVisibilityKeyword No\r\nDisplayVisibilityIcon No\r\nStereotype No\r\nDisplayName Yes\r\nDataType No\r\nDomain No\r\nInitialValue No&quot; HasLimit=&quot;Yes&quot; HideEmpty=&quot;No&quot; Caption=&quot;&quot; Mandatory=&quot;No&quot; /&gt;[CRLF] &lt;StandardCollection Name=&quot;Opérations&quot; Collection=&quot;Operations&quot; Columns=&quot;DisplayVisibilityMarker No\r\nDisplayVisibilityKeyword No\r\nDisplayVisibilityIcon No\r\nStereotype No\r\nSignatureWithoutParameters No\r\nSignatureWithParameters No\r\nReturnType No&quot; HasLimit=&quot;Yes&quot; HideEmpty=&quot;No&quot; Caption=&quot;&quot; Mandatory=&quot;No&quot; /&gt;[CRLF] &lt;StandardCollection Name=&quot;Classificateurs internes&quot; Collection=&quot;InnerClassifiers&quot; Columns=&quot;DisplayInnerIcon Yes\r\nDisplayNameGeneric Yes&quot; HasLimit=&quot;No&quot; HideEmpty=&quot;Yes&quot; Caption=&quot;&quot; Mandatory=&quot;No&quot; /&gt;[CRLF] &lt;StandardAttribute Name=&quot;Commentaire&quot; Attribute=&quot;Comment&quot; Prefix=&quot;&quot; Suffix=&quot;&quot; Alignment=&quot;LEFT&quot; Caption=&quot;&quot; Mandatory=&quot;No&quot; /&gt;[CRLF] &lt;StandardAttribute Name=&quot;Icône&quot; Attribute=&quot;IconPicture&quot; Prefix=&quot;&quot; Suffix=&quot;&quot; Alignment=&quot;CNTR&quot; Caption=&quot;&quot; Mandatory=&quot;Yes&quot; /&gt;[CRLF] &lt;StandardAttribute Name=&quot;Forcer l&amp;#39;alignement en haut&quot; Attribute=&quot;TextStyle&quot; Prefix=&quot;&quot; Suffix=&quot;&quot; Alignment=&quot;CNTR&quot; Caption=&quot;&quot; Mandatory=&quot;Yes&quot; /&gt;[CRLF]&lt;/Form&gt;
Interface.Stereotype=Yes
Interface.Constraint=Yes
Interface.Attributes=Yes
Interface.Attributes._Columns=DisplayVisibilityMarker Stereotype DataType InitialValue
Interface.Attributes._Limit=-3
Interface.Operations=Yes
Interface.Operations._Columns=DisplayVisibilityMarker Stereotype SignatureWithParameters ReturnType
Interface.Operations._Limit=-3
Interface.InnerClassifiers=Yes
Interface.Comment=No
Interface.IconPicture=No
Interface.TextStyle=No
Interface_SymbolLayout=&lt;Form&gt;[CRLF] &lt;StandardAttribute Name=&quot;Stéréotype&quot; Attribute=&quot;Stereotype&quot; Prefix=&quot;&amp;lt;&amp;lt;&quot; Suffix=&quot;&amp;gt;&amp;gt;&quot; Alignment=&quot;CNTR&quot; Caption=&quot;&quot; Mandatory=&quot;No&quot; /&gt;[CRLF] &lt;StandardAttribute Name=&quot;Nom d&amp;#39;interface&quot; Attribute=&quot;DisplayedQualifiedName&quot; Prefix=&quot;&quot; Suffix=&quot;&quot; Alignment=&quot;CNTR&quot; Caption=&quot;&quot; Mandatory=&quot;Yes&quot; /&gt;[CRLF] &lt;StandardAttribute Name=&quot;Contrainte&quot; Attribute=&quot;Constraint&quot; Prefix=&quot;{&quot; Suffix=&quot;}&quot; Alignment=&quot;RGHT&quot; Caption=&quot;&quot; Mandatory=&quot;No&quot; /&gt;[CRLF] &lt;Separator Name=&quot;Séparateur&quot; /&gt;[CRLF] &lt;StandardCollection Name=&quot;Attributs&quot; Collection=&quot;Attributes&quot; Columns=&quot;DisplayVisibilityMarker No\r\nDisplayVisibilityKeyword No\r\nDisplayVisibilityIcon No\r\nStereotype No\r\nDisplayName Yes\r\nDataType No\r\nDomain No\r\nInitialValue No&quot; HasLimit=&quot;Yes&quot; HideEmpty=&quot;No&quot; Caption=&quot;&quot; Mandatory=&quot;No&quot; /&gt;[CRLF] &lt;StandardCollection Name=&quot;Opérations&quot; Collection=&quot;Operations&quot; Columns=&quot;DisplayVisibilityMarker No\r\nDisplayVisibilityKeyword No\r\nDisplayVisibilityIcon No\r\nStereotype No\r\nSignatureWithoutParameters No\r\nSignatureWithParameters No\r\nReturnType No&quot; HasLimit=&quot;Yes&quot; HideEmpty=&quot;No&quot; Caption=&quot;&quot; Mandatory=&quot;No&quot; /&gt;[CRLF] &lt;StandardCollection Name=&quot;Classificateurs internes&quot; Collection=&quot;InnerClassifiers&quot; Columns=&quot;DisplayInnerIcon Yes\r\nDisplayNameGeneric Yes&quot; HasLimit=&quot;No&quot; HideEmpty=&quot;Yes&quot; Caption=&quot;&quot; Mandatory=&quot;No&quot; /&gt;[CRLF] &lt;StandardAttribute Name=&quot;Commentaire&quot; Attribute=&quot;Comment&quot; Prefix=&quot;&quot; Suffix=&quot;&quot; Alignment=&quot;LEFT&quot; Caption=&quot;&quot; Mandatory=&quot;No&quot; /&gt;[CRLF] &lt;StandardAttribute Name=&quot;Icône&quot; Attribute=&quot;IconPicture&quot; Prefix=&quot;&quot; Suffix=&quot;&quot; Alignment=&quot;CNTR&quot; Caption=&quot;&quot; Mandatory=&quot;Yes&quot; /&gt;[CRLF] &lt;StandardAttribute Name=&quot;Forcer l&amp;#39;alignement en haut&quot; Attribute=&quot;TextStyle&quot; Prefix=&quot;&quot; Suffix=&quot;&quot; Alignment=&quot;CNTR&quot; Caption=&quot;&quot; Mandatory=&quot;Yes&quot; /&gt;[CRLF]&lt;/Form&gt;
Port.IconPicture=No
Port.TextStyle=No
Port_SymbolLayout=
Association.RoleAMultiplicity=Yes
Association.RoleAName=Yes
Association.RoleAOrdering=Yes
Association.DisplayedStereotype=No
Association.DisplayName=No
Association.DisplayedRules=Yes
Association.RoleBMultiplicity=Yes
Association.RoleBName=Yes
Association.RoleBOrdering=Yes
Association.RoleMultiplicitySymbol=No
Association_SymbolLayout=&lt;Form&gt;[CRLF] &lt;StandardAttribute Name=&quot;Stéréotype&quot; Attribute=&quot;Stereotype&quot; Prefix=&quot;&amp;lt;&amp;lt;&quot; Suffix=&quot;&amp;gt;&amp;gt;&quot; Alignment=&quot;CNTR&quot; Caption=&quot;&quot; Mandatory=&quot;No&quot; /&gt;[CRLF] &lt;StandardAttribute Name=&quot;Nom&quot; Attribute=&quot;DisplayName&quot; Prefix=&quot;&quot; Suffix=&quot;&quot; Alignment=&quot;CNTR&quot; Caption=&quot;&quot; Mandatory=&quot;Yes&quot; /&gt;[CRLF] &lt;Separator Name=&quot;Séparateur&quot; /&gt;[CRLF] &lt;StandardAttribute Name=&quot;Commentaire&quot; Attribute=&quot;Comment&quot; Prefix=&quot;&quot; Suffix=&quot;&quot; Alignment=&quot;LEFT&quot; Caption=&quot;&quot; Mandatory=&quot;No&quot; /&gt;[CRLF] &lt;StandardCollection Name=&quot;Attributs&quot; Collection=&quot;Attributes&quot; Columns=&quot;Stereotype No\r\nDisplayName Yes\r\nDataType No\r\nDomainOrDataType No &amp;quot;Domaine ou type de données&amp;quot;\r\nDomain No\r\nNullIndicator No Obligatoire&quot; HasLimit=&quot;Yes&quot; HideEmpty=&quot;No&quot; Caption=&quot;&quot; Mandatory=&quot;No&quot; /&gt;[CRLF] &lt;StandardAttribute Name=&quot;Icône&quot; Attribute=&quot;IconPicture&quot; Prefix=&quot;&quot; Suffix=&quot;&quot; Alignment=&quot;CNTR&quot; Caption=&quot;&quot; Mandatory=&quot;Yes&quot; /&gt;[CRLF] &lt;StandardAttribute Name=&quot;Forcer l&amp;#39;alignement en haut&quot; Attribute=&quot;TextStyle&quot; Prefix=&quot;&quot; Suffix=&quot;&quot; Alignment=&quot;CNTR&quot; Caption=&quot;&quot; Mandatory=&quot;Yes&quot; /&gt;[CRLF]&lt;/Form&gt;
RequireLink.DisplayedStereotype=Yes
RequireLink.DisplayName=No
RequireLink.DisplayedRules=Yes
RequireLink_SymbolLayout=&lt;Form&gt;[CRLF] &lt;Form Name=&quot;Centre&quot; &gt;[CRLF]  &lt;StandardAttribute Name=&quot;Stéréotype&quot; Attribute=&quot;DisplayedStereotype&quot; Prefix=&quot;&quot; Suffix=&quot;&quot; Caption=&quot;&quot; Mandatory=&quot;No&quot; /&gt;[CRLF]  &lt;StandardAttribute Name=&quot;Nom&quot; Attribute=&quot;DisplayName&quot; Prefix=&quot;&quot; Suffix=&quot;&quot; Caption=&quot;&quot; Mandatory=&quot;No&quot; /&gt;[CRLF]  &lt;StandardAttribute Name=&quot;Contrainte&quot; Attribute=&quot;DisplayedRules&quot; Prefix=&quot;&quot; Suffix=&quot;&quot; Caption=&quot;&quot; Mandatory=&quot;No&quot; /&gt;[CRLF] &lt;/Form&gt;[CRLF] &lt;Form Name=&quot;Source&quot; &gt;[CRLF] &lt;/Form&gt;[CRLF] &lt;Form Name=&quot;Destination&quot; &gt;[CRLF] &lt;/Form&gt;[CRLF]&lt;/Form&gt;
PortShowName=Yes
PortShowType=No
PortShowMult=No
Entity.Stereotype=Yes
Entity.Attributes=Yes
Entity.Attributes._Filter=&quot;Tous les attributs&quot; CDMPENTALL
Entity.Attributes._Columns=Stereotype IdentifierIndicator DomainOrDataType NullIndicator
Entity.Attributes._Limit=-5
Entity.Identifiers=Yes
Entity.Identifiers._Columns=Stereotype IdentifierIndicator
Entity.Comment=No
Entity.IconPicture=No
Entity.TextStyle=No
Entity_SymbolLayout=&lt;Form&gt;[CRLF] &lt;StandardAttribute Name=&quot;Stéréotype&quot; Attribute=&quot;Stereotype&quot; Prefix=&quot;&amp;lt;&amp;lt;&quot; Suffix=&quot;&amp;gt;&amp;gt;&quot; Alignment=&quot;CNTR&quot; Caption=&quot;&quot; Mandatory=&quot;No&quot; /&gt;[CRLF] &lt;StandardAttribute Name=&quot;Nom&quot; Attribute=&quot;DisplayName&quot; Prefix=&quot;&quot; Suffix=&quot;&quot; Alignment=&quot;CNTR&quot; Caption=&quot;&quot; Mandatory=&quot;Yes&quot; /&gt;[CRLF] &lt;Separator Name=&quot;Séparateur&quot; /&gt;[CRLF] &lt;StandardCollection Name=&quot;Attributs&quot; Collection=&quot;Attributes&quot; Columns=&quot;Stereotype No\r\nDisplayName Yes\r\nIdentifierIndicator No &amp;quot;Indicateurs d&amp;#39;identifiant&amp;quot;\r\nDataType No\r\nDomainOrDataType No &amp;quot;Domaine ou type de données&amp;quot;\r\nDomain No\r\nNullIndicator No Obligatoire&quot; Filters=&quot;&amp;quot;Tous les attributs&amp;quot;  CDMPENTALL &amp;quot;&amp;quot;\r\n&amp;quot;Attributs primaires&amp;quot;  CDMPENTPK &amp;quot;PIDTF \&amp;quot;TRUE\&amp;quot; TRUE&amp;quot;\r\n&amp;quot;Attributs identifiants&amp;quot;  CDMPENTIDTF &amp;quot;AIDF \&amp;quot;TRUE\&amp;quot; TRUE&amp;quot;&quot; HasLimit=&quot;Yes&quot; HideEmpty=&quot;No&quot; Caption=&quot;&quot; Mandatory=&quot;No&quot; /&gt;[CRLF] &lt;StandardCollection Name=&quot;Identifiants&quot; Collection=&quot;Identifiers&quot; Columns=&quot;Stereotype No\r\nDisplayName Yes\r\nIdentifierIndicator No &amp;quot;Indicateurs d&amp;#39;identifiant&amp;quot;&quot; HasLimit=&quot;No&quot; HideEmpty=&quot;No&quot; Caption=&quot;&quot; Mandatory=&quot;No&quot; /&gt;[CRLF] &lt;StandardAttribute Name=&quot;Commentaire&quot; Attribute=&quot;Comment&quot; Prefix=&quot;&quot; Suffix=&quot;&quot; Alignment=&quot;LEFT&quot; Caption=&quot;&quot; Mandatory=&quot;No&quot; /&gt;[CRLF] &lt;StandardAttribute Name=&quot;Icône&quot; Attribute=&quot;IconPicture&quot; Prefix=&quot;&quot; Suffix=&quot;&quot; Alignment=&quot;CNTR&quot; Caption=&quot;&quot; Mandatory=&quot;Yes&quot; /&gt;[CRLF] &lt;StandardAttribute Name=&quot;Forcer l&amp;#39;alignement en haut&quot; Attribute=&quot;TextStyle&quot; Prefix=&quot;&quot; Suffix=&quot;&quot; Alignment=&quot;CNTR&quot; Caption=&quot;&quot; Mandatory=&quot;Yes&quot; /&gt;[CRLF]&lt;/Form&gt;
Relationship.Entity1ToEntity2Role=Yes
Relationship.Entity2ToEntity1RoleCardinality=No
Relationship.Entity1ToEntity2RoleDominant=Yes
Relationship.Stereotype=Yes
Relationship.DisplayName=Yes
Relationship.Entity2ToEntity1Role=Yes
Relationship.Entity1ToEntity2RoleCardinality=No
Relationship.Entity2ToEntity1RoleDominant=Yes
Relationship_SymbolLayout=&lt;Form&gt;[CRLF] &lt;Form Name=&quot;Source&quot; &gt;[CRLF]  &lt;StandardAttribute Name=&quot;Rôle&quot; Attribute=&quot;Entity1ToEntity2Role&quot; Prefix=&quot;&quot; Suffix=&quot;&quot; Caption=&quot;Rôle&quot; Mandatory=&quot;No&quot; /&gt;[CRLF]  &lt;StandardAttribute Name=&quot;Cardinalité&quot; Attribute=&quot;Entity2ToEntity1RoleCardinality&quot; Prefix=&quot;&quot; Suffix=&quot;&quot; Caption=&quot;Cardinalité&quot; Mandatory=&quot;No&quot; /&gt;[CRLF]  &lt;StandardAttribute Name=&quot;Dominance&quot; Attribute=&quot;Entity1ToEntity2RoleDominant&quot; Prefix=&quot;&quot; Suffix=&quot;&quot; Caption=&quot;Dominance&quot; Mandatory=&quot;No&quot; /&gt;[CRLF] &lt;/Form&gt;[CRLF] &lt;Form Name=&quot;Centre&quot; &gt;[CRLF]  &lt;StandardAttribute Name=&quot;Stéréotype&quot; Attribute=&quot;Stereotype&quot; Prefix=&quot;&amp;lt;&amp;lt;&quot; Suffix=&quot;&amp;gt;&amp;gt;&quot; Caption=&quot;&quot; Mandatory=&quot;No&quot; /&gt;[CRLF]  &lt;StandardAttribute Name=&quot;Nom&quot; Attribute=&quot;DisplayName&quot; Prefix=&quot;&quot; Suffix=&quot;&quot; Caption=&quot;&quot; Mandatory=&quot;No&quot; /&gt;[CRLF] &lt;/Form&gt;[CRLF] &lt;Form Name=&quot;Destination&quot; &gt;[CRLF]  &lt;StandardAttribute Name=&quot;Rôle&quot; Attribute=&quot;Entity2ToEntity1Role&quot; Prefix=&quot;&quot; Suffix=&quot;&quot; Caption=&quot;Rôle&quot; Mandatory=&quot;No&quot; /&gt;[CRLF]  &lt;StandardAttribute Name=&quot;Cardinalité&quot; Attribute=&quot;Entity1ToEntity2RoleCardinality&quot; Prefix=&quot;&quot; Suffix=&quot;&quot; Caption=&quot;Cardinalité&quot; Mandatory=&quot;No&quot; /&gt;[CRLF]  &lt;StandardAttribute Name=&quot;Dominance&quot; Attribute=&quot;Entity2ToEntity1RoleDominant&quot; Prefix=&quot;&quot; Suffix=&quot;&quot; Caption=&quot;Dominance&quot; Mandatory=&quot;No&quot; /&gt;[CRLF] &lt;/Form&gt;[CRLF]&lt;/Form&gt;
Association.Stereotype=Yes
Association.Comment=No
Association.Attributes=Yes
Association.Attributes._Columns=Stereotype DomainOrDataType NullIndicator
Association.Attributes._Limit=-5
Association.IconPicture=No
Association.TextStyle=No
AssociationLink.SymbolCardinality=Yes
AssociationLink.Stereotype=Yes
AssociationLink.Role=Yes
AssociationLink_SymbolLayout=&lt;Form&gt;[CRLF] &lt;Form Name=&quot;Source&quot; &gt;[CRLF]  &lt;StandardAttribute Name=&quot;Cardinalité&quot; Attribute=&quot;SymbolCardinality&quot; Prefix=&quot;&quot; Suffix=&quot;&quot; Caption=&quot;Cardinalité&quot; Mandatory=&quot;No&quot; /&gt;[CRLF] &lt;/Form&gt;[CRLF] &lt;Form Name=&quot;Centre&quot; &gt;[CRLF]  &lt;StandardAttribute Name=&quot;Stéréotype&quot; Attribute=&quot;Stereotype&quot; Prefix=&quot;&amp;lt;&amp;lt;&quot; Suffix=&quot;&amp;gt;&amp;gt;&quot; Caption=&quot;&quot; Mandatory=&quot;No&quot; /&gt;[CRLF]  &lt;StandardAttribute Name=&quot;Rôle&quot; Attribute=&quot;Role&quot; Prefix=&quot;&quot; Suffix=&quot;&quot; Caption=&quot;&quot; Mandatory=&quot;No&quot; /&gt;[CRLF] &lt;/Form&gt;[CRLF] &lt;Form Name=&quot;Destination&quot; &gt;[CRLF] &lt;/Form&gt;[CRLF]&lt;/Form&gt;
Inheritance.Stereotype=Yes
Inheritance.DisplayName=Yes
Inheritance.IconPicture=No
Inheritance.TextStyle=No
Inheritance_SymbolLayout=&lt;Form&gt;[CRLF] &lt;StandardAttribute Name=&quot;Stéréotype&quot; Attribute=&quot;Stereotype&quot; Prefix=&quot;&amp;lt;&amp;lt;&quot; Suffix=&quot;&amp;gt;&amp;gt;&quot; Alignment=&quot;CNTR&quot; Caption=&quot;&quot; Mandatory=&quot;No&quot; /&gt;[CRLF] &lt;StandardAttribute Name=&quot;Nom&quot; Attribute=&quot;DisplayName&quot; Prefix=&quot;&quot; Suffix=&quot;&quot; Alignment=&quot;CNTR&quot; Caption=&quot;&quot; Mandatory=&quot;No&quot; /&gt;[CRLF] &lt;Separator Name=&quot;Séparateur&quot; /&gt;[CRLF] &lt;StandardAttribute Name=&quot;Icône&quot; Attribute=&quot;IconPicture&quot; Prefix=&quot;&quot; Suffix=&quot;&quot; Alignment=&quot;CNTR&quot; Caption=&quot;&quot; Mandatory=&quot;Yes&quot; /&gt;[CRLF] &lt;StandardAttribute Name=&quot;Forcer l&amp;#39;alignement en haut&quot; Attribute=&quot;TextStyle&quot; Prefix=&quot;&quot; Suffix=&quot;&quot; Alignment=&quot;CNTR&quot; Caption=&quot;&quot; Mandatory=&quot;Yes&quot; /&gt;[CRLF]&lt;/Form&gt;
AssociationLink.Cardinality=No

[DisplayPreferences\Symbol]

[DisplayPreferences\Symbol\AREA]
STRNFont=Arial,8,N
STRNFont color=0 0 0
DISPNAMEFont=Arial,8,N
DISPNAMEFont color=0 0 0
LABLFont=Arial,8,N
LABLFont color=0 0 0
AutoAdjustToText=Yes
Keep aspect=No
Keep center=No
Keep size=No
Width=9600
Height=8000
Brush color=253 249 234
Fill Color=Yes
Brush style=6
Brush bitmap mode=12
Brush gradient mode=16
Brush gradient color=245 230 173
Brush background image=
Custom shape=
Custom text mode=0
Pen=1 0 121 98 6
Shadow color=192 192 192
Shadow=0

[DisplayPreferences\Symbol\FRMEOBJ]
STRNFont=Arial,8,N
STRNFont color=0, 0, 0
DISPNAMEFont=Arial,8,N
DISPNAMEFont color=0, 0, 0
LABLFont=Arial,8,N
LABLFont color=0, 0, 0
AutoAdjustToText=Yes
Keep aspect=No
Keep center=No
Keep size=No
Width=6000
Height=2000
Brush color=255 255 255
Fill Color=Yes
Brush style=6
Brush bitmap mode=12
Brush gradient mode=64
Brush gradient color=192 192 192
Brush background image=
Custom shape=
Custom text mode=0
Pen=1 0 255 128 128
Shadow color=192 192 192
Shadow=0

[DisplayPreferences\Symbol\FRMELNK]
CENTERFont=Arial,8,N
CENTERFont color=0, 0, 0
Line style=0
AutoAdjustToText=Yes
Keep aspect=No
Keep center=No
Keep size=No
Brush color=255 255 255
Fill Color=Yes
Brush style=1
Brush bitmap mode=12
Brush gradient mode=0
Brush gradient color=118 118 118
Brush background image=
Custom shape=
Custom text mode=0
Pen=1 0 128 128 255
Shadow color=192 192 192
Shadow=0

[DisplayPreferences\Symbol\USRDEPD]
CENTERFont=Arial,8,N
CENTERFont color=0 0 0
Line style=0
AutoAdjustToText=Yes
Keep aspect=No
Keep center=No
Keep size=No
Brush color=255 255 255
Fill Color=Yes
Brush style=1
Brush bitmap mode=12
Brush gradient mode=0
Brush gradient color=118 118 118
Brush background image=
Custom shape=
Custom text mode=0
Pen=2 0 128 128 255
Shadow color=192 192 192
Shadow=0
OBJXSTRFont=Arial,8,N
OBJXSTRFont color=0, 0, 0

[DisplayPreferences\Symbol\FILO]
OBJSTRNFont=Arial,8,N
OBJSTRNFont color=0, 0, 0
DISPNAMEFont=Arial,8,N
DISPNAMEFont color=0, 0, 0
LCNMFont=Arial,8,N
LCNMFont color=0, 0, 0
AutoAdjustToText=Yes
Keep aspect=Yes
Keep center=Yes
Keep size=No
Width=2400
Height=2400
Brush color=255 255 255
Fill Color=No
Brush style=1
Brush bitmap mode=12
Brush gradient mode=0
Brush gradient color=118 118 118
Brush background image=
Custom shape=
Custom text mode=0
Pen=1 0 0 0 255
Shadow color=192 192 192
Shadow=0

[DisplayPreferences\Symbol\CLDPCKG]
STRNFont=Arial,8,N
STRNFont color=0 0 0
DISPNAMEFont=Arial,8,N
DISPNAMEFont color=0 0 0
LABLFont=Arial,8,N
LABLFont color=0 0 0
AutoAdjustToText=Yes
Keep aspect=No
Keep center=No
Keep size=No
Width=4800
Height=4000
Brush color=255 255 192
Fill Color=Yes
Brush style=6
Brush bitmap mode=12
Brush gradient mode=65
Brush gradient color=255 255 255
Brush background image=
Custom shape=
Custom text mode=0
Pen=1 0 178 178 178
Shadow color=192 192 192
Shadow=0

[DisplayPreferences\Symbol\GNRLLINK]
CENTERFont=Arial,8,N
CENTERFont color=0 0 0
Line style=1
AutoAdjustToText=Yes
Keep aspect=No
Keep center=No
Keep size=No
Brush color=255 255 255
Fill Color=Yes
Brush style=1
Brush bitmap mode=12
Brush gradient mode=0
Brush gradient color=118 118 118
Brush background image=
Custom shape=
Custom text mode=0
Pen=1 0 128 128 255
Shadow color=192 192 192
Shadow=0

[DisplayPreferences\Symbol\RLZSLINK]
CENTERFont=Arial,8,N
CENTERFont color=0 0 0
Line style=1
AutoAdjustToText=Yes
Keep aspect=No
Keep center=No
Keep size=No
Brush color=255 255 255
Fill Color=Yes
Brush style=1
Brush bitmap mode=12
Brush gradient mode=0
Brush gradient color=118 118 118
Brush background image=
Custom shape=
Custom text mode=0
Pen=3 0 0 0 0
Shadow color=192 192 192
Shadow=0

[DisplayPreferences\Symbol\DEPDLINK]
CENTERFont=Arial,8,N
CENTERFont color=0 0 0
Line style=1
AutoAdjustToText=Yes
Keep aspect=No
Keep center=No
Keep size=No
Brush color=255 255 255
Fill Color=Yes
Brush style=1
Brush bitmap mode=12
Brush gradient mode=0
Brush gradient color=118 118 118
Brush background image=
Custom shape=
Custom text mode=0
Pen=2 0 128 128 255
Shadow color=192 192 192
Shadow=0

[DisplayPreferences\Symbol\CLDCLASS]
STRNFont=Arial,8,N
STRNFont color=0 0 0
QDNMFont=Arial,8,N
QDNMFont color=0 0 0
CNTRFont=Arial,8,N
CNTRFont color=0 0 0
AttributesFont=Arial,8,N
AttributesFont color=0 0 0
ClassPrimaryAttributeFont=Arial,8,U
ClassPrimaryAttributeFont color=0 0 0
OperationsFont=Arial,8,N
OperationsFont color=0 0 0
InnerClassifiersFont=Arial,8,N
InnerClassifiersFont color=0 0 0
LABLFont=Arial,8,N
LABLFont color=0 0 0
AutoAdjustToText=Yes
Keep aspect=No
Keep center=No
Keep size=No
Width=4800
Height=3600
Brush color=174 228 255
Fill Color=Yes
Brush style=6
Brush bitmap mode=12
Brush gradient mode=65
Brush gradient color=255 255 255
Brush background image=
Custom shape=
Custom text mode=0
Pen=1 0 0 128 255
Shadow color=192 192 192
Shadow=0

[DisplayPreferences\Symbol\CLDINTF]
STRNFont=Arial,8,N
STRNFont color=0 0 0
QDNMFont=Arial,8,N
QDNMFont color=0 0 0
CNTRFont=Arial,8,N
CNTRFont color=0 0 0
AttributesFont=Arial,8,N
AttributesFont color=0 0 0
OperationsFont=Arial,8,N
OperationsFont color=0 0 0
InnerClassifiersFont=Arial,8,N
InnerClassifiersFont color=0 0 0
LABLFont=Arial,8,N
LABLFont color=0 0 0
AutoAdjustToText=Yes
Keep aspect=No
Keep center=No
Keep size=No
Width=4800
Height=3600
Brush color=208 208 255
Fill Color=Yes
Brush style=6
Brush bitmap mode=12
Brush gradient mode=65
Brush gradient color=255 255 255
Brush background image=
Custom shape=
Custom text mode=0
Pen=1 0 128 128 255
Shadow color=192 192 192
Shadow=0

[DisplayPreferences\Symbol\OOMPORT]
DISPNAMEFont=Arial,8,N
DISPNAMEFont color=0 0 0
AutoAdjustToText=Yes
Keep aspect=No
Keep center=No
Keep size=No
Width=800
Height=800
Brush color=174 228 255
Fill Color=Yes
Brush style=6
Brush bitmap mode=12
Brush gradient mode=65
Brush gradient color=255 255 255
Brush background image=
Custom shape=
Custom text mode=0
Pen=1 0 0 128 255
Shadow color=192 192 192
Shadow=0

[DisplayPreferences\Symbol\CLDASSC]
SOURCEFont=Arial,8,N
SOURCEFont color=0 0 0
CENTERFont=Arial,8,N
CENTERFont color=0 0 0
DESTINATIONFont=Arial,8,N
DESTINATIONFont color=0 0 0
Line style=1
AutoAdjustToText=Yes
Keep aspect=No
Keep center=No
Keep size=No
Brush color=255 255 255
Fill Color=Yes
Brush style=1
Brush bitmap mode=12
Brush gradient mode=0
Brush gradient color=118 118 118
Brush background image=
Custom shape=
Custom text mode=0
Pen=1 0 0 128 255
Shadow color=192 192 192
Shadow=0

[DisplayPreferences\Symbol\INNERLINK]
Line style=1
Pen=1 0 0 128 255
Shadow color=192 192 192
Shadow=0

[DisplayPreferences\Symbol\CLDACLK]
Line style=1
Pen=2 0 0 128 255
Shadow color=192 192 192
Shadow=0

[DisplayPreferences\Symbol\RQLINK]
CENTERFont=Arial,8,N
CENTERFont color=0 0 0
Line style=1
AutoAdjustToText=Yes
Keep aspect=No
Keep center=No
Keep size=No
Brush color=255 255 255
Fill Color=Yes
Brush style=1
Brush bitmap mode=12
Brush gradient mode=0
Brush gradient color=118 118 118
Brush background image=
Custom shape=
Custom text mode=0
Pen=1 0 128 128 255
Shadow color=192 192 192
Shadow=0

[DisplayPreferences\Symbol\Free Symbol]
Free TextFont=Arial,8,N
Free TextFont color=0, 0, 0
Line style=0
AutoAdjustToText=Yes
Keep aspect=No
Keep center=No
Keep size=No
Brush color=255 255 255
Fill Color=Yes
Brush style=1
Brush bitmap mode=12
Brush gradient mode=0
Brush gradient color=118 118 118
Brush background image=
Custom shape=
Custom text mode=0
Pen=1 0 0 0 255
Shadow color=192 192 192
Shadow=0

[DisplayPreferences\Symbol\CDMPCKG]
STRNFont=Arial,8,N
STRNFont color=0, 0, 0
DISPNAMEFont=Arial,8,N
DISPNAMEFont color=0, 0, 0
LABLFont=Arial,8,N
LABLFont color=0, 0, 0
AutoAdjustToText=Yes
Keep aspect=No
Keep center=No
Keep size=No
Width=4800
Height=3600
Brush color=255 255 192
Fill Color=Yes
Brush style=6
Brush bitmap mode=12
Brush gradient mode=65
Brush gradient color=255 255 255
Brush background image=
Custom shape=
Custom text mode=0
Pen=1 0 178 178 178
Shadow color=192 192 192
Shadow=0

[DisplayPreferences\Symbol\ENTT]
STRNFont=Arial,8,N
STRNFont color=0, 0, 0
DISPNAMEFont=Arial,8,N
DISPNAMEFont color=0, 0, 0
AttributesFont=Arial,8,N
AttributesFont color=0, 0, 0
EntityPrimaryAttributeFont=Arial,8,U
EntityPrimaryAttributeFont color=0, 0, 0
IdentifiersFont=Arial,8,N
IdentifiersFont color=0, 0, 0
LABLFont=Arial,8,N
LABLFont color=0, 0, 0
AutoAdjustToText=Yes
Keep aspect=No
Keep center=No
Keep size=No
Width=4800
Height=4000
Brush color=176 255 255
Fill Color=Yes
Brush style=6
Brush bitmap mode=12
Brush gradient mode=65
Brush gradient color=255 255 255
Brush background image=
Custom shape=
Custom text mode=0
Pen=1 0 0 170 170
Shadow color=192 192 192
Shadow=0

[DisplayPreferences\Symbol\RLSH]
SOURCEFont=Arial,8,N
SOURCEFont color=0, 0, 0
CENTERFont=Arial,8,N
CENTERFont color=0, 0, 0
DESTINATIONFont=Arial,8,N
DESTINATIONFont color=0, 0, 0
Line style=0
AutoAdjustToText=Yes
Keep aspect=No
Keep center=No
Keep size=No
Brush color=255 255 255
Fill Color=Yes
Brush style=1
Brush bitmap mode=12
Brush gradient mode=0
Brush gradient color=118 118 118
Brush background image=
Custom shape=
Custom text mode=0
Pen=1 0 0 170 170
Shadow color=192 192 192
Shadow=0

[DisplayPreferences\Symbol\ASSC]
STRNFont=Arial,8,N
STRNFont color=0, 0, 0
DISPNAMEFont=Arial,8,N
DISPNAMEFont color=0, 0, 0
LABLFont=Arial,8,N
LABLFont color=0, 0, 0
AttributesFont=Arial,8,N
AttributesFont color=0, 0, 0
EntityPrimaryAttributeFont=Arial,8,U
EntityPrimaryAttributeFont color=0, 0, 0
AutoAdjustToText=Yes
Keep aspect=No
Keep center=No
Keep size=No
Width=4800
Height=3000
Brush color=208 208 255
Fill Color=Yes
Brush style=6
Brush bitmap mode=12
Brush gradient mode=65
Brush gradient color=255 255 255
Brush background image=
Custom shape=
Custom text mode=0
Pen=1 0 128 128 255
Shadow color=192 192 192
Shadow=0

[DisplayPreferences\Symbol\LINK]
SOURCEFont=Arial,8,N
SOURCEFont color=0, 0, 0
CENTERFont=Arial,8,N
CENTERFont color=0, 0, 0
Line style=0
AutoAdjustToText=Yes
Keep aspect=No
Keep center=No
Keep size=No
Brush color=255 255 255
Fill Color=Yes
Brush style=1
Brush bitmap mode=12
Brush gradient mode=0
Brush gradient color=118 118 118
Brush background image=
Custom shape=
Custom text mode=0
Pen=1 0 128 128 255
Shadow color=192 192 192
Shadow=0

[DisplayPreferences\Symbol\CDMINHR]
STRNFont=Arial,8,N
STRNFont color=0, 0, 0
DISPNAMEFont=Arial,8,N
DISPNAMEFont color=0 0 0
AutoAdjustToText=Yes
Keep aspect=No
Keep center=No
Keep size=Yes
Width=1600
Height=1000
Brush color=176 255 255
Fill Color=Yes
Brush style=6
Brush bitmap mode=12
Brush gradient mode=65
Brush gradient color=255 255 255
Brush background image=
Custom shape=
Custom text mode=0
Pen=1 0 128 128 255
Shadow color=192 192 192
Shadow=0
CENTERFont=Arial,8,N
CENTERFont color=0, 0, 0

[DisplayPreferences\Symbol\LINH]
CENTERFont=Arial,8,N
CENTERFont color=0, 0, 0
Line style=0
AutoAdjustToText=Yes
Keep aspect=No
Keep center=No
Keep size=No
Brush color=255 255 255
Fill Color=Yes
Brush style=1
Brush bitmap mode=12
Brush gradient mode=0
Brush gradient color=118 118 118
Brush background image=
Custom shape=
Custom text mode=0
Pen=1 0 128 128 255
Shadow color=192 192 192
Shadow=0

[DisplayPreferences\CDM]</a:DisplayPreferences>
<a:PaperSize>(8268, 11693)</a:PaperSize>
<a:PageMargins>((315,354), (433,354))</a:PageMargins>
<a:PageOrientation>1</a:PageOrientation>
<a:PaperSource>15</a:PaperSource>
<c:Symbols>
<o:AssociationSymbol Id="o6">
<a:ModificationDate>1578175870</a:ModificationDate>
<a:Rect>((-18865,9539), (11135,9639))</a:Rect>
<a:ListOfPoints>((11135,9539),(-18865,9539))</a:ListOfPoints>
<a:CornerStyle>1</a:CornerStyle>
<a:ArrowStyle>0</a:ArrowStyle>
<a:LineColor>16744576</a:LineColor>
<a:ShadowColor>12632256</a:ShadowColor>
<a:FontList>CENTER 0 Arial,8,N</a:FontList>
<c:SourceSymbol>
<o:ClassSymbol Ref="o7"/>
</c:SourceSymbol>
<c:DestinationSymbol>
<o:ClassSymbol Ref="o8"/>
</c:DestinationSymbol>
<c:Object>
<o:Association Ref="o9"/>
</c:Object>
</o:AssociationSymbol>
<o:AssociationClassLinkSymbol Id="o10">
<a:CreationDate>1578175780</a:CreationDate>
<a:ModificationDate>1578175870</a:ModificationDate>
<a:Rect>((-34863,-20461), (-3865,9539))</a:Rect>
<a:ListOfPoints>((-3865,9539),(-34863,9539),(-34863,-20461))</a:ListOfPoints>
<a:CornerStyle>1</a:CornerStyle>
<a:ArrowStyle>0</a:ArrowStyle>
<a:LineColor>16744448</a:LineColor>
<a:DashStyle>2</a:DashStyle>
<a:ShadowColor>12632256</a:ShadowColor>
<c:SourceSymbol>
<o:AssociationSymbol Ref="o6"/>
</c:SourceSymbol>
<c:DestinationSymbol>
<o:ClassSymbol Ref="o11"/>
</c:DestinationSymbol>
<c:Object>
<o:AssociationClassLink Ref="o12"/>
</c:Object>
</o:AssociationClassLinkSymbol>
<o:AssociationSymbol Id="o13">
<a:ModificationDate>1578175870</a:ModificationDate>
<a:Rect>((-19165,1539), (-18565,9539))</a:Rect>
<a:ListOfPoints>((-18865,1539),(-18865,9539))</a:ListOfPoints>
<a:CornerStyle>1</a:CornerStyle>
<a:ArrowStyle>2048</a:ArrowStyle>
<a:LineColor>16744576</a:LineColor>
<a:ShadowColor>12632256</a:ShadowColor>
<a:FontList>CENTER 0 Arial,8,N</a:FontList>
<c:SourceSymbol>
<o:ClassSymbol Ref="o14"/>
</c:SourceSymbol>
<c:DestinationSymbol>
<o:ClassSymbol Ref="o8"/>
</c:DestinationSymbol>
<c:Object>
<o:Association Ref="o15"/>
</c:Object>
</o:AssociationSymbol>
<o:AssociationSymbol Id="o16">
<a:ModificationDate>1578175870</a:ModificationDate>
<a:Rect>((23135,-10458), (35135,-4461))</a:Rect>
<a:ListOfPoints>((23135,-10458),(35135,-10458),(35135,-4461))</a:ListOfPoints>
<a:CornerStyle>1</a:CornerStyle>
<a:ArrowStyle>0</a:ArrowStyle>
<a:LineColor>16744576</a:LineColor>
<a:ShadowColor>12632256</a:ShadowColor>
<a:FontList>CENTER 0 Arial,8,N</a:FontList>
<c:SourceSymbol>
<o:ClassSymbol Ref="o17"/>
</c:SourceSymbol>
<c:DestinationSymbol>
<o:ClassSymbol Ref="o18"/>
</c:DestinationSymbol>
<c:Object>
<o:Association Ref="o19"/>
</c:Object>
</o:AssociationSymbol>
<o:AssociationSymbol Id="o20">
<a:ModificationDate>1578175870</a:ModificationDate>
<a:Rect>((-34865,17239), (35135,17839))</a:Rect>
<a:ListOfPoints>((35135,17539),(-34865,17539))</a:ListOfPoints>
<a:CornerStyle>1</a:CornerStyle>
<a:ArrowStyle>2048</a:ArrowStyle>
<a:LineColor>16744576</a:LineColor>
<a:ShadowColor>12632256</a:ShadowColor>
<a:FontList>CENTER 0 Arial,8,N</a:FontList>
<c:SourceSymbol>
<o:ClassSymbol Ref="o21"/>
</c:SourceSymbol>
<c:DestinationSymbol>
<o:ClassSymbol Ref="o22"/>
</c:DestinationSymbol>
<c:Object>
<o:Association Ref="o23"/>
</c:Object>
</o:AssociationSymbol>
<o:AssociationSymbol Id="o24">
<a:ModificationDate>1578175870</a:ModificationDate>
<a:Rect>((34835,-4461), (35435,17539))</a:Rect>
<a:ListOfPoints>((35135,-4461),(35135,17539))</a:ListOfPoints>
<a:CornerStyle>1</a:CornerStyle>
<a:ArrowStyle>2048</a:ArrowStyle>
<a:LineColor>16744576</a:LineColor>
<a:ShadowColor>12632256</a:ShadowColor>
<a:FontList>CENTER 0 Arial,8,N</a:FontList>
<c:SourceSymbol>
<o:ClassSymbol Ref="o18"/>
</c:SourceSymbol>
<c:DestinationSymbol>
<o:ClassSymbol Ref="o21"/>
</c:DestinationSymbol>
<c:Object>
<o:Association Ref="o25"/>
</c:Object>
</o:AssociationSymbol>
<o:AssociationSymbol Id="o26">
<a:ModificationDate>1578175870</a:ModificationDate>
<a:Rect>((23135,-10458), (23235,-4461))</a:Rect>
<a:ListOfPoints>((23135,-4461),(23135,-10458))</a:ListOfPoints>
<a:CornerStyle>1</a:CornerStyle>
<a:ArrowStyle>0</a:ArrowStyle>
<a:LineColor>16744576</a:LineColor>
<a:ShadowColor>12632256</a:ShadowColor>
<a:FontList>CENTER 0 Arial,8,N</a:FontList>
<c:SourceSymbol>
<o:ClassSymbol Ref="o27"/>
</c:SourceSymbol>
<c:DestinationSymbol>
<o:ClassSymbol Ref="o17"/>
</c:DestinationSymbol>
<c:Object>
<o:Association Ref="o28"/>
</c:Object>
</o:AssociationSymbol>
<o:AssociationSymbol Id="o29">
<a:ModificationDate>1578175870</a:ModificationDate>
<a:Rect>((11135,-4461), (23135,1839))</a:Rect>
<a:ListOfPoints>((11135,1539),(23135,1539),(23135,-4461))</a:ListOfPoints>
<a:CornerStyle>1</a:CornerStyle>
<a:ArrowStyle>2048</a:ArrowStyle>
<a:LineColor>16744576</a:LineColor>
<a:ShadowColor>12632256</a:ShadowColor>
<a:FontList>CENTER 0 Arial,8,N</a:FontList>
<c:SourceSymbol>
<o:ClassSymbol Ref="o30"/>
</c:SourceSymbol>
<c:DestinationSymbol>
<o:ClassSymbol Ref="o27"/>
</c:DestinationSymbol>
<c:Object>
<o:Association Ref="o31"/>
</c:Object>
</o:AssociationSymbol>
<o:AssociationSymbol Id="o32">
<a:ModificationDate>1578175870</a:ModificationDate>
<a:Rect>((11135,1539), (11235,9539))</a:Rect>
<a:ListOfPoints>((11135,1539),(11135,9539))</a:ListOfPoints>
<a:CornerStyle>1</a:CornerStyle>
<a:ArrowStyle>0</a:ArrowStyle>
<a:LineColor>16744576</a:LineColor>
<a:ShadowColor>12632256</a:ShadowColor>
<a:FontList>CENTER 0 Arial,8,N</a:FontList>
<c:SourceSymbol>
<o:ClassSymbol Ref="o30"/>
</c:SourceSymbol>
<c:DestinationSymbol>
<o:ClassSymbol Ref="o7"/>
</c:DestinationSymbol>
<c:Object>
<o:Association Ref="o33"/>
</c:Object>
</o:AssociationSymbol>
<o:AssociationClassLinkSymbol Id="o34">
<a:CreationDate>1578175780</a:CreationDate>
<a:ModificationDate>1578175870</a:ModificationDate>
<a:Rect>((-20865,-18267), (11135,5539))</a:Rect>
<a:ListOfPoints>((11135,5539),(11135,-18267),(-20865,-18267))</a:ListOfPoints>
<a:CornerStyle>1</a:CornerStyle>
<a:ArrowStyle>0</a:ArrowStyle>
<a:LineColor>16744448</a:LineColor>
<a:DashStyle>2</a:DashStyle>
<a:ShadowColor>12632256</a:ShadowColor>
<c:SourceSymbol>
<o:AssociationSymbol Ref="o32"/>
</c:SourceSymbol>
<c:DestinationSymbol>
<o:ClassSymbol Ref="o35"/>
</c:DestinationSymbol>
<c:Object>
<o:AssociationClassLink Ref="o36"/>
</c:Object>
</o:AssociationClassLinkSymbol>
<o:AssociationSymbol Id="o37">
<a:ModificationDate>1578175870</a:ModificationDate>
<a:Rect>((-18865,1239), (-2865,1839))</a:Rect>
<a:ListOfPoints>((-2865,1539),(-18865,1539))</a:ListOfPoints>
<a:CornerStyle>1</a:CornerStyle>
<a:ArrowStyle>2048</a:ArrowStyle>
<a:LineColor>16744576</a:LineColor>
<a:ShadowColor>12632256</a:ShadowColor>
<a:FontList>CENTER 0 Arial,8,N</a:FontList>
<c:SourceSymbol>
<o:ClassSymbol Ref="o38"/>
</c:SourceSymbol>
<c:DestinationSymbol>
<o:ClassSymbol Ref="o14"/>
</c:DestinationSymbol>
<c:Object>
<o:Association Ref="o39"/>
</c:Object>
</o:AssociationSymbol>
<o:AssociationSymbol Id="o40">
<a:ModificationDate>1578175870</a:ModificationDate>
<a:Rect>((-2865,1539), (11135,9839))</a:Rect>
<a:ListOfPoints>((11135,9539),(-2865,9539),(-2865,1539))</a:ListOfPoints>
<a:CornerStyle>1</a:CornerStyle>
<a:ArrowStyle>2048</a:ArrowStyle>
<a:LineColor>16744576</a:LineColor>
<a:ShadowColor>12632256</a:ShadowColor>
<a:FontList>CENTER 0 Arial,8,N</a:FontList>
<c:SourceSymbol>
<o:ClassSymbol Ref="o7"/>
</c:SourceSymbol>
<c:DestinationSymbol>
<o:ClassSymbol Ref="o38"/>
</c:DestinationSymbol>
<c:Object>
<o:Association Ref="o41"/>
</c:Object>
</o:AssociationSymbol>
<o:AssociationSymbol Id="o42">
<a:ModificationDate>1578175870</a:ModificationDate>
<a:Rect>((11135,-4461), (23135,9839))</a:Rect>
<a:ListOfPoints>((11135,9539),(23135,9539),(23135,-4461))</a:ListOfPoints>
<a:CornerStyle>1</a:CornerStyle>
<a:ArrowStyle>2048</a:ArrowStyle>
<a:LineColor>16744576</a:LineColor>
<a:ShadowColor>12632256</a:ShadowColor>
<a:FontList>CENTER 0 Arial,8,N</a:FontList>
<c:SourceSymbol>
<o:ClassSymbol Ref="o7"/>
</c:SourceSymbol>
<c:DestinationSymbol>
<o:ClassSymbol Ref="o27"/>
</c:DestinationSymbol>
<c:Object>
<o:Association Ref="o43"/>
</c:Object>
</o:AssociationSymbol>
<o:AssociationSymbol Id="o44">
<a:ModificationDate>1578175870</a:ModificationDate>
<a:Rect>((-2865,1239), (11135,1839))</a:Rect>
<a:ListOfPoints>((11135,1539),(-2865,1539))</a:ListOfPoints>
<a:CornerStyle>1</a:CornerStyle>
<a:ArrowStyle>2048</a:ArrowStyle>
<a:LineColor>16744576</a:LineColor>
<a:ShadowColor>12632256</a:ShadowColor>
<a:FontList>CENTER 0 Arial,8,N</a:FontList>
<c:SourceSymbol>
<o:ClassSymbol Ref="o30"/>
</c:SourceSymbol>
<c:DestinationSymbol>
<o:ClassSymbol Ref="o38"/>
</c:DestinationSymbol>
<c:Object>
<o:Association Ref="o45"/>
</c:Object>
</o:AssociationSymbol>
<o:AssociationSymbol Id="o46">
<a:ModificationDate>1578175870</a:ModificationDate>
<a:Rect>((23135,-4761), (35135,-4161))</a:Rect>
<a:ListOfPoints>((23135,-4461),(35135,-4461))</a:ListOfPoints>
<a:CornerStyle>1</a:CornerStyle>
<a:ArrowStyle>2048</a:ArrowStyle>
<a:LineColor>16744576</a:LineColor>
<a:ShadowColor>12632256</a:ShadowColor>
<a:FontList>CENTER 0 Arial,8,N</a:FontList>
<c:SourceSymbol>
<o:ClassSymbol Ref="o27"/>
</c:SourceSymbol>
<c:DestinationSymbol>
<o:ClassSymbol Ref="o18"/>
</c:DestinationSymbol>
<c:Object>
<o:Association Ref="o47"/>
</c:Object>
</o:AssociationSymbol>
<o:AssociationSymbol Id="o48">
<a:ModificationDate>1578175870</a:ModificationDate>
<a:Rect>((-18865,-4761), (23135,1539))</a:Rect>
<a:ListOfPoints>((23135,-4461),(-18865,-4461),(-18865,1539))</a:ListOfPoints>
<a:CornerStyle>1</a:CornerStyle>
<a:ArrowStyle>2048</a:ArrowStyle>
<a:LineColor>16744576</a:LineColor>
<a:ShadowColor>12632256</a:ShadowColor>
<a:FontList>CENTER 0 Arial,8,N</a:FontList>
<c:SourceSymbol>
<o:ClassSymbol Ref="o27"/>
</c:SourceSymbol>
<c:DestinationSymbol>
<o:ClassSymbol Ref="o14"/>
</c:DestinationSymbol>
<c:Object>
<o:Association Ref="o49"/>
</c:Object>
</o:AssociationSymbol>
<o:GeneralizationSymbol Id="o50">
<a:ModificationDate>1578175870</a:ModificationDate>
<a:Rect>((-34865,1539), (-18865,17539))</a:Rect>
<a:ListOfPoints>((-18865,1539),(-32865,1539),(-34865,17539))</a:ListOfPoints>
<a:ArrowStyle>7</a:ArrowStyle>
<a:LineColor>16744576</a:LineColor>
<a:ShadowColor>12632256</a:ShadowColor>
<a:FontList>CENTER 0 Arial,8,N</a:FontList>
<c:SourceSymbol>
<o:ClassSymbol Ref="o14"/>
</c:SourceSymbol>
<c:DestinationSymbol>
<o:ClassSymbol Ref="o22"/>
</c:DestinationSymbol>
<c:Object>
<o:Generalization Ref="o51"/>
</c:Object>
</o:GeneralizationSymbol>
<o:GeneralizationSymbol Id="o52">
<a:ModificationDate>1578175870</a:ModificationDate>
<a:Rect>((-35365,-10461), (23135,17539))</a:Rect>
<a:ListOfPoints>((23135,-10458),(-34865,-10461),(-34865,17539))</a:ListOfPoints>
<a:ArrowStyle>7</a:ArrowStyle>
<a:LineColor>16744576</a:LineColor>
<a:ShadowColor>12632256</a:ShadowColor>
<a:FontList>CENTER 0 Arial,8,N</a:FontList>
<c:SourceSymbol>
<o:ClassSymbol Ref="o17"/>
</c:SourceSymbol>
<c:DestinationSymbol>
<o:ClassSymbol Ref="o22"/>
</c:DestinationSymbol>
<c:Object>
<o:Generalization Ref="o53"/>
</c:Object>
</o:GeneralizationSymbol>
<o:GeneralizationSymbol Id="o54">
<a:ModificationDate>1578175870</a:ModificationDate>
<a:Rect>((-34865,9539), (11135,17806))</a:Rect>
<a:ListOfPoints>((11135,9539),(11135,15539),(-34865,17539))</a:ListOfPoints>
<a:ArrowStyle>7</a:ArrowStyle>
<a:LineColor>16744576</a:LineColor>
<a:ShadowColor>12632256</a:ShadowColor>
<a:FontList>CENTER 0 Arial,8,N</a:FontList>
<c:SourceSymbol>
<o:ClassSymbol Ref="o7"/>
</c:SourceSymbol>
<c:DestinationSymbol>
<o:ClassSymbol Ref="o22"/>
</c:DestinationSymbol>
<c:Object>
<o:Generalization Ref="o55"/>
</c:Object>
</o:GeneralizationSymbol>
<o:ClassSymbol Id="o22">
<a:ModificationDate>1578175870</a:ModificationDate>
<a:IconMode>-1</a:IconMode>
<a:Rect>((-40220,12220), (-29510,22858))</a:Rect>
<a:LineColor>11184640</a:LineColor>
<a:FillColor>16777136</a:FillColor>
<a:ShadowColor>12632256</a:ShadowColor>
<a:FontList>STRN 0 Arial,8,N
QDNM 0 Arial,8,N
CNTR 0 Arial,8,N
Attributes 0 Arial,8,N
ClassPrimaryAttribute 0 Arial,8,U
Operations 0 Arial,8,N
InnerClassifiers 0 Arial,8,N
LABL 0 Arial,8,N</a:FontList>
<a:BrushStyle>6</a:BrushStyle>
<a:GradientFillMode>65</a:GradientFillMode>
<a:GradientEndColor>16777215</a:GradientEndColor>
<c:Object>
<o:Class Ref="o56"/>
</c:Object>
</o:ClassSymbol>
<o:ClassSymbol Id="o7">
<a:ModificationDate>1578175870</a:ModificationDate>
<a:IconMode>-1</a:IconMode>
<a:Rect>((7904,7629), (14366,11449))</a:Rect>
<a:AutoAdjustToText>0</a:AutoAdjustToText>
<a:LineColor>11184640</a:LineColor>
<a:FillColor>16777136</a:FillColor>
<a:ShadowColor>12632256</a:ShadowColor>
<a:FontList>STRN 0 Arial,8,N
QDNM 0 Arial,8,N
CNTR 0 Arial,8,N
Attributes 0 Arial,8,N
ClassPrimaryAttribute 0 Arial,8,U
Operations 0 Arial,8,N
InnerClassifiers 0 Arial,8,N
LABL 0 Arial,8,N</a:FontList>
<a:BrushStyle>6</a:BrushStyle>
<a:GradientFillMode>65</a:GradientFillMode>
<a:GradientEndColor>16777215</a:GradientEndColor>
<c:Object>
<o:Class Ref="o57"/>
</c:Object>
</o:ClassSymbol>
<o:ClassSymbol Id="o14">
<a:ModificationDate>1578175870</a:ModificationDate>
<a:IconMode>-1</a:IconMode>
<a:Rect>((-21942,-371), (-15788,3450))</a:Rect>
<a:LineColor>11184640</a:LineColor>
<a:FillColor>16777136</a:FillColor>
<a:ShadowColor>12632256</a:ShadowColor>
<a:FontList>STRN 0 Arial,8,N
QDNM 0 Arial,8,N
CNTR 0 Arial,8,N
Attributes 0 Arial,8,N
ClassPrimaryAttribute 0 Arial,8,U
Operations 0 Arial,8,N
InnerClassifiers 0 Arial,8,N
LABL 0 Arial,8,N</a:FontList>
<a:BrushStyle>6</a:BrushStyle>
<a:GradientFillMode>65</a:GradientFillMode>
<a:GradientEndColor>16777215</a:GradientEndColor>
<c:Object>
<o:Class Ref="o58"/>
</c:Object>
</o:ClassSymbol>
<o:ClassSymbol Id="o17">
<a:ModificationDate>1578175870</a:ModificationDate>
<a:IconMode>-1</a:IconMode>
<a:Rect>((20586,-12369), (25684,-8548))</a:Rect>
<a:LineColor>11184640</a:LineColor>
<a:FillColor>16777136</a:FillColor>
<a:ShadowColor>12632256</a:ShadowColor>
<a:FontList>STRN 0 Arial,8,N
QDNM 0 Arial,8,N
CNTR 0 Arial,8,N
Attributes 0 Arial,8,N
ClassPrimaryAttribute 0 Arial,8,U
Operations 0 Arial,8,N
InnerClassifiers 0 Arial,8,N
LABL 0 Arial,8,N</a:FontList>
<a:BrushStyle>6</a:BrushStyle>
<a:GradientFillMode>65</a:GradientFillMode>
<a:GradientEndColor>16777215</a:GradientEndColor>
<c:Object>
<o:Class Ref="o59"/>
</c:Object>
</o:ClassSymbol>
<o:ClassSymbol Id="o8">
<a:ModificationDate>1578175870</a:ModificationDate>
<a:IconMode>-1</a:IconMode>
<a:Rect>((-25070,5681), (-12660,13397))</a:Rect>
<a:LineColor>11184640</a:LineColor>
<a:FillColor>16777136</a:FillColor>
<a:ShadowColor>12632256</a:ShadowColor>
<a:FontList>STRN 0 Arial,8,N
QDNM 0 Arial,8,N
CNTR 0 Arial,8,N
Attributes 0 Arial,8,N
ClassPrimaryAttribute 0 Arial,8,U
Operations 0 Arial,8,N
InnerClassifiers 0 Arial,8,N
LABL 0 Arial,8,N</a:FontList>
<a:BrushStyle>6</a:BrushStyle>
<a:GradientFillMode>65</a:GradientFillMode>
<a:GradientEndColor>16777215</a:GradientEndColor>
<c:Object>
<o:Class Ref="o60"/>
</c:Object>
</o:ClassSymbol>
<o:ClassSymbol Id="o38">
<a:ModificationDate>1578175870</a:ModificationDate>
<a:IconMode>-1</a:IconMode>
<a:Rect>((-8336,-1832), (2606,4910))</a:Rect>
<a:LineColor>11184640</a:LineColor>
<a:FillColor>16777136</a:FillColor>
<a:ShadowColor>12632256</a:ShadowColor>
<a:FontList>STRN 0 Arial,8,N
QDNM 0 Arial,8,N
CNTR 0 Arial,8,N
Attributes 0 Arial,8,N
ClassPrimaryAttribute 0 Arial,8,U
Operations 0 Arial,8,N
InnerClassifiers 0 Arial,8,N
LABL 0 Arial,8,N</a:FontList>
<a:BrushStyle>6</a:BrushStyle>
<a:GradientFillMode>65</a:GradientFillMode>
<a:GradientEndColor>16777215</a:GradientEndColor>
<c:Object>
<o:Class Ref="o61"/>
</c:Object>
</o:ClassSymbol>
<o:ClassSymbol Id="o27">
<a:ModificationDate>1578175870</a:ModificationDate>
<a:IconMode>-1</a:IconMode>
<a:Rect>((20735,-6371), (25535,-2551))</a:Rect>
<a:AutoAdjustToText>0</a:AutoAdjustToText>
<a:LineColor>11184640</a:LineColor>
<a:FillColor>16777136</a:FillColor>
<a:ShadowColor>12632256</a:ShadowColor>
<a:FontList>STRN 0 Arial,8,N
QDNM 0 Arial,8,N
CNTR 0 Arial,8,N
Attributes 0 Arial,8,N
ClassPrimaryAttribute 0 Arial,8,U
Operations 0 Arial,8,N
InnerClassifiers 0 Arial,8,N
LABL 0 Arial,8,N</a:FontList>
<a:BrushStyle>6</a:BrushStyle>
<a:GradientFillMode>65</a:GradientFillMode>
<a:GradientEndColor>16777215</a:GradientEndColor>
<c:Object>
<o:Class Ref="o62"/>
</c:Object>
</o:ClassSymbol>
<o:ClassSymbol Id="o18">
<a:ModificationDate>1578175870</a:ModificationDate>
<a:IconMode>-1</a:IconMode>
<a:Rect>((30050,-6858), (40220,-2064))</a:Rect>
<a:LineColor>11184640</a:LineColor>
<a:FillColor>16777136</a:FillColor>
<a:ShadowColor>12632256</a:ShadowColor>
<a:FontList>STRN 0 Arial,8,N
QDNM 0 Arial,8,N
CNTR 0 Arial,8,N
Attributes 0 Arial,8,N
ClassPrimaryAttribute 0 Arial,8,U
Operations 0 Arial,8,N
InnerClassifiers 0 Arial,8,N
LABL 0 Arial,8,N</a:FontList>
<a:BrushStyle>6</a:BrushStyle>
<a:GradientFillMode>65</a:GradientFillMode>
<a:GradientEndColor>16777215</a:GradientEndColor>
<c:Object>
<o:Class Ref="o63"/>
</c:Object>
</o:ClassSymbol>
<o:ClassSymbol Id="o11">
<a:ModificationDate>1578175870</a:ModificationDate>
<a:IconMode>-1</a:IconMode>
<a:Rect>((-39098,-22858), (-30627,-18064))</a:Rect>
<a:LineColor>16744576</a:LineColor>
<a:FillColor>16765136</a:FillColor>
<a:ShadowColor>12632256</a:ShadowColor>
<a:FontList>STRN 0 Arial,8,N
QDNM 0 Arial,8,N
CNTR 0 Arial,8,N
Attributes 0 Arial,8,N
ClassPrimaryAttribute 0 Arial,8,U
Operations 0 Arial,8,N
InnerClassifiers 0 Arial,8,N
LABL 0 Arial,8,N</a:FontList>
<a:BrushStyle>6</a:BrushStyle>
<a:GradientFillMode>65</a:GradientFillMode>
<a:GradientEndColor>16777215</a:GradientEndColor>
<c:Object>
<o:Class Ref="o64"/>
</c:Object>
</o:ClassSymbol>
<o:ClassSymbol Id="o21">
<a:ModificationDate>1578175870</a:ModificationDate>
<a:IconMode>-1</a:IconMode>
<a:Rect>((30359,14168), (39911,20910))</a:Rect>
<a:LineColor>11184640</a:LineColor>
<a:FillColor>16777136</a:FillColor>
<a:ShadowColor>12632256</a:ShadowColor>
<a:FontList>STRN 0 Arial,8,N
QDNM 0 Arial,8,N
CNTR 0 Arial,8,N
Attributes 0 Arial,8,N
ClassPrimaryAttribute 0 Arial,8,U
Operations 0 Arial,8,N
InnerClassifiers 0 Arial,8,N
LABL 0 Arial,8,N</a:FontList>
<a:BrushStyle>6</a:BrushStyle>
<a:GradientFillMode>65</a:GradientFillMode>
<a:GradientEndColor>16777215</a:GradientEndColor>
<c:Object>
<o:Class Ref="o65"/>
</c:Object>
</o:ClassSymbol>
<o:ClassSymbol Id="o30">
<a:ModificationDate>1578175870</a:ModificationDate>
<a:IconMode>-1</a:IconMode>
<a:Rect>((5625,-1345), (16645,4423))</a:Rect>
<a:LineColor>11184640</a:LineColor>
<a:FillColor>16777136</a:FillColor>
<a:ShadowColor>12632256</a:ShadowColor>
<a:FontList>STRN 0 Arial,8,N
QDNM 0 Arial,8,N
CNTR 0 Arial,8,N
Attributes 0 Arial,8,N
ClassPrimaryAttribute 0 Arial,8,U
Operations 0 Arial,8,N
InnerClassifiers 0 Arial,8,N
LABL 0 Arial,8,N</a:FontList>
<a:BrushStyle>6</a:BrushStyle>
<a:GradientFillMode>65</a:GradientFillMode>
<a:GradientEndColor>16777215</a:GradientEndColor>
<c:Object>
<o:Class Ref="o66"/>
</c:Object>
</o:ClassSymbol>
<o:ClassSymbol Id="o35">
<a:ModificationDate>1578175870</a:ModificationDate>
<a:IconMode>-1</a:IconMode>
<a:Rect>((-25139,-20371), (-16591,-16551))</a:Rect>
<a:LineColor>16744576</a:LineColor>
<a:FillColor>16765136</a:FillColor>
<a:ShadowColor>12632256</a:ShadowColor>
<a:FontList>STRN 0 Arial,8,N
QDNM 0 Arial,8,N
CNTR 0 Arial,8,N
Attributes 0 Arial,8,N
ClassPrimaryAttribute 0 Arial,8,U
Operations 0 Arial,8,N
InnerClassifiers 0 Arial,8,N
LABL 0 Arial,8,N</a:FontList>
<a:BrushStyle>6</a:BrushStyle>
<a:GradientFillMode>65</a:GradientFillMode>
<a:GradientEndColor>16777215</a:GradientEndColor>
<c:Object>
<o:Class Ref="o67"/>
</c:Object>
</o:ClassSymbol>
</c:Symbols>
</o:ClassDiagram>
</c:ClassDiagrams>
<c:DefaultDiagram>
<o:ClassDiagram Ref="o5"/>
</c:DefaultDiagram>
<c:DataFormats>
<o:DataFormat Id="o68">
<a:ObjectID>E57B9158-C30A-4CCD-A987-57B71F9B533C</a:ObjectID>
<a:Name>Format_Mail</a:Name>
<a:Code>FORMAT_MAIL</a:Code>
<a:CreationDate>1575241151</a:CreationDate>
<a:Creator>germa</a:Creator>
<a:ModificationDate>1575241151</a:ModificationDate>
<a:Modifier>germa</a:Modifier>
<a:History>ORG {35940722-2708-4175-BA96-CDE1BCE221C4}
DAT 1575241152</a:History>
<a:DataFormat.Expression>^[a-zA-Z0-9.!#$%&amp;&#39;*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?)*$</a:DataFormat.Expression>
</o:DataFormat>
<o:DataFormat Id="o69">
<a:ObjectID>BFD1DAA8-4E5C-423E-82E2-4AD6EDAFA11E</a:ObjectID>
<a:Name>Format_Code Postal</a:Name>
<a:Code>FORMAT_CODE_POSTAL</a:Code>
<a:CreationDate>1575241151</a:CreationDate>
<a:Creator>germa</a:Creator>
<a:ModificationDate>1575241151</a:ModificationDate>
<a:Modifier>germa</a:Modifier>
<a:History>ORG {25B1B909-84E7-4BBE-BFC6-650F4578200A}
DAT 1575241152</a:History>
<a:DataFormat.Expression>^((0[1-9])|([1-8][0-9])|(9[0-8])|(2A)|(2B))[0-9]{3}$</a:DataFormat.Expression>
</o:DataFormat>
<o:DataFormat Id="o70">
<a:ObjectID>6CC5CEB3-44F1-4761-A8F1-602C986F834C</a:ObjectID>
<a:Name>Format Module</a:Name>
<a:Code>FORMAT_MODULE</a:Code>
<a:CreationDate>1575241151</a:CreationDate>
<a:Creator>germa</a:Creator>
<a:ModificationDate>1575241151</a:ModificationDate>
<a:Modifier>germa</a:Modifier>
<a:History>ORG {05B59129-C53A-498B-8472-9DDC62C0B236}
DAT 1575241152</a:History>
<a:DataFormat.Expression>^[UE]{1}[0,9]?</a:DataFormat.Expression>
</o:DataFormat>
</c:DataFormats>
<c:Classes>
<o:Class Id="o56">
<a:ObjectID>0A6F7642-071F-444E-BF96-4398FEF62A78</a:ObjectID>
<a:Name>Utilisateur</a:Name>
<a:Code>Utilisateur</a:Code>
<a:CreationDate>1575241151</a:CreationDate>
<a:Creator>germa</a:Creator>
<a:ModificationDate>1578175841</a:ModificationDate>
<a:Modifier>germa</a:Modifier>
<a:History>ORG {2297A621-154E-4E42-A152-0284FD30D74F}
DAT 1575241152</a:History>
<a:UseParentNamespace>0</a:UseParentNamespace>
<a:PersistentCode>utilisateur</a:PersistentCode>
<c:Attributes>
<o:Attribute Id="o71">
<a:ObjectID>437559AC-80C1-4E12-B2F4-F5FFF9973E98</a:ObjectID>
<a:Name>Id_Pers</a:Name>
<a:Code>idPers</a:Code>
<a:CreationDate>1575241151</a:CreationDate>
<a:Creator>germa</a:Creator>
<a:ModificationDate>1578175841</a:ModificationDate>
<a:Modifier>germa</a:Modifier>
<a:History>ORG {CCA8C241-1F14-4375-98CD-F2A6FF591372}
DAT 1575241152</a:History>
<a:DataType>long</a:DataType>
<a:PersistentCode>id_pers</a:PersistentCode>
<a:Multiplicity>1..1</a:Multiplicity>
</o:Attribute>
<o:Attribute Id="o72">
<a:ObjectID>23258F72-BBDF-4FED-90DB-824A6A9A3A3E</a:ObjectID>
<a:Name>Firstname</a:Name>
<a:Code>firstname</a:Code>
<a:CreationDate>1575241151</a:CreationDate>
<a:Creator>germa</a:Creator>
<a:ModificationDate>1578175841</a:ModificationDate>
<a:Modifier>germa</a:Modifier>
<a:History>ORG {B9171462-8E6D-4EA8-97CF-0098E19304D3}
DAT 1575241152</a:History>
<a:DataType>String</a:DataType>
<a:PersistentCode>firstname</a:PersistentCode>
<a:Multiplicity>1..1</a:Multiplicity>
</o:Attribute>
<o:Attribute Id="o73">
<a:ObjectID>0F7ABFCD-686C-4AE1-9359-C24ADFCAE265</a:ObjectID>
<a:Name>Lastname</a:Name>
<a:Code>lastname</a:Code>
<a:CreationDate>1575241151</a:CreationDate>
<a:Creator>germa</a:Creator>
<a:ModificationDate>1578175841</a:ModificationDate>
<a:Modifier>germa</a:Modifier>
<a:History>ORG {1BFC8683-3814-46D4-93B5-B8E14EDDB757}
DAT 1575241152</a:History>
<a:DataType>String</a:DataType>
<a:PersistentCode>lastname</a:PersistentCode>
</o:Attribute>
<o:Attribute Id="o74">
<a:ObjectID>F1CB166C-FE30-4A65-924F-E25A0EFEEF67</a:ObjectID>
<a:Name>Genre</a:Name>
<a:Code>genre</a:Code>
<a:CreationDate>1575241151</a:CreationDate>
<a:Creator>germa</a:Creator>
<a:ModificationDate>1578175841</a:ModificationDate>
<a:Modifier>germa</a:Modifier>
<a:History>ORG {4A5DB0CC-03E9-4CA6-A72F-D13377361F12}
DAT 1575241152</a:History>
<a:ListOfValues>M	Masculin
F	Fémini
A	Autre</a:ListOfValues>
<a:DataType>String</a:DataType>
<a:CharacterCase>1</a:CharacterCase>
<a:PersistentCode>genre</a:PersistentCode>
</o:Attribute>
<o:Attribute Id="o75">
<a:ObjectID>8F77A3FB-9AE2-4578-A663-2F91955C3743</a:ObjectID>
<a:Name>Datenaisssance</a:Name>
<a:Code>datenaisssance</a:Code>
<a:CreationDate>1575241151</a:CreationDate>
<a:Creator>germa</a:Creator>
<a:ModificationDate>1578175841</a:ModificationDate>
<a:Modifier>germa</a:Modifier>
<a:History>ORG {AAB23F1F-3587-4817-B9DB-E4C03A454B7F}
DAT 1575241152</a:History>
<a:DataType>Date</a:DataType>
<a:PersistentCode>datenaisssance</a:PersistentCode>
</o:Attribute>
<o:Attribute Id="o76">
<a:ObjectID>631AE350-9E4B-4185-8DD8-F69974633A16</a:ObjectID>
<a:Name>Mail</a:Name>
<a:Code>mail</a:Code>
<a:CreationDate>1575241151</a:CreationDate>
<a:Creator>germa</a:Creator>
<a:ModificationDate>1578175841</a:ModificationDate>
<a:Modifier>germa</a:Modifier>
<a:History>ORG {BCB4959F-1336-4FFB-9A0D-A4253CA017AD}
DAT 1575241152</a:History>
<a:Format>Format_Mail</a:Format>
<a:DataType>String</a:DataType>
<a:PersistentCode>mail</a:PersistentCode>
<c:FormatObjects>
<o:DataFormat Ref="o68"/>
</c:FormatObjects>
</o:Attribute>
<o:Attribute Id="o77">
<a:ObjectID>A928ED00-FDDD-4C3F-B72E-2AFFEAD7B474</a:ObjectID>
<a:Name>Login</a:Name>
<a:Code>login</a:Code>
<a:CreationDate>1575241151</a:CreationDate>
<a:Creator>germa</a:Creator>
<a:ModificationDate>1578175841</a:ModificationDate>
<a:Modifier>germa</a:Modifier>
<a:History>ORG {D2A79312-BF37-4561-916E-E4FD828EEC27}
DAT 1575241152</a:History>
<a:DataType>String</a:DataType>
<a:PersistentCode>login</a:PersistentCode>
<a:Multiplicity>1..1</a:Multiplicity>
</o:Attribute>
<o:Attribute Id="o78">
<a:ObjectID>552CF55B-C773-4252-AE81-77EA6691EE9D</a:ObjectID>
<a:Name>Sha512pass</a:Name>
<a:Code>sha512pass</a:Code>
<a:CreationDate>1575241151</a:CreationDate>
<a:Creator>germa</a:Creator>
<a:ModificationDate>1578175841</a:ModificationDate>
<a:Modifier>germa</a:Modifier>
<a:History>ORG {6FAF6A2B-8A66-489F-A820-5C7BC44D7507}
DAT 1575241152</a:History>
<a:DataType>String</a:DataType>
<a:PersistentCode>sha512pass</a:PersistentCode>
<a:Multiplicity>1..1</a:Multiplicity>
</o:Attribute>
</c:Attributes>
<c:Identifiers>
<o:Identifier Id="o79">
<a:ObjectID>86BF3D01-CEF2-40B2-8257-949DBFDE7E38</a:ObjectID>
<a:Name>Id_Pers</a:Name>
<a:Code>ID_PERS</a:Code>
<a:CreationDate>1575241151</a:CreationDate>
<a:Creator>germa</a:Creator>
<a:ModificationDate>1578175841</a:ModificationDate>
<a:Modifier>germa</a:Modifier>
<a:History>ORG {4119C931-F6CB-4CB7-B3B4-1ED93AD32C20}
DAT 1575241152</a:History>
<c:Identifier.Attributes>
<o:Attribute Ref="o71"/>
</c:Identifier.Attributes>
</o:Identifier>
</c:Identifiers>
<c:PrimaryIdentifier>
<o:Identifier Ref="o79"/>
</c:PrimaryIdentifier>
</o:Class>
<o:Class Id="o57">
<a:ObjectID>E81D6D0F-871D-4FD9-8155-BBB8B80C6C77</a:ObjectID>
<a:Name>Etudiant</a:Name>
<a:Code>Etudiant</a:Code>
<a:CreationDate>1575241151</a:CreationDate>
<a:Creator>germa</a:Creator>
<a:ModificationDate>1578175841</a:ModificationDate>
<a:Modifier>germa</a:Modifier>
<a:History>ORG {9551FB11-FC09-4128-B17B-6E7306BFD186}
DAT 1575241152</a:History>
<a:UseParentNamespace>0</a:UseParentNamespace>
<a:PersistentCode>etudiant</a:PersistentCode>
<c:Attributes>
<o:Attribute Id="o80">
<a:ObjectID>E3B21521-D593-43AB-99D5-EA3FBBB50341</a:ObjectID>
<a:Name>N°etud</a:Name>
<a:Code>n°etud</a:Code>
<a:CreationDate>1575241151</a:CreationDate>
<a:Creator>germa</a:Creator>
<a:ModificationDate>1578175841</a:ModificationDate>
<a:Modifier>germa</a:Modifier>
<a:History>ORG {CCE6DB9B-43CD-42E7-86EE-83703BDEEAF2}
DAT 1575241152</a:History>
<a:DataType>int</a:DataType>
<a:PersistentCode>num_etud</a:PersistentCode>
<a:Multiplicity>1..1</a:Multiplicity>
</o:Attribute>
</c:Attributes>
</o:Class>
<o:Class Id="o58">
<a:ObjectID>A31DD74F-60D0-46D4-A252-3D0FDA9668EB</a:ObjectID>
<a:Name>Professeur</a:Name>
<a:Code>Professeur</a:Code>
<a:CreationDate>1575241151</a:CreationDate>
<a:Creator>germa</a:Creator>
<a:ModificationDate>1578175841</a:ModificationDate>
<a:Modifier>germa</a:Modifier>
<a:History>ORG {90D49C4F-0F9A-4B12-837C-37D361B8FDA6}
DAT 1575241152</a:History>
<a:UseParentNamespace>0</a:UseParentNamespace>
<a:PersistentCode>professeur</a:PersistentCode>
<c:Attributes>
<o:Attribute Id="o81">
<a:ObjectID>0E8A349F-618B-46F5-B428-FFCDB4F67EC9</a:ObjectID>
<a:Name>N°prof</a:Name>
<a:Code>n°prof</a:Code>
<a:CreationDate>1575241151</a:CreationDate>
<a:Creator>germa</a:Creator>
<a:ModificationDate>1578175841</a:ModificationDate>
<a:Modifier>germa</a:Modifier>
<a:History>ORG {4CA2BA45-706C-4E10-9473-2FF46B209A2A}
DAT 1575241152</a:History>
<a:DataType>int</a:DataType>
<a:PersistentCode>num_prof</a:PersistentCode>
<a:Multiplicity>1..1</a:Multiplicity>
</o:Attribute>
</c:Attributes>
</o:Class>
<o:Class Id="o59">
<a:ObjectID>3C9FB33D-F74D-4E2D-9338-D4BDE26D8E98</a:ObjectID>
<a:Name>Responsable</a:Name>
<a:Code>Responsable</a:Code>
<a:CreationDate>1575241151</a:CreationDate>
<a:Creator>germa</a:Creator>
<a:ModificationDate>1578175841</a:ModificationDate>
<a:Modifier>germa</a:Modifier>
<a:History>ORG {B11AB094-15DE-4F9D-ADAC-3A4A87A1027A}
DAT 1575241152</a:History>
<a:UseParentNamespace>0</a:UseParentNamespace>
<a:PersistentCode>responsable</a:PersistentCode>
</o:Class>
<o:Class Id="o60">
<a:ObjectID>0F3DA4A0-107D-4E72-AC4A-652B61340B42</a:ObjectID>
<a:Name>Module (Ue)</a:Name>
<a:Code>Module_Ue_</a:Code>
<a:CreationDate>1575241151</a:CreationDate>
<a:Creator>germa</a:Creator>
<a:ModificationDate>1578175841</a:ModificationDate>
<a:Modifier>germa</a:Modifier>
<a:History>ORG {7D0E4A9D-BBA4-4120-82A7-1B0D2C2EE537}
DAT 1575241152</a:History>
<a:UseParentNamespace>0</a:UseParentNamespace>
<a:PersistentCode>module</a:PersistentCode>
<c:Attributes>
<o:Attribute Id="o82">
<a:ObjectID>CF39E040-8C56-429E-8C80-8113EE07F2B0</a:ObjectID>
<a:Name>Id_Module</a:Name>
<a:Code>idModule</a:Code>
<a:CreationDate>1575241151</a:CreationDate>
<a:Creator>germa</a:Creator>
<a:ModificationDate>1578175841</a:ModificationDate>
<a:Modifier>germa</a:Modifier>
<a:History>ORG {260DAA65-7BC4-43DA-9DEB-E9DD6A3EFEDA}
DAT 1575241152</a:History>
<a:Format>Format Module</a:Format>
<a:DataType>String</a:DataType>
<a:PersistentCode>id_module</a:PersistentCode>
<a:Multiplicity>1..1</a:Multiplicity>
<c:FormatObjects>
<o:DataFormat Ref="o70"/>
</c:FormatObjects>
</o:Attribute>
<o:Attribute Id="o83">
<a:ObjectID>FF4EB2CB-B922-47BA-8CB7-9673E6A81379</a:ObjectID>
<a:Name>Lib Module</a:Name>
<a:Code>libModule</a:Code>
<a:CreationDate>1575241151</a:CreationDate>
<a:Creator>germa</a:Creator>
<a:ModificationDate>1578175841</a:ModificationDate>
<a:Modifier>germa</a:Modifier>
<a:History>ORG {8C7CDAB0-6663-48BB-BC74-AE481F3BC233}
DAT 1575241152</a:History>
<a:DataType>String</a:DataType>
<a:PersistentCode>lib_module</a:PersistentCode>
</o:Attribute>
<o:Attribute Id="o84">
<a:ObjectID>6CB42803-5B63-4697-8BA7-BD9791958FE4</a:ObjectID>
<a:Name>Date_Deb_Module</a:Name>
<a:Code>dateDebModule</a:Code>
<a:CreationDate>1578175779</a:CreationDate>
<a:Creator>germa</a:Creator>
<a:ModificationDate>1578175841</a:ModificationDate>
<a:Modifier>germa</a:Modifier>
<a:History>ORG {0F8ADF91-F6E0-4BD3-A33F-A632BDC3E5DB}
DAT 1578175780</a:History>
<a:DataType>Date</a:DataType>
<a:PersistentCode>date_deb_module</a:PersistentCode>
</o:Attribute>
<o:Attribute Id="o85">
<a:ObjectID>6FDACA6C-5377-48ED-B3CC-12336FA6F18D</a:ObjectID>
<a:Name>Date_Fin_Module</a:Name>
<a:Code>dateFinModule</a:Code>
<a:CreationDate>1578175779</a:CreationDate>
<a:Creator>germa</a:Creator>
<a:ModificationDate>1578175841</a:ModificationDate>
<a:Modifier>germa</a:Modifier>
<a:History>ORG {D4969206-3000-4C51-B0FE-25BE1EC10F5B}
DAT 1578175780</a:History>
<a:DataType>Date</a:DataType>
<a:PersistentCode>date_fin_module</a:PersistentCode>
</o:Attribute>
<o:Attribute Id="o86">
<a:ObjectID>90D0CBAD-6DBF-4158-BF55-20218E7317BE</a:ObjectID>
<a:Name>Coefficient</a:Name>
<a:Code>coefficient</a:Code>
<a:CreationDate>1578175779</a:CreationDate>
<a:Creator>germa</a:Creator>
<a:ModificationDate>1578175841</a:ModificationDate>
<a:Modifier>germa</a:Modifier>
<a:History>ORG {3F9CCEC2-9112-4233-B22C-84A150E4B7CA}
DAT 1578175780</a:History>
<a:DataType>double</a:DataType>
<a:PersistentCode>coefficient</a:PersistentCode>
</o:Attribute>
</c:Attributes>
<c:Identifiers>
<o:Identifier Id="o87">
<a:ObjectID>DE31C11D-363B-4326-96BD-221D371D3511</a:ObjectID>
<a:Name>Id_Module</a:Name>
<a:Code>ID_MODULE</a:Code>
<a:CreationDate>1575241151</a:CreationDate>
<a:Creator>germa</a:Creator>
<a:ModificationDate>1578175841</a:ModificationDate>
<a:Modifier>germa</a:Modifier>
<a:History>ORG {3B8BDB26-027E-4483-8EFF-D3B824396137}
DAT 1575241152</a:History>
<c:Identifier.Attributes>
<o:Attribute Ref="o82"/>
</c:Identifier.Attributes>
</o:Identifier>
</c:Identifiers>
<c:PrimaryIdentifier>
<o:Identifier Ref="o87"/>
</c:PrimaryIdentifier>
</o:Class>
<o:Class Id="o61">
<a:ObjectID>08827F53-0D42-44EE-B818-03953211A05C</a:ObjectID>
<a:Name>Projet</a:Name>
<a:Code>Projet</a:Code>
<a:CreationDate>1575241151</a:CreationDate>
<a:Creator>germa</a:Creator>
<a:ModificationDate>1578175841</a:ModificationDate>
<a:Modifier>germa</a:Modifier>
<a:History>ORG {BA43C678-F5FC-45B4-B13B-3C7E0558AD9B}
DAT 1575241152
ATT PIDTF</a:History>
<a:UseParentNamespace>0</a:UseParentNamespace>
<a:PersistentCode>projet</a:PersistentCode>
<c:Attributes>
<o:Attribute Id="o88">
<a:ObjectID>E662111D-4D0F-4D33-9B55-173BE41F9A7B</a:ObjectID>
<a:Name>Id_Projet</a:Name>
<a:Code>idProjet</a:Code>
<a:CreationDate>1578175779</a:CreationDate>
<a:Creator>germa</a:Creator>
<a:ModificationDate>1578175841</a:ModificationDate>
<a:Modifier>germa</a:Modifier>
<a:History>ORG {90CDF216-05BA-48C8-A561-6E04A1014BEA}
DAT 1578175780</a:History>
<a:DataType>long</a:DataType>
<a:PersistentCode>id_projet</a:PersistentCode>
<a:Multiplicity>1..1</a:Multiplicity>
</o:Attribute>
<o:Attribute Id="o89">
<a:ObjectID>D31F1803-85B5-4395-9AAB-A17DA1437D29</a:ObjectID>
<a:Name>Lib Projet</a:Name>
<a:Code>libProjet</a:Code>
<a:CreationDate>1578175779</a:CreationDate>
<a:Creator>germa</a:Creator>
<a:ModificationDate>1578175841</a:ModificationDate>
<a:Modifier>germa</a:Modifier>
<a:History>ORG {587B89F6-A603-4C1D-82B0-367E4E2E4FD1}
DAT 1578175780</a:History>
<a:DataType>String</a:DataType>
<a:PersistentCode>lib_projet</a:PersistentCode>
<a:Multiplicity>1..1</a:Multiplicity>
</o:Attribute>
<o:Attribute Id="o90">
<a:ObjectID>E2B9B573-B160-445F-A8BE-3CF1FF481FF6</a:ObjectID>
<a:Name>Date Deb Projet</a:Name>
<a:Code>dateDebProjet</a:Code>
<a:CreationDate>1578175779</a:CreationDate>
<a:Creator>germa</a:Creator>
<a:ModificationDate>1578175841</a:ModificationDate>
<a:Modifier>germa</a:Modifier>
<a:History>ORG {FD20FDE8-A8E7-4653-A8C6-8BB7D1A84A24}
DAT 1578175780</a:History>
<a:DataType>Date</a:DataType>
<a:PersistentCode>date_deb_projet</a:PersistentCode>
</o:Attribute>
<o:Attribute Id="o91">
<a:ObjectID>2C5672A0-B620-4D95-BD2C-C5A592441092</a:ObjectID>
<a:Name>Date Fin Projet</a:Name>
<a:Code>dateFinProjet</a:Code>
<a:CreationDate>1578175779</a:CreationDate>
<a:Creator>germa</a:Creator>
<a:ModificationDate>1578175841</a:ModificationDate>
<a:Modifier>germa</a:Modifier>
<a:History>ORG {65E5AE80-F4BA-410F-B26B-E0F76CF06634}
DAT 1578175780</a:History>
<a:DataType>Date</a:DataType>
<a:PersistentCode>date_fin_projet</a:PersistentCode>
</o:Attribute>
</c:Attributes>
<c:Identifiers>
<o:Identifier Id="o92">
<a:ObjectID>AAE3D7A0-4188-4BF5-926C-FFC6E4AC7952</a:ObjectID>
<a:Name>Id_Projet</a:Name>
<a:Code>ID_PROJET</a:Code>
<a:CreationDate>1578175779</a:CreationDate>
<a:Creator>germa</a:Creator>
<a:ModificationDate>1578175841</a:ModificationDate>
<a:Modifier>germa</a:Modifier>
<a:History>ORG {4764C456-7668-4056-928A-72ACDE6FB0CF}
DAT 1578175780
INS ATTR {90CDF216-05BA-48C8-A561-6E04A1014BEA}</a:History>
<c:Identifier.Attributes>
<o:Attribute Ref="o88"/>
</c:Identifier.Attributes>
</o:Identifier>
</c:Identifiers>
<c:PrimaryIdentifier>
<o:Identifier Ref="o92"/>
</c:PrimaryIdentifier>
</o:Class>
<o:Class Id="o62">
<a:ObjectID>15279DFB-A223-432B-8D6D-065264693142</a:ObjectID>
<a:Name>Stage</a:Name>
<a:Code>Stage</a:Code>
<a:CreationDate>1575241151</a:CreationDate>
<a:Creator>germa</a:Creator>
<a:ModificationDate>1578175841</a:ModificationDate>
<a:Modifier>germa</a:Modifier>
<a:History>ORG {E7DD9B15-CE6D-4F94-A306-CC59BC0C78EF}
DAT 1575241152
ATT PIDTF</a:History>
<a:UseParentNamespace>0</a:UseParentNamespace>
<a:PersistentCode>stage</a:PersistentCode>
<c:Attributes>
<o:Attribute Id="o93">
<a:ObjectID>0228729A-F937-4A9F-9BCF-A8A279F92681</a:ObjectID>
<a:Name>Id_Stage</a:Name>
<a:Code>idStage</a:Code>
<a:CreationDate>1578175779</a:CreationDate>
<a:Creator>germa</a:Creator>
<a:ModificationDate>1578175841</a:ModificationDate>
<a:Modifier>germa</a:Modifier>
<a:History>ORG {7EAE7DD9-1F04-4C1B-8844-D231B9BD5144}
DAT 1578175780</a:History>
<a:DataType>long</a:DataType>
<a:PersistentCode>id_stage</a:PersistentCode>
<a:Multiplicity>1..1</a:Multiplicity>
</o:Attribute>
<o:Attribute Id="o94">
<a:ObjectID>BE5BEA36-E567-4865-B6EE-FB654215BE4D</a:ObjectID>
<a:Name>Lib Stage</a:Name>
<a:Code>libStage</a:Code>
<a:CreationDate>1578175779</a:CreationDate>
<a:Creator>germa</a:Creator>
<a:ModificationDate>1578175841</a:ModificationDate>
<a:Modifier>germa</a:Modifier>
<a:History>ORG {6B2F89E4-53E9-45BC-B404-805C70A9FB93}
DAT 1578175780</a:History>
<a:DataType>String</a:DataType>
<a:PersistentCode>lib_stage</a:PersistentCode>
</o:Attribute>
<o:Attribute Id="o95">
<a:ObjectID>D0054F98-A611-4B20-B05E-B35D695C7660</a:ObjectID>
<a:Name>Date Deb Stage</a:Name>
<a:Code>dateDebStage</a:Code>
<a:CreationDate>1578175779</a:CreationDate>
<a:Creator>germa</a:Creator>
<a:ModificationDate>1578175841</a:ModificationDate>
<a:Modifier>germa</a:Modifier>
<a:History>ORG {E9C55943-1952-47FD-93DF-0089FA1F94A0}
DAT 1578175780</a:History>
<a:DataType>Date</a:DataType>
<a:PersistentCode>date_deb_stage</a:PersistentCode>
<a:Multiplicity>1..1</a:Multiplicity>
</o:Attribute>
<o:Attribute Id="o96">
<a:ObjectID>A3CC466B-1219-47FA-89FC-D5356BA833DE</a:ObjectID>
<a:Name>Date Fin Stage</a:Name>
<a:Code>dateFinStage</a:Code>
<a:CreationDate>1578175779</a:CreationDate>
<a:Creator>germa</a:Creator>
<a:ModificationDate>1578175841</a:ModificationDate>
<a:Modifier>germa</a:Modifier>
<a:History>ORG {06079C10-0BDD-487F-8331-6B0C50D1FFBA}
DAT 1578175780</a:History>
<a:DataType>Date</a:DataType>
<a:PersistentCode>date_fin_stage</a:PersistentCode>
<a:Multiplicity>1..1</a:Multiplicity>
</o:Attribute>
</c:Attributes>
<c:Identifiers>
<o:Identifier Id="o97">
<a:ObjectID>27D4A7CB-7EF8-4C19-B199-D07F77CDA2DD</a:ObjectID>
<a:Name>Id_Stage</a:Name>
<a:Code>ID_STAGE</a:Code>
<a:CreationDate>1578175779</a:CreationDate>
<a:Creator>germa</a:Creator>
<a:ModificationDate>1578175841</a:ModificationDate>
<a:Modifier>germa</a:Modifier>
<a:History>ORG {98C4B203-EEB1-47F5-99EA-738369ABE7E9}
DAT 1578175780
INS ATTR {7EAE7DD9-1F04-4C1B-8844-D231B9BD5144}</a:History>
<c:Identifier.Attributes>
<o:Attribute Ref="o93"/>
</c:Identifier.Attributes>
</o:Identifier>
</c:Identifiers>
<c:PrimaryIdentifier>
<o:Identifier Ref="o97"/>
</c:PrimaryIdentifier>
</o:Class>
<o:Class Id="o63">
<a:ObjectID>07E6CAB1-511B-4958-A781-9F0EAA9F0B69</a:ObjectID>
<a:Name>Entreprise</a:Name>
<a:Code>Entreprise</a:Code>
<a:CreationDate>1575241151</a:CreationDate>
<a:Creator>germa</a:Creator>
<a:ModificationDate>1578175841</a:ModificationDate>
<a:Modifier>germa</a:Modifier>
<a:History>ORG {63DDB47C-0982-4441-899A-FFD3D339E427}
DAT 1575241152</a:History>
<a:UseParentNamespace>0</a:UseParentNamespace>
<a:PersistentCode>entreprise</a:PersistentCode>
<c:Attributes>
<o:Attribute Id="o98">
<a:ObjectID>AB17B402-FCED-4344-917B-CF7A6AD6C40A</a:ObjectID>
<a:Name>Id_Entreprise</a:Name>
<a:Code>idEntreprise</a:Code>
<a:CreationDate>1575241151</a:CreationDate>
<a:Creator>germa</a:Creator>
<a:ModificationDate>1578175841</a:ModificationDate>
<a:Modifier>germa</a:Modifier>
<a:History>ORG {019A82C3-8340-4117-96F4-3569454EC7F1}
DAT 1575241152</a:History>
<a:DataType>long</a:DataType>
<a:PersistentCode>id_entreprise</a:PersistentCode>
<a:Multiplicity>1..1</a:Multiplicity>
</o:Attribute>
<o:Attribute Id="o99">
<a:ObjectID>DFB3A6FF-7B2F-4709-AF82-B1703E155386</a:ObjectID>
<a:Name>Lib Entreprise</a:Name>
<a:Code>libEntreprise</a:Code>
<a:CreationDate>1575241151</a:CreationDate>
<a:Creator>germa</a:Creator>
<a:ModificationDate>1578175841</a:ModificationDate>
<a:Modifier>germa</a:Modifier>
<a:History>ORG {5D5EADB5-468F-442B-A5E6-5D08EE1BC59E}
DAT 1575241152</a:History>
<a:DataType>String</a:DataType>
<a:PersistentCode>lib_entreprise</a:PersistentCode>
</o:Attribute>
</c:Attributes>
<c:Identifiers>
<o:Identifier Id="o100">
<a:ObjectID>F7DB4522-97AE-48C7-BB72-B488198CEB93</a:ObjectID>
<a:Name>Id_Entreprise</a:Name>
<a:Code>ID_ENTREPRISE</a:Code>
<a:CreationDate>1575241151</a:CreationDate>
<a:Creator>germa</a:Creator>
<a:ModificationDate>1578175841</a:ModificationDate>
<a:Modifier>germa</a:Modifier>
<a:History>ORG {0EF59660-130B-47C3-AD17-1F5157E06682}
DAT 1575241152</a:History>
<c:Identifier.Attributes>
<o:Attribute Ref="o98"/>
</c:Identifier.Attributes>
</o:Identifier>
</c:Identifiers>
<c:PrimaryIdentifier>
<o:Identifier Ref="o100"/>
</c:PrimaryIdentifier>
</o:Class>
<o:Class Id="o65">
<a:ObjectID>46D397BE-96E3-4460-A804-53AE4A1173D1</a:ObjectID>
<a:Name>Adresse</a:Name>
<a:Code>Adresse</a:Code>
<a:CreationDate>1575241151</a:CreationDate>
<a:Creator>germa</a:Creator>
<a:ModificationDate>1578175841</a:ModificationDate>
<a:Modifier>germa</a:Modifier>
<a:History>ORG {68D536BA-2AE3-48E9-B256-595E52C06A6E}
DAT 1575241152</a:History>
<a:UseParentNamespace>0</a:UseParentNamespace>
<a:PersistentCode>adresse</a:PersistentCode>
<c:Attributes>
<o:Attribute Id="o101">
<a:ObjectID>861C47DA-B061-464C-9FE4-12079D2B3878</a:ObjectID>
<a:Name>Id_Adresse</a:Name>
<a:Code>idAdresse</a:Code>
<a:CreationDate>1575241151</a:CreationDate>
<a:Creator>germa</a:Creator>
<a:ModificationDate>1578175841</a:ModificationDate>
<a:Modifier>germa</a:Modifier>
<a:History>ORG {B9C1E526-E537-425D-BE4F-FE72758EC5AC}
DAT 1575241152</a:History>
<a:DataType>long</a:DataType>
<a:PersistentCode>id_adresse</a:PersistentCode>
<a:Multiplicity>1..1</a:Multiplicity>
</o:Attribute>
<o:Attribute Id="o102">
<a:ObjectID>C43C4064-CE97-4009-B2DC-8057F49C7C60</a:ObjectID>
<a:Name>Rue</a:Name>
<a:Code>rue</a:Code>
<a:CreationDate>1575241151</a:CreationDate>
<a:Creator>germa</a:Creator>
<a:ModificationDate>1578175841</a:ModificationDate>
<a:Modifier>germa</a:Modifier>
<a:History>ORG {7AF43928-41E0-4A28-9E2F-025E7C9E3A68}
DAT 1575241152</a:History>
<a:DataType>String</a:DataType>
<a:PersistentCode>rue</a:PersistentCode>
</o:Attribute>
<o:Attribute Id="o103">
<a:ObjectID>C54985D6-8D15-430A-A0B8-F971555B7CCB</a:ObjectID>
<a:Name>Code Postal</a:Name>
<a:Code>codePostal</a:Code>
<a:CreationDate>1575241151</a:CreationDate>
<a:Creator>germa</a:Creator>
<a:ModificationDate>1578175841</a:ModificationDate>
<a:Modifier>germa</a:Modifier>
<a:History>ORG {324A7504-F47E-4741-AF1A-EDED89F12A42}
DAT 1575241152</a:History>
<a:Format>Format_Code Postal</a:Format>
<a:DataType>String</a:DataType>
<a:PersistentCode>code_postal</a:PersistentCode>
<c:FormatObjects>
<o:DataFormat Ref="o69"/>
</c:FormatObjects>
</o:Attribute>
<o:Attribute Id="o104">
<a:ObjectID>211C2C9D-2E10-4043-BD9A-75BAB7E167CC</a:ObjectID>
<a:Name>Ville</a:Name>
<a:Code>ville</a:Code>
<a:CreationDate>1575241151</a:CreationDate>
<a:Creator>germa</a:Creator>
<a:ModificationDate>1578175841</a:ModificationDate>
<a:Modifier>germa</a:Modifier>
<a:History>ORG {2A255B69-DD05-4AB1-BE0F-1C665342C11C}
DAT 1575241152</a:History>
<a:DataType>String</a:DataType>
<a:PersistentCode>ville</a:PersistentCode>
</o:Attribute>
</c:Attributes>
<c:Identifiers>
<o:Identifier Id="o105">
<a:ObjectID>D735307C-D287-4AA0-8773-83FE6C1CEF20</a:ObjectID>
<a:Name>Id_Adresse</a:Name>
<a:Code>ID_ADRESSE</a:Code>
<a:CreationDate>1575241151</a:CreationDate>
<a:Creator>germa</a:Creator>
<a:ModificationDate>1578175841</a:ModificationDate>
<a:Modifier>germa</a:Modifier>
<a:History>ORG {22DB9941-7E4D-4E24-BBD8-31DB0524310B}
DAT 1575241152</a:History>
<c:Identifier.Attributes>
<o:Attribute Ref="o101"/>
</c:Identifier.Attributes>
</o:Identifier>
</c:Identifiers>
<c:PrimaryIdentifier>
<o:Identifier Ref="o105"/>
</c:PrimaryIdentifier>
</o:Class>
<o:Class Id="o66">
<a:ObjectID>81837431-FA5F-4617-8B1C-8B4DBEBA174F</a:ObjectID>
<a:Name>Proposition</a:Name>
<a:Code>Proposition</a:Code>
<a:CreationDate>1575241151</a:CreationDate>
<a:Creator>germa</a:Creator>
<a:ModificationDate>1578175841</a:ModificationDate>
<a:Modifier>germa</a:Modifier>
<a:History>ORG {505F863C-8482-47D4-A327-FDBEA777010D}
DAT 1575241152</a:History>
<a:UseParentNamespace>0</a:UseParentNamespace>
<a:PersistentCode>proposition</a:PersistentCode>
<c:Attributes>
<o:Attribute Id="o106">
<a:ObjectID>0DD82DE1-B143-421A-B8AC-1B144D6628D0</a:ObjectID>
<a:Name>Id Proposition</a:Name>
<a:Code>idProposition</a:Code>
<a:CreationDate>1575241151</a:CreationDate>
<a:Creator>germa</a:Creator>
<a:ModificationDate>1578175841</a:ModificationDate>
<a:Modifier>germa</a:Modifier>
<a:History>ORG {F8991FA1-3421-494C-8A1F-71E3CDA0F1ED}
DAT 1575241152</a:History>
<a:DataType>long</a:DataType>
<a:PersistentCode>id_proposition</a:PersistentCode>
<a:Multiplicity>1..1</a:Multiplicity>
</o:Attribute>
<o:Attribute Id="o107">
<a:ObjectID>97F2AA5C-B540-4E86-B5BB-76980E290757</a:ObjectID>
<a:Name>Description</a:Name>
<a:Code>description</a:Code>
<a:CreationDate>1575241151</a:CreationDate>
<a:Creator>germa</a:Creator>
<a:ModificationDate>1578175841</a:ModificationDate>
<a:Modifier>germa</a:Modifier>
<a:History>ORG {9759B915-E9C2-4FA3-8025-E78791AB3B5A}
DAT 1575241152</a:History>
<a:DataType>String</a:DataType>
<a:PersistentCode>description</a:PersistentCode>
</o:Attribute>
<o:Attribute Id="o108">
<a:ObjectID>78714CE5-38BB-4B38-9C36-9A60787E829A</a:ObjectID>
<a:Name>Acceptée</a:Name>
<a:Code>acceptee</a:Code>
<a:CreationDate>1575241151</a:CreationDate>
<a:Creator>germa</a:Creator>
<a:ModificationDate>1578175841</a:ModificationDate>
<a:Modifier>germa</a:Modifier>
<a:History>ORG {73691AB7-2769-43A3-9E71-73C68D1E523D}
DAT 1575241152</a:History>
<a:DataType>boolean</a:DataType>
<a:PersistentCode>acceptee</a:PersistentCode>
</o:Attribute>
</c:Attributes>
<c:Identifiers>
<o:Identifier Id="o109">
<a:ObjectID>8393C363-5A07-4432-A347-70BC2A92CE1B</a:ObjectID>
<a:Name>Id_Proposition</a:Name>
<a:Code>ID_PROPOSITION</a:Code>
<a:CreationDate>1575241151</a:CreationDate>
<a:Creator>germa</a:Creator>
<a:ModificationDate>1578175841</a:ModificationDate>
<a:Modifier>germa</a:Modifier>
<a:History>ORG {67AD3906-47ED-4466-8B8D-01F5C2C686C0}
DAT 1575241152</a:History>
<c:Identifier.Attributes>
<o:Attribute Ref="o106"/>
</c:Identifier.Attributes>
</o:Identifier>
</c:Identifiers>
<c:PrimaryIdentifier>
<o:Identifier Ref="o109"/>
</c:PrimaryIdentifier>
</o:Class>
<o:Class Id="o64">
<a:ObjectID>50B346F2-6DBF-4C2B-BBC9-3E598FB2EDEE</a:ObjectID>
<a:Name>Inscrire</a:Name>
<a:Code>Inscrire</a:Code>
<a:CreationDate>1575241151</a:CreationDate>
<a:Creator>germa</a:Creator>
<a:ModificationDate>1575241151</a:ModificationDate>
<a:Modifier>germa</a:Modifier>
<a:History>ORG {CE77CD81-4D0F-4483-9170-EDCDAD8AAAC0}
DAT 1575241152</a:History>
<a:UseParentNamespace>0</a:UseParentNamespace>
<c:Attributes>
<o:Attribute Id="o110">
<a:ObjectID>7A4484A6-6DFF-4FB5-A34C-0A5E5DD562FC</a:ObjectID>
<a:Name>Note Cc</a:Name>
<a:Code>noteCc</a:Code>
<a:CreationDate>1575241151</a:CreationDate>
<a:Creator>germa</a:Creator>
<a:ModificationDate>1578175841</a:ModificationDate>
<a:Modifier>germa</a:Modifier>
<a:History>ORG {6B43AA6E-9F9F-428A-AF21-6A694D98A455}
DAT 1575241152</a:History>
<a:DataType>double</a:DataType>
<a:PersistentCode>note_cc</a:PersistentCode>
</o:Attribute>
<o:Attribute Id="o111">
<a:ObjectID>53169104-7209-4DF4-8D8F-D698C388D216</a:ObjectID>
<a:Name>Note Tp</a:Name>
<a:Code>noteTp</a:Code>
<a:CreationDate>1575241151</a:CreationDate>
<a:Creator>germa</a:Creator>
<a:ModificationDate>1578175841</a:ModificationDate>
<a:Modifier>germa</a:Modifier>
<a:History>ORG {2B981E06-8A5F-400B-AC38-B9D4B6916E8B}
DAT 1575241152</a:History>
<a:DataType>double</a:DataType>
<a:PersistentCode>note_tp</a:PersistentCode>
</o:Attribute>
</c:Attributes>
</o:Class>
<o:Class Id="o67">
<a:ObjectID>15324548-7F5F-4349-89E6-EED4F0BDC476</a:ObjectID>
<a:Name>Candidater</a:Name>
<a:Code>Candidater</a:Code>
<a:CreationDate>1575241151</a:CreationDate>
<a:Creator>germa</a:Creator>
<a:ModificationDate>1575241151</a:ModificationDate>
<a:Modifier>germa</a:Modifier>
<a:History>ORG {5F0B86E4-E22D-4C84-A600-0E3228443860}
DAT 1575241152</a:History>
<a:UseParentNamespace>0</a:UseParentNamespace>
<c:Attributes>
<o:Attribute Id="o112">
<a:ObjectID>BD345363-83A5-4D4A-B8F9-8B66E7D8CB1B</a:ObjectID>
<a:Name>Date Cand</a:Name>
<a:Code>dateCand</a:Code>
<a:CreationDate>1575241151</a:CreationDate>
<a:Creator>germa</a:Creator>
<a:ModificationDate>1578175841</a:ModificationDate>
<a:Modifier>germa</a:Modifier>
<a:History>ORG {F59AAAB8-1D36-4460-AC93-0479E7D07F34}
DAT 1575241152</a:History>
<a:DataType>Date</a:DataType>
<a:PersistentCode>date_cand</a:PersistentCode>
</o:Attribute>
</c:Attributes>
</o:Class>
</c:Classes>
<c:Associations>
<o:Association Id="o9">
<a:ObjectID>7D698016-8703-451F-83A3-2D130379A8E0</a:ObjectID>
<a:Name>Inscrire</a:Name>
<a:Code>inscrire</a:Code>
<a:CreationDate>1575241151</a:CreationDate>
<a:Creator>germa</a:Creator>
<a:ModificationDate>1578175841</a:ModificationDate>
<a:Modifier>germa</a:Modifier>
<a:History>ORG {CE77CD81-4D0F-4483-9170-EDCDAD8AAAC0}
DAT 1575241152</a:History>
<a:RoleAMultiplicity>0..*</a:RoleAMultiplicity>
<a:RoleBMultiplicity>0..*</a:RoleBMultiplicity>
<a:RoleANavigability>1</a:RoleANavigability>
<c:Object1>
<o:Class Ref="o60"/>
</c:Object1>
<c:Object2>
<o:Class Ref="o57"/>
</c:Object2>
</o:Association>
<o:Association Id="o15">
<a:ObjectID>24EEC44E-8DF6-433E-9CFF-D258758C33EE</a:ObjectID>
<a:Name>Enseigner</a:Name>
<a:Code>enseigner</a:Code>
<a:CreationDate>1575241151</a:CreationDate>
<a:Creator>germa</a:Creator>
<a:ModificationDate>1578175841</a:ModificationDate>
<a:Modifier>germa</a:Modifier>
<a:History>ORG {035E1324-776E-4EEF-B0E5-E0FDC525A03D}
DAT 1575241152
ATT PRNT_B
ATT PRNT_A</a:History>
<a:RoleAMultiplicity>0..*</a:RoleAMultiplicity>
<a:RoleBMultiplicity>0..*</a:RoleBMultiplicity>
<a:RoleANavigability>1</a:RoleANavigability>
<a:RoleBNavigability>0</a:RoleBNavigability>
<c:Object1>
<o:Class Ref="o60"/>
</c:Object1>
<c:Object2>
<o:Class Ref="o58"/>
</c:Object2>
</o:Association>
<o:Association Id="o19">
<a:ObjectID>2C7CC440-BF34-45EB-801C-BE1CCCF9F812</a:ObjectID>
<a:Name>Employer</a:Name>
<a:Code>employer</a:Code>
<a:CreationDate>1575241151</a:CreationDate>
<a:Creator>germa</a:Creator>
<a:ModificationDate>1578175841</a:ModificationDate>
<a:Modifier>germa</a:Modifier>
<a:History>ORG {083E8418-731B-4A0A-9FA1-A53636665823}
DAT 1575241152
ATT PRNT_B
ATT PRNT_A</a:History>
<a:RoleAMultiplicity>0..*</a:RoleAMultiplicity>
<a:RoleBMultiplicity>0..1</a:RoleBMultiplicity>
<a:RoleBNavigability>0</a:RoleBNavigability>
<c:Object1>
<o:Class Ref="o63"/>
</c:Object1>
<c:Object2>
<o:Class Ref="o59"/>
</c:Object2>
</o:Association>
<o:Association Id="o23">
<a:ObjectID>9ED25D98-F9AF-4F51-851A-EE1BD2B3465F</a:ObjectID>
<a:Name>Avoir</a:Name>
<a:Code>avoir</a:Code>
<a:CreationDate>1575241151</a:CreationDate>
<a:Creator>germa</a:Creator>
<a:ModificationDate>1578175841</a:ModificationDate>
<a:Modifier>germa</a:Modifier>
<a:History>ORG {0F2EA82A-E59A-4727-9710-5185B3D5D5D7}
DAT 1575241152
ATT PRNT_B
ATT PRNT_A</a:History>
<a:RoleAMultiplicity>0..*</a:RoleAMultiplicity>
<a:RoleBMultiplicity>0..*</a:RoleBMultiplicity>
<a:RoleANavigability>1</a:RoleANavigability>
<a:RoleBNavigability>0</a:RoleBNavigability>
<c:Object1>
<o:Class Ref="o56"/>
</c:Object1>
<c:Object2>
<o:Class Ref="o65"/>
</c:Object2>
</o:Association>
<o:Association Id="o25">
<a:ObjectID>B4049C80-04AC-4DA9-BF90-037A49BA2700</a:ObjectID>
<a:Name>Avoir</a:Name>
<a:Code>avoir</a:Code>
<a:CreationDate>1575241151</a:CreationDate>
<a:Creator>germa</a:Creator>
<a:ModificationDate>1575241151</a:ModificationDate>
<a:Modifier>germa</a:Modifier>
<a:History>ORG {6795ECF2-1C67-4726-8A25-A98CF915A8E2}
DAT 1575241152</a:History>
<a:RoleAMultiplicity>0..*</a:RoleAMultiplicity>
<a:RoleBMultiplicity>0..1</a:RoleBMultiplicity>
<a:RoleANavigability>1</a:RoleANavigability>
<a:RoleBNavigability>0</a:RoleBNavigability>
<c:Object1>
<o:Class Ref="o65"/>
</c:Object1>
<c:Object2>
<o:Class Ref="o63"/>
</c:Object2>
</o:Association>
<o:Association Id="o28">
<a:ObjectID>7D25E541-D532-417D-BB2C-7A144801E1FB</a:ObjectID>
<a:Name>Encadrer</a:Name>
<a:Code>encadrer</a:Code>
<a:CreationDate>1575241151</a:CreationDate>
<a:Creator>germa</a:Creator>
<a:ModificationDate>1578175841</a:ModificationDate>
<a:Modifier>germa</a:Modifier>
<a:History>ORG {11773AF6-A383-416C-AECE-D31394EEE9DF}
DAT 1575241152</a:History>
<a:RoleAMultiplicity>0..*</a:RoleAMultiplicity>
<a:RoleBMultiplicity>0..1</a:RoleBMultiplicity>
<a:RoleBNavigability>0</a:RoleBNavigability>
<c:Object1>
<o:Class Ref="o59"/>
</c:Object1>
<c:Object2>
<o:Class Ref="o62"/>
</c:Object2>
</o:Association>
<o:Association Id="o31">
<a:ObjectID>31984FB8-DB88-442C-AC37-8F55575AC41C</a:ObjectID>
<a:Name>Lier Stage</a:Name>
<a:Code>lierStage</a:Code>
<a:CreationDate>1575241151</a:CreationDate>
<a:Creator>germa</a:Creator>
<a:ModificationDate>1578175841</a:ModificationDate>
<a:Modifier>germa</a:Modifier>
<a:History>ORG {73960BC8-5793-4320-9C9A-71EA3A8A6313}
DAT 1575241152
ATT PRNT_B</a:History>
<a:RoleAMultiplicity>0..*</a:RoleAMultiplicity>
<a:RoleBMultiplicity>0..1</a:RoleBMultiplicity>
<a:RoleANavigability>1</a:RoleANavigability>
<a:RoleBNavigability>0</a:RoleBNavigability>
<c:Object1>
<o:Class Ref="o62"/>
</c:Object1>
<c:Object2>
<o:Class Ref="o66"/>
</c:Object2>
</o:Association>
<o:Association Id="o45">
<a:ObjectID>D804B03F-23A5-4241-985C-5EB33A59DB0E</a:ObjectID>
<a:Name>Lier Projet</a:Name>
<a:Code>lierProjet</a:Code>
<a:CreationDate>1578175779</a:CreationDate>
<a:Creator>germa</a:Creator>
<a:ModificationDate>1578175841</a:ModificationDate>
<a:Modifier>germa</a:Modifier>
<a:History>ORG {FBBBDEC9-82F1-471D-AC40-4371677D9A4D}
DAT 1578175780</a:History>
<a:RoleAMultiplicity>0..*</a:RoleAMultiplicity>
<a:RoleBMultiplicity>0..1</a:RoleBMultiplicity>
<a:RoleANavigability>1</a:RoleANavigability>
<a:RoleBNavigability>0</a:RoleBNavigability>
<c:Object1>
<o:Class Ref="o61"/>
</c:Object1>
<c:Object2>
<o:Class Ref="o66"/>
</c:Object2>
</o:Association>
<o:Association Id="o33">
<a:ObjectID>5CD08B81-B150-4963-8D8E-7082952BF984</a:ObjectID>
<a:Name>Candidater</a:Name>
<a:Code>candidater</a:Code>
<a:CreationDate>1575241151</a:CreationDate>
<a:Creator>germa</a:Creator>
<a:ModificationDate>1578175841</a:ModificationDate>
<a:Modifier>germa</a:Modifier>
<a:History>ORG {5F0B86E4-E22D-4C84-A600-0E3228443860}
DAT 1575241152</a:History>
<a:RoleAMultiplicity>0..*</a:RoleAMultiplicity>
<a:RoleBMultiplicity>0..*</a:RoleBMultiplicity>
<a:RoleANavigability>1</a:RoleANavigability>
<c:Object1>
<o:Class Ref="o57"/>
</c:Object1>
<c:Object2>
<o:Class Ref="o66"/>
</c:Object2>
</o:Association>
<o:Association Id="o39">
<a:ObjectID>AC92C3F6-BA86-476D-BB73-7CF55806DFC6</a:ObjectID>
<a:Name>Proposer Projet</a:Name>
<a:Code>proposerProjet</a:Code>
<a:CreationDate>1575241151</a:CreationDate>
<a:Creator>germa</a:Creator>
<a:ModificationDate>1578175841</a:ModificationDate>
<a:Modifier>germa</a:Modifier>
<a:History>ORG {EA5BEA4F-F05C-4AFF-8F6E-4F4DC81F0A01}
DAT 1575241152
ATT PRNT_A</a:History>
<a:RoleAMultiplicity>0..*</a:RoleAMultiplicity>
<a:RoleBMultiplicity>0..1</a:RoleBMultiplicity>
<a:RoleANavigability>1</a:RoleANavigability>
<a:RoleBNavigability>0</a:RoleBNavigability>
<c:Object1>
<o:Class Ref="o58"/>
</c:Object1>
<c:Object2>
<o:Class Ref="o61"/>
</c:Object2>
</o:Association>
<o:Association Id="o49">
<a:ObjectID>AB0FD32C-CF12-4DC5-A1F0-0DA0CBC8E283</a:ObjectID>
<a:Name>Proposer Stage</a:Name>
<a:Code>proposerStage</a:Code>
<a:CreationDate>1578175779</a:CreationDate>
<a:Creator>germa</a:Creator>
<a:ModificationDate>1578175841</a:ModificationDate>
<a:Modifier>germa</a:Modifier>
<a:History>ORG {8AFC8DC2-E533-4FA3-A2F8-B553B7D2CA2C}
DAT 1578175780</a:History>
<a:RoleAMultiplicity>0..*</a:RoleAMultiplicity>
<a:RoleBMultiplicity>0..1</a:RoleBMultiplicity>
<a:RoleANavigability>1</a:RoleANavigability>
<a:RoleBNavigability>0</a:RoleBNavigability>
<c:Object1>
<o:Class Ref="o58"/>
</c:Object1>
<c:Object2>
<o:Class Ref="o62"/>
</c:Object2>
</o:Association>
<o:Association Id="o41">
<a:ObjectID>22214702-227C-4AA9-8E20-19B87D9DCFE5</a:ObjectID>
<a:Name>Réaliser Projet</a:Name>
<a:Code>realiserProjet</a:Code>
<a:CreationDate>1575241151</a:CreationDate>
<a:Creator>germa</a:Creator>
<a:ModificationDate>1575241151</a:ModificationDate>
<a:Modifier>germa</a:Modifier>
<a:History>ORG {82937F1B-9697-4541-B79C-BEEF6FD86E13}
DAT 1575241152</a:History>
<a:RoleAMultiplicity>0..*</a:RoleAMultiplicity>
<a:RoleBMultiplicity>0..1</a:RoleBMultiplicity>
<a:RoleANavigability>1</a:RoleANavigability>
<a:RoleBNavigability>0</a:RoleBNavigability>
<c:Object1>
<o:Class Ref="o61"/>
</c:Object1>
<c:Object2>
<o:Class Ref="o57"/>
</c:Object2>
</o:Association>
<o:Association Id="o43">
<a:ObjectID>998B964C-BE88-475B-B827-0EED8F6665B8</a:ObjectID>
<a:Name>Réaliser Stage</a:Name>
<a:Code>realiserStage</a:Code>
<a:CreationDate>1575241151</a:CreationDate>
<a:Creator>germa</a:Creator>
<a:ModificationDate>1575241151</a:ModificationDate>
<a:Modifier>germa</a:Modifier>
<a:History>ORG {48242FD1-6AE7-46FE-8D66-4040371B57C2}
DAT 1575241152</a:History>
<a:RoleAMultiplicity>0..*</a:RoleAMultiplicity>
<a:RoleBMultiplicity>0..1</a:RoleBMultiplicity>
<a:RoleANavigability>1</a:RoleANavigability>
<a:RoleBNavigability>0</a:RoleBNavigability>
<c:Object1>
<o:Class Ref="o62"/>
</c:Object1>
<c:Object2>
<o:Class Ref="o57"/>
</c:Object2>
</o:Association>
<o:Association Id="o47">
<a:ObjectID>6499B523-6440-4A54-9C9A-A5631FE5CEF5</a:ObjectID>
<a:Name>Se Réaliser</a:Name>
<a:Code>seRealiser</a:Code>
<a:CreationDate>1578175779</a:CreationDate>
<a:Creator>germa</a:Creator>
<a:ModificationDate>1578175841</a:ModificationDate>
<a:Modifier>germa</a:Modifier>
<a:History>ORG {BEA940B4-3998-4D6A-8AA8-B24163504850}
DAT 1578175780</a:History>
<a:RoleAMultiplicity>0..*</a:RoleAMultiplicity>
<a:RoleBMultiplicity>0..1</a:RoleBMultiplicity>
<a:RoleANavigability>1</a:RoleANavigability>
<a:RoleBNavigability>0</a:RoleBNavigability>
<c:Object1>
<o:Class Ref="o63"/>
</c:Object1>
<c:Object2>
<o:Class Ref="o62"/>
</c:Object2>
</o:Association>
</c:Associations>
<c:Generalizations>
<o:Generalization Id="o51">
<a:ObjectID>46C3BA4A-6BE3-4497-9EF1-104DE97B3402</a:ObjectID>
<a:Name>H Tilisateur</a:Name>
<a:Code>H_Tilisateur</a:Code>
<a:CreationDate>1575241151</a:CreationDate>
<a:Creator>germa</a:Creator>
<a:ModificationDate>1578175841</a:ModificationDate>
<a:Modifier>germa</a:Modifier>
<a:History>ORG {951BBFC7-AC47-4583-B9A8-15440331BF2C}
DAT 1575241152</a:History>
<c:Object1>
<o:Class Ref="o56"/>
</c:Object1>
<c:Object2>
<o:Class Ref="o58"/>
</c:Object2>
</o:Generalization>
<o:Generalization Id="o53">
<a:ObjectID>D94AC028-C3A6-481C-959A-16A958FB4829</a:ObjectID>
<a:Name>H Tilisateur</a:Name>
<a:Code>H_Tilisateur</a:Code>
<a:CreationDate>1575241151</a:CreationDate>
<a:Creator>germa</a:Creator>
<a:ModificationDate>1578175841</a:ModificationDate>
<a:Modifier>germa</a:Modifier>
<a:History>ORG {A981FFC4-3B4E-456D-8C78-9E642EFC61D6}
DAT 1575241152</a:History>
<c:Object1>
<o:Class Ref="o56"/>
</c:Object1>
<c:Object2>
<o:Class Ref="o59"/>
</c:Object2>
</o:Generalization>
<o:Generalization Id="o55">
<a:ObjectID>E05335B2-B35A-4902-814C-F7CDCD05A499</a:ObjectID>
<a:Name>H Tilisateur</a:Name>
<a:Code>H_Tilisateur</a:Code>
<a:CreationDate>1575241151</a:CreationDate>
<a:Creator>germa</a:Creator>
<a:ModificationDate>1578175841</a:ModificationDate>
<a:Modifier>germa</a:Modifier>
<a:History>ORG {A637B511-99F2-48F0-91A5-C5F08E5E9226}
DAT 1575241152</a:History>
<c:Object1>
<o:Class Ref="o56"/>
</c:Object1>
<c:Object2>
<o:Class Ref="o57"/>
</c:Object2>
</o:Generalization>
</c:Generalizations>
<c:AssociationClassLinks>
<o:AssociationClassLink Id="o12">
<a:ObjectID>059C4E77-6111-4AA4-85DF-1A7B072AC76C</a:ObjectID>
<a:CreationDate>0</a:CreationDate>
<a:Creator/>
<a:ModificationDate>1578175841</a:ModificationDate>
<a:Modifier>germa</a:Modifier>
<c:Object1>
<o:Class Ref="o64"/>
</c:Object1>
<c:Object2>
<o:Association Ref="o9"/>
</c:Object2>
</o:AssociationClassLink>
<o:AssociationClassLink Id="o36">
<a:ObjectID>70807C5C-F592-4C20-B1F9-E97FDE5867A7</a:ObjectID>
<a:CreationDate>0</a:CreationDate>
<a:Creator/>
<a:ModificationDate>1578175841</a:ModificationDate>
<a:Modifier>germa</a:Modifier>
<c:Object1>
<o:Class Ref="o67"/>
</c:Object1>
<c:Object2>
<o:Association Ref="o33"/>
</c:Object2>
</o:AssociationClassLink>
</c:AssociationClassLinks>
<c:TargetModels>
<o:TargetModel Id="o113">
<a:ObjectID>803D4010-D9B3-4A38-AB8F-21F105C869C0</a:ObjectID>
<a:Name>Analyse</a:Name>
<a:Code>Analysis</a:Code>
<a:CreationDate>1575241116</a:CreationDate>
<a:Creator>germa</a:Creator>
<a:ModificationDate>1012556774</a:ModificationDate>
<a:Modifier>germa</a:Modifier>
<a:TargetModelURL>file:///%[XOL]%/analysis.xol</a:TargetModelURL>
<a:TargetModelID>87317290-AF03-469F-BC1E-99593F18A4AB</a:TargetModelID>
<a:TargetModelClassID>1811206C-1A4B-11D1-83D9-444553540000</a:TargetModelClassID>
<a:TargetModelLastModificationDate>1012556774</a:TargetModelLastModificationDate>
<c:SessionShortcuts>
<o:Shortcut Ref="o4"/>
</c:SessionShortcuts>
</o:TargetModel>
<o:TargetModel Id="o114">
<a:ObjectID>899EBEB0-D085-41A5-A643-35C2E6A293B8</a:ObjectID>
<a:Name>Mcd Projet S3</a:Name>
<a:Code>mcd_projet_s3</a:Code>
<a:CreationDate>1575241152</a:CreationDate>
<a:Creator>germa</a:Creator>
<a:ModificationDate>1578156348</a:ModificationDate>
<a:Modifier>germa</a:Modifier>
<a:TargetModelURL>file:///D|/projects/iut/projet-s3/analyse_and_bd/powerdesigner/mcd_projs3.mcd</a:TargetModelURL>
<a:TargetModelID>D8B047F4-F430-42D5-945E-EE3914C40E67</a:TargetModelID>
<a:TargetModelClassID>1E597170-9350-11D1-AB3C-0020AF71E433</a:TargetModelClassID>
<a:TargetModelLastModificationDate>1578156348</a:TargetModelLastModificationDate>
<c:SessionShortcuts>
<o:Shortcut Ref="o3"/>
</c:SessionShortcuts>
</o:TargetModel>
</c:TargetModels>
</o:Model>
</c:Children>
</o:RootObject>

</Model>