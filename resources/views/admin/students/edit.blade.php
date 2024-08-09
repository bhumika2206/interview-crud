@extends('admin.layouts.master')
  
@section('content')

    <h1>Edit Student</h1>

    @include('admin.layouts.message')

    
    <form action="{{ route('students.update', $student->id) }}" method="POST">
    @csrf
    @method('PUT')

    <div class="mb-3">
        <label for="student_name" class="form-label">Name</label>
        <input type="text" name="student_name" id="student_name" class="form-control" value="{{ old('student_name', $student->student_name) }}">
        @error('student_name')
            <span class="text-danger">{{ $message }}</span>
        @enderror
    </div>

    <div class="mb-3">
        <label for="class_teacher_id" class="form-label">Teacher</label>
        <select name="class_teacher_id" id="class_teacher_id" class="form-control">
            @foreach ($teachers as $teacher)
                <option value="{{ $teacher->id }}" {{ old('class_teacher_id', $teacher->id) == $student->class_teacher_id ? 'selected' : '' }}>
                    {{ $teacher->teacher_name }}
                </option>
            @endforeach
        </select>
        @error('class_teacher_id')
            <span class="text-danger">{{ $message }}</span>
        @enderror
    </div>

    <div class="mb-3">
        <label for="class" class="form-label">Class</label>
        <input type="text" name="class" id="class" class="form-control" value="{{ old('class', $student->class) }}">
        @error('class')
            <span class="text-danger">{{ $message }}</span>
        @enderror
    </div>

    <div class="mb-3">
        <label for="admission_date" class="form-label">Admission Date</label>
        <input type="date" name="admission_date" id="admission_date" class="form-control" value="{{ old('admission_date', $student->admission_date) }}">
        @error('admission_date')
            <span class="text-danger">{{ $message }}</span>
        @enderror
    </div>

    <div class="mb-3">
        <label for="yearly_fees" class="form-label">Yearly Fees</label>
        <input type="number" name="yearly_fees" id="yearly_fees" class="form-control" value="{{ old('yearly_fees', $student->yearly_fees) }}">
        @error('yearly_fees')
            <span class="text-danger">{{ $message }}</span>
        @enderror
    </div>

    <button type="submit" class="btn btn-primary">Update Student</button>
</form>
@endsection