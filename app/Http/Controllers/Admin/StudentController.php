<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Student;
use App\Models\Teacher;
use DataTables;

class StudentController extends Controller
{
    public function index()
    {
        $students = Student::with('teacher')->paginate(10);
        return view('admin.students.index', compact('students'));
    }

    public function create()
    {
        $teachers = Teacher::all();
        return view('admin.students.create', compact('teachers'));
    }

    public function store(Request $request)
    {
        $request->validate([
            'student_name' => 'required|string|max:255',
            'class_teacher_id' => 'required|exists:teachers,id',
            'class' => 'required|string|max:255',
            'admission_date' => 'required|date',
            'yearly_fees' => 'required|numeric|min:0',
        ]);

        Student::create($request->all());
        return redirect()->route('students.index')->with('success', 'Student created successfully.');
    }

    public function show(Student $student)
    {
        return view('admin.students.show', compact('student'));
    }

    public function edit(Student $student)
    {
        $teachers = Teacher::all();
        return view('admin.students.edit', compact('student', 'teachers'));
    }

    public function update(Request $request, Student $student)
    {
        $request->validate([
            'student_name' => 'required|string|max:255',
            'class_teacher_id' => 'required|exists:teachers,id',
            'class' => 'required|string|max:255',
            'admission_date' => 'required|date',
            'yearly_fees' => 'required|numeric|min:0',
        ]);

        $student->update($request->all());
        return redirect()->route('students.index')->with('success', 'Student updated successfully.');
    }

    public function destroy(Student $student)
    {
        $student->delete();
        return redirect()->route('students.index')->with('success', 'Student deleted successfully.');
    }

    public function getData()
    {
    
        $data = Student::with(['teacher'])->orderby('id', 'DESC');
            return DataTables::of($data)
                ->addIndexColumn()
                ->addColumn('class_teacher_id', function($row){
                    return $row->teacher->teacher_name;
                })
                ->addColumn('action', function($row){
                    $actionBtn = '
                        <a href="' . route('students.edit', $row->id) . '" class="edit btn btn-success btn-sm">Edit</a> 
                        <form action="' . route('students.destroy', $row->id) . '" method="POST" class="d-inline">
                            ' . csrf_field() . '
                            ' . method_field('DELETE') . '
                            <button type="submit" class="delete btn btn-danger btn-sm">Delete</button>
                        </form>';
                    return $actionBtn;
                })
                ->rawColumns(['class_teacher_id', 'action'])
                ->make(true);
    
            return view('students.index');    
    }
}
