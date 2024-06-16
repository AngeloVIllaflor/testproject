<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;

class StaffEmailNotification extends Mailable
{
    use Queueable, SerializesModels;

    public $user;
    public $departmentName;
    public $departmentId;
    public $purposeId;

    /**
     * Create a new message instance.
     */
    public function __construct($user, $departmentName, $departmentId, $purposeId)
    {
        $this->user = $user;
        $this->departmentName = $departmentName;
        $this->departmentId = $departmentId;
        $this->purposeId = $purposeId;
    }

    public function build()
    {
        $userName = $this->user->first_name . ' ' . $this->user->last_name;
        return $this->subject('Good day ' . $this->departmentName)
                    ->view('emails.staff-email-notification')
                    ->with([
                        'user' => $this->user,
                        'departmentName' => $this->departmentName,
                        'departmentId' => $this->departmentId,
                        'purposeId' => $this->purposeId,
                        'fullname' => $userName
                    ]);
    }
}
