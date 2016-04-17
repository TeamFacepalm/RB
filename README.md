# VOTR API

Votr is a app that allows the user to view real-time election results as well as registered voters to submit their vote virtually.

## General Use

### Authorization

 All authorized requests unless otherwise mentioned require
 an "**Auth-Token**" header to be present. Users are assigned an
 Auth Token during account creation.

 ### Errors

 Any request that fails to be processed will contain an "errors"
 key in the returned JSON describing the problem.

 ## Routes

 #### POST /users

 This creates a new user
  
  Params:
    * first_name: string
    * last_name: string
    * email: string
    * password: string
    * ssn: string
    * dob: string
    * avatar: string
    * district_id: integer

  Returns 201 Created on Success and 422 Unprocessable Entity in case of failure.

  **Request:**

  ```
  {
     "first_name": "Bob"
     "last_name": "Jones"
     "email": "sample@sample.com"
     "password": "testtest"
     "ssn": "123-45-6789"
     "dob": "02/21/1981"
     "avatar": "http://media.washtimes.com.s3.amazonaws.com/BernieSanders.jpg"
     "district_id": "1"

  }
  ```
  **Response:**

  ```
  {
  "user": {
    "id": 32,
    "district_id": 1,
    "first_name": "Bob",
    "last_name": "Jones",
    "email": "sample@sample.com",
    "dob": 02/21/1981,
    "auth_token": "781bf26ded498825ca76eb7c50b60a77"
  },
  "avatar": "http://media.washtimes.com.s3.amazonaws.com/BernieSanders.jpg"
}

#### POST /login

	This logs in an authorized user

	Params:

	  * email: string
	  * password: string

	Returns 201 Created on Success and 422 Unprocessable Entity if fail.

	**Request:**

   ```
   {
   	"email": "sample@sample.com"
      "password": "testtest"
   }
   ```

   **Response:**

   ```
   {
  "user": {
    "email": "sample@sample.com",
    "auth_token": "781bf26ded498825ca76eb7c50b60a77"
  }
}
   ```

#### POST /candidates/:candidate_id/votes

	This allows a vote to be cast on a candidate

	Params:

	  * candidate_id: integer
	  * score: integer

#### GET /candidates

	This returns an index of all candidates

#### GET /districts

	This returns and index of all districts

#### GET /districts/:id

	This returns a district corresponding to an id parameter

	Params: 

	  * district_id: integer


