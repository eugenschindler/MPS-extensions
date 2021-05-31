<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:a25356ac-29ef-4220-b6b1-3b101aba01e6(de.itemis.model.merge.sandbox)">
  <persistence version="9" />
  <languages>
    <use id="539e8939-08ef-497c-a5fd-25dd10137a55" name="de.itemis.model.merge" version="0" />
    <use id="f04d029d-250e-4e43-8c30-28763b47bc55" name="de.itemis.model.merge.test" version="0" />
  </languages>
  <imports>
    <import index="nemv" ref="r:cbfc4dc0-71bd-4b78-b0cd-ef42a7a7042d(de.itemis.model.merge.test.structure)" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS" />
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1154546950173" name="jetbrains.mps.lang.smodel.structure.ConceptReference" flags="ng" index="3gn64h">
        <reference id="1154546997487" name="concept" index="3gnhBz" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="539e8939-08ef-497c-a5fd-25dd10137a55" name="de.itemis.model.merge">
      <concept id="7555554651740524246" name="de.itemis.model.merge.structure.Right" flags="ng" index="3iOvoU" />
      <concept id="1912777765298260981" name="de.itemis.model.merge.structure.MergePolicy" flags="ng" index="1olsrb">
        <child id="1912777765298317937" name="concept" index="1olatf" />
        <child id="1912777765298654333" name="propertyPolicies" index="1orW53" />
        <child id="8422540920006574021" name="childPolicies" index="3JN1Yi" />
      </concept>
      <concept id="1912777765298266446" name="de.itemis.model.merge.structure.EmptyMergeItem" flags="ng" index="1oluLK" />
      <concept id="1912777765298163335" name="de.itemis.model.merge.structure.ModelMergeChunk" flags="ng" index="1olOeT">
        <child id="1912777765298260982" name="items" index="1olsr8" />
      </concept>
      <concept id="1912777765298654154" name="de.itemis.model.merge.structure.Left" flags="ng" index="1orWrO" />
      <concept id="1912777765298652712" name="de.itemis.model.merge.structure.PropertyPolicy" flags="ng" index="1orWGm">
        <reference id="7555554651740432697" name="property" index="3iOP7l" />
        <child id="1912777765298654157" name="action" index="1orWrN" />
      </concept>
      <concept id="2076377354676819067" name="de.itemis.model.merge.structure.ManualAction" flags="ig" index="3DZp98" />
      <concept id="8422540920006554635" name="de.itemis.model.merge.structure.OptionalChildPolicy" flags="ng" index="3JN5hs">
        <reference id="8422540920006554636" name="child" index="3JN5hr" />
        <child id="8422540920006555110" name="action" index="3JN5mL" />
      </concept>
      <concept id="8422540920006539447" name="de.itemis.model.merge.structure.Auto" flags="ng" index="3JN9zw" />
      <concept id="8422540920006612555" name="de.itemis.model.merge.structure.SingletonChildPolicy" flags="ng" index="3JNnos">
        <reference id="8422540920006554636" name="child" index="3JN5hs" />
        <child id="8422540920006555110" name="action" index="3JN5mM" />
      </concept>
    </language>
  </registry>
  <node concept="1olOeT" id="1EbzjT2RMDv">
    <property role="TrG5h" value="NumeroUno" />
    <node concept="1oluLK" id="6zqIeMU2DGt" role="1olsr8" />
    <node concept="1olsrb" id="7jyS5urhSiY" role="1olsr8">
      <node concept="3gn64h" id="7jyS5urhSj6" role="1olatf">
        <ref role="3gnhBz" to="nemv:1EbzjT2RW2_" resolve="Graph" />
      </node>
      <node concept="1orWGm" id="7jyS5urjoBh" role="1orW53">
        <ref role="3iOP7l" to="nemv:7jyS5urbqYt" resolve="loops" />
        <node concept="1orWrO" id="7jyS5urjVio" role="1orWrN" />
      </node>
      <node concept="1orWGm" id="39IQCXdjsoH" role="1orW53">
        <ref role="3iOP7l" to="nemv:7jyS5urb81Q" resolve="directed" />
        <node concept="3iOvoU" id="39IQCXdjsoS" role="1orWrN" />
      </node>
      <node concept="1orWGm" id="7jyS5urklBz" role="1orW53">
        <ref role="3iOP7l" to="nemv:7jyS5urb81S" resolve="multiedge" />
        <node concept="3DZp98" id="7jyS5urklBF" role="1orWrN">
          <node concept="3clFbS" id="7jyS5urklBH" role="2VODD2" />
        </node>
      </node>
      <node concept="1orWGm" id="5nY1J0YOKDV" role="1orW53">
        <ref role="3iOP7l" to="nemv:7jyS5urbqX5" resolve="weighted" />
        <node concept="1orWrO" id="5nY1J0YOVXD" role="1orWrN" />
      </node>
    </node>
    <node concept="1olsrb" id="7jyS5urmdlO" role="1olsr8">
      <node concept="3gn64h" id="7jyS5urmdme" role="1olatf">
        <ref role="3gnhBz" to="nemv:7jyS5urbqX9" resolve="Edge" />
      </node>
      <node concept="1orWGm" id="7jyS5urmdmh" role="1orW53">
        <ref role="3iOP7l" to="nemv:7jyS5urbK_1" resolve="weight" />
        <node concept="1orWrO" id="7jyS5urmdml" role="1orWrN" />
      </node>
      <node concept="3JNnos" id="7jyS5urmdmw" role="3JN1Yi">
        <ref role="3JN5hs" to="nemv:7jyS5urbqXa" resolve="source" />
        <node concept="3JN9zw" id="7jyS5urnwRe" role="3JN5mM" />
      </node>
      <node concept="3JNnos" id="39IQCXdkb6v" role="3JN1Yi">
        <ref role="3JN5hs" to="nemv:7jyS5urbqXc" resolve="target" />
        <node concept="3JN9zw" id="39IQCXdkcuF" role="3JN5mM" />
      </node>
    </node>
    <node concept="1oluLK" id="7jyS5urnwRv" role="1olsr8" />
    <node concept="1olsrb" id="7jyS5urnwSs" role="1olsr8">
      <node concept="3JN5hs" id="39IQCXdlD61" role="3JN1Yi">
        <ref role="3JN5hr" to="nemv:7jyS5urbqY_" resolve="label" />
        <node concept="3JN9zw" id="39IQCXdlD66" role="3JN5mL" />
      </node>
      <node concept="3gn64h" id="7jyS5urnwSZ" role="1olatf">
        <ref role="3gnhBz" to="nemv:1EbzjT2RX4s" resolve="Vertex" />
      </node>
    </node>
    <node concept="1olsrb" id="7jyS5urnwTJ" role="1olsr8">
      <node concept="3gn64h" id="7jyS5urnwUm" role="1olatf">
        <ref role="3gnhBz" to="nemv:7jyS5urbqYF" resolve="PathElement" />
      </node>
      <node concept="3JN5hs" id="7jyS5urnAiN" role="3JN1Yi">
        <ref role="3JN5hr" to="nemv:7jyS5urbqYG" resolve="edgeRef" />
        <node concept="3DZp98" id="7jyS5urnAiW" role="3JN5mL">
          <node concept="3clFbS" id="7jyS5urnAiY" role="2VODD2" />
        </node>
      </node>
    </node>
  </node>
</model>

