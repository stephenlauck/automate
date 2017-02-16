# automate build install and testing cookbook

#### Usage

List available builds

`kitchen list`

Pick and OS and build

`kitchen converge centos`

Validate

[https://33.33.33.10/](https://33.33.33.10/)

#### Testing - Run the whole thing serially, best done after you have an inspec test validating that the server is up.

`kitchen test`

#### This cookbook is designed to:

1) build the current automate build

2) across at least 2 target OS

3) run inspec test to see if automate is functioning
