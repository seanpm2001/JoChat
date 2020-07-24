type Nodi:void{
.numeroPorta: string
.nomeNodo: string
}

type ListaChat: Chat

type ListaNodi: Nodi

type Chat: void {
    .nomeChat: string
}

type joinRequest: void {
    .nomeNodo: string
    .numeroPorta: string
}

type joinResponse: void {
    .message?: string
}

type AddChatRequest: void {
    .chat_name: string
    .username: string
    .location: string
}
type AddChatResponse: void {
    .token: string
}

type ChatSendMessageRequest: void {
    .token: string
    .message: string
}

type SetMessageRequest: void {
    .message: string
    .chat_name: string
    .username: string
}

type Info: void {
    .numeroPorta: string
    .msg: string
    .usernameMittente: string
}

type Messaggio: void {
    .messaggio: string
    .username: string
}

type Informazioni: void {
    .nomeMittente: string
    .nomeDestinatario: string
    .msg: string
}

type listaPartecipanti: void {
    .numeroPorta*: string
}


interface ServerInterface {
RequestResponse:
    join( joinRequest ) ( joinResponse ),
    getNodi( string ) ( string ),
    addChat( AddChatRequest )( AddChatResponse ),
    addNameChat( string )( string ),
    checkEsistenzaGruppo( string ) ( string ),
    getPortaDestinatario( string )( string ),
    getChat( void )( string ),
    sendInfoPrivate( Info )( void ),
    sendNomeGruppo( string )( listaPartecipanti ),
    sendMessage( ChatSendMessageRequest )( void ) throws TokenNotValid
OneWay:
    log(string),
    setMessage( SetMessageRequest ),
    sendChat( string ),
    invioPrivato( Informazioni )
}
