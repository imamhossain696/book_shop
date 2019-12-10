@extends('frontEnd.master')

@section('title','Received Requests')

@section('mainContent')

    <div class="container">

        <div class="row " style="margin-top: 50px">



            <div class="col-sm-12">

                <table class="table" width="800">

                    <thead>
                    <tr>
                        <th>My book</th>
                        <th>Exchanged With</th>
                        <th>Author</th>
                        <th>Owner</th>
                        <th>Phone</th>
                        <th>Address</th>
                        <th>Date</th>

                    </tr>
                    </thead>

                    <tbody>
                    @foreach($books as $book)
                        <tr>
                            @php($my_book = $book->request_details)
                            @php($request_details = $book->sent_data)

                        @if($my_book->customer_id == \Illuminate\Support\Facades\Session::get('customerId'))
                                <td>{{ $my_book->book_name}}</td>
                                <td>{{ $request_details->book_name }}</td>
                                <td>{{ $request_details->author }}</td>
                                @php($customer = $request_details->customer)

                                <td>{{$customer->firstName." ".$customer->lastName }}</td>
                                <td>{{ $customer->phoneNumber }}</td>
                                <td>{{ $customer->address }}</td>
                                <td>{{ $book->created_at }}</td>

                            @else

                                <td>{{ $request_details->book_name}}</td>
                                <td>{{ $my_book->book_name }}</td>
                                <td>{{ $my_book->author }}</td>
                                @php($customer = $my_book->customer)

                                <td>{{$customer->firstName." ".$customer->lastName }}</td>
                                <td>{{ $customer->phoneNumber }}</td>
                                <td>{{ $customer->address }}</td>
                                <td>{{ $book->created_at }}</td>

                            @endif

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
