require("rapid-core");
require("rapid-httpserver");

rapid.define({
	"config.rapid-service-sockjs":{
		prefix:"/sockjs"
	},
	"config.rapid-httpserver":{
		autoStart:true,
		mapping:[
		    {	
		    	url:"/*",
		    	resource:"/*"
    		}
		]
	}
});
