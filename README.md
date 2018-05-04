# data-integration-hackathon

## Start here

1. [Login](https://www.streamr.com/login/auth) or [register](https://www.streamr.com/register/signup) to Streamr
2. Grab your user API key from [here](https://www.streamr.com/profile/edit)
3. Export the API key with `export API_KEY=<YOUR_API_KEY_FROM_ABOVE>`
4. `git clone git@github.com:streamr-dev/data-integration-hackathon.git`
5. `npm install`
6. Open *app.js* in your IDE/editor of choice
7. Edit constant `STREAM_NAME` (use your imagination, stream does not have to exist yet)
8. `npm start`
9. If everything works, you should see `Event sent: {...}` style logging in standard output.
10. Go to [Streams list page](https://www.streamr.com/stream/list), find your newly created Stream, and ensure data is
flowing in by looking at the Recent Events tab, e.g.,

![Recent events](images/recent-events.png)

**You are ready to hack!**


## TODO: End here
- Make sure `npm start` runs your script
- Make sure all dependencies are present in `package.json`
- Make sure you have configured the fields of your streams.
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