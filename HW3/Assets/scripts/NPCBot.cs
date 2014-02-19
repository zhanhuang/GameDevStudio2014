using UnityEngine;
using System.Collections;

public class NPCBot : MonoBehaviour {

	// holds reference to player
	public GameObject player;

	// game over text
	public GUIText linkedText;


	public float bounceRate;
	public float bounceHeight;
	bool gameover;

	// Use this for initialization
	void Start () {
		gameover = false;

		//set default values
		if (bounceRate == 0f)
			bounceRate = 8f;
		if (bounceHeight == 0f)
			bounceHeight = 0.1f;
	}
	
	// Update is called once per frame
	void Update () {
		// chase player
		if((player.transform.position - transform.position).magnitude > 1f){
			//look at player
			Quaternion targetRotation = Quaternion.LookRotation(player.transform.position - transform.position);
			transform.rotation = Quaternion.Lerp(transform.rotation, targetRotation, 4f * Time.deltaTime); 
			//move toward player & stay above ground
			transform.position += (player.transform.position - transform.position).normalized * 4 * Time.deltaTime;
			if(transform.position.y > 1.2f)
				transform.position = new Vector3(transform.position.x, 1.2f, transform.position.z);
			if(transform.position.y < 0f)
				transform.position = new Vector3(transform.position.x, 0f, transform.position.z);
			// bounce
			transform.position +=  Mathf.Sin(Time.time * bounceRate) * bounceHeight * transform.up;
		}

		// reset with space
		if(gameover){
			if(Input.GetKey(KeyCode.Space)){
				Application.LoadLevel(0);
			}
		}
	}

	void OnTriggerEnter(Collider other) {
		if(other.transform == player.transform){
			linkedText.text = "GAME OVER\nPress Space To Restart";
			gameover = true;
			player.GetComponent<MyCharacterController>().enabled = false;
		}
	}
}
