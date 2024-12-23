Shader "Custom/ZZZ"
{
    Properties
    {
        [KeywordEnum(None , Face , Eye , Body)] _Domain ("Domain" , Float) = 0
        
        
        [Header(Main Maps)]
        _Color ("Color" , Color) = (1 , 1 , 1 , 1)
        [NoScaleOffset] _MainTex ("Texture" , 2D) = "white" {}
        [NoScaleOffset] _LightTex ("Light Tex" , 2D) = "linearGray" {}
        [NoScaleOffset] _OtherDataTex ("Other Data Tex" , 2D) = "white" {}
        [NoScaleOffset] _OtherDataTex2 ("Other Data Tex" , 2D) = "white" {}
        
        // 鼻线
        _NoseLineHoriDisp ("Hori Disappear Value" , Range(0.85 , 0.98)) = 0.92    //鼻线消失水平距离
        _NoseLineLkDnDisp ("LookDown Disappear Value" , Range(0.5 , 0.7)) = 0.62    //鼻线消失俯视距离
        
        // 透明度裁剪
        _AlphaClip ("Alpha Clipping" , Range(0 , 1)) = 0.333
        
        _BumpScale ("Normal Scale" , Range(-5 , 5)) = 1
        _Glossiness ("Smoothness" , Range(0 , 1)) = 0.5
        _Metalic ("Metallic" , Range(0 , 1)) = 0
        
        // 模型头部
        [HideInInspector] _HeadCenter ("Head Center" , Vector) = (0 , 0 , 0)
        [HideInInspector] _HeadForward ("Head Forward" , Vector) = (0 , 0 , 0)
        [HideInInspector] _HeadRight ("Head Right" , Vector) = (0 , 0 , 0)
        _HeadSphereRange ("Head Sphere Range" , Range(0 , 1)) = 0
        
        // 环境光颜色影响程度
        _AmbientColorIntensity ("Ambient Intensity" , Range(0 , 1)) = 0.333
    
        [Enum(s0 , 0 , s1 , 1 , s2 , 2 , s3 , 3 , s4 , 4 , s5 , 5)] _SkinMatId ("SkinMatId" , Float) = 0
        
        _ModelSize ("Model Size 1" , Range(0 , 100)) = 1
        _ModelSize2 ("Model Size 2" , Range(0 , 100)) = 1
        _ModelSize3 ("Model Size 3" , Range(0 , 100)) = 1
        _ModelSize4 ("Model Size 4" , Range(0 , 100)) = 1
        _ModelSize5 ("Model Size 5" , Range(0 , 100)) = 1
        
        
        
        [Header(Screen Space Rim)]    //屏幕空间边缘光
        [Toggle(_SCREEN_SPACE_RIM)] _ScreenSpaceRim ("Screen Space Rim" , Float) = 1
        _ScreenSpaceRimWidth ("Screen Space Rim Width" , Range(0 , 1)) = 1
        _ScreenSpaceRimThreshold ("Screen Space Rim Threshold" , Range(0 , 1)) = 0.01
        _ScreenSpaceRimFadeout ("Screen Space Rim Fadeout" , Range(0 , 10)) = 0.5
        _ScreenSpaceRimBrightness ("Screen Space Rim Brightness" , Range(0 , 10)) = 1
        
        
        [Header(Screen Space Shadow)]
        [Toggle(_SCREEN_SPACE_SHADOW)] _ScreenSpaceShadow ("Screen Space Shadow" , Float) = 1
        _ScreenSpaceShadowWidth ("Screen Space Shadow Width" , Range(0 , 1)) = 0.2              //屏幕空间阴影宽度
        _ScreenSpaceShadowThreshold ("Screen Space Shadow Threshold" , Range(0 , 1)) = 0.015    //屏幕空间阴影阈值
        _ScreenSpaceShadowFadeout ("Screen Space Shadow Fadeout" , Range(0 , 10)) = 0.2         //屏幕空间阴影渐隐
        
        
        
        [Header(Diffuse)]   //漫反射
        // 中部
        _ShallowColor ("Shallow Color 1" , Color) = (0.8 , 0.8 , 0.8 , 1)
        _ShallowColor2 ("Shallow Color 2" , Color) = (0.8 , 0.8 , 0.8 , 1)
        _ShallowColor3 ("Shallow Color 3" , Color) = (0.8 , 0.8 , 0.8 , 1)
        _ShallowColor4 ("Shallow Color 4" , Color) = (0.8 , 0.8 , 0.8 , 1)
        _ShallowColor5 ("Shallow Color 5" , Color) = (0.8 , 0.8 , 0.8 , 1)
        
        // 暗部
        _ShadowColor ("Shadow Color 1" , Color) = (0.6 , 0.6 , 0.6 , 1)
        _ShadowColor2 ("Shadow Color 2" , Color) = (0.6 , 0.6 , 0.6 , 1)
        _ShadowColor3 ("Shadow Color 3" , Color) = (0.6 , 0.6 , 0.6 , 1)
        _ShadowColor4 ("Shadow Color 4" , Color) = (0.6 , 0.6 , 0.6 , 1)
        _ShadowColor5 ("Shadow Color 5" , Color) = (0.6 , 0.6 , 0.6 , 1)
        
        // 兰伯特光照阴影二分线各级颜色
        _PostShallowTint ("Post Shallow Tint" , Color) = (1 , 1 , 1 , 1)             //浅色区影响
        _PostShallowFadeTint ("Post Shallow Fade Tint" , Color) = (1 , 1 , 1 , 1)    //浅色渐变区影响
        _PostShadowTint ("Post Shadow Tint" , Color) = (1 , 1 , 1 , 1)               //阴影区影响
        _PostShadowFadeTint ("Post Shadow Fade Tint" , Color) = (1 , 1 , 1 , 1)      //阴影渐变区影响
        _PostFrontTint ("Post Front Tint" , Color) = (1 , 1 , 1 , 1)
        _PostSssTint ("Post SSS Tint" , Color) = (1 , 1 , 1 , 1)                     //次表面散射影响
        
        _AlbedoSmoothness ("Albedo Smoothness" , Range(0 , 1)) = 0.1
        
        
        
        [Header(Specular)]    //高光
        [Toggle] _HighLightShape ("High Light Shape 1" , Float) = 0
        [Toggle] _HighLightShape2 ("High Light Shape 2" , Float) = 0
        [Toggle] _HighLightShape3 ("High Light Shape 3" , Float) = 0
        [Toggle] _HighLightShape4 ("High Light Shape 4" , Float) = 0
        [Toggle] _HighLightShape5 ("High Light Shape 5" , Float) = 0
        
        // 卡通渲染下的风格化高光反射
        _ToonSpecular ("Toon Specular 1" , Range(0 , 1)) = 0.01
        _ToonSpecular2 ("Toon Specular 2" , Range(0 , 1)) = 0.01
        _ToonSpecular3 ("Toon Specular 3" , Range(0 , 1)) = 0.01
        _ToonSpecular4 ("Toon Specular 4" , Range(0 , 1)) = 0.01
        _ToonSpecular5 ("Toon Specular 5" , Range(0 , 1)) = 0.01
        
        // 高光范围
        _SpecularRange ("Specular Range 0"  , Range(0 , 2)) = 1
        _SpecularRange2 ("Specular Range 1"  , Range(0 , 2)) = 1
        _SpecularRange3 ("Specular Range 2"  , Range(0 , 2)) = 1
        _SpecularRange4 ("Specular Range 3"  , Range(0 , 2)) = 1
        _SpecularRange5 ("Specular Range 4"  , Range(0 , 2)) = 1
    
        // 高光软化程度
        _ShapeSoftness ("Shape Softness 1" , Range(0 , 1)) = 0.1
        _ShapeSoftness2 ("Shape Softness 2" , Range(0 , 1)) = 0.1
        _ShapeSoftness3 ("Shape Softness 3" , Range(0 , 1)) = 0.1
        _ShapeSoftness4 ("Shape Softness 4" , Range(0 , 1)) = 0.1
        _ShapeSoftness5 ("Shape Softness 5" , Range(0 , 1)) = 0.1
        
        // 高光强度
        _SpecIntensity ("Specular Intensity" , Range(0 , 1)) = 0.1
        
        // 高光颜色
        [HDR] _SpecularColor ("Specular Color 1" , Color) = (1 , 1 , 1 , 1)
        [HDR] _SpecularColor2 ("Specular Color 2" , Color) = (1 , 1 , 1 , 1)
        [HDR] _SpecularColor3 ("Specular Color 3" , Color) = (1 , 1 , 1 , 1)
        [HDR] _SpecularColor4 ("Specular Color 4" , Color) = (1 , 1 , 1 , 1)
        [HDR] _SpecularColor5 ("Specular Color 5" , Color) = (1 , 1 , 1 , 1)
        
        
        
        [Header(Rim Glow)]    //轮廓光
        // 轮廓光颜色
        [HDR] _RimGlowLightColor ("Light Color 1" , Color) = (0.55 , 0.55 , 0.55 , 1)
        [HDR] _RimGlowLightColor2 ("Light Color 2" , Color) = (0.55 , 0.55 , 0.55 , 1)
        [HDR] _RimGlowLightColor3 ("Light Color 3" , Color) = (0.55 , 0.55 , 0.55 , 1)
        [HDR] _RimGlowLightColor4 ("Light Color 4" , Color) = (0.55 , 0.55 , 0.55 , 1)
        [HDR] _RimGlowLightColor5 ("Light Color 5" , Color) = (0.55 , 0.55 , 0.55 , 1)
        
        // 太阳颜色
        [HDR] _UISunColor ("UI Sun Color 1" , Color) = (1 , 0.92 , 0.9 , 1)
        [HDR] _UISunColor2 ("UI Sun Color 2" , Color) = (1 , 0.92 , 0.9 , 1)
        [HDR] _UISunColor3 ("UI Sun Color 3" , Color) = (1 , 0.92 , 0.9 , 1)
        [HDR] _UISunColor4 ("UI Sun Color 4" , Color) = (1 , 0.92 , 0.9 , 1)
        [HDR] _UISunColor5 ("UI Sun Color 5" , Color) = (1 , 0.92 , 0.9 , 1)
        
        
        
        [Header(Outline)]    //描边
        [Toggle(_OUTLINE_PASS)] _Outline ("Outline" , Float) = 1
        _OutlineColor ("Outline Color 1" , Color) = (1 , 1 , 1 , 1)
        _OutlineColor2 ("Outline Color 2" , Color) = (1 , 1 , 1 , 1)
        _OutlineColor3 ("Outline Color 3" , Color) = (1 , 1 , 1 , 1)
        _OutlineColor4 ("Outline Color 4" , Color) = (1 , 1 , 1 , 1)
        _OutlineColor5 ("Outline Color 5" , Color) = (1 , 1 , 1 , 1)
        
        _OutlineWidth ("Outline Width" , Range(0 , 10)) = 1
        _MaxOutlineZOffset ("Max Outline Z Offset" , Range(0 , 1)) = 0.01
        
        
        
        [Header(MatCap)]    //材质捕获
        [Toggle(_MATCAP_ON)] _MatCap ("MatCap" , Float) = 0
        [NoScaleOffset] _MatCapTex ("MatCap Tex 1" , 2D) = "white" {}
        [NoScaleOffset] _MatCapTex2 ("MatCap Tex 2" , 2D) = "white" {}
        [NoScaleOffset] _MatCapTex3 ("MatCap Tex 3" , 2D) = "white" {}
        [NoScaleOffset] _MatCapTex4 ("MatCap Tex 4" , 2D) = "white" {}
        [NoScaleOffset] _MatCapTex5 ("MatCap Tex 5" , 2D) = "white" {}
        
        _MatCapColorTint ("Color Tint 1" , Color) = (1 , 1 , 1 , 1)
        _MatCapColorTint2 ("Color Tint 2" , Color) = (1 , 1 , 1 , 1)
        _MatCapColorTint3 ("Color Tint 3" , Color) = (1 , 1 , 1 , 1)
        _MatCapColorTint4 ("Color Tint 4" , Color) = (1 , 1 , 1 , 1)
        _MatCapColorTint5 ("Color Tint 5" , Color) = (1 , 1 , 1 , 1)
        
        // 材质捕获过程中的颜色混合系数的放大倍数
        _MatCapColorBurst ("Color Burst 1" , Range(0 , 10)) = 1
        _MatCapColorBurst2 ("Color Burst 2" , Range(0 , 10)) = 1
        _MatCapColorBurst3 ("Color Burst 3" , Range(0 , 10)) = 1
        _MatCapColorBurst4 ("Color Burst 4" , Range(0 , 10)) = 1
        _MatCapColorBurst5 ("Color Burst 5" , Range(0 , 10)) = 1
        
        _MatCapAlphaBurst ("Alpha Burst 1" , Range(0 , 10)) = 1
        _MatCapAlphaBurst2 ("Alpha Burst 2" , Range(0 , 10)) = 1
        _MatCapAlphaBurst3 ("Alpha Burst 3" , Range(0 , 10)) = 1
        _MatCapAlphaBurst4 ("Alpha Burst 4" , Range(0 , 10)) = 1
        _MatCapAlphaBurst5 ("Alpha Burst 5" , Range(0 , 10)) = 1
        
        // 材质捕获过程中的折射模拟
        [Toggle] _MatCapRefract ("MatCap Refract 1" , Float) = 0
        [Toggle] _MatCapRefract2 ("MatCap Refract 2" , Float) = 0
        [Toggle] _MatCapRefract3 ("MatCap Refract 3" , Float) = 0
        [Toggle] _MatCapRefract4 ("MatCap Refract 4" , Float) = 0
        [Toggle] _MatCapRefract5 ("MatCap Refract 5" , Float) = 0
        
        _RefractDepth ("Refract Depth 1" , Range(0 , 2)) = 0.5
        _RefractDepth2 ("Refract Depth 2" , Range(0 , 2)) = 0.5
        _RefractDepth3 ("Refract Depth 3" , Range(0 , 2)) = 0.5
        _RefractDepth4 ("Refract Depth 4" , Range(0 , 2)) = 0.5
        _RefractDepth5 ("Refract Depth 5" , Range(0 , 2)) = 0.5
        
        // 折射参数（模拟色散）
        _RefractParam ("Refract WrapOffset 1" , Vector) = (5 , 5 , 0 , 0)
        _RefractParam2 ("Refract WrapOffset 2" , Vector) = (5 , 5 , 0 , 0)
        _RefractParam3 ("Refract WrapOffset 3" , Vector) = (5 , 5 , 0 , 0)
        _RefractParam4 ("Refract WrapOffset 4" , Vector) = (5 , 5 , 0 , 0)
        _RefractParam5 ("Refract WrapOffset 5" , Vector) = (5 , 5 , 0 , 0)
        
        // 材质捕获混合方式
        [Enum(AlphaBlended , 0 , Add , 1 , Overlay , 2)] _MatCapBlendMode ("MatCap Blend Mode 1" , Float) = 0
        [Enum(AlphaBlended , 0 , Add , 1 , Overlay , 2)] _MatCapBlendMode2 ("MatCap Blend Mode 2" , Float) = 0
        [Enum(AlphaBlended , 0 , Add , 1 , Overlay , 2)] _MatCapBlendMode3 ("MatCap Blend Mode 3" , Float) = 0
        [Enum(AlphaBlended , 0 , Add , 1 , Overlay , 2)] _MatCapBlendMode4 ("MatCap Blend Mode 4" , Float) = 0
        [Enum(AlphaBlended , 0 , Add , 1 , Overlay , 2)] _MatCapBlendMode5 ("MatCap Blend Mode 5" , Float) = 0
        
        
        
        [Header(Option)]    //设置
        [Enum(UnityEngine.Rendering.CullMode)] _Cull ("Cull (Default back)" , Float) = 2    //剔除
        [Enum(Off , 0 , On , 1)] _ZWrite ("ZWrite (Default On)" , Float) = 1    //深度写入
        [Enum(UnityEngine.Rendering.BlendMode)] _SrcBlendMode ("Src Blend Mode (Default One)" , Float) = 1
        [Enum(UnityEngine.Rendering.BlendMode)] _DstBlendMode ("Dst Blend Mode (Default Zero)" , Float) = 0
        [Enum(UnityEngine.Rendering.BlendOp)] _BlendOp ("Blend Option (Default Add)" , Float) = 0
        
        _StencilRef ("Stencil Reference" , Int) = 0    //模板引用值
        // 模板测试操作
        [Enum(UnityEngine.Rendering.CompareFunction)] _StencilComp ("Stencil Compare Function" , Int) = 0    //比较
        [Enum(UnityEngine.Rendering.StencilOp)] _StencilPassOp ("Stencil Pass Operation" , Int) = 0    //通过测试时的操作
        [Enum(UnityEngine.Rendering.StencilOp)] _StencilFailOp ("Stencil Fail Operation" , Int) = 0    //未通过测试时的操作
        [Enum(UnityEngine.Rendering.StencilOp)] _StencilZFailOp ("Stencil Z Fail Operation" , Int) = 0     //通过模板测试但未通过深度测试时的操作
        
        
        
        [Header(SRP Default)]
        [Toggle(_SRP_DEFAULT_PASS)] _SRPDefaultPass ("SRP Default Pass" , Int) = 0
        [Enum(UnityEngine.Rendering.BlendMode)] _SRPSrcBlendMode ("SRP Src Blend Mode (Default One)" , Float) = 1
        [Enum(UnityEngine.Rendering.BlendMode)] _SRPDstBlendMode ("SRP Dst Blend Mode (Default Zero)" , Float) = 0
        [Enum(UnityEngine.Rendering.BlendOp)] _SRPBlendOp ("SRP Blend Option (Default Add)" , Float) = 0
        _SRPStencilRef ("SRP Stencil Reference" , Int) = 0
        [Enum(UnityEngine.Rendering.CompareFunction)] _SRPStencilComp ("SRP Stencil Compare Function" , Int) = 0
        [Enum(UnityEngine.Rendering.StencilOp)] _SRPStencilPassOp ("SRP Stencil Pass Operation" , Int) = 0
        [Enum(UnityEngine.Rendering.StencilOp)] _SRPStencilFailOp ("SRP Stencil Fail Operation" , Int) = 0
        [Enum(UnityEngine.Rendering.StencilOp)] _SRPStencilZFailOp ("SRP Stencil Z Fail Operation" , Int) = 0 
    }
    

    SubShader
    {
        Tags
        {
            "RenderPipeline" = "UniversalPipeline"
            "RenderType" = "Opaque"
        }
        
        LOD 100
        
        
        HLSLINCLUDE

        #pragma shader_feature_local _DOMAIN_FACE
        #pragma shader_feature_local _DOMAIN_EYE
        #pragma shader_feature_local _DOMAIN_BODY

        #pragma multi_compile _ _MAIN_LIGHT_SHADOWS
        #pragma multi_compile _ _MAIN_LIGHT_SHADOWS_CASCADE
        #pragma multi_compile _ _MAIN_LIGHT_SHADOWS_SCREEN

        #pragma multi_compile_fragment _ _LIGHT_LAYERS
        #pragma multi_compile_fragment _ _LIGHT_COOKIES
        #pragma multi_compile_fragment _ _SCREEN_SPACE_OCCLUSION
        #pragma multi_compile_fragment _ _ADDITIONAL_LIGHT_SHADOWS
        #pragma multi_compile_fragment _ _SHADOWS_SOFT
        #pragma multi_compile_fragment _ _REFLECTION_PROBE_BLENDING
        #pragma multi_compile_fragment _ _REFLECTION_PROBE_BOX_PROJECTION
        

        #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Core.hlsl"
        #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Lighting.hlsl"
        #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/DeclareDepthTexture.hlsl"


        // 根据材质ID来选择对应值（扩充到一二三四维类型）
        #define DEFINE_SELECT(TYPE) \
        TYPE select(int id , TYPE e0 , TYPE e1 , TYPE e2 , TYPE e3 , TYPE e4) { return TYPE(id>0 ? (id>1 ? (id>2 ? (id>3 ? e4 : e3) : e2) : e1) : e0); } \
        TYPE##2 select(int id , TYPE##2 e0 , TYPE##2 e1 , TYPE##2 e2 , TYPE##2 e3 , TYPE##2 e4) { return TYPE##2(id>0 ? (id>1 ? (id>2 ? (id>3 ? e4 : e3) : e2) : e1) : e0); } \
        TYPE##3 select(int id , TYPE##3 e0 , TYPE##3 e1 , TYPE##3 e2 , TYPE##3 e3 , TYPE##3 e4) { return TYPE##3(id>0 ? (id>1 ? (id>2 ? (id>3 ? e4 : e3) : e2) : e1) : e0); } \
        TYPE##4 select(int id , TYPE##4 e0 , TYPE##4 e1 , TYPE##4 e2 , TYPE##4 e3 , TYPE##4 e4) { return TYPE##4(id>0 ? (id>1 ? (id>2 ? (id>3 ? e4 : e3) : e2) : e1) : e0); }
        // 特化可能用到的类型
        DEFINE_SELECT(bool)
        DEFINE_SELECT(uint)
        DEFINE_SELECT(int)
        DEFINE_SELECT(float)
        DEFINE_SELECT(half)


        // 三个值的最大小值比较
        #define DEFINE_MINMAX3(TYPE) \
        TYPE min3(TYPE a , TYPE b , TYPE c) { return TYPE(min(min(a , b) , c)); } \
        TYPE##2 min3(TYPE##2 a , TYPE##2 b , TYPE##2 c) { return TYPE##2(min(min(a , b) , c)); } \
        TYPE##3 min3(TYPE##3 a , TYPE##3 b , TYPE##3 c) { return TYPE##3(min(min(a , b) , c)); } \
        TYPE##4 min3(TYPE##4 a , TYPE##4 b , TYPE##4 c) { return TYPE##4(min(min(a , b) , c)); } \
        TYPE max3(TYPE a , TYPE b , TYPE c) { return TYPE(max(max(a , b) , c)); } \
        TYPE##2 max3(TYPE##2 a , TYPE##2 b , TYPE##2 c) { return TYPE##2(max(max(a , b) , c)); } \
        TYPE##3 max3(TYPE##3 a , TYPE##3 b , TYPE##3 c) { return TYPE##3(max(max(a , b) , c)); } \
        TYPE##4 max3(TYPE##4 a , TYPE##4 b , TYPE##4 c) { return TYPE##4(max(max(a , b) , c)); }
        // 特化可能用到的类型
        DEFINE_MINMAX3(bool);
        DEFINE_MINMAX3(uint);
        DEFINE_MINMAX3(int);
        DEFINE_MINMAX3(float);
        DEFINE_MINMAX3(half);


        // 幂函数
        #define DEFINE_POW(TYPE) \
        TYPE pow2(TYPE x) { return TYPE(x * x); } \
        TYPE##2 pow2(TYPE##2 x) { return TYPE##2(x * x); } \
        TYPE##3 pow2(TYPE##3 x) { return TYPE##3(x * x); } \
        TYPE##4 pow2(TYPE##4 x) { return TYPE##4(x * x); } \
        TYPE pow3(TYPE x) { return TYPE(x * x * x); } \
        TYPE##2 pow3(TYPE##2 x) { return TYPE##2(x * x * x); } \
        TYPE##3 pow3(TYPE##3 x) { return TYPE##3(x * x * x); } \
        TYPE##4 pow3(TYPE##4 x) { return TYPE##4(x * x * x); } \
        TYPE pow4(TYPE x) { TYPE xx = x * x; return TYPE(xx * xx); } \
        TYPE##2 pow4(TYPE##2 x) { TYPE##2 xx = x * x;  return TYPE##2(xx * xx); } \
        TYPE##3 pow4(TYPE##3 x) { TYPE##3 xx = x * x;  return TYPE##3(xx * xx); } \
        TYPE##4 pow4(TYPE##4 x) { TYPE##4 xx = x * x;  return TYPE##4(xx * xx); } \
        TYPE pow5(TYPE x) { TYPE xx = x * x;  return TYPE(xx * xx * x); } \
        TYPE##2 pow5(TYPE##2 x) { TYPE##2 xx = x * x;  return TYPE##2(xx * xx * x); } \
        TYPE##3 pow5(TYPE##3 x) { TYPE##3 xx = x * x;  return TYPE##3(xx * xx * x); } \
        TYPE##4 pow5(TYPE##4 x) { TYPE##4 xx = x * x;  return TYPE##4(xx * xx * x); } \
        TYPE pow6(TYPE x) { TYPE xx = x * x;  return TYPE(xx * xx * xx); } \
        TYPE##2 pow6(TYPE##2 x) { TYPE##2 xx = x * x;  return TYPE##2(xx * xx * xx); } \
        TYPE##3 pow6(TYPE##3 x) { TYPE##3 xx = x * x;  return TYPE##3(xx * xx * xx); } \
        TYPE##4 pow6(TYPE##4 x) { TYPE##4 xx = x * x;  return TYPE##4(xx * xx * xx); }
        // 特化可能用到的类型
        DEFINE_POW(bool);
        DEFINE_POW(uint);
        DEFINE_POW(int);
        DEFINE_POW(float);
        DEFINE_POW(half);


        float AverateColor(float3 color)    //取颜色三通道的平均值
        {
            return dot(color , float3(1.0 , 1.0 , 1.0)) / 3.0;
        }

        float3 NormalizeColorByAverage(float3 color)    //除以三通道平均值以提亮颜色
        {
            float average = AverateColor(color);
            return color / max(average , 1e-5);
        }

        float3 ScaleColorByMax(float3 color)    //将颜色乘以其三通道的最大分量（限制小于等于1），使颜色变暗
        {
            float maxComponent = max3(color.r , color.g , color.b);
            maxComponent = min(maxComponent , 1.0);
            return float3(color * maxComponent);
        }

        float3 ClampColorMax(float3 color)    // 钳制颜色，若颜色最大分量超过1，则对每个分量除以最大分量，保证输出颜色不超过原颜色
        {
            float maxComponent = max3(color.r , color.g , color.b);
            
            if (maxComponent > 1.0)
            {
                return color / maxComponent;
            }

            return color;
        }
        
        
        CBUFFER_START(UnityPerMaterial)

        // Main Maps
        float4 _Color;
        sampler2D _MainTex;
        sampler2D _LightTex;
        sampler2D _OtherDataTex;
        sampler2D _OtherDataTex2;

        float _NoseLineHoriDisp;
        float _NoseLineLkDnDisp;

        float _AlphaClip;
        
        float _BumpScale;
        float _Glossiness;
        float _Metalic;

        float3 _HeadCenter;
        float3 _HeadForward;
        float3 _HeadRight;
        float _HeadSphereRange;

        float _AmbientColorIntensity;

        int _SkinMatId;

        float _ModelSize;
        float _ModelSize2;
        float _ModelSize3;
        float _ModelSize4;
        float _ModelSize5;
        

        // Screen Space Rim
        float _ScreenSpaceRim;
        float _ScreenSpaceRimWidth;
        float _ScreenSpaceRimThreshold;
        float _ScreenSpaceRimFadeout;
        float _ScreenSpaceRimBrightness;


        // Screen Space Shadow
        float _ScreenSpaceShadow;
        float _ScreenSpaceShadowWidth;
        float _ScreenSpaceShadowThreshold;
        float _ScreenSpaceShadowFadeout;
        

        // Diffuse
        float3 _ShallowColor;
        float3 _ShallowColor2;
        float3 _ShallowColor3;
        float3 _ShallowColor4;
        float3 _ShallowColor5;

        float3 _ShadowColor;
        float3 _ShadowColor2;
        float3 _ShadowColor3;
        float3 _ShadowColor4;
        float3 _ShadowColor5;

        float3 _PostShallowTint;
        float3 _PostShallowFadeTint;
        float3 _PostShadowTint;
        float3 _PostShadowFadeTint;
        float3 _PostFrontTint;
        float3 _PostSssTint;

        float _AlbedoSmoothness;

        
        // Specular
        float _HighLightShape;
        float _HighLightShape2;
        float _HighLightShape3;
        float _HighLightShape4;
        float _HighLightShape5;

        float _ToonSpecular;
        float _ToonSpecular2;
        float _ToonSpecular3;
        float _ToonSpecular4;
        float _ToonSpecular5;

        float _SpecularRange;
        float _SpecularRange2;
        float _SpecularRange3;
        float _SpecularRange4;
        float _SpecularRange5;

        float _ShapeSoftness;
        float _ShapeSoftness2;
        float _ShapeSoftness3;
        float _ShapeSoftness4;
        float _ShapeSoftness5;

        float _SpecIntensity;

        float3 _SpecularColor;
        float3 _SpecularColor2;
        float3 _SpecularColor3;
        float3 _SpecularColor4;
        float3 _SpecularColor5;
        

        // Rim Glow
        float3 _RimGlowLightColor;
        float3 _RimGlowLightColor2;
        float3 _RimGlowLightColor3;
        float3 _RimGlowLightColor4;
        float3 _RimGlowLightColor5;

        float3 _UISunColor;
        float3 _UISunColor2;
        float3 _UISunColor3;
        float3 _UISunColor4;
        float3 _UISunColor5;


        // Outline
        float _Outline;
        float3 _OutlineColor;
        float3 _OutlineColor2;
        float3 _OutlineColor3;
        float3 _OutlineColor4;
        float3 _OutlineColor5;

        float _OutlineWidth;
        float _MaxOutlineZOffset;


        // MatCap
        float _MatCap;
        sampler2D _MatCapTex;
        sampler2D _MatCapTex2;
        sampler2D _MatCapTex3;
        sampler2D _MatCapTex4;
        sampler2D _MatCapTex5;

        float3 _MatCapColorTint;
        float3 _MatCapColorTint2;
        float3 _MatCapColorTint3;
        float3 _MatCapColorTint4;
        float3 _MatCapColorTint5;

        float _MatCapColorBurst;
        float _MatCapColorBurst2;
        float _MatCapColorBurst3;
        float _MatCapColorBurst4;
        float _MatCapColorBurst5;

        float _MatCapAlphaBurst;
        float _MatCapAlphaBurst2;
        float _MatCapAlphaBurst3;
        float _MatCapAlphaBurst4;
        float _MatCapAlphaBurst5;

        float _MatCapRefract;
        float _MatCapRefract2;
        float _MatCapRefract3;
        float _MatCapRefract4;
        float _MatCapRefract5;

        float _RefractDepth;
        float _RefractDepth2;
        float _RefractDepth3;
        float _RefractDepth4;
        float _RefractDepth5;

        float4 _RefractParam;
        float4 _RefractParam2;
        float4 _RefractParam3;
        float4 _RefractParam4;
        float4 _RefractParam5;

        int _MatCapBlendMode;
        int _MatCapBlendMode2;
        int _MatCapBlendMode3;
        int _MatCapBlendMode4;
        int _MatCapBlendMode5;
        
        CBUFFER_END


        // 例如"positionOS"、"positionCS"、"normalWS"中的这些后缀都是代表该坐标是在什么空间下
        // 如 "OS"：模型空间，"CS"：裁剪空间，"WS"：世界空间，"TS"：切线空间
        
        struct UniversalAttributes
        {
            float4 positionOS  : POSITION;
            float4 tangentOS   : TANGENT;
            float3 normalOS    : NORMAL;
            float2 texcoord    : TEXCOORD0;
        };
        
        struct UniversalVaryings
        {
            float2 uv                       : TEXCOORD0;
            float4 positionWSAndFogFactor   : TEXCOORD1;    // xyz存储位置的世界坐标，w存储雾效因子
            float3 normalWS                 : TEXCOORD2;
            float4 tangentWS                : TEXCOORD3;
            float3 viewDirectionWS          : TEXCOORD4;
            float4 positionCS               : SV_POSITION;
        };

        
        UniversalVaryings MainVS(UniversalAttributes input)  //顶点着色器
        {
            // "GetVertexPositionInputs"：获取位置在各个空间下的坐标；"GetVertexNormalInputs"：获取世界空间下的TBN三线向量
            VertexPositionInputs positionInputs = GetVertexPositionInputs(input.positionOS.xyz);
            VertexNormalInputs normalInputs = GetVertexNormalInputs(input.normalOS , input.tangentOS);
            
            UniversalVaryings output;
            output.positionCS = positionInputs.positionCS;
            
            // "ComputeFogFactor" 是 Unity Shader 中用于计算雾效因子的一个内置函数。它根据顶点在裁剪空间中的z坐标（深度）来计算雾效因子，这个因子用于在片元着色器中混合雾的颜色和物体的颜色，以实现雾效。
            output.positionWSAndFogFactor = float4(positionInputs.positionWS , ComputeFogFactor(positionInputs.positionCS.z));
            
            output.normalWS = normalInputs.normalWS;
            output.tangentWS.xyz = normalInputs.tangentWS;
            
            // "GetOddNegativeScale" 用于检测物体的缩放因子中是否有奇数个负值。在Unity中，如果一个物体的缩放向量（scale）的三个分量（x, y, z）中包含奇数个负值，这种情况被称为“odd negative scaling”。这会导致物体的法线方向与预期相反，因为Unity在处理法线时依赖于右手坐标系，而负缩放会改变坐标系的方向。
            // 返回值是1或-1，用来表示物体是否处于“odd-negative scale transforms”状态。当物体的scale的xyz三个分量有奇数个负值时（即1个或3个负数），物体是被镜像翻转的状态（mirrored），此时函数返回-1；否则返回1。
            output.tangentWS.w = input.tangentOS.w * GetOddNegativeScale();

            // unity_OrthoParams.w 是 Unity Shader 中的一个内置变量，用于指示当前渲染的摄像机是否为正交摄像机。具体来说：
            //    当摄像机为正交模式时，unity_OrthoParams.w 的值为 1.0。
            //    当摄像机为透视模式时，unity_OrthoParams.w 的值为 0.0。
            // "GetWorldToViewMatrix()" 函数用于获取从世界空间到视图空间的变换矩阵。
            // "GetWorldToViewMatrix()[2].xyz" 表示获取矩阵的第三行的X、Y、Z分量，代表摄像机的“上”向量在世界空间中的坐标。在矩阵中，每一行代表一个向量，而第三行通常代表了摄像机的“上”向量（Up Vector）在世界空间中的方向。
            output.viewDirectionWS = unity_OrthoParams.w == 0 ? GetCameraPositionWS() - positionInputs.positionWS : GetWorldToViewMatrix()[2].xyz;
            output.uv = input.texcoord;
            
            return output;
        }
        
        float4 MainPS(UniversalVaryings input , bool isFrontFace : SV_IsFrontFace) : SV_Target
        {
            //===== 基础色 =====//
            float4 mainTex = tex2D(_MainTex , input.uv);
            mainTex *= _Color;

            float3 baseColor = mainTex.rgb;
            float baseAlpha = 1.0;
            #if _DOMAIN_EYE || _DOMAIN_BODY  //眼睛与身体的D贴图的a通道中存着透明度信息
            {
                baseAlpha = mainTex.a;
            }
            #endif

            

            //===== 参数的获取与计算 =====//
            // 法线与位置
            float3 normalWS = normalize(input.normalWS);
            float3 pixelNormalWS = normalWS;    //法线贴图法线
            float diffuseBias = 0;    //漫反射偏移
            
            float3 positionWS = input.positionWSAndFogFactor.xyz;

            // 相机
            float3 viewDirectionWS = normalize(input.viewDirectionWS);
            
            // 光源
            float4 shadowCoord = TransformWorldToShadowCoord(positionWS);   //获取阴影贴图坐标
            Light mainLight = GetMainLight(shadowCoord);    //获取主光源
            float3 lightDirectionWS = normalize(mainLight.direction);    //获取主光源方向
            float3 lightColor = mainLight.color;    //获取主光源颜色

            // 材质ID
            int materialID = 0;

            // 材质捕获
            float matCapMask = 0;  // 材质捕获遮罩

            // 高光
            float metallic = 0;         // 金属度
            float specularMask = 0;     // 高光遮罩
            float smoothness = 0.58;       // 光滑度

            // 脸部SDF（LightMap贴图（b通道：描边宽度））
            float angleMapping = 0;     // r通道：基本SDF灰度值
            float angleFunction = 0;    // g通道：变化平滑度偏移值（与_AlbedoSmoothness进行插值）
            float angleThreshold = 0;   // 阈值，随光源方向变化
            float angleMapMask = 0;     // a通道：遮罩（插值回兰伯特模型）

            // TBN
            float sign = input.tangentWS.w;
            float3 tangentWS = normalize(input.tangentWS.xyz);
            float3 bitangentWS = sign * cross(normalWS.xyz , tangentWS.xyz);


            
            //===== 各贴图采样、身体贴图法线计算 与 脸部SDF光照 计算 =====//
            #if _DOMAIN_BODY    // 身体部分的法线、MatCap采样
            {
                // LightTex 采样
                float4 lightData = tex2D(_LightTex , input.uv);         // N贴图：rg通道存切线空间下的法线xy轴信息，z轴可以通过向量模长为1求出；b通道存漫反射偏移
                lightData = lightData * 2.0 - 1.0;                      // 从0~1映射到-1~1
                diffuseBias = lightData.z * 2.0;                        // 漫反射偏移乘2放大

                // 计算贴图法线
                float3 pixelNormalTS = float3(lightData.xy , 0.0);
                pixelNormalTS.xy *= _BumpScale;                         // 法线强度放大
                pixelNormalTS.z = sqrt(1.0 - min(0.0 , dot(pixelNormalTS.xy , pixelNormalTS.xy)));
                pixelNormalWS = TransformTangentToWorld(pixelNormalTS , float3x3(tangentWS , bitangentWS , normalWS));
                pixelNormalWS = normalize(pixelNormalWS);

                // OtherDataTex 采样
                float4 otherData = tex2D(_OtherDataTex , input.uv);     // M贴图：r通道分五个色阶来存各物体材质的序号；g通道存金属信息；b通道存高光遮罩
                materialID = max(0 , 4 - floor(otherData.x * 5));       // 获取材质ID
                metallic = _Metalic * otherData.y;                      // 金属度
                specularMask = otherData.z;                             // 高光遮罩

                // return float4(((materialID == 4) ? 1 : 0).xxx , 1);
                
                // OtherDataTex2 采样
                float4 otherData2 = tex2D(_OtherDataTex2 , input.uv);   // A贴图：g通道存光滑度；b通道存材质捕获遮罩
                matCapMask = otherData2.z;                              // 材质捕获遮罩
                smoothness = _Glossiness * otherData2.y;                // 光滑度
            }
            #elif _DOMAIN_FACE       // 脸部SDF光照、鼻线
            {
                float3 headForward = normalize(_HeadForward - _HeadCenter);     // 脸部前方向量
                float3 headRight = normalize(_HeadRight - _HeadCenter);         // 脸部右侧向量
                float3 headUp = normalize(cross(headForward , headRight));      // 脸部上方向量（Unity 为左手系，注意叉乘参数顺序）
                
                // 将灯光向量投影到头平面（headUp已被归一化，故点积可以直接得到在headUp正方向上的投影长度，再乘以headUp即得到投影向量；因为原来的灯光向量可以分解为headForward、headRight、headUp三个方向上的分量，将原灯光向量减去headUp方向上的投影向量，就得到在headForward与headRight组成平面即头平面的投影向量了）
                float3 lightDirectionProjHeadWS = lightDirectionWS - dot(lightDirectionWS , headUp) * headUp;
                lightDirectionProjHeadWS = normalize(lightDirectionProjHeadWS);

                float sX = dot(lightDirectionProjHeadWS , headRight);                                      // 灯光向量在脸部右侧方向上的投影长度，作为xOz平面上的正弦值
                float sZ = dot(lightDirectionProjHeadWS , -headForward);                                   // 灯光向量在脸部后侧方向上的投影长度，作为xOz平面上的余弦值
                angleThreshold = atan2(sX , sZ) / 3.14159265359;                                           // 获取光照在头平面上相对于头的角度；"atan2(y , x)"：获取向量(x , y)相对于原点的角度，单位为弧度制，值域为-Pi~Pi，除以Pi映射到-1~1
                angleThreshold = (angleThreshold > 0) ? (1 - angleThreshold) : (1 + angleThreshold);       // 对于0~1的部分，对应光从后脑经过右脸转到正脸；-1~0的部分，对应光从正脸经左脸转到脑后；通过此式可将其变为从正脸经任意一侧脸转到脑后的映射为0~1

                // SDF贴图采样
                float2 angleUV = input.uv;
                if (dot(lightDirectionProjHeadWS , headRight) > 0)      //因为SDF贴图为从右脸到左脸的0~1单向变化，所以当光照在右脸时需要翻转uv来进行采样
                {
                    angleUV.x = 1.0 - angleUV.x;
                }

                float4 angleData = tex2D(_LightTex , angleUV);
                angleMapping = angleData.r;
                angleFunction = angleData.g;
                angleMapMask = angleData.a;

                // 鼻线
                float3 outlineColor = _OutlineColor * 0.2;
                float viewDotHeadUp = dot(headUp , viewDirectionWS);
                float viewDotHeadForward = dot(headForward , viewDirectionWS);

                float dispValue = lerp(_NoseLineLkDnDisp , _NoseLineHoriDisp , smoothstep(0 , 0.75 , saturate(viewDotHeadUp + 0.85)));
                dispValue = viewDotHeadForward - dispValue;
                dispValue = smoothstep(0 , 0.02 , dispValue);
                dispValue -= mainTex.a;

                baseColor = lerp(baseColor , outlineColor , saturate(dispValue));

                // 高光
                metallic *= _Metalic;           // 金属度
                smoothness *= _Glossiness;      // 光滑度
            }
            #endif

            
            
            //===== 背面法线处理 =====//
            normalWS *= isFrontFace ? 1 : -1;
            pixelNormalWS *= isFrontFace ? 1 : -1;


            
            //===== 阴影衰减（投影） =====//
            float shadowAttenuation = 1.0;
            
            #if _SCREEN_SPACE_SHADOW
            {
                // 在 Unity Shader 中，透视除法是一个将裁剪空间坐标转换为归一化设备坐标（NDC）的过程。裁剪空间是顶点经过模型视图投影矩阵（MVP）变换后的空间，顶点着色器的输出就是在裁剪空间上。
                // 透视除法的主要作用是将裁剪空间中的顶点坐标除以w分量，从而得到NDC空间的坐标。
                float linearEyeDepth = input.positionCS.w;                                              // 裁剪空间下的坐标w分量就是深度
                float perspective = 1.0 / linearEyeDepth;
                float offsetMul = _ScreenSpaceShadowWidth * 5.0 * perspective / 100.0;                  // 计算深度缓冲采样偏移的宽度

                float3 lightDirectionVS = TransformWorldToViewDir(lightDirectionWS);                    // 变换灯光方向向量至视空间
                float2 offset = lightDirectionVS.xy * offsetMul;                                        // 偏移向量
                int2 coord = input.positionCS.xy + offset * _ScaledScreenParams.xy;                     // 计算深度缓冲的采样uv
                coord = min(max(0 , coord) , _ScaledScreenParams.xy - 1);                               // 钳制避免采样到边界
                float offsetSceneDepth = LoadSceneDepth(coord);                                         // 开始采样偏移的深度值（该值为非线性）
                float offsetSceneLinearEyeDepth = LinearEyeDepth(offsetSceneDepth , _ZBufferParams);    // 转换为线性

                float fadeout = max(1e-5 , _ScreenSpaceShadowFadeout);                                  // 调整衰减
                shadowAttenuation = saturate((offsetSceneLinearEyeDepth - (linearEyeDepth - _ScreenSpaceShadowThreshold)) * 50 / fadeout);
            }
            #endif

            

            //===== 光照衰减（兰伯特光照模型）=====//
            float baseAttenuation = 1.0;
            {
                // 兰伯特光照模型
                float NDotL = dot(pixelNormalWS , lightDirectionWS);
                baseAttenuation = NDotL;                                  // "NdotL" 时为兰伯特模型；"NdotL * 0.5 + 0.5" 时为半兰伯特模型
                baseAttenuation += diffuseBias;                           // 加入漫反射偏移
                baseAttenuation = max(0 , baseAttenuation);               // 与0取最大值，抛弃负数
            }

            

            //===== 明暗与投影分级 =====//
            float albedoSmoothness = max(1e-5 , _AlbedoSmoothness);     //值越大，过渡越平滑；作为分母，与1e-5取最大值保证其值不为0
            
            // 绝区零的明暗分为7级，模拟从光源到阴影的渐变过渡
            float albedoShadowFade = 1.0;     // 暗面
            float albedoShadow = 1.0;         // 暗面
            float albedoShallowFade = 1.0;    // 中部
            float albedoShallow = 1.0;        // 中部
            float albedoSSS = 1.0;            // 次表面
            float albedoFront = 1.0;          // 亮面
            float albedoForward = 1.0;        // 亮面
            {
                // 明暗分级
                float attenuation = baseAttenuation * 1.5;    // 基础明暗扩大1.5倍
                float s0 = albedoSmoothness * 1.5;            // 平滑系数
                float s1 = 1.0 - s0;                          // 锐利系数（1-平滑系数）

                float aRamp[6] =                              // 将明暗分为6个间隔
                {
                    (attenuation + 1.5) / s1 + 0.0 ,
                    (attenuation + 0.5) / s0 + 0.5 ,
                    (attenuation + 0.0) / s1 + 0.5 ,
                    (attenuation - 0.5) / s0 + 0.5 ,
                    (attenuation - 0.5) / s0 - 0.5 ,
                    (attenuation - 2.0) / s1 + 1.5
                };

                albedoShadowFade = saturate(1 - aRamp[0]);
                albedoShadow = saturate(min(1 - aRamp[1] , aRamp[0]));
                albedoShallowFade = saturate(min(1 - aRamp[2] , aRamp[1]));
                albedoShallow = saturate(min(1 - aRamp[3] , aRamp[2]));
                albedoSSS = saturate(min(1 - aRamp[4] , aRamp[3]));
                albedoFront = saturate(min(1 - aRamp[5] , aRamp[4]));
                albedoForward = saturate(aRamp[5]);

                // float a = abs(albedoShadowFade + albedoShadow + albedoShallowFade + albedoShallow + albedoSSS + albedoFront + albedoForward - 1.0) < 0.001;     //7级明暗加起来应该等于1，符合能量守恒，此句为验证


                // 投影分级
                float sRamp[2] =                              // 将投影分为两个间隔
                {
                    2.0 * shadowAttenuation ,
                    2.0 * shadowAttenuation - 1
                };

                albedoShallowFade *= saturate(sRamp[0]);                                                       // 对明暗级别的权重值进行投影分级的调整：
                albedoShallowFade += (1 - albedoShadowFade - albedoShadow) * saturate(1 - sRamp[0]);
                albedoShallow *= saturate(min(sRamp[0] , 1 - sRamp[1])) + saturate(sRamp[1]);                  //      albedoShallowFade：受阴影衰减影响，当阴影衰减较大时，浅色渐变区的权重会增加。
                albedoSSS *= saturate(min(sRamp[0] , 1 - sRamp[1])) + saturate(sRamp[1]);
                albedoSSS += (albedoForward + albedoFront) * saturate(min(sRamp[0] , 1 - sRamp[1]));           //      albedoShallow、albedoSSS：受阴影衰减影响，当阴影衰减适中时，浅色区和次表面散射区的权重会增加。
                albedoFront *= saturate(sRamp[1]);
                albedoForward *= saturate(sRamp[1]);                                                           //      albedoFront、albedoForward：受阴影衰减影响，当阴影衰减较小时，亮面区的权重会增加。
            }


            
            //===== SDF混合并分级 =====//
            #if _DOMAIN_FACE
            {
                float s = lerp(_AlbedoSmoothness , 0.025 , saturate(2.5 * (angleFunction - 0.5)));
                s = max(1e-5 , s);

                float angleAttenuation = 0.6 + (angleMapping * 1.2 - 0.6) / (s * 4 + 1) - angleThreshold;

                // 分级
                float aRamp[3] =
                {
                    angleAttenuation / s ,
                    angleAttenuation / s - 1,
                    angleAttenuation / 0.125 - 16 * s
                };

                float angleShadowFade = saturate(1 - aRamp[0]);
                float angleShadow = 0;
                float angleShallowFade = 0;
                float angleShallow = 0;
                float angleSSS = min(saturate(1 - aRamp[1]) , saturate(aRamp[0]));      // SSS之前分级分多一些可以使阴影更加通透
                float angleFront = min(saturate(1 - aRamp[2]) , saturate(aRamp[1]));
                float angleForward = saturate(aRamp[2]);

                // 融入投影
                float sRamp[1] =
                {
                    2 * shadowAttenuation
                };

                angleShadowFade *= saturate(1 - sRamp[0]);
                angleShallowFade += (1 - angleForward - angleFront - angleSSS - angleShallow) * saturate(sRamp[0]);    // 暗部只留ShadowFade，剩余的Shadow挪给ShallowFade，使背光时也能看见刘海阴影
                angleShallowFade += (angleForward + angleFront + angleSSS) * saturate(1 - sRamp[0]);                   // 将亮区也挪给ShalloFade，使亮区阴影不至于过深
                angleSSS *= saturate(sRamp[0]);
                angleFront *= saturate(sRamp[0]);
                angleForward *= saturate(sRamp[0]);

                // 使用 SDF贴图 a通道 的遮罩混合 albedo阴影（因为脸部的阴影绝大部分取决于SDF贴图而非兰伯特模型，故从兰伯特插值向SDF）
                albedoShadowFade = lerp(albedoShadowFade , angleShadowFade , angleMapMask);
                albedoShadow = lerp(albedoShadow , angleShadow , angleMapMask);      
                albedoShallowFade = lerp(albedoShallowFade , angleShallowFade , angleMapMask);
                albedoShallow = lerp(albedoShallow , angleShallow , angleMapMask);      
                albedoSSS = lerp(albedoSSS , angleSSS , angleMapMask);         
                albedoFront = lerp(albedoFront , angleFront , angleMapMask);     
                albedoForward = lerp(albedoForward , angleForward , angleMapMask);
            }
            #endif

            

            //===== 对明暗分级着色 ======//
            float3 shadowFadeColor = 1.0;
            float3 shadowColor = 1.0;
            float3 shallowFadeColor = 1.0;
            float3 shallowColor = 1.0;
            float3 sssColor = 1.0;
            float3 frontColor = 1.0;
            float3 forwardColor = 1.0;
            {
                float zFade = saturate(input.positionCS.w * 0.43725);   //根据深度微调颜色

                // 开始对各级阴影着色
                
                // 暗部（先着阴影色再叠加彩色）
                shadowColor = select(materialID , _ShadowColor , _ShadowColor2 , _ShadowColor3 , _ShadowColor4 , _ShadowColor5);
                shadowColor = lerp(NormalizeColorByAverage(shadowColor) , shadowColor , zFade);    //根据深度来对提亮后的颜色与初始颜色作插值
                shadowFadeColor = shadowColor * _PostShadowFadeTint;
                shadowColor *= _PostShadowTint;

                // 中部（先着阴影色再叠加彩色）
                shallowColor = select(materialID , _ShallowColor , _ShallowColor2 , _ShallowColor3 , _ShallowColor4 , _ShallowColor5);
                shallowColor = lerp(NormalizeColorByAverage(shallowColor) , shallowColor , zFade);
                shallowFadeColor = shallowColor * _PostShallowFadeTint;
                shallowColor *= _PostShallowTint;

                // 亮部（除 forward 外直接着彩色，forward 着白色）
                sssColor = _PostSssTint;
                frontColor = _PostFrontTint;
                forwardColor = 1.0;
            }

            // 附加灯光颜色
            float3 lightColorScaledByMax = ScaleColorByMax(lightColor);
            float3 albedo = (albedoForward * forwardColor + albedoFront * frontColor + albedoSSS * sssColor) * lightColor;    // 整合亮部明暗及着色，附加上原灯光颜色
            albedo += (albedoShallowFade * shallowFadeColor + albedoShallow * shallowColor + albedoShadowFade * shadowFadeColor + albedoShadow * shadowColor) * lightColorScaledByMax;    //整合中部与暗部明暗及着色，附加上变暗后的灯光颜色

            

            //===== MatCap 材质捕获（不仅是渲黑丝！）=====//
            float3 capColor = baseColor;
            #if _MATCAP_ON && _DOMAIN_BODY
            {
                float mask = matCapMask;

                // 获取采样UV
                float3 normalVS = TransformWorldToView(pixelNormalWS);
                float2 capUV = normalVS.xy * 0.5 + 0.5;                                                                                           // 将值从-1~1映射为0~1用于采样

                float refract = select(materialID , _MatCapRefract , _MatCapRefract2 , _MatCapRefract3 , _MatCapRefract4 , _MatCapRefract5);      // 根据贴图判断是否需要折射
                if (refract > 0.5)
                {
                    float4 param = select(materialID , _RefractParam , _RefractParam2 , _RefractParam3 , _RefractParam4 , _RefractParam5);        // 获取折射参数
                    float depth = select(materialID , _RefractDepth , _RefractDepth2 , _RefractDepth3 , _RefractDepth4 , _RefractDepth5);         // 获取折射深度

                    capUV = capUV * depth + param.xy * input.uv + param.zw;                                                                       // 对uv进行偏移和缩放
                }

                // 获取各参数
                capColor = select                                                                                                                 // 获取材质捕捉颜色
                (
                    materialID ,
                    tex2D(_MatCapTex , capUV).rgb ,
                    tex2D(_MatCapTex2 , capUV).rgb ,
                    tex2D(_MatCapTex3 , capUV).rgb ,
                    tex2D(_MatCapTex4 , capUV).rgb ,
                    tex2D(_MatCapTex5 , capUV).rgb
                );

                float3 tinColor = select(materialID , _MatCapColorTint , _MatCapColorTint2 , _MatCapColorTint3 , _MatCapColorTint4 , _MatCapColorTint5);            // 获取材质捕捉混合颜色

                float alphaBurst = select(materialID , _MatCapAlphaBurst , _MatCapAlphaBurst2 , _MatCapAlphaBurst3 , _MatCapAlphaBurst4 , _MatCapAlphaBurst5);      // Alpha值 混合系数的放大倍数
                float colorBurst = select(materialID , _MatCapColorBurst , _MatCapColorBurst2 , _MatCapColorBurst3 , _MatCapColorBurst4 , _MatCapColorBurst5);      // 颜色混合系数的放大倍数

                int blendMode = select(materialID , _MatCapBlendMode , _MatCapBlendMode2 , _MatCapBlendMode3 , _MatCapBlendMode4 , _MatCapBlendMode5);              // 混合模式

                // 选择混合方式
                if (blendMode == 0)         // 一般混合
                {
                    float alpha = saturate(alphaBurst * mask);
                    float3 blendColor = tinColor * capColor * colorBurst;
                    capColor = lerp(baseColor , blendColor , alpha);
                }
                else if (blendMode == 1)    // 加法混合
                {
                    float alpha = saturate(alphaBurst * mask);
                    float3 blendColor = tinColor * capColor * colorBurst;
                    capColor = baseColor + alpha * blendColor;
                }
                else if (blendMode == 2)    // 叠加混合
                {
                    float alpha = saturate(alphaBurst * mask);
                    float3 blendColor = saturate((tinColor * capColor - 0.5) * colorBurst + tinColor * capColor);
                    blendColor = lerp(0.5 , blendColor , alpha);
                    capColor = lerp(blendColor * baseColor * 2 , 1 - 2 * (1 - baseColor) * (1 - blendColor) , baseColor >= 0.5);
                }
            }
            #endif



            //===== Gamma校正 =====//
            float3 gammaColor = capColor;
            {
                float pixelNDotL = dot(pixelNormalWS , lightDirectionWS);       // 贴图法线兰伯特（较尖锐）
                float NDotL = dot(normalWS , lightDirectionWS);                 // 顶点法线兰伯特（较圆润）

                float occlusion = saturate(1 - 3 * (NDotL - pixelNDotL)) * 2;   // 二者相减并做一定变换可得到一个随光源变化的动态遮蔽，用以使颜色更加尖锐
                occlusion *= sqrt(occlusion);                                   // 增强遮蔽效果
                occlusion = min(1 , occlusion);

                float attenuation = lerp((pixelNDotL * 0.5 + 0.5) * occlusion , saturate(pixelNDotL) , 0.5);

                float3 capColorClamped = ClampColorMax(capColor);

                float luminance = Luminance(capColor);      // 获得颜色亮度
                float gamma = lerp(luminance * 0.2875 + 1.4375 , 1 , attenuation);

                float3 capColorGamma = pow(max(1e-5 , capColorClamped) , gamma);
                float3 capColorGammaHalf = lerp(capColor , capColorGamma , 0.5);

                gammaColor = lerp(capColorGammaHalf , capColorGamma , saturate(NDotL));     // 使亮的地方提亮而暗的地方不变
            }


            
            //===== 高光 =====//
            float3 pbrDiffuseColor = lerp(0.96 * gammaColor , 0 , metallic);    // 漫反射（96%）
            float3 pbrSpecularColor = lerp(0.04 , gammaColor , metallic);       // 高光反射（4%）
            float3 specularColor = 0;                                           // 高光颜色
            
            #if _DOMAIN_BODY                                                    // 只有身体需要高光
            {
                float shape = select(materialID , _HighLightShape , _HighLightShape2 , _HighLightShape3 , _HighLightShape4 , _HighLightShape5);

                float range = select(materialID , _SpecularRange , _SpecularRange2 , _SpecularRange3 , _SpecularRange4 , _SpecularRange5);      // 获取高光映射范围
                
                float3 halfWS = normalize(lightDirectionWS + viewDirectionWS);                      // 半角向量
                float LDotH = dot(lightDirectionWS , halfWS);
                float rangeLDotH = saturate(range * LDotH * 0.75 + 0.25);
                float rangeLDotH2 = max(0.1 , rangeLDotH * rangeLDotH);

                float NDotL = dot(pixelNormalWS , lightDirectionWS);
                float rangeNDotL = saturate(range * NDotL * 0.75 + 0.25);

                float specular = 0;
                
                if (shape > 0.5)    // 卡通风格高光（各向异性的GGX高光）
                {
                    bool useSphere = _HeadSphereRange > 0;                                          // 判断是否使用球形法线

                    float3 sphereNormalWS = positionWS - _HeadCenter;                               // 获取球形法线
                    float len = length(sphereNormalWS);                                             // 存储法线模长
                    sphereNormalWS = normalize(sphereNormalWS);
                    float sphereUsage = 1.0 - saturate((len - _HeadSphereRange) * 20);              // 当超过一定距离就不使用球形法线而仍用贴图法线
                    float3 shapeNormalWS = lerp(pixelNormalWS , sphereNormalWS , sphereUsage);      // 插值球形法线与贴图法线

                    float attenuation = saturate(baseAttenuation * 1.5 + 0.5);
                    float shapeNDotL = dot(shapeNormalWS , lightDirectionWS);                       // 重新计算球形法线的兰伯特模型
                    float shapeAttenuation = sqrt(saturate(shapeNDotL * 0.5 + 0.5));

                    shapeNormalWS = useSphere ? shapeNormalWS : pixelNormalWS;                      // 根据是否使用球形法线决定输出法线
                    shapeAttenuation = useSphere ? shapeAttenuation : attenuation;                  // 根据是否使用球形法线决定输出兰伯特

                    float NDotH = dot(shapeNormalWS , halfWS);
                    float NDotH01 = saturate(NDotH * 0.5 + 0.5);

                    specular = NDotH01 * shapeAttenuation + specularMask - 1;                       // 计算高光遮罩

                    float softness = select(materialID , _ShapeSoftness , _ShapeSoftness2 , _ShapeSoftness3 , _ShapeSoftness4 , _ShapeSoftness5);       // 获取软度
                    specular = saturate(specular / softness);
                    specular *= min(1.0 , 1.0 / (6.0 * rangeLDotH2)) * rangeNDotL;
                }
                else    // GGX高光
                {
                    float perceptualRoughness = 1 - smoothness;     // 感知粗糙度
                    float roughness = perceptualRoughness * perceptualRoughness;     // 真实粗糙度（感知粗糙度的平方）

                    float normalizetionTerm = roughness * 4 + 2;
                    float roughness2 = roughness * roughness;
                    float roughness2MinusOne = roughness2 - 1;

                    float NDotH = dot(pixelNormalWS , halfWS);
                    float rangeNDotH = saturate(range * NDotH * 0.75 + 0.25);

                    float d = rangeNDotH * rangeNDotH * roughness2MinusOne + 1;
                    float d2 = d * d;

                    float ggx = roughness2 / (d2 * rangeLDotH2 * normalizetionTerm);
                    specular = saturate(ggx - smoothness) * rangeNDotL;

                    specular /= max(1e-5 , roughness);

                    float toonSpecular = select(materialID , _ToonSpecular , _ToonSpecular2 , _ToonSpecular3 , _ToonSpecular4 , _ToonSpecular5);    // 获取卡通高光系数
                    float size = select(materialID , _ModelSize , _ModelSize2 , _ModelSize3 , _ModelSize4 , _ModelSize5);                           // 获取模型放大系数

                    specular *= toonSpecular * size * specularMask;
                    specular *= 10;
                    specular = saturate(specular);
                }

                specular *= 100;
                specular *= _SpecIntensity;

                float3 tinColor = select(materialID , _SpecularColor , _SpecularColor2 , _SpecularColor3 , _SpecularColor4 , _SpecularColor5);      // 获取高光颜色
                specularColor = specular * tinColor;
            }
            #endif
            


            //===== 环境光 =====//
            float3 ambientColor = SampleSH(pixelNormalWS) * gammaColor * _AmbientColorIntensity;

            

            //===== 边缘光 =====//
            float3 rimGlowColor = 0;
            {
                bool isSkin = materialID == _SkinMatId;                         // 判断材质是否是皮肤

                // 获取面背光衰减
                float LDotV = dot(lightDirectionWS , viewDirectionWS);          // 获取灯光与视线夹角的余弦值（面光面为白，背光面为黑，-1~1）
                float viewAttenuation = -LDotV * 0.5 + 0.5;                     // 修改成面光面为黑，背光面为白，映射至0~1
                viewAttenuation = pow2(viewAttenuation);                        // 平方后使背光面的白色变暗
                viewAttenuation = viewAttenuation * 0.5 + 0.5;                  // 整体提亮，使面光面的边缘光也隐约可见（面光面不完全为黑）

                // 获取逆光方向衰减
                float edgeAttenuation = 1 - pow4(pow5(viewAttenuation));      // （参与太阳颜色插值而不直接作用于rimColor）

                // 获取竖直方向衰减
                float verticleAttenuation = pixelNormalWS.y * 0.5 + 0.5;                            // 取法线竖直方向并从-1~1映射至0~1提亮，作为垂直衰减（均经过归一化，故法线越朝上的面竖直分量越大，面越亮）
                verticleAttenuation = isSkin ? verticleAttenuation : pow2(verticleAttenuation);     // 皮肤材质更亮，非皮肤更暗
                verticleAttenuation = smoothstep(0 , 1 , verticleAttenuation);

                // 获取兰伯特与投影方向衰减
                float lightAttenuation = saturate(dot(pixelNormalWS , lightDirectionWS)) * shadowAttenuation;     // 兰伯特方向做衰减，附加上投影影响

                // 获取基础菲涅尔效果
                float cameraDistance = length(viewDirectionWS);                                                   // 获取相机位置到像素点的距离（顶点着色器中未归一）

                float NDotV = dot(pixelNormalWS , viewDirectionWS);
                float fresnelDistanceFade = (isSkin ? 0.75 : 0.65) - 0.45 * min(1 , cameraDistance / 12.0);       // 根据相机距离对菲涅尔效果进行弱化，皮肤较非皮肤多弱化一些
                float fresnelAttenuation = 1.0 - NDotV - fresnelDistanceFade;                                     // 一般菲涅尔

                float fresnelSoftness = isSkin ? 0.2 : 0.3;
                fresnelAttenuation = smoothstep(0 , fresnelSoftness , fresnelAttenuation);                        // 调节菲涅尔效果软硬

                // 获取相机距离衰减
                float distanceAttenuation = 1.0 - 0.7 * saturate(cameraDistance * 0.2 - 1);                       // 相机距离越远边缘光越弱，距离越近边缘光越强

                // 获取太阳颜色
                float3 sunColor = select(materialID , _UISunColor , _UISunColor2 , _UISunColor3 , _UISunColor4 , _UISunColor5);
                float sumLuminance = Luminance(sunColor);
                sunColor = isSkin ? sunColor : sumLuminance;                        // 皮肤部分混合太阳颜色增加透光感，非皮肤部分只取太阳颜色亮度影响
                
                float3 sunColorScaled = pow2(pow4(sunColor));                     // 伽马太阳光使其变鲜艳
                sunColorScaled /= max(1e-5 , dot(sunColorScaled , 0.7));

                sunColor = AverateColor(sunColor) * sunColorScaled;
                sunColor = lerp(albedo , sunColor , shadowAttenuation);             // 使用投影衰减与albedo插值（使投影边缘光更突出albedo的影响）
                sunColor = lerp(albedo , sunColor , edgeAttenuation);               // 使用逆光方向衰减与albedo插值（使背光侧边缘光更突出albedo的影响）

                // 计算漫反射的边缘光颜色
                float3 rimDiffuse = pow(max(1e-5 , pbrDiffuseColor) , 0.2);
                rimDiffuse = normalize(rimDiffuse);                                 // 对颜色归一化，去掉亮度，保留色彩比例
                float diffuseBrightness = AverateColor(pbrDiffuseColor);            // 取原漫反射颜色的平均值作为亮度系数
                diffuseBrightness = (1 - 0.2 * pow2(diffuseBrightness)) * 0.1;
                rimDiffuse *= diffuseBrightness;                                    // 使黑色物体的边缘光亮度影响高于白色物体

                float3 rimSpecular = pbrSpecularColor;

                float3 rimColor = lerp(rimDiffuse , rimSpecular , metallic);        // 用金属度插值边缘光漫反射颜色和高光颜色
                rimColor *= 48;

                // 整合衰减
                rimColor *= viewAttenuation * verticleAttenuation * lightAttenuation * fresnelAttenuation * distanceAttenuation * sunColor;

                // 取边缘光染色
                float3 glowColor = select(materialID , _RimGlowLightColor , _RimGlowLightColor2 , _RimGlowLightColor3 , _RimGlowLightColor4 , _RimGlowLightColor5);

                rimColor *= glowColor;

                float3 rimColorBrightness = AverateColor(rimColor);       // 取当前边缘光颜色平均值作为亮度系数
                rimColorBrightness = 1.0 + 0.5 * rimColorBrightness;      // 取一半，并加1作为保底（边缘光颜色为HDR）
                rimColor *= rimColorBrightness;

                // 使用屏幕空间边缘光限制范围
                float screenSpaceRim = 0;   // 边缘光遮罩
                
                #if _SCREEN_SPACE_RIM
                {
                    float linearEyeDepth = input.positionCS.w;
                    float3 normalVS = TransformWorldToView(normalWS);
                    
                    // 在屏幕空间偏移采样深度缓冲的uv（透视除法）
                    float2 uvOffset = float2(normalize(normalVS.xy)) * _ScreenSpaceRimWidth / linearEyeDepth;
                    int2 texPos = input.positionCS.xy + uvOffset;
                    texPos = min(max(0 , texPos) , _ScaledScreenParams.xy - 1);     // 限制不要采样到边界
                    float offsetSceneDepth = LoadSceneDepth(texPos);
                    
                    float offsetSceneLinearEyeDepth = LinearEyeDepth(offsetSceneDepth , _ZBufferParams);    // 转换为线性深度值
                    screenSpaceRim = saturate((offsetSceneLinearEyeDepth - (linearEyeDepth + _ScreenSpaceRimThreshold)) * 10 / _ScreenSpaceRimFadeout);
                    screenSpaceRim *= _ScreenSpaceRimBrightness;
                }
                #endif
                
                
                rimGlowColor = rimColor * screenSpaceRim;
            }
            
            

            //===== 输出颜色 =====//
            float3 color = ambientColor;
            color += (pbrDiffuseColor + pbrSpecularColor * specularColor) * albedo;
            color += max(0 , pbrSpecularColor * specularColor * albedo - 1);            // 将高光部分超过1的部分再加一次给输出颜色，使高光部分更闪亮
            color = MixFog(color , input.positionWSAndFogFactor.w);                     // 混合烟雾
            color += rimGlowColor;                                                      // 加上边缘光
            
            return float4(color , baseAlpha);
        }

        
        ENDHLSL


        Pass    //生成ShadowMap
        {
            Name "ShadowCaster"
            
            Tags
            {
                "LightMode" = "ShadowCaster"
            }
            
            ZWrite [_ZWrite]
            ZTest LEqual
            ColorMask 0
            Cull [_Cull]
            
            
            HLSLPROGRAM

            #pragma multi_compile_instancing
            #pragma multi_compile _ DOTS_INSTANCING_ON

            #pragma multi_compile_vertex _ _CASTING_PUNCTUAL_LIGHT_SHADOW

            #pragma vertex vert
            #pragma fragment frag

            
            float3 _LightDirection;
            float3 _LightPosition;

            struct Attributes
            {
                float4 positionOS   : POSITION;
                float3 normalOS     : NORMAL;
                float2 texcoord     : TEXCOORD0;
            };
            
            struct Varyings
            {
                float2 uv           : TEXCOORD0;
                float4 positionCS   : SV_POSITION;
            };


            float4 GetShadowPositionHCLip(Attributes input)
            {
                float3 positionWS = TransformObjectToWorld(input.positionOS.xyz);
                float3 normalWS = TransformObjectToWorldNormal(input.normalOS);

                #if _CASTING_PUNCTUAL_LIGHT_SHADOW
                    float3 lightDirectionWS = normalize(_LightPosition - positionWS);
                #else
                    float3 lightDirectionWS = _LightDirection;
                #endif

                float4 positionCS = TransformWorldToHClip(ApplyShadowBias(positionWS , normalWS , lightDirectionWS));

                #if UNITY_REVERSED_Z
                    positionCS.z = min(positionCS.z , UNITY_NEAR_CLIP_VALUE);
                #else
                    positionCS.z = max(positionCS.z , UNITY_NEAR_CLIP_VALUE);
                #endif

                return positionCS;
            }


            Varyings vert(Attributes input)
            {
                Varyings output;

                output.uv = input.texcoord;
                output.positionCS = GetShadowPositionHCLip(input);

                return output;
            }


            float4 frag(Varyings input) : SV_TARGET
            {
                // clip 函数通常用于片段（Fragment）着色器中，用于舍弃（discard）那些不满足特定条件的片段，从而实现一种裁剪效果。这个函数的工作原理是根据传入的值来决定是否保留或舍弃一个片段：
                //      如果 clip(value) 中的 value 大于0，则片段被保留。
                //      如果 value 小于或等于0，则片段被舍弃。
                clip(1.0 - _AlphaClip);
                return 0;
            }
            
            ENDHLSL
        }


        Pass    // DepthOnly 深度缓冲（DepthPrepass）
        {
            Name "DepthOnly"
            
            Tags
            {
                "LightMode" = "DepthOnly"
            }
            
            ZWrite [_ZWrite]
            ColorMask 0
            Cull [_Cull]
            
            
            HLSLPROGRAM
            
            #pragma multi_compile_instancing
            #pragma multi_compile _ DOTS_INSTANCING_ON

            #pragma vertex vert
            #pragma fragment frag

            struct Attributes
            {
                float4 positionOS : POSITION;
            };

            struct Varyings
            {
                float4 positionCS : SV_POSITION;
            };


            Varyings vert(Attributes input)
            {
                Varyings output = (Varyings)0;

                output.positionCS = TransformObjectToHClip(input.positionOS.xyz);
                
                return output;
            }


            half4 frag(Varyings input) : SV_TARGET
            {
                clip(1.0 - _AlphaClip);
                return 0;
            }
            
            ENDHLSL
        }
    

        Pass    // DepthNormals
        {
            Name "DepthNormals"
            
            Tags
            {
                "LightMode" = "DepthNormals"
            }
            
            ZWrite [_ZWrite]
            Cull [_Cull]
            
            
            HLSLPROGRAM

            #pragma multi_compile_instancing
            #pragma multi_compile _ DOTS_INSTANCING_ON

            #pragma vertex vert
            #pragma fragment frag


            struct Attributes
            {
                float4 positionOS   : POSITION;
                float4 tangentOS    : TANGENT;
                float2 texcoord     : TEXCOORD0;
                float3 normalOS     : NORMAL;
            };

            struct Varyings
            {
                float4 positionCS   : SV_POSITION;
                float2 uv           : TEXCOORD0;
                float3 normalWS     : TEXCOORD1;
                float4 tangentWS    : TEXCOORD2;    // xyz：tangent , w：sign
            };
            

            Varyings vert(Attributes input)
            {
                Varyings output = (Varyings)0;

                output.uv = input.texcoord;
                output.positionCS = TransformObjectToHClip(input.positionOS.xyz);

                VertexPositionInputs positionInputs = GetVertexPositionInputs(input.positionOS.xyz);
                VertexNormalInputs normalInputs = GetVertexNormalInputs(input.normalOS , input.tangentOS);

                half3 viewDirWS = GetWorldSpaceNormalizeViewDir(positionInputs.positionWS);
                output.normalWS = half3(normalInputs.normalWS);
                float sign = input.tangentOS.w * float(GetOddNegativeScale());
                output.tangentWS = half4(normalInputs.tangentWS.xyz , sign);

                return output;
            }

            
            half4 frag(Varyings input) : SV_TARGET
            {
                clip(1.0 - _AlphaClip);
                float3 normalWS = input.normalWS.xyz;

                return half4(NormalizeNormalPerPixel(normalWS) , 0.0);
            }

            ENDHLSL
        }
    
        
        Pass    //自定义Pass
        {
            Name "UniversalForward"
            
            Tags
            {
                "LightMode" = "UniversalForward"
            }
            
            Cull [_Cull]
            Blend [_SrcBlendMode] [_DstBlendMode]
            BlendOp [_BlendOp]
            ZWrite [_ZWrite]
            Stencil
            {
                Ref [_StencilRef]
                Comp [_StencilComp]
                Pass [_StencilPassOp]
                Fail [_StencilFailOp]
                ZFail [_StencilZFailOp]
            }
            
            
            HLSLPROGRAM

            #pragma shader_feature_local _SCREEN_SPACE_RIM
            #pragma shader_feature_local _SCREEN_SPACE_SHADOW
            #pragma shader_feature_local _MATCAP_ON

            #pragma vertex MainVS
            #pragma fragment MainPS

            #pragma multi_compile_fog
            
            ENDHLSL
        }


        Pass    //描边
        {
            Name "UniversalForwardOnly"
            
            Tags
            {
                "LightMode" = "UniversalForwardOnly"
            }
            
            Cull Front  //剔除正面
            ZWrite On
            
            
            HLSLPROGRAM

            #pragma shader_feature_local _OUTLINE_PASS

            #pragma vertex vert
            #pragma fragment frag

            #pragma multi_compile_fog


            // 来自Colin佬的描边方法，根据摄像机深度限制描边宽度
            float GetCameraFOV()
            {
                //https://answers.unity.com/questions/770838/how-can-i-extract-the-fov-information-from-the-pro.html
                float t = unity_CameraProjection._m11;
                float Rad2Deg = 180 / 3.1415;
                float fov = atan(1.0f / t) * 2.0 * Rad2Deg;
                return fov;
            }
            float ApplyOutlineDistanceFadeOut(float inputMulFix)
            {
                //make outline "fadeout" if character is too small in camera's view
                return saturate(inputMulFix);
            }
            float GetOutlineCameraFovAndDistanceFixMultiplier(float positionVS_Z)
            {
                float cameraMulFix;
                if(unity_OrthoParams.w == 0)
                {
                    ////////////////////////////////
                    // Perspective camera case
                    ////////////////////////////////
            
                    // keep outline similar width on screen accoss all camera distance       
                    cameraMulFix = abs(positionVS_Z);
            
                    // can replace to a tonemap function if a smooth stop is needed
                    cameraMulFix = ApplyOutlineDistanceFadeOut(cameraMulFix);
            
                    // keep outline similar width on screen accoss all camera fov
                    cameraMulFix *= GetCameraFOV();       
                }
                else
                {
                    ////////////////////////////////
                    // Orthographic camera case
                    ////////////////////////////////
                    float orthoSize = abs(unity_OrthoParams.y);
                    orthoSize = ApplyOutlineDistanceFadeOut(orthoSize);
                    cameraMulFix = orthoSize * 50; // 50 is a magic number to match perspective camera's outline width
                }
            
                return cameraMulFix * 0.00005; // mul a const to make return result = default normal expand amount WS
            }


            // 还是来自Colin佬的描边方法，利用透视原理把描边在裁剪空间往z方向偏移
            // Push an imaginary vertex towards camera in view space (linear, view space unit), 
            // then only overwrite original positionCS.z using imaginary vertex's result positionCS.z value
            // Will only affect ZTest ZWrite's depth value of vertex shader
            
            // Useful for:
            // -Hide ugly outline on face/eye
            // -Make eyebrow render on top of hair
            // -Solve ZFighting issue without moving geometry
            float4 NiloGetNewClipPosWithZOffset(float4 originalPositionCS, float viewSpaceZOffsetAmount)
            {
                if(unity_OrthoParams.w == 0)
                {
                    ////////////////////////////////
                    //Perspective camera case
                    ////////////////////////////////
                    float2 ProjM_ZRow_ZW = UNITY_MATRIX_P[2].zw;
                    float modifiedPositionVS_Z = -originalPositionCS.w + -viewSpaceZOffsetAmount; // push imaginary vertex
                    float modifiedPositionCS_Z = modifiedPositionVS_Z * ProjM_ZRow_ZW[0] + ProjM_ZRow_ZW[1];
                    originalPositionCS.z = modifiedPositionCS_Z * originalPositionCS.w / (-modifiedPositionVS_Z); // overwrite positionCS.z
                    return originalPositionCS;    
                }
                else
                {
                    ////////////////////////////////
                    //Orthographic camera case
                    ////////////////////////////////
                    originalPositionCS.z += -viewSpaceZOffsetAmount / _ProjectionParams.z; // push imaginary vertex and overwrite positionCS.z
                    return originalPositionCS;
                }
            }
            

            float3 OctToUnitVector(float2 oct)  //平滑法线（从Blender平滑法线后生成的正八面体映射uv中还原）
            {
                float3 n = float3(oct , 1 - dot(1 , abs(oct)));
                float t = max(-n.z , 0);
                n.x += n.x >= 0 ? (-t) : t;
                n.y += n.y >= 0 ? (-t) : t;

                return normalize(n);
            }

            
            struct Attributes
            {
                float4 positionOS   : POSITION;
                float4 tangentOS    : TANGENT;
                float3 normalOS     : NORMAL;
                float2 texcoord     : TEXCOORD0;
                float2 texcoord1    : TEXCOORD1;    //先前在Blender中存放平滑法线后的uv映射
            };


            struct Varyings
            {
                float2 uv           : TEXCOORD0;
                float fogFactor     : TEXCOORD1;
                float4 positionCS   : SV_POSITION;
            };


            Varyings vert(Attributes input)
            {
                #if !_OUTLINE_PASS
                    return (Varyings)0;    
                #endif

                VertexPositionInputs positionInputs = GetVertexPositionInputs(input.positionOS.xyz);
                VertexNormalInputs normalInputs = GetVertexNormalInputs(input.normalOS , input.tangentOS);

                // 计算描边宽度
                float width = _OutlineWidth;
                width *= GetOutlineCameraFovAndDistanceFixMultiplier(positionInputs.positionVS.z);
                
                #if _DOMAIN_FACE    // 若为脸部则还需附加计算SDF贴图b通道对描边宽度的影响
                {
                    float4 angleData = tex2Dlod(_LightTex , float4(input.texcoord.xy , 0 , 0));
                    width *= lerp(0.5 , 1 , angleData.b);
                }
                #endif
                

                float2 oct = input.texcoord1;
                float3 smoothNormal = OctToUnitVector(oct);  //切线空间
                float3x3 TBN = float3x3  //切线空间转换到世界空间的TBN矩阵（需要世界空间下的TBN向量）
                (
                    normalInputs.tangentWS ,
                    normalInputs.bitangentWS ,
                    normalInputs.normalWS
                );
                smoothNormal = mul(smoothNormal , TBN);

                float3 positionWS = positionInputs.positionWS;
                positionWS += smoothNormal * width;

                Varyings output = (Varyings)0;
                output.positionCS = NiloGetNewClipPosWithZOffset(TransformWorldToHClip(positionWS) , _MaxOutlineZOffset);
                output.uv = input.texcoord;
                output.fogFactor = ComputeFogFactor(positionInputs.positionCS.z);

                return output;
            }


            float4 frag(Varyings input) : SV_Target
            {
                #if !_OUTLINE_PASS
                    clip(-1);
                #endif

                float3 outlineColor = 0;
                
                #if _DOMAIN_FACE
                {
                    outlineColor = _OutlineColor;
                }
                #elif _DOMAIN_BODY
                {
                    float4 otherData = tex2D(_OtherDataTex , input.uv);
                    int materialID = max(0 , 4 - floor(otherData.r * 5));  //从黑到白（0~1）分为五个色阶，对应五个序号，来指代贴图中的不同材质；用4减应该是因为材质序号从0到4，但其在贴图r通道中色阶反着来，从1到0，所以用4减取正
                    outlineColor = select(materialID , _OutlineColor , _OutlineColor2 , _OutlineColor3 , _OutlineColor4 , _OutlineColor5);
                }
                #endif

                outlineColor *= 0.2;  //加深描边颜色
                
                float4 color = float4(outlineColor , 1);
                color.rgb = MixFog(color.rgb , input.fogFactor);
                
                return color;
            }
            
            ENDHLSL
        }
    }
}
