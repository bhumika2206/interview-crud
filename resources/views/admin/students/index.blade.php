@extends('admin.layouts.master')
  
@section('content')

    <h1>Student</h1>
    
    <a href="{{ route('students.create') }}" class="btn btn-primary mb-3">Create Student</a>
   
    @include('admin.layouts.message')
    <table class="table table-bordered mt-5" id="dataTable">
            <thead>
                <tr>
                    <th>No</th>
                    <th>Name</th>
                    <th>Class</th>
                    <th>Teacher</th>
                    <th>Admission Date</th>
                    <th>Yearly Fees</th>
                    <th width="280px">Action</th>
                </tr>
            </thead>
        <tbody>

        </tbody>
    </table>

@endsection
@section('page-script')
<script>
 
    $(document).ready(function() {
 
          var table = $('#dataTable').DataTable({
 
            processing: true,
 
            serverSide: true,
 
            ajax: "{{ route('student.get-data') }}",
 
            columns: [
 
                {
                data: null, 
                name: 'id',
                render: function (data, type, row, meta) {
                    return meta.row + meta.settings._iDisplayStart + 1;
                }
            },
                { data: 'student_name', name: 'student_name' },
                { data: 'class', name: 'class' },
                { data: 'class_teacher_id', name: 'class_teacher_id' },
                { data: 'admission_date', name: 'admission_date' },
                { data: 'yearly_fees', name: 'yearly_fees' },
                { data: 'action', name: 'action', orderable: false, searchable: false }
                ]
 
        });
 
    });
 
</script>
@endsection