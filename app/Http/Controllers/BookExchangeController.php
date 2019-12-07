<?php

namespace App\Http\Controllers;

use App\Centraldata;
use App\Customer;
use App\ExchangeRequest;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;

class BookExchangeController extends Controller
{
    //

    public function __construct()
    {


    }

    public function exchange(){

        if (Session::has('customerId')){

            return view('frontEnd.exchange.index');

        }else{

            return redirect()->to('/checkout')->send();
        }



    }

    public function register(){

        if (Session::has('customerId')){

            return view('frontEnd.exchange.register');

        }else{

            return redirect()->to('/checkout')->send();
        }

    }

    public function store(Request $request){
        if (Session::has('customerId')){

            $customer_id = Session::get('customerId');

            //get the customer

            $customer = Customer::find($customer_id);

            //create
            if ($customer->central_datas()->create($request->all())){

                return redirect()->route('book.exchange');
            }else{

                return redirect()->back();
            }


        }else{

            return redirect()->to('/checkout')->send();
        }

    }

    public function offerbooks(){

        if (Session::has('customerId')){

            $customer_id = Session::get('customerId');

            //my books
            $data['my_books'] = Centraldata::where('customer_id',$customer_id)->where('available',0)->get();

            //other people books

            $data['other_people_books'] = Centraldata::where('customer_id','!=',$customer_id)->where('available',0)->get();

            //book exchange

            $boooooks = [];

            $count = 1;
            $count2 = 1;
            $count3 = 1;
            $count4 = 1;


            foreach ($data['other_people_books'] as $other_books){

                $othersOfferedBook = strtolower($other_books->book_name);
                $othersReqBook = strtolower($other_books->reqbook);
                $othersAuthor = strtolower($other_books->author);
                $othersReqAuthor = strtolower($other_books->reqauthor);
                $othersReqGenre = strtolower($other_books->reqgenre);
                $othersGenre = strtolower($other_books->genre);

              //traverse my books

                foreach ($data['my_books'] as $my_book){

                    $userReqBook = strtolower($my_book->reqbook);
                    $userOfferedBook = strtolower($my_book->book_name);
                    $userAuthor = strtolower($my_book->author);
                    $userReqAuthor = strtolower($my_book->reqauthor);
                    $userReqGenre = strtolower($my_book->reqgenre);
                    $userGenre = strtolower($my_book->genre);


                    if (preg_match("/$othersOfferedBook/", $userReqBook) && preg_match("/$othersReqBook/", $userOfferedBook)) {


                        array_push($boooooks,$other_books);

                        $count++;

                    }
                    else if (!(preg_match("/$othersOfferedBook/", $userReqBook) && preg_match("/$othersReqBook/", $userOfferedBook)) && preg_match("/$othersOfferedBook/", $userReqBook) ) {

                        if (preg_match("/$othersReqAuthor/", $userAuthor) && preg_match("/$othersReqGenre/", $userGenre)) {

                            array_push($boooooks,$other_books);

                            $count2++;
                        }
                        else if (preg_match("/$othersReqAuthor/", $userAuthor) && !preg_match("/$othersReqGenre/", $userGenre) && $count2==1) {

                            array_push($boooooks,$other_books);

                            $count3++;
                        }
                        else if (!preg_match("/$othersReqAuthor/", $userAuthor) && preg_match("/$othersReqGenre/", $userGenre) && $count3==1) {

                            array_push($boooooks,$other_books);

                            $count4++;
                        }

                    }



                }




            }

            $data['books'] = $boooooks;


            return view('frontEnd.exchange.offer_post')->with($data);

        }else{

            return redirect()->to('/checkout')->send();
        }
    }

    public function request_send_page(Centraldata $centraldata){

        if (Session::has('customerId')){

            $customer_id = Session::get('customerId');

            //status of request

            $my_all_books = Centraldata::where('customer_id',$customer_id)->get();

           $data['request_sending_capability'] = ExchangeRequest::where('centraldata_id',$centraldata->id)->whereIn('centraldata_req_id',$my_all_books->pluck('id'))->get();

            //my books
            $data['my_books'] = Centraldata::where('customer_id',$customer_id)->where('available',0)->get();

            $data['centraldata']= $centraldata;
            return view('frontEnd.exchange.exchange_request_send')->with($data);

        }else{

            return redirect()->to('/checkout')->send();
        }



    }

    public function book_request_store(Request $request,Centraldata $centraldata){


       if ( ExchangeRequest::create(['centraldata_id' => $request->get('centraldata_id'),'centraldata_req_id'=> $request->get('centraldata_req_id'),'created_at'=>Carbon::now(),'updated_at'=>Carbon::now()])){

           return redirect()->back();
       }else{

           return redirect()->back();
       }





    }
}
