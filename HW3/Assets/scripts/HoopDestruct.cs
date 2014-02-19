using UnityEngine;
using System.Collections;

public class HoopDestruct : MonoBehaviour {
	GameObject generator;
	bool scored;
	float scoreCountDown;

	// Use this for initialization
	void Start () {
		generator = GameObject.Find("ground");
		scored = false;
		scoreCountDown = 2.0f;
	}
	
	// Update is called once per frame
	void Update () {
		if(scoreCountDown < 0){
			generator.GetComponent<Generator>().SendMessage("DisplayScore");
			Destroy(transform.parent.gameObject);
		}
		if(scored){
			scoreCountDown -= Time.deltaTime;
		}
	}

	void OnTriggerEnter (Collider other) {
		if (other.tag == "ball"){
			generator.GetComponent<Generator>().SendMessage("Scored");
			scored = true;
			if(transform.parent.Find("guard") != null){
				Destroy(transform.parent.Find("guard").gameObject);
			}
		}
	}
}
