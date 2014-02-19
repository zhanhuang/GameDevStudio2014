using UnityEngine;
using System.Collections;

public class MyCharacterController : MonoBehaviour {
	
	// player attributes
	public float moveSpeed;		// suggested: 	 6
	public float jumpTime;		// 				 2
	public float jumpMagnitude;	// 				 15
	public float gravity;		// 				 5
	public int jumps;			// 				 2

	// private run time variables
	Vector3 startPosition;
	Quaternion startRotation;
	int jumpsLeft;
	float airTime;
	Vector3 moveDirection;

	// frequently used variables
	CharacterController playerController;
	Transform playerTransform;
	Transform cameraTransform;
	Transform wheels;

	// Use this for initialization
	void Start () {
		// set variables for convenience
		playerController = GetComponent<CharacterController>();
		playerTransform = GetComponent<Transform>();
		cameraTransform = transform.Find("Main Camera").GetComponent<Transform>();
		wheels = transform.Find("wheels").GetComponent<Transform>();
		startPosition = playerTransform.position;
		startRotation = playerTransform.rotation;
		airTime = -0.5f;

		// hide mouse
		Screen.showCursor = false;
	}
	
	// Update is called once per frame
	void Update () {

		//reset jumping
		if(!playerController.isGrounded){
			airTime -= Time.deltaTime * gravity;
		} else{
			// reset jumps and airtime
			if (jumpsLeft < jumps){
				jumpsLeft = jumps;
			}
			if (airTime < 0.5f){
				airTime = -0.5f; // ensure isGrounded checks work with a default gravity higher than 0 
			}
		}

		//jumping with space
		if(Input.GetKeyDown(KeyCode.Space)){
			if(jumpsLeft > 0){
				jumpsLeft -= 1;
				airTime = jumpTime;
			} else{
//				Debug.Log("no jumps left");
			}
		}

		//simulates jumping motion and gravity. when airtime < 0, player drops down with gravity
		moveDirection = new Vector3(0,1.0f,0) * jumpMagnitude * Time.deltaTime * airTime;
		
		//moving and rotation with WASD
		if(Input.GetKey(KeyCode.W) || Input.GetKey(KeyCode.UpArrow)){
			moveDirection += playerTransform.forward.normalized * Time.deltaTime * moveSpeed;
		} else if (Input.GetKey(KeyCode.S) || Input.GetKey(KeyCode.DownArrow)){
			moveDirection += -playerTransform.forward.normalized * Time.deltaTime * moveSpeed * .6f;
		}
		if(Input.GetKey(KeyCode.A) || Input.GetKey(KeyCode.LeftArrow)){
			moveDirection += -playerTransform.right.normalized * Time.deltaTime * moveSpeed;
		} else if (Input.GetKey(KeyCode.D) || Input.GetKey(KeyCode.RightArrow)){
			moveDirection += playerTransform.right.normalized * Time.deltaTime * moveSpeed;
		}

		//looking and turning with mouse
		playerTransform.Rotate(new Vector3(0,90,0) * Time.deltaTime * Input.GetAxis("Mouse X"));
		// set max and min for rotation of camera
		float cameraRotationX = cameraTransform.rotation.eulerAngles.x;
		if((!(cameraRotationX < 320f && cameraRotationX > 180f && Input.GetAxis("Mouse Y") > 0) && 
		    !(cameraRotationX > 40f && cameraRotationX < 180f && Input.GetAxis("Mouse Y") < 0))){
			cameraTransform.Rotate(new Vector3(-90,0,0) * Time.deltaTime * Input.GetAxis("Mouse Y"));
		}

		// wheel turn
		float wheelTurnAngle = 0f;
		if(Input.GetKey(KeyCode.W) || Input.GetKey(KeyCode.UpArrow)){
			if(Input.GetKey(KeyCode.A) || Input.GetKey(KeyCode.LeftArrow)){
				wheelTurnAngle = -45f;
			} else if (Input.GetKey(KeyCode.D) || Input.GetKey(KeyCode.RightArrow)){
				wheelTurnAngle = 45f;
			}
		} else if (Input.GetKey(KeyCode.S) || Input.GetKey(KeyCode.DownArrow)){
			if(Input.GetKey(KeyCode.A) || Input.GetKey(KeyCode.LeftArrow)){
				wheelTurnAngle = 45f;
			} else if (Input.GetKey(KeyCode.D) || Input.GetKey(KeyCode.RightArrow)){
				wheelTurnAngle = -45f;
			}
		} else{
			if(Input.GetKey(KeyCode.A) || Input.GetKey(KeyCode.LeftArrow)){
				wheelTurnAngle = -90f;
			}else if (Input.GetKey(KeyCode.D) || Input.GetKey(KeyCode.RightArrow)){
				wheelTurnAngle = 90f;
			}
		}
		wheels.localRotation = Quaternion.Lerp(wheels.localRotation, Quaternion.Euler(new Vector3(0f, wheelTurnAngle, 0f)), 4*Time.deltaTime);

		playerController.Move(moveDirection);

		//reset on death
		if(playerTransform.position.y < -20f){
			playerTransform.position = startPosition;
			playerTransform.rotation = startRotation;
			jumpsLeft = jumps;
		}

	}
}
