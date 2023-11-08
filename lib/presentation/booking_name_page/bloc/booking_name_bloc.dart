import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:jatin_kumar_s_application3/presentation/booking_name_page/models/booking_name_model.dart';part 'booking_name_event.dart';part 'booking_name_state.dart';/// A bloc that manages the state of a BookingName according to the event that is dispatched to it.
class BookingNameBloc extends Bloc<BookingNameEvent, BookingNameState> {BookingNameBloc(BookingNameState initialState) : super(initialState) { on<BookingNameInitialEvent>(_onInitialize); }

_onInitialize(BookingNameInitialEvent event, Emitter<BookingNameState> emit, ) async  { emit(state.copyWith(editText1Controller: TextEditingController(), editText2Controller: TextEditingController(), editText3Controller: TextEditingController(), editText4Controller: TextEditingController(), editText5Controller: TextEditingController())); } 
 }
