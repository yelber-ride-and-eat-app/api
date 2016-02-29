# Yelber - A ride-and-eat / eat-and-ride API

The students at The Iron Yard - Durham get hungry, regularly. With very specific cravings and limited transportation options, they turned to Yelp and Uber to satiate their cravings.

This API takes in a `term` and `location` to find the best restaurant option (as defined by Yelp). Then, it charts the course from The Iron Yard campus to the chosen restaurant (through Uber). The API responds with the chosen restaurant and Uber price estimates based on car selection.

## Using the API

```bash
GET /api/v1/find
```

Query parameters:

| Name            | Type          | Description                          |
| -------------   | ------------- | -------------                        |
| `term`          | string        | describing the current food craving (e.g "tacos"  |
| `location`      | string        | city, state (e.g "Raleigh, NC")        |


## Sample response:

```bash
GET /api/v1/find?term=pizza&location=raleigh,nc
```
```json
{
"restaurant": {
  "name": "Tazza Kitchen Cameron Village",
  "category": "Pizza",
  "rating": "4.5"
  },
"trip": {
  "distance": "22.98 miles",
  "rides": [
    {
    "type": "UberX",
    "price_estimate": "$20-27"
    },
    {
    "type": "UberXL",
    "price_estimate": "$34-45"
    },
    {
    "type": "UberSELECT",
    "price_estimate": "$46-61"
    }
    ]
  }
}
```

## Run the API locally

To get this application up and running locally, you'll need to:

### Install all necessary gems
```bash
bundle install
```

### Create/set up your environment variables.
In your `.bash_profile` set up the following using your own Yelp/Uber keys
```
export UBER_TOKEN=

export YELP_CONSUMER_KEY=
export YELP_CONSUMER_SECRET=
export YELP_TOKEN=
export YELP_TOKEN_SECRET=
```
