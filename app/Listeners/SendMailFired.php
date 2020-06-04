<?php

namespace App\Listeners;

use App\Events\SendMail;
use App\User;
use Illuminate\Support\Facades\Mail;


class SendMailFired
{
    /**
     * Create the event listener.
     *
     * @return void
     */
    public function __construct()
    {
    }

    /**
     * @param $event
     */
    public function handle( SendMail $event)
    {

        $user = ['email'=>$event->email , 'mass'=>$event->mass];

        Mail::send('emails.userToEmail', $user, function($message) use ($user) {
            $message->to($user['email']);
            $message->subject($user['mass']);
        });
    }
}










