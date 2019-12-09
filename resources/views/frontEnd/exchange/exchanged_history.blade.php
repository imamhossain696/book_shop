@extends('frontEnd.master')

@section('title','Received Requests')

@section('mainContent')

    <div class="container">

        <div class="row " style="margin-top: 50px">



            <div class="col-sm-12">

                <table class="table" width="800">

                    <thead>
                    <tr>
                        <th>Book Name</th>

                        <th>Offered Book</th>
                        <th>Offered Book Author</th>
                        <th>Offered By</th>
                        <th>Phone</th>
                        <th>Date</th>
                        <th>Action</th>
                    </tr>
                    </thead>

                    <tbody>
                    @foreach($books as $book)
                        <tr>
                            @php($my_book = $book->request_details)
                            @php($request_details = $book->sent_data)
                            <td>{{ $my_book->book_name}}</td>
                            <td>{{ $request_details->book_name }}</td>
                            <td>{{ $request_details->author }}</td>
                            @php($customer = $request_details->customer)
                            <td>{{$customer->firstName." ".$customer->lastName }}</td>
                            <td>{{ $customer->phoneNumber }}</td>
                            <td>{{ $book->created_at }}</td>
                            <td>
                                <button value="{{ $book->id }}" class="btn btn-success btn-sm accept_btn">Accept</button>
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

            //on click on the accept btn
            $('.accept_btn').on('click',function () {

                //get the button value
                var req_id = $(this).val();

                //sending the request

                $.ajax({
                    url:"{{ route('book.accept_request') }}",
                    type:"POST",
                    dataType:"JSON",
                    data:{
                        _token: "{{ csrf_token() }}",
                        exchange_id:req_id
                    },
                    success:function (data) {

                        if (data.status == 1){

                            location.reload();
                        }

                    }
                })


            })

        })

    </script>


@endsection
