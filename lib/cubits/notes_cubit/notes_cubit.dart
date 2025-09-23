import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:new_notes_app/consts.dart';
import 'package:new_notes_app/models/note_model.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());
  List<NoteModel>? notesList;
  fetchNotes() async {
    Box notesBox = Hive.box<NoteModel>(kNotesBox);

    notesList = notesBox.values.cast<NoteModel>().toList();
    emit(NotesSuccess());
  }
}
