# Titanium IOS YouTube Player

## Description

With this module you can play youtube videos on your titanium ios app

## Quick Start

### Get it [![gitTio](http://gitt.io/badge.png)](http://gitt.io/component/it.scsoft.tiyoutube)
Download the latest distribution ZIP-file and consult the [Titanium Documentation](http://docs.appcelerator.com/titanium/latest/#!/guide/Using_a_Module) on how install it, or simply use the [gitTio CLI](http://gitt.io/cli):

`$ gittio install it.scsoft.tiyoutube`


## Community Driven

I encourage everyone to send Pull Requests - keeping this module flying with new features.


## Author

**Samuele Coppede'**  
web: http://www.scsoft.it  
email: samuele@scsoft.it
twitter: @samuele81



# Example 

```javascript


var tiyoutube = require('it.scsoft.tiyoutube');


tiyoutube.openVideo({
    url:'http://youtu.be/P5_GlAOCHyE'
});

```

## DONATIONS

If you like my work and help me to mantain updated this module you can donate with paypal

<a href="https://www.paypal.com/cgi-bin/webscr?cmd=_donations&business=samuele%2ecoppede%40gmail%2ecom&lc=IT&item_name=Titanium%20SDK%20Socialize%20Module&no_note=0&currency_code=EUR&bn=PP%2dDonationsBF%3abtn_donateCC_LG%2egif%3aNonHostedGuest"><img src="https://www.paypalobjects.com/en_US/i/btn/btn_donate_SM.gif" alt="[paypal]" /></a>




##API

```objective-c
//Pass the url of the video

tiyoutube.openVideo();


```


## License

	
    Copyright (c) 2010-2014 Samuele Coppede

    Permission is hereby granted, free of charge, to any person obtaining a copy
    of this software and associated documentation files (the "Software"), to deal
    in the Software without restriction, including without limitation the rights
    to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
    copies of the Software, and to permit persons to whom the Software is
    furnished to do so, subject to the following conditions:

    The above copyright notice and this permission notice shall be included in
    all copies or substantial portions of the Software.

    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
    IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
    FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
    AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
    LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
    OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
    THE SOFTWARE.
    


------------------------------