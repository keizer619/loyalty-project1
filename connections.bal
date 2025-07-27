import ballerina/http;
import ballerinax/googleapis.gmail;

final http:Client httpClient = check new ("https://10717d68-0b05-4594-95ed-2f4f1c0c26b6-dev.e1-us-east-azure.choreoapis.dev/default/o2mart-core-service/v1.0/");
final gmail:Client gmailClient = check new ({
    auth: {
        refreshToken: clientId,
        clientId: clientSecret,
        clientSecret: clientSecret
    }
});
