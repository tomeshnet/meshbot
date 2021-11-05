# Description:
#   Bot Glossary
#

fuzzy = require 'fuzzy'

module.exports = (robot) ->
  robot.respond /what is (.*)\??/i, (msg) ->
    term = msg.match[1]
    term = term.split("\?")[0].trim() if term.length > 0
    items = [];
    err_msg = "Oops I couldn't find anything :-("
	
    items.push 
        title:"Node",content:"A connection point on a network. A network is formed when two nodes are able to communicate with one another."
    items.push 
        title:"Link",content:"A logical connection between two nodes (ignoring physical infrastructure in the way) or a physical link between two nodes (using ethernet, fiber, wireless equipment, etc.). Links allow nodes to communicate with one another."
    items.push 
        title:"Supernode",content:"A node on the network that actively routes traffic/data for other nodes."
    items.push 
        title:"Peer",content:"A node on the network that both supplies and consumes network resources."
    items.push 
        title:"Edge",content:"An entry point onto a network. Generally an edge acts as a router which sits between a smaller, more localized subnetwork and a network backbone."
    items.push 
        title:"Backbone",content:"The core of a network, responsible for connecting and quickly routing traffic/data between other subnetworks."
    items.push 
        title:"Backhaul",content:"The intermediate links between the network’s backbone and edge subnetworks."
    items.push 
        title:"Hop",content:"One portion of network path between the source and destination. Anytime data flows through another node on the network on the way to its destination, a hop occurs."
    items.push 
        title:"Route/Path",content:"A specified course taken from a starting point to a destination."
    items.push 
        title:"Data Packet",content:"A piece of data packaged up to be sent logically along a network path to a specific destination."
    items.push 
        title:"Ethernet Frame",content:"A piece of data packaged up to be transmitted physically along a network path to a specific destination."
    items.push 
        title:"Protocol",content:"A set of rules or standards for communication between nodes on a network."
    items.push 
        title:"Propagation",content:"The movement of data from one or more sources to one or more discrete destinations through a network, usually to make the data more accessible."
    items.push 
        title:"Multiplexing",content:"When several different signals (digital and/or analog) are combined to be transferred over one shared medium."
    items.push 
        title:"Topology",content:"The way in which objects are arranged and how they relate to one another."
    items.push 
        title:"Centralized",content:"A network topology where all users/clients need to connect to a central server for all communications."
    items.push 
        title:"Decentralized",content:"A network topology where multiple servers are linked together, allowing clients to connect to any server and still be within the same network."
    items.push 
        title:"Distributed",content:"A network topology where all actors connect and communicate with one another, forming a peer-to-peer network. Each actor is both a client and a server."
    items.push 
        title:"Federated",content:"A network topology consisting of smaller, more centralized self-governed organizations (usually one server and many clients) that elect to share data with one another."
    items.push 
        title:"Point-to-Point",content:"A communication connection between two nodes."
    items.push 
        title:"dBm",content:"Decibel-milliwatts, the power ratio in decibels per milliwatt used to measure absolute power."
    items.push 
        title:"Gain",content:"A measure of an antenna’s ability to convert input power into radio waves concentrated in a particular connection."
    items.push 
        title:"Radio",content:"A device within a piece of electronic equipment responsible for sending/receiving wireless signals."
    items.push 
        title:"EIRP",content:"Equivalent Isotropically Radiated Power, an IEEE standard for directional radio frequency power. The EIRP is the product of transmitter power and antenna gain for an isotropic antenna, measured in dBi (decibel isotropic)."
    items.push 
        title:"Frequency",content:"The rate in which a complete radio wave occurs over a period of time. Typically measured in Hertz (Hz)."
    items.push 
        title:"Wavelength",content:"The distance (in meters) of a complete radio wave."
    items.push 
        title:"Amplitude",content:"The distance (in meters) from the center of a wavex to its crest/trough (the edge)."
    items.push 
        title:"Band (spectrum)",content:"Radio frequencies lie between 3 kHz and 300 GHz and are split up into different bands set aside to be used for the same purpose."
    items.push 
        title:"Omnidirectional",content:"A type of antenna that radiates radio wave power uniformly in all directions on one plane."
    items.push 
        title:"Isotropic",content:"A type of antenna that radiates power in all directions. No existing physical antenna is actually fully isotropic, though isotropic antennas are also used as reference for gain."
    items.push 
        title:"Yagi",content:"A type of antenna consisting of multiple parallel elements arranged in a line."
    items.push 
        title:"Cantenna",content:"A directional waveguide antenna, made out of an open-ended metal can and designed to be unidirectional."
    items.push 
        title:"CJDNS",content:"A layer 2/3 mesh networking protocol and application created by Caleb James DeLisle. CJDNS features encrypted connections, IPV6 addressing, and distributed routing."
    items.push 
        title:"Routing Table",content:"A set of rules that determine where packets will be directed within a network."
    items.push 
        title:"802.11s",content:"An amendment to the IEEE 802.11 wireless local area network specification defining how wireless devices can communicate in static or ad hoc networks."
    items.push 
        title:"Mesh Point (MP)",content:"An operation mode defined within the 802.11s standard. Mesh Point allows nodes in a network to discover neighbor nodes and keep track of them."
    items.push
         title:"Auto-Peering",content:"The ability for two peers on a network to automatically link with one another using zero configuration."
    items.push 
        title:"Tunneling/Overlaying",content:"Securely encapsulating communication/traffic from a private network within a larger, public network."

    results = fuzzy.filter(term, items,
        extract: (el) ->
            el.title
    )

    matches = results.map (el) ->
        el.original.content
    matches = err_msg if matches.length is 0
    msg.send matches + ''
