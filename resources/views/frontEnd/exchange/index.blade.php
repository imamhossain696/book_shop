@extends('frontEnd.master')

@section('title','Exchange books')

@section('mainContent')

    <div class="container">

        <div class="row " style="margin-top: 50px">

            <div class="col-lg-3">

            </div>

            <div class="col-lg-6">

                <table class="table" width="500">


                    <tr >
                        <td><a href="{{ route('book.register') }}" class="btn btn-info btn-block btn-lg">Register book</a></td>

                    </tr>
                    <tr>
                        <td><a href="{{ route('book.offer') }}" class="btn btn-info btn-block btn-lg">Offer Post</a></td>

                    </tr>


                    <tr>
                        <td><a href="{{ route('book.sent_request') }}" class="btn btn-info btn-block btn-lg">Sent Request<span class="badge badge-success"> {{ $book_sent_request }}</span> </a></td>

                    </tr>

                    <tr>
                        <td><a href="{{ route('book.received_request') }}" class="btn btn-info btn-block btn-lg">Received Request <span class="badge badge-success"> {{ $book_requests }}</span></a></td>

                    </tr>
                    <tr>
                        <td><a href="{{ route('book.history') }}" class="btn btn-info btn-block btn-lg">Exchanged Books</a></td>

                    </tr>

                </table>

            </div>

        </div>

    </div>


@endsection


