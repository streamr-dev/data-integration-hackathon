# data-integration-hackathon

Included is an example script *app.js* that sends random data to a Streamr stream. Also included is *package.json*
for dependency management and devops infastructure code (e.g. *Dockerfile*).

## Start here

### 1. Get API Key
1. [Login](https://www.streamr.com/login/auth) or [register](https://www.streamr.com/register/signup) to Streamr
2. Grab your user API key from [here](https://www.streamr.com/profile/edit)
3. Export the API key with `export API_KEY=<YOUR_API_KEY_FROM_ABOVE>`

### 2. Clone repo and install dependencies
1. `git clone git@github.com:streamr-dev/data-integration-hackathon.git`
2. `npm install`

### 3. Edit and Run
1. Open *app.js* in your IDE/editor of choice
2. Edit constant `STREAM_NAME` (use your imagination, stream does not have to exist yet)
3. `npm start`
4. If everything works, you should see `Event sent: {...}` style logging in standard output.
5. Go to [Streams list page](https://www.streamr.com/stream/list), find your newly created Stream, and ensure data is
flowing in by looking at the Recent Events tab, e.g.,

![Recent events](images/recent-events.png)

**You are ready to hack!**


## TODO: End here
- Customize your `package.json`
- Make sure `npm start` runs your script
- Make sure all dependencies are present in `package.json`
- Make sure you have configured the fields of your streams in Streamr.com.
- Pushing to EC2 with Mikhael

## Help

### Links
- [Documentation for streamr-client](https://github.com/streamr-dev/streamr-client)
- [Streamr API Swagger](https://www.streamr.com/help/api)

### Troubleshooting errors

**API key is wrong:**
```
Error: Request to https://www.streamr.com/api/v1/streams?name=my-sweet-stream&public=false returned with error code 401: {"code":"NOT_AUTHENTICATED","message":"Not authenticated via token or cookie"}
```
