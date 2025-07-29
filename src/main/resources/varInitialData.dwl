%dw 2.0
output application/json
---
{
	destination: attributes.queryParams.destination,
	correlationId: attributes.headers."x-correlation-id",
	source: attributes.headers."x-source-system",
	weather: lookup("privateFlowWeather", attributes.queryParams.destination, 10000)
}