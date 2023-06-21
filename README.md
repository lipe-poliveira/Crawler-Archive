#  CRAWLER.SH #

Usage
Download the crawler.sh script to your desired location.

> git clone https://github.com/lipe-poliveira/Crawler-Archive.git

Navigate to the script's directory.
> cd crawler.sh

Grant execute permission to the script.
>> chmod +x crawler.sh

Execute the script with the desired options.
> ./crawler.sh [-l domain] [-u url] [-js] [-json] [-html] [-php] [-base64] [-redirect]

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
Download the crawler.sh script by cloning the repository or by manually obtaining the script file.

Open a terminal window and navigate to the directory where the crawler.sh script is located.
> cd /path/to/crawler.sh

Grant execute permission to the script by using the chmod command.
> chmod +x crawler.sh

Execute the script with the desired options to perform URL extraction and filtering. Customize the options according to your requirements.
> ./crawler.sh -l example.com -js -redirect

Ensure that you have the necessary permissions to execute the script and have the curl utility installed to ensure successful requests. 
