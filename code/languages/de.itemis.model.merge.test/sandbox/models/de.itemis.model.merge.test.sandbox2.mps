<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:80828f3e-dcbd-4313-bbaf-790066449547(de.itemis.model.merge.test.sandbox2)">
  <persistence version="9" />
  <attribute name="doNotGenerate" value="false" />
  <languages>
    <use id="f04d029d-250e-4e43-8c30-28763b47bc55" name="de.itemis.model.merge.test" version="0" />
  </languages>
  <imports />
  <registry>
    <language id="f04d029d-250e-4e43-8c30-28763b47bc55" name="de.itemis.model.merge.test">
      <concept id="1912777765298352059" name="de.itemis.model.merge.test.structure.EmptyStatement" flags="ng" index="1ol2a5" />
      <concept id="1912777765298352055" name="de.itemis.model.merge.test.structure.GraphStatements" flags="ng" index="1ol2a9">
        <child id="1912777765298352057" name="statements" index="1ol2a7" />
      </concept>
      <concept id="1912777765298356389" name="de.itemis.model.merge.test.structure.Graph" flags="ng" index="1ol4Qr">
        <child id="8422540920006487949" name="edges" index="3JNOZq" />
      </concept>
      <concept id="1912777765298360604" name="de.itemis.model.merge.test.structure.Vertex" flags="ng" index="1ol5Ky">
        <child id="8422540920006487973" name="label" index="3JNOZM" />
      </concept>
      <concept id="8422540920006487881" name="de.itemis.model.merge.test.structure.Edge" flags="ng" index="3JNOWu">
        <child id="6402745832171706219" name="label" index="prww2" />
        <child id="8422540920006487884" name="target" index="3JNOWr" />
        <child id="8422540920006487882" name="source" index="3JNOWt" />
      </concept>
      <concept id="8422540920006487970" name="de.itemis.model.merge.test.structure.Label" flags="ng" index="3JNOZP">
        <property id="8422540920006487971" name="tag" index="3JNOZO" />
      </concept>
      <concept id="8422540920006487979" name="de.itemis.model.merge.test.structure.PathElement" flags="ng" index="3JNOZW">
        <child id="6402745832171706224" name="next" index="prwwp" />
        <child id="8422540920006487980" name="edgeRef" index="3JNOZV" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="1ol2a9" id="5zr7Q_1JULi">
    <property role="TrG5h" value="Graphing1" />
    <node concept="1ol2a5" id="5zr7Q_1JULj" role="1ol2a7" />
    <node concept="1ol4Qr" id="5zr7Q_1JULk" role="1ol2a7">
      <node concept="3JNOWu" id="5zr7Q_1JULo" role="3JNOZq">
        <node concept="1ol5Ky" id="5zr7Q_1JULu" role="3JNOWt">
          <node concept="3JNOZP" id="5zr7Q_1JULG" role="3JNOZM">
            <property role="3JNOZO" value="v3" />
          </node>
        </node>
        <node concept="1ol5Ky" id="5zr7Q_1JULv" role="3JNOWr">
          <node concept="3JNOZP" id="5zr7Q_1JULH" role="3JNOZM">
            <property role="3JNOZO" value="v4" />
          </node>
        </node>
        <node concept="3JNOZP" id="5zr7Q_1JULw" role="prww2">
          <property role="3JNOZO" value="e4" />
        </node>
      </node>
      <node concept="3JNOWu" id="5zr7Q_1JULp" role="3JNOZq">
        <node concept="1ol5Ky" id="5zr7Q_1JULx" role="3JNOWt">
          <node concept="3JNOZP" id="5zr7Q_1JULI" role="3JNOZM">
            <property role="3JNOZO" value="v4" />
          </node>
        </node>
        <node concept="1ol5Ky" id="5zr7Q_1JULy" role="3JNOWr">
          <node concept="3JNOZP" id="5zr7Q_1JULJ" role="3JNOZM">
            <property role="3JNOZO" value="v1" />
          </node>
        </node>
        <node concept="3JNOZP" id="5zr7Q_1JULz" role="prww2">
          <property role="3JNOZO" value="e3" />
        </node>
      </node>
      <node concept="3JNOWu" id="5zr7Q_1JULq" role="3JNOZq">
        <node concept="1ol5Ky" id="5zr7Q_1JUL$" role="3JNOWt">
          <node concept="3JNOZP" id="5zr7Q_1JULK" role="3JNOZM">
            <property role="3JNOZO" value="v1" />
          </node>
        </node>
        <node concept="1ol5Ky" id="5zr7Q_1JUL_" role="3JNOWr">
          <node concept="3JNOZP" id="5zr7Q_1JULL" role="3JNOZM">
            <property role="3JNOZO" value="v3" />
          </node>
        </node>
        <node concept="3JNOZP" id="5zr7Q_1JULA" role="prww2">
          <property role="3JNOZO" value="e2" />
        </node>
      </node>
      <node concept="3JNOWu" id="5zr7Q_1JULr" role="3JNOZq">
        <node concept="1ol5Ky" id="5zr7Q_1JULB" role="3JNOWt">
          <node concept="3JNOZP" id="5zr7Q_1JULM" role="3JNOZM">
            <property role="3JNOZO" value="v1" />
          </node>
        </node>
        <node concept="1ol5Ky" id="5zr7Q_1JULC" role="3JNOWr">
          <node concept="3JNOZP" id="5zr7Q_1JULN" role="3JNOZM">
            <property role="3JNOZO" value="v2" />
          </node>
        </node>
        <node concept="3JNOZP" id="5zr7Q_1JULD" role="prww2">
          <property role="3JNOZO" value="e1" />
        </node>
      </node>
    </node>
    <node concept="1ol2a5" id="5zr7Q_1JULl" role="1ol2a7" />
    <node concept="1ol2a5" id="5zr7Q_1JULm" role="1ol2a7" />
    <node concept="3JNOZW" id="5zr7Q_1JULn" role="1ol2a7">
      <node concept="3JNOZP" id="5zr7Q_1JULs" role="3JNOZV">
        <property role="3JNOZO" value="e2" />
      </node>
      <node concept="3JNOZW" id="5zr7Q_1JULt" role="prwwp">
        <node concept="3JNOZP" id="5zr7Q_1JULE" role="3JNOZV">
          <property role="3JNOZO" value="e4" />
        </node>
        <node concept="3JNOZW" id="5zr7Q_1JULF" role="prwwp">
          <node concept="3JNOZP" id="5zr7Q_1JULO" role="3JNOZV">
            <property role="3JNOZO" value="e3" />
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

