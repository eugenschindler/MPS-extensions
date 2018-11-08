<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:4e973dcf-7005-4515-8904-9c030ef293d4(de.itemis.mps.mouselistener.runtime)">
  <persistence version="9" />
  <languages>
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="hyam" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.awt.event(JDK/)" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123165" name="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration" flags="ig" index="3clFb_" />
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS" />
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
      </concept>
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1107796713796" name="jetbrains.mps.baseLanguage.structure.Interface" flags="ig" index="3HP615" />
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="3HP615" id="6mIiWXQhBr2">
    <property role="TrG5h" value="MouseListenerProvider" />
    <node concept="3clFb_" id="6mIiWXQhBry" role="jymVt">
      <property role="TrG5h" value="getMouseListener" />
      <node concept="3uibUv" id="6mIiWXQhC16" role="3clF45">
        <ref role="3uigEE" to="hyam:~MouseListener" resolve="MouseListener" />
      </node>
      <node concept="3Tm1VV" id="6mIiWXQhBr_" role="1B3o_S" />
      <node concept="3clFbS" id="6mIiWXQhBrA" role="3clF47" />
    </node>
    <node concept="3clFb_" id="6mIiWXQhC3v" role="jymVt">
      <property role="TrG5h" value="getMouseMotionListener" />
      <node concept="3uibUv" id="6mIiWXQhC4g" role="3clF45">
        <ref role="3uigEE" to="hyam:~MouseMotionListener" resolve="MouseMotionListener" />
      </node>
      <node concept="3Tm1VV" id="6mIiWXQhC3y" role="1B3o_S" />
      <node concept="3clFbS" id="6mIiWXQhC3z" role="3clF47" />
    </node>
    <node concept="3Tm1VV" id="6mIiWXQhBr3" role="1B3o_S" />
  </node>
</model>

