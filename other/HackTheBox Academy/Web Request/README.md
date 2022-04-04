# Web Request

## HyperText Transfer Protocol (HTTP)

[HTTP](https://tools.ietf.org/html/rfc2616) is an application-level protocol. Most access the World Wide Web resources.
The term **hypertext**  stands for text containing links to other resources and text that the readers can easily interpret.

HTTP communication consists of a client and a server, where the client requests the server for  a resource.
The server processes the requests and returns the requested resource.
The default port for HTTP communication is port **80** , though this can be changed to any other port, depending on web server configuration.
The same requests are utilized when we use the internet to visit different website.
We enter a **Fully Qualified Domain Name(FQDN) as a Uniform Resource Locator(URL)** to reach the desired website, like [hackthebox](https://hackthebox.com).

## URL

Resources over HTTP are accessed via a **URL**, which offers many more specifications than simply specifying a website we want to visit, Let's lokk at the structure of a URL:

![URL](./img/url.png) 

Here is what each component stands for:

| Componenct    | Example    | Description    |
|---------------- | --------------- | --------------- |
| Scheme    | http:// https://    | This is used to identify the protocol being accessed by the client, and ends with a colon and a double slash (://)    |
| User Info    | admin:password@    | This is an optional that contains the credntials (separated by a colon :) used to authenticate to the host, and is separated by the host with an at sign (@)    |
| Host   | inlanefreight.com   | The host signifies the resource location. This can be a hostname or an IP address   |
| Port   | :80   | The **Port** is separated from the Host by a colon (:). If no port is speciffied, http schemes default to port 80 and https default to port 443   |
| Path   | /dashboard.php   | This points to the resource being accessed, which can be a file or a folder. If there no path specified, the server returns the default index (e.g. index.html)  |
| Query String  | ?login=true   | The query string start with a question mark (?), and consist of a parameter (e.g, login) and a value (e.g.  true). Multiple parameters can be separated by an ampersand (&)   |
| Fragments   | #status   | Fragments are processed by the browsers on the client-side to locate sections within the primary resource (e.g a header or section on the page).  |the browsers on the client-side to locate sections within the primary resource (e.g a header or section on the page).  |the browsers on the client-side to locate sections within the primary resource (e.g a header or section on the page).  |the browsers on the client-side to locate sections within the primary resource (e.g a header or section on the page).  |

Not all components are required to access a resource. The main mandatory field are the scheme and the host, without which the request would have no resource to request.

## HTTP Flow

![HTTP Flow](./img/htt-flow.png)

The diagram above presents to anatomy of an HTTP request at a very high level.
The first time a user enters the URL (inlanefreight.com) into the browser, it sends a request to a DNS (Domain Name Resolution) server to resolve the domain and get its IP.
The DNS server looks up the IP address for inlanefreight.com and returs it.
All domain names need to be resolved this way, as a server can't communicate without an IP address.

> **Note:** Our browsers usually first look up records in the local '/etc/hosts' file, and if the requested domain dose not exist within it, then they would contact other DNS servers. We can use the '/etc/hosts' to manually add records to for DNS resolution, by adding the IP followed by the domain name.

One the browser gets the IP address linked to the requested domain, it sends a GET request to the default HTTP port (e.g. 80), asking for the root / path.
Then, the web server receives the request and processes it.
By default, servers are configured to return an index file when a request for / is received.

In this case, the contents of index.html are read and returned by th eweb server as an HTTP response. The response also contains the status code (e.g. 200 OK), which indicated that the request was successfully processed.
The web browser then renders the index.html contents and presents it to the user.

> **Note:** This module is mainly focused on HTTP web requests. For more on HTML and web applications, you may refer to the [Introduction to Web Appclications](https://academy.hackthebox.com/module/details/75) module.

## cURL

In this module, we will be sending 





































