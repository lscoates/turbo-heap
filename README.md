# Rails 7 with Heap Testing

This is a simple Rails 7 app using turbo frames and the Heap js snippet for testing an issue where the `Turbo-Frame` header is dropped from certain requests, causing a full-page reload.

## Reproducing the Issue

In general we can reproduce the issue by:

1. Navigating to `/posts`
2. Refreshing the page
3. Clicking on one of the "Post X" links
    - this reproduces the issue most of the time, but occasionally it will work.

**Expected Behaviour**

The red border represents the Turbo Frame on the page. We should see the content within the Turbo Frame update with the selected Post and the rest of the content on the page remain unchanged. The URL should remain as `/posts`.

**Actual Behaviour**

The `Turbo-Frame` header is dropped from the request causing a full page reload. The URL updates to `/posts/<:post_id>` and the "Posts" `h1` and "Content not part of the turbo frame." text disappear.

## Demo

https://user-images.githubusercontent.com/2301097/210884154-715bf339-af20-46f7-9e59-b9339072f96d.mp4
