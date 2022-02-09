<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;
class IctRequestApproval extends Mailable implements ShouldQueue
{
    use Queueable, SerializesModels;
    protected $ict;
    /**
     * Create a new message instance.
     *
     * @return void
     */
    public function __construct($ict)
    {
        $this->ict = $ict;
    }

    /**
     * Build the message.
     *
     * @return $this
     */
    public function build()
    {
        return $this->from('testIctRequest@emp.id')
                   ->view('emailcontoh')
                   ->with(
                    [
                        'date' => $this->ict->ireq_date,
                        'ireq_no' => $this->ict->ireq_no,
                        'ireq_user' => $this->ict->ireq_user,
                        'invent_code'=> $this->ict->invent_code,
                        'qty'=> $this->ict->ireq_qty,
                        'usr_name'=>$this->ict->usr_name,
                        'invent_desc'=>$this->ict->invent_desc,
                    ]);
                }
}
