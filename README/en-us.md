###############CRAWLER.SH##############
Crawler.sh is a shell script that enables URL extraction and filtering from a file or a specific URL. 
It provides various options to filter URLs based on extensions and specific patterns, allowing you to collect specific information from the URLs found.

Usage
$ ./crawler.sh [-l domain] [-u url] [-js] [-json] [-html] [-php] [-base64] [-redirect]

Arguments
-l domain: Sets the domain to perform the URL search on. The script reads a file with subdomains for the specified domain.
-u url: Specifies a specific URL to perform the extraction and filtering on.
Additional Options
-js: Filters and saves URLs that end with the .js extension.
-json: Filters and saves URLs that end with the .json extension.
-html: Filters and saves URLs that end with the .html extension.
-php: Filters and saves URLs that end with the .php extension.
-base64: Filters and saves URLs that contain the == sequence.
-redirect: Filters and saves URLs that contain the word "redirect".
Functionality
The script checks the provided arguments for correctness and completeness. If the arguments are invalid, it displays an appropriate usage message and exits.

If the -l option is used, the script reads a file containing subdomains for the specified domain. If the -u option is used, the script performs the extraction and filtering on the specified URL.

The script constructs a request URL for each URL using the web.archive.org service. 
It then uses the curl command to make the request and saves the response to a file named resultados.txt. After downloading each URL, a completion message is displayed.

The script sanitizes the data by applying additional filtering based on the selected options. 
It filters the URLs based on extensions and specific patterns and saves the filtered URLs to separate files. The available options include -js, -json, -html, -php, -base64, and -redirect. 
If an invalid option is provided, the script displays an error message and exits.

Upon completion, the script displays a message indicating the end of the process.

Make sure you have the necessary permissions to execute this script and have curl installed to ensure successful requests.
