#!/usr/bin/env node
// print all tweets from a Twitter archive
// usage: tweets.sh archive.js
// archive.js should take the format: module.exports = [{ tweets }]

const tweets = require(process.argv[2])

// remove retweets
const a = tweets.filter(tweet => tweet['tweet']['full_text'].indexOf('RT @') !== 0)
// remove replies
const b = a.filter(tweet => tweet['tweet']['in_reply_to_screen_name'] === undefined)
// remove Foursquare tweets
const c = b.filter(tweet => tweet['tweet']['source'].indexOf('Foursquare') === -1)

c.forEach(tweet => {
  let text = tweet['tweet']['full_text']
  text = text.replace(/\n/g, '')
  console.log(text)
})
