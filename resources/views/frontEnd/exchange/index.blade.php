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
                        <td><a href="" class="btn btn-info btn-block btn-lg">Book Notification</a></td>

                    </tr>

                </table>

            </div>

        </div>

    </div>
{{--<div class="container">

    <div class="row">

        <div class="col-lg-2">

        </div>

        <div class="col-lg-8">

            <h2>Exchange Form:</h2>
            <hr>
            <div>

                <form action="include/exchange.inc.php" method="POST">

                    <p>*Offered Book:</p>
                    <input type="text" name="bookname" class="form-control" placeholder="Book name">
                    <br>
                    <p>Author:</p>
                    <input type="text" name="author" placeholder="Author name">
                    <br>
                    <p>Genre:</p>
                    <select name = "genre">
                        <option value="">--Select genre--</option>
                        <option value="science">Science</option>
                        <option value="math">Math</option>
                        <option value="physics">Physics</option>
                        <option value="chemistry">Chemistry</option>
                        <option value="biology">Biology</option>
                        <option value="medical">Medical</option>
                        <option value="engineering">Engineering</option>
                        <option value="cse">CSE</option>
                        <option value="eee">EEE</option>
                        <option value="civil">Civil</option>
                        <option value="mechanical">Mechanical</option>
                        <option value="drama">Drama</option>
                        <option value="historical">Historical</option>
                        <option value="political">Political</option>
                        <option value="adventure">Adventure</option>
                        <option value="fiction">Fiction</option>
                        <option value="fantasy">Fantasy</option>
                        <option value="detective">Detective</option>
                        <option value="supernatural">Supernatural</option>
                        <option value="magazine">Magazine</option>
                        <option value="other">Other</option>
                    </select>
                    <br>
                    <p>Condition:</p>
                    <input type="text" name="condition" placeholder="Old/new">
                    <br>
                    <p>*Book Request :</p>
                    <input type="text" name="reqbook" placeholder="Book name">
                    <br>
                    <p>Author:</p>
                    <input type="text" name="reqauthor" placeholder="Author">
                    <br>
                    <p>Genre:</p>
                    <select name = "reqgenre">
                        <option value="">--Select genre--</option>
                        <option value="science">Science</option>
                        <option value="math">Math</option>
                        <option value="physics">Physics</option>
                        <option value="chemistry">Chemistry</option>
                        <option value="biology">Biology</option>
                        <option value="medical">Medical</option>
                        <option value="engineering">Engineering</option>
                        <option value="cse">CSE</option>
                        <option value="eee">EEE</option>
                        <option value="civil">Civil</option>
                        <option value="mechanical">Mechanical</option>
                        <option value="drama">Drama</option>
                        <option value="historical">Historical</option>
                        <option value="political">Political</option>
                        <option value="adventure">Adventure</option>
                        <option value="fiction">Fiction</option>
                        <option value="fantasy">Fantasy</option>
                        <option value="detective">Detective</option>
                        <option value="supernatural">Supernatural</option>
                        <option value="magazine">Magazine</option>
                        <option value="other">Other</option>
                    </select>
                    <br>
                    <br>

                    <button type="submit" name="exchange-submit">Submit</button>
                    <hr>
                    <a href="index.php">Go home</a>
                    <br>
                    <a href="recommend.php">exchange offers:</a>

                </form>
            </div>

        </div>



    </div>

</div>--}}

@endsection


