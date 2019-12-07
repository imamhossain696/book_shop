@extends('frontEnd.master')

@section('title','Register books')

@section('mainContent')

    <div class="container">

        <div class="container">

            <div class="row">

                <div class="col-lg-2">

                </div>

                <div class="col-lg-8">


                    <h2 class="text-center">Exchange Form:</h2>
                    <hr>
                    <div>

                        <form action="{{ route('book.register.store') }}" method="POST">

                            {{ csrf_field()  }}

                            <p>*Offered Book:</p>
                            <input type="text" name="book_name" class="form-control" placeholder="Book name" required>
                            <br>
                            <p>Author:</p>
                            <input type="text" name="author" placeholder="Author name" class="form-control" required>
                            <br>
                            <p>Genre:</p>
                            <select name="genre" class="form-control" required>
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
                            <input type="text" name="bcondition" placeholder="Old/new" class="form-control" required>
                            <br>
                            <p>*Book Request :</p>
                            <input type="text" name="reqbook" placeholder="Book name" class="form-control" required>
                            <br>
                            <p>Author:</p>
                            <input type="text" name="reqauthor" placeholder="Author" class="form-control" required>
                            <br>
                            <p>Genre:</p>
                            <select name = "reqgenre" class="form-control" required>
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

                            <button type="submit" class="btn btn-success btn-block">Submit</button>


                        </form>
                    </div>

                </div>



            </div>

        </div>

    </div>


@endsection


