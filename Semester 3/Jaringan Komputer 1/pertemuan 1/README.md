# Jaringan Komputer I

## ICT Growth

- ICT Adalah _Information and communications technology_ adalah payung besar teminology yang mencakup seluruh peralatan teknis untuk memproses dan menyampaikan informasi. ICT mencakup dua aspek yaitu teknologi informasi dan teknologi komunikasi
  - Teknologi infomasi : meliputi segala hal yang berkaitan dengan proses, penggunaan sebagai alat bantu, manipulasi, dan pengelolaan informasi.
  - Teknologi komunikasi adalah segala sesuatu yang berkaitan dengan penggunaan alat bantu untuk memproses dan mentransfer data dari perangkat yang satu ke lainnya.

### Provider

- Provider Adalah sebuah istilah yang digunakan dalam dunia digital, yang berhubungan dengan jaringan komputer.
- Istilah ini sering digunakan dalam teknologi komputer, telpon rumah, maupun telpon seluler.
- Selain ini juga biasanya digunakan untuk melayani penggunaan dalam hal pembuatan website dan akses internet.

### Network

- Network adalah istilah populer dari jaringan komputer.
- Network merupakan kumpulan komputer yang dapat berkomunikasi satu sama lain, dengan menggunakan peralatan tertentu
- Didalam sebuah jaringan komputer, penggnaan peralatan tertentu ini dapat diakses secara bersama-sama (seperti disk dan printer) dan berhubungan dengan komputer induk sistem lain, yang letaknya berjauhan.

## Network Growth

**network growth** means, for any given period, the increase in the total number of users intergrated into and using the platform as a percentage of the total number of users as of immediatey prior to the start of such period.

### Public Switched Telephone Network (PSTN)

- _public switched thelephone network_ **PSTN** refers to the traditional backbone of telecommunication across the globe.
- While today's communication network has seen a digital shift, the PSTN historically made use of underground copper wires and telephone lines to connect people and businesses.

### Public Land Mobile Network (PLMN)

- In telecomunication, a _public land mobile network_ **PLMN** is a combination of wireless communications services offered by a specific operator in specific country.
- A **PLMN** typically consists of several cellular technologies like GSM/2G, UMTS/3G, LTE/4G, offered by a single operator within a given country, often referred to as a cellular network.

### IP Address

- An _Internet Protocol Address_ **IP Address** is a numerical labeh such as `192.168.1.1` that is connected to a computer network that uses the Internet Protocol for communication.
- An IP Address serves two main functions :
  - network interface identification.
  - Locatiion Addressing.
- _Internet Protocol Address version 4_ **IPv4** defines an IP address as a 32 bit number.

## OSI Layer

The OSI (Open System Interconnection) Model is a standardised.

| **OSI**      |
| ------------ |
| Application  |
| Presentation |
| Session      |
| Transport    |
| Network      |
| Data Link    |
| Physical     |

### Layer 7 Application

Providing an interface for them to use in order to transmit data.
When data is given to the application layer, it is passed down into presentation layer.

### Layer 6 Presentation

The Presentation layer receives data from the application layer.
This data in format that the application understands, but it's not necessarily is a standardised format that could be understood by the application layer in the _receiving_ computer.
The presentation layer translates the data into a standardised format, as well as handling any encryption, compression or other transformations to the data.
With this complete, the data is passed down to the session layer.

### Layer 5 Session

When the session layer receives the correctly formatted data from the presentation layer, it looks to see if it can set up a connection with the other computer across the network.
If it can't then it sends back an error and the process goes no further.
If session _can_ be established then it's the job of the session layer to maintain it, as well as co-operate with the session layer of the remote computer in other to synchronise communications.
The session layer is particularly important as the session that it creates is unique to the communication in question.
This is What allows you to make multiple request to different endpoints simultaneously without all the data getting mixed up (think about opening two tabs in a web browser at the same time)!
When the session layer has successfully logged a connection between the host and remoter computer the data is passed down to Layer 4:the transport Layer.

### Layer 4 Transport

The transport layer is very interesting layer that serves numerous important functions.
Its first purpose is to choose the protocol over the data is to be transmitted.
The two most common protocols in the transport layer are **TCP** (Transmit Control Protocol) and **UDP** (User Datagram Protocol); with TCP the transmission is _connection-based_ which means that a connection between the computers is established and maintained for the duration of the request.
This allow for a reliable transmission, as the connection can be used to ensure that packets _all_ get to the right place.
A TCP connection allows the two computers to remain in constant communication to ensure that the data is sent at an acceptable speed, and that any lost data is re-sent.
With UDP, the opposite is true;packets of data are essentially thrown at the receiving computer -- if it can't keep up the that's _its_ problem (this is why a video transmission over something like Skype can be pixelated if the connection is bad).
What this means is that would usually be chosen for situation where accuracy is favoured over speed (e.g. file transfer, or loading a webpage), and UDP would be used is situation where speed is more important (e.g. video streaming).

With a protocol selected, the transport layer then divides the transmission up into bite-sized pieces (over TCP there are called _segments_, over UDP they're called _datagrams_), which makes it easier to transmit the massage successfully.

### Layer 3 Network

The network layer is responsible for location the destination of your request. For example, the internet is a huge network; when you want to request information from a webpage, it's the network layer that takes the IP address for the page and figures out the best route to take.
At this stage we're working with what is refereed to as _Logical_ addressing (i.e. IP address) which are still software controlled.
Logical addresses are used to provide order to networks, categorising them and allowing us to properly sort them.
Currently the most common from of logical addressing is the IP Version 4 format, which you'll likely already be familiar with (i.e. 192.168.1.1 is a common address for a home router).

### Layer 2 Data Link

The data link layer focuses on the _physical_ addressing of the transmission.
It receives a packet from the network layer (that includes the IP address for the remote computer) and in the physical (MAC) address of the receiving endpoint.
Inside every network enabled computer is a Network Interface Card (NIC) which comes with a unique MAC (Media Access Control) address to identify it.

MAC addresses are set by the manufacturer and literally burnt into the card; they can't be changed -- although they _can_ be spoofed.
When information is sent across a network, it's actually the physical address that is used to identify where exactly to send the information.

Additionally, it's also the job of the data link layer to present the data in a format suitable for transmission.

The data link layer also serves an important function when it receives data, as it checks the receives information to make sure that it hasn't been corrupted during transmission, which could well happen when the data is transmitted by layer 1:the physical layer.

### Layer 1 Physical

The physical layer is right down to the hardware of the computer.
This is where the electrical pulses that make up data transfer over a network are sent and received.
It's the job of the physical layer to convert the binary data of the transmission into signals and transmit them across the network, as well as receiving incoming signals and converting them back into binary data.
