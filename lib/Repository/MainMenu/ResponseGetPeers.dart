import 'package:equatable/equatable.dart';

class ResponseGetPeers extends Equatable{
  final bool success;
  final String description;
  final List<String> peers;

  const ResponseGetPeers({required this.success,
                          required this.description,
                          required this.peers});

  @override
  List<Object?> get props => [success, description, peers];

  ResponseGetPeers.fromJson({required Map<String, dynamic> json})
      :success = json['success'],
        description = json['description'],
        peers = json['peers'];

  @override
  String toString(){
    return "ResponseGetPeers:\nSuccess: $success\nDescription: $description\nPeers: $peers";
  }
}