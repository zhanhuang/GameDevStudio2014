using UnityEngine;
using System.Collections;

public class buttonHit : MonoBehaviour {
	public GameObject light;
	bool lightsOff;
	float lightsOffCounter = 3.0f;

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
		if(lightsOff){
			lightsOffCounter -= Time.deltaTime;
			if(lightsOffCounter < 0f){
				Destroy(light);
			}
		}
	}

	void OnTriggerEnter(Collider other){
		transform.Translate(new Vector3(0f,-0.06f,0f));
		lightsOff = true;
	}
}
