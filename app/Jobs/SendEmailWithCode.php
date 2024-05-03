<?php

namespace App\Jobs;

use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Foundation\Bus\Dispatchable;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Queue\SerializesModels;
use Illuminate\Support\Facades\Mail;
use Swift_TransportException;

class SendEmailWithCode implements ShouldQueue
{

    use Dispatchable, InteractsWithQueue, Queueable, SerializesModels;

    public $email;
    public $code;

    public function __construct($email, $code)
    {
        $this->email = $email;
        $this->code = $code;
    }

    /**
     * @return \Illuminate\Http\JsonResponse
     */
    public function handle()
    {
        $code_message = "
            <p>Estimado proveedor.</p>
            <p>El siguiente es su código único de acceso al sistema, favor no compartirlo con nadie.</p>
            <p>Código: <h3><strong>". $this->code ."</strong></h3></p>
            <p>Este código funcionará únicamente con su correo: ". $this->email ."</p>
            <p>Cualquier consulta en relación al uso del sistema de proveedores favor comunicarse con Teléfonos: 2 2424221 - 2 2422338 (La Paz-Bolivia)</p>
        ";
        try {
            $system = 'Notificación de registro - OEP';
            Mail::send(array(), array(), function ($message) use($code_message, $system) {
                $message->to($this->email)
                    ->subject($system)
                    ->from(env('MAIL_USERNAME'))
                    ->setBody($code_message, 'text/html');
            });
        }catch (Swift_TransportException $e) {
            return response()->json(
                $e->getMessage(), 500
            );
        }
    }

}
