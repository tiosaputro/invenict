<?php

namespace App\Jobs;

use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Foundation\Bus\Dispatchable;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Queue\SerializesModels;
use App\Mail\IctRequestApproval;
use Mail;

class SendEmailJob implements ShouldQueue
{
    use Dispatchable, InteractsWithQueue, Queueable, SerializesModels;
    protected $send_mail;
    protected $ict;
    protected $LINK;
    /**
     * Create a new job instance.
     *
     * @return void
     */
    public function __construct($send_mail,$ict,$LINK)
    {
        $this->send_mail = $send_mail;
        $this->ict = $ict;
        $this->LINK = $LINK;
    }

    /**
     * Execute the job.
     *
     * @return void
     */
    public function handle()
    {     
        Mail::to($this->send_mail)->send(new IctRequestApproval($this->ict,$this->LINK));
    }
}
