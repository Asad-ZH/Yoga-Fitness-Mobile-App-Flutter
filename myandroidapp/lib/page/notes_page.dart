import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:myandroidapp/db/note.dart';
import 'package:myandroidapp/db/notes_database.dart';
import 'package:myandroidapp/widget/note_card_widget.dart';

import '../Settings.dart';
import 'edit_note_page.dart';
import 'note_detail_page.dart';

class NotesPage extends StatefulWidget {
  @override
  _NotesPageState createState() => _NotesPageState();
}

class _NotesPageState extends State<NotesPage> {
  late List<Note> notes;
  bool isLoading = false;

  @override
  void initState() {
    super.initState();

    refreshNotes();
  }

  @override
  void dispose() {
    NotesDatabase.instance.close();

    super.dispose();
  }

  Future refreshNotes() async {
    setState(() => isLoading = true);

    this.notes = await NotesDatabase.instance.readAllNotes();

    setState(() => isLoading = false);
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.black,
          title: Image.network(
            "https://github.com/Asad-ZH/yoga-app/blob/main/myandroidapp/assets/appbarlogo.jpg?raw=true",
            fit: BoxFit.contain,
            height: 50,
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.settings),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Settings()),
                );
              },
            ),
          ],
        ),
        body: Container(
          decoration: BoxDecoration(color: Colors.black),
          child: Center(
            child: isLoading
                ? CircularProgressIndicator()
                : notes.isEmpty
                    ? Text(
                        'No Notes',
                        style: TextStyle(color: Colors.white, fontSize: 24),
                      )
                    : buildNotes(),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.grey,
          child: Icon(Icons.add),
          onPressed: () async {
            await Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => AddEditNotePage()),
            );

            refreshNotes();
          },
        ),
      );

  Widget buildNotes() => StaggeredGridView.countBuilder(
        padding: EdgeInsets.all(8),
        itemCount: notes.length,
        staggeredTileBuilder: (index) => StaggeredTile.fit(2),
        crossAxisCount: 4,
        mainAxisSpacing: 4,
        crossAxisSpacing: 4,
        itemBuilder: (context, index) {
          final note = notes[index];

          return GestureDetector(
            onTap: () async {
              await Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => NoteDetailPage(noteId: note.id!),
              ));

              refreshNotes();
            },
            child: NoteCardWidget(note: note, index: index),
          );
        },
      );
}
