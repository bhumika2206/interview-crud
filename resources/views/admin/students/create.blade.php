@extends('admin.layouts.master')
  
@section('content')

<!-- <div class="container-fluid">
    <div class="container"> -->
    <h1>Create Student</h1>

    @include('admin.layouts.message')

    
    <form action="{{ route('students.store') }}" method="POST">
    @csrf

    <div class="mb-3">
        <label for="student_name" class="form-label">Name</label>
        <input type="text" name="student_name" id="student_name" class="form-control" value="{{ old('student_name') }}">
        @if ($errors->has('student_name'))
            <span class="text-danger">{{ $errors->first('student_name') }}</span>
        @endif
    </div>

    <div class="mb-3">
        <label for="class_teacher_id" class="form-label">Teacher</label>
        <select name="class_teacher_id" id="class_teacher_id" class="form-control">
            @foreach ($teachers as $teacher)
                <option value="{{ $teacher->id }}" {{ old('class_teacher_id') == $teacher->id ? 'selected' : '' }}>
                    {{ $teacher->teacher_name }}
                </option>
            @endforeach
        </select>
        @if ($errors->has('class_teacher_id'))
            <span class="text-danger">{{ $errors->first('class_teacher_id') }}</span>
        @endif
    </div>

    <div class="mb-3">
        <label for="class" class="form-label">Class</label>
        <input type="text" name="class" id="class" class="form-control" value="{{ old('class') }}">
        @if ($errors->has('class'))
            <span class="text-danger">{{ $errors->first('class') }}</span>
        @endif
    </div>

    <div class="mb-3">
        <label for="admission_date" class="form-label">Admission Date</label>
        <input type="date" name="admission_date" id="admission_date" class="form-control" value="{{ old('admission_date') }}">
        @if ($errors->has('admission_date'))
            <span class="text-danger">{{ $errors->first('admission_date') }}</span>
        @endif
    </div>

    <div class="mb-3">
        <label for="yearly_fees" class="form-label">Yearly Fees</label>
        <input type="number" name="yearly_fees" id="yearly_fees" class="form-control" value="{{ old('yearly_fees') }}">
        @if ($errors->has('yearly_fees'))
            <span class="text-danger">{{ $errors->first('yearly_fees') }}</span>
        @endif
    </div>

    <button type="submit" class="btn btn-primary">Add Student</button>
</form>
@endsection