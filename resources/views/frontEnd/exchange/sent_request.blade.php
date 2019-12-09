@extends('frontEnd.master')

@section('title','Sent Request')

@section('mainContent')

    <div class="container">

        <div class="row " style="margin-top: 50px">



            <div class="col-sm-12">

                <table class="table" width="800">

                    <thead>
                        <tr>
                            <th>Book Name</th>
                            <th>Book Author</th>
                            <th>Book Genre</th>
                            <th>Exchange With</th>
                            <th>Sent Date</th>
                            <th>Action</th>
                        </tr>
                    </thead>

                    <tbody>
                    @foreach($books as $book)
                        <tr>
                            @php($request_details = $book->request_details)
                            @php($my_book = $book->sent_data)
                            <td>{{ $request_details->book_name}}</td>
                            <td>{{ $request_details->author }}</td>
                            <td>{{ $request_details->genre }}</td>
                            <td>{{ $my_book->book_name }}</td>
                            <td>{{ $book->created_at }}</td>
                            <td>
                                <a href="" class="btn btn-info btn-sm">View</a>
                                <button value="{{ $book->id }}" class="btn btn-danger btn-sm cancel_btn">Cancel</button>
                            </td>

                        </tr>
                    @endforeach
                    </tbody>



                </table>

            </div>

        </div>

    </div>

    <script>
        $(document).ready(function () {

            $('.cancel_btn').on('click',function () {

                //cancel request
                var exchange_request_id = $(this).val();

                $.ajax({
                    url:"{{ route('book.cancel_request') }}",
                    type:"POST",
                    data:{
                        _token:"{{ csrf_token() }}",
                        exchange_request_id:exchange_request_id
                    },
                    dataType:"JSON",
                    success:function (data) {

                        if(data.status == 1){

                            location.reload();

                        }

                    }
                })

            })

        })
    </script>


@endsection


