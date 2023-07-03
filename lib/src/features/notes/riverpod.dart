import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:reactive_forms/reactive_forms.dart';



// -------- add new note form provider --------
final addFormProvider = Provider((ref) => FormGroup({
  'title' : FormControl<String>(validators: [Validators.required]),
  'details' : FormControl<String>(validators: [Validators.required])
}));