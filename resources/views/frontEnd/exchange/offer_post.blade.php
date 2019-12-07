@extends('frontEnd.master')

@section('title','Offer Books')

@section('mainContent')

    <div class="container">

        {{--my books--}}
        <div class="row" style="margin-top: 50px">

            <div class="col-lg-2">

            </div>

            <div class="col-sm-12 col-lg-8">
                <h4 class="text-center">My books</h4>

                <table class="table" width="500">
                    <thead>
                    <tr>
                        <th>Book Name</th>
                        <th>Author</th>
                        <th>Genre</th>
                    </tr>

                    </thead>

                    <tbody>

                    @foreach($my_books as $my_book)
                        <tr>
                            <td>{{ $my_book->book_name }}</td>
                            <td>{{ $my_book->author }}</td>
                            <td>{{ $my_book->genre }}</td>
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
                        <t>Action</t>
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


@endsection


