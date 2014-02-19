using UnityEngine;
using System.Collections;

public class Generator : MonoBehaviour {
	public Transform model1, model2, model3, model4, model5;
	public GUIText scoreBoard;
	float spread = 20;
	int hoopCounter = 0;
	int scored = 0;
	float generateCountdown = 1f;
	// Use this for initialization
	void Start () {
		// 11 x 11
		for(int x=-5; x < 6; x++){
			for(int y=-5; y < 6; y++){
				float randomNum = Random.Range(0f, 100f);
				//TODO: randomize facing direction

				if(randomNum < 25f){
					Instantiate(model1, new Vector3(x*spread, 0f, y*spread), Quaternion.Euler(new Vector3(0f, 90f * Random.Range(0,4), 0f)));
				} else if (randomNum < 50f){
					Instantiate(model2, new Vector3(x*spread, 0f, y*spread), Quaternion.Euler(new Vector3(0f, 90f * Random.Range(0,4), 0f)));
				} else if (randomNum < 70f){
					Instantiate(model3, new Vector3(x*spread, 0f, y*spread), Quaternion.Euler(new Vector3(0f, 90f * Random.Range(0,4), 0f)));
				} else if (randomNum < 90f){
					Instantiate(model4, new Vector3(x*spread, 0f, y*spread), Quaternion.Euler(new Vector3(0f, 90f * Random.Range(0,4), 0f)));
				} else{
					hoopCounter++;
					Instantiate(model5, new Vector3(x*spread, 0f, y*spread), Quaternion.Euler(new Vector3(0f, 90f * Random.Range(0,4), 0f)));
				}
			}
		}

		scoreBoard.text = "Score:" +scored + "/" + hoopCounter;

		if(hoopCounter == 0){
			makeCenterGuiText("No hoops... Press [Tab] to reset");
		}
	}
	
	// Update is called once per frame
	void Update () {
		// reset application on tab
		if(Input.GetKeyDown(KeyCode.Tab)){
			Application.LoadLevel(0);
		}
	}

	void Scored(){
		scoreBoard.text = "Nice Shot!!!";
	}

	void DisplayScore (){
		scored++;
		scoreBoard.text = "Score:" +scored + "/" + hoopCounter;
		if(scored >= hoopCounter){
			// all hoops scored
			makeCenterGuiText("CONGRATS!");
		}
	}

	// helper method, make a green GUIText in center from passed string
	void makeCenterGuiText(string str){
		GameObject winTextObj = new GameObject("winText");
		winTextObj.transform.position = new Vector3(0.5f,0.5f,0f);
		GUIText winText = (GUIText)winTextObj.AddComponent(typeof(GUIText));
		winText.anchor = TextAnchor.MiddleCenter;
		winText.alignment = TextAlignment.Center;
		winText.fontSize = 50;
		winText.color = Color.green;
		winText.text = str;
	}
}
