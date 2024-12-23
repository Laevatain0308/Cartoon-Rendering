using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[ExecuteInEditMode]     //在 Unity 的编辑模式下也能运行
public class HeadVector : MonoBehaviour
{

    [SerializeField] private Transform headCenterTransform;
    [SerializeField] private Transform headForwardTransform;
    [SerializeField] private Transform headRightTransform;

    private Renderer[] allRenderers;    //存储所有网格体

    private int headCenterID = Shader.PropertyToID("_HeadCenter");
    private int headForwardID = Shader.PropertyToID("_HeadForward");
    private int headRightID = Shader.PropertyToID("_HeadRight");

    
    #if UNITY_EDITOR
    private void OnValidate()
    {
        Update();
    }
    #endif

    private void Update()
    {
        if (allRenderers == null)
        {
            allRenderers = GetComponentsInChildren<Renderer>(true);
        }

        for (int i = 0; i < allRenderers.Length; i++)
        {
            Renderer r = allRenderers[i];
            foreach (var mat in r.sharedMaterials)
            {
                if (mat)
                {
                    if (mat.shader.name == "Custom/ZZZ")
                    {
                        mat.SetVector(headCenterID , headCenterTransform.position);
                        mat.SetVector(headForwardID , headForwardTransform.position);
                        mat.SetVector(headRightID , headRightTransform.position);
                    }
                }
            }
        }
    }
}
