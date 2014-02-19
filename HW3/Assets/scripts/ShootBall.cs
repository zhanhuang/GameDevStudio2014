using UnityEngine;
using System.Collections;

public class ShootBall : MonoBehaviour {
	public Rigidbody ball;
	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
		if(Input.GetKeyDown(KeyCode.E)){
			Rigidbody newBall;
			Vector3 shootFrom = transform.position + transform.forward.normalized * 2f + transform.up.normalized * 2f;
			newBall = Instantiate(ball, shootFrom, Quaternion.identity) as Rigidbody;
			newBall.velocity = transform.forward.normalized * 5f + transform.up.normalized * 20f;
		}
	}
}
