import 'package:equatable/equatable.dart';

class BasicResponse extends Equatable{
  final bool success;
  final String description;

  const BasicResponse({required this.success, required this.description});

  @override
  List<Object?> get props => [success, description];

  BasicResponse.fromJson({required Map<String, dynamic> json})
    :success = json['success'],
     description = json['description'];

  @override
  String toString(){
    return "BasicResponse:\nSuccess: $success\nDescription: $description";
  }
}