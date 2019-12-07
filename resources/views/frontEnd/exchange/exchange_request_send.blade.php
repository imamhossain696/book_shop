@extends('frontEnd.master')

@section('title','Offer Books')

@section('mainContent')

    <div class="container">



        <div class="row" style="margin-top: 50px">

            <div class="col-lg-2">

            </div>

            <div class="col-sm-6 col-lg-6">
                <div class="panel panel-info">
                    <!-- Default panel contents -->
                    <div class="panel-heading">{{ $centraldata->book_name }}</div>
                    <div class="panel-body">
                       <table class="table" width="400">
                           <tbody>

                           <tr>
                               <th>Book Name</th>
                               <td>{{ $centraldata->book_name }}</td>
                           </tr>

                           <tr>
                               <th>Book Author</th>
                               <td>{{ $centraldata->author }}</td>
                           </tr>

                           <tr>
                               <th>Book Genre</th>
                               <td>{{ $centraldata->genre }}</td>
                           </tr>
                           <tr>
                               <th>Book Condition</th>
                               <td>{{ $centraldata->bcondition }}</td>
                           </tr>



                           </tbody>

                       </table>


                        @if(!$request_sending_capability->count() > 0)
                        <h5>Exchange With :</h5>
                        <br>

                        <form action="{{ route('book.request.store',$centraldata->id) }}" method="post">

                            {{ csrf_field() }}

                            <input type="text" name="centraldata_id" hidden value="{{ $centraldata->id }}">

                            <select name="centraldata_req_id" class="form-control" required>

                                @foreach($my_books as $my_book)
                                <option value="{{ $my_book->id }}">{{ $my_book->book_name }}</option>

                                    @endforeach
                            </select>

                            <br>
                            <button type="submit" class="btn btn-success">Send Request</button>

                        </form>

                        @else

                            <p><span class="text-danger">Request sent already</span> </p>


                            @endif
                    </div>


                </div>

            </div>

        </div>


    </div>


@endsection


