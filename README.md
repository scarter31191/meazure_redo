# Portal API

A student API that takes in the students information and displays if a test is ready to be taken or not.


## API Usage
Send request to api route
```
{  
  "first_name": string,
  "last_name": string,
  "phone_number": string,
  "username": string,
  "password_digest": string,
  "college_id": integer,
  "exam_id": integer,
  "start_time": DateTime
}
```

#### API Route

```http
  POST http://localhost:3000/api/v1/portal
```

## License
[MIT](https://choosealicense.com/licenses/mit/)


* ...
