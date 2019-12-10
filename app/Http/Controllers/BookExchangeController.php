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

            $my_id = Session::get('customerId');

            //collecting my books
            $my_books = Customer::find($my_id)->central_datas->where('available',0)->pluck('id');

            $data['book_requests'] = ExchangeRequest::whereIn('centraldata_id',$my_books)->count();
            $data['book_sent_request'] = ExchangeRequest::whereIn('centraldata_req_id',$my_books)->count();

            return view('frontEnd.exchange.index')->with($data);

        }else{


            Session::put('exchange_redirect',1);
            Session::save();
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

    public function sent_request(){

        if (Session::has('customerId')){

            $customer_id = Session::get('customerId');

            $my_books = Centraldata::where('customer_id',$customer_id)->where('available',0)->get()->pluck('id');

            $books = ExchangeRequest::whereIn('centraldata_req_id',$my_books)->get();



            $data['books'] = $books;

            return view('frontEnd.exchange.sent_request')->with($data);

        }else{

            return redirect()->to('/checkout')->send();
        }


    }

    public function cancel_request(Request $request){


       $exchange = ExchangeRequest::find($request->get('exchange_request_id'));

       if ($exchange->delete()){

           echo json_encode([
               "status" => 1
           ]);

       }else{
           echo json_encode([
               "status" => 0
           ]);
       }


    }

    public function received_request(){

        if(Session::has('customerId')){

            $customer_id = Session::get('customerId');

            $my_books = Centraldata::where('customer_id',$customer_id)->where('available',0)->get()->pluck('id');

            $books = ExchangeRequest::whereIn('centraldata_id',$my_books)->get();



            $data['books'] = $books;

            return view('frontEnd.exchange.received_request')->with($data);

        }else{

            return redirect()->to('/checkout')->send();
        }


    }

    public function accept_request(Request $request){



        //get the request

         $exchange = ExchangeRequest::find($request->get('exchange_id'));

        //accept the request
        $exchange->update(["approved"=>1]);

        //update the request in central data

         $exchange->request_details()->update(["available"=>1]);
        //delete requests for accepting book




        if ($exchange->request_details->sent_requests->where('approved',0)->count()){

           return $exchange->request_details->sent_requests()->delete();

        }

        //update requester book status
        $exchange->sent_data() ->update(["available"=>1]);
        //update requester book sent request

        if ($exchange->sent_data->sent_requests->where('approved',0)->count()){
            $exchange->sent_data->sent_requests()->delete();

        }

        //return

        echo json_encode([
            "status" => 1
        ]);


    }

    public function history(){

        if (Session::has('customerId')){

            $my_id = Session::get('customerId');
            $books_exchanged = Customer::find($my_id)->central_datas->where('available',1)->pluck('id');

            $data['books'] = ExchangeRequest::whereIn('centraldata_id',$books_exchanged)->orWhereIn('centraldata_req_id',$books_exchanged)->get();

            return view('frontEnd.exchange.exchanged_history')->with($data);

        }else{

            return redirect()->to('/checkout')->send();
        }

    }

    public function book_delete(Request $request){


        //getting request

        $book_id = $request->get('book_id');

        //getting the book

        $book = Centraldata::find($book_id);

        if ($book->delete()){

            //received request

            if ($book->receive_requets->count() >0){

                $book->receive_requets()->delete();

            }



            //sent request delete
            if ($book->sent_requests->count() >0){

                $book->sent_requests()->delete();

            }

            echo json_encode([
                "status" => 1
            ]);
        }


    }
}
