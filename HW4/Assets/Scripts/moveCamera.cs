using UnityEngine;
using System.Collections;

public class moveCamera : MonoBehaviour {
	public Transform camera;
	public Transform pos2;
	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {

	}

	void OnTriggerEnter(Collider other){
		camera.position = pos2.position;
		camera.rotation = pos2.rotation;
	}
}
