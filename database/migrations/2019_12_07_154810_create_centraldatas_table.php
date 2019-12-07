<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateCentraldatasTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('centraldatas', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('customer_id');
            $table->text('book_name');
            $table->string('author');
            $table->string('genre');
            $table->string('bcondition');
            $table->text('reqbook');
            $table->string('reqauthor');
            $table->string('reqgenre');
            $table->boolean('available');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('centraldatas');
    }
}
