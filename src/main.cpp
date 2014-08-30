#include <iostream>
#include "client/client.h"
#include "socket/socket.h"

using namespace std;

int main() {
    cout<<"In main function."<<endl;
    Client myClient;
    cout<<"Past client."<<endl;
    Socket mySocket;
    cout<<"Received packet "<<mySocket.getPacket()<<endl;
}
