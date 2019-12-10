@extends('frontEnd.master')

@section('title','Offer Books')

@section('mainContent')

    <div class="container">

        {{--my books--}}
        <div class="row" style="margin-top: 50px">
            <div class="col-lg-1">

            </div>

            <div class="col-sm-12 col-lg-10">
                <h4 class="text-center">My Posts</h4>

                <table class="table" width="500">
                    <thead>
                    <tr>
                        <th>Book Name</th>
                        <th>Author</th>
                        <th>Genre</th>
                        <th>Request Book</th>
                        <th>Action</th>
                    </tr>

                    </thead>

                    <tbody>

                    @foreach($my_books as $my_book)
                        <tr>
                            <td>{{ $my_book->book_name }}</td>
                            <td>{{ $my_book->author }}</td>
                            <td>{{ $my_book->genre }}</td>
                            <td>{{ $my_book->reqbook }}</td>
                            <td><button class="btn btn-danger post_btn_del" value="{{ $my_book->id }}">Del</button></td>
                        </tr>

                    @endforeach

                    </tbody>




                </table>

            </div>


        </div>
        {{--my books ends--}}

        {{--matched books--}}
        <div class="row" style="margin-top: 50px">

            <div class="col-lg-1">

            </div>

            <div class="col-sm-12 col-lg-10">
                <h4 class="text-center">Matched Books</h4>

                <table class="table" width="500">
                    <thead>
                    <tr>
                        <th>Owner</th>
                        <th>Book Name</th>
                        <th>Author</th>
                        <th>Request book</th>
                        <th>Genre</th>
                        <th>Action</th>
                    </tr>

                    </thead>

                    <tbody>

                    @foreach($books as $book)
                        <tr>
                            <td>{{  $book->customer->firstName}}</td>
                            <td>{{ $book->book_name }}</td>
                            <td>{{ $book->author }}</td>
                            <td>{{ $book->reqbook." ".($book->reqauthor) }}</td>
                            <td>{{ $book->genre }}</td>
                            <td><a href="{{ route('book.request.page',$book->id) }}" class="btn btn-info btn-sm">Send Req</a></td>

                        </tr>

                    @endforeach

                    </tbody>




                </table>

            </div>


        </div>

        {{--end of match books--}}



    </div>

    <script>
        $(document).ready(function () {

            $('.post_btn_del').on('click',function () {

                var book = $(this).val();
                console.log(book);
                $.ajax({

                    url:"{{ route('book.delete') }}",
                    type:"POST",
                    dataType:"JSON",
                    data:{
                        _token:"{{ csrf_token() }}",
                        book_id : book,


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


