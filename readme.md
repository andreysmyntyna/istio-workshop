# Homework

## Homework 1

- Add HTTP health-check for services
- Create a route based on HTTP headers value. E.g. if requests has header x-route-to: service2 - route to service to. With any other values - route to serice1.


Code samples: https://github.com/SeriyBg/istio-workshop


## Homework 2

- Create canary deployment for quote-service (based on some HTTP header route users to service v2 or v1)
- Create fault injection (abort or delay) for quote-service
- (Optional) Add logic to any service (quote or ui) to throw an exception and/or delay the response. Add the configuration for timeout and/or retries.

