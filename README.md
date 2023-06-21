#  CRAWLER.SH #

Here's an example of using the crawler.sh script:

Suppose you have a file named subdomains.txt containing the following subdomains for the domain example.com:
sub1
sub2
sub3

You want to extract and filter the URLs that correspond to JavaScript files (.js) and URLs that contain the word "redirect". 
You can run the following command:
$ ./crawler.sh -l example.com -js -redirect

The script will read the subdomains.txt file, construct the request URLs using the web.archive.org service, and save the corresponding URLs to separate files.

Upon completion, the script will display messages indicating the end of the process. You can find the filtered URLs in the js_urls.txt and redirect_urls.txt files.

Make sure the crawler.sh script is in the current directory, and you have the necessary permissions to execute it. Also, ensure that you have curl installed to successfully make the requests.

Remember to customize the parameters according to your needs, such as the domain, filtering options, and the subdomain file.
