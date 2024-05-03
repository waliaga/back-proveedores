<?php

namespace App\Jobs;

use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Foundation\Bus\Dispatchable;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Queue\SerializesModels;
use Illuminate\Support\Facades\Mail;

class SendProposalConfirmation implements ShouldQueue
{
    use Dispatchable, InteractsWithQueue, Queueable, SerializesModels;

    public $email;
    public $code;
    public $data;
    public $nombre_empresa;

    /**
     * SendProposalConfirmation constructor.
     * @param $email
     * @param $code
     * @param $data
     * @param $nombre_empresa
     */
    public function __construct($email, $code, $data, $nombre_empresa)
    {
        $this->email = $email;
        $this->code = $code;
        $this->data = $data;
        $this->nombre_empresa = $nombre_empresa;
    }

    public function handle()
    {
        $code_message = "
            <p>Estimado ". strtoupper($this->nombre_empresa) .".</p>
            <p>La siguiente es una lista de los productos que usted ha enviado una propuesta.</p>
            <table style='border-color: #1a202c; border: 1px;'>
                <thead>
                    <tr style='font-size: 12px; font-weight: bold; text-align: center; background-color: green; color:white;'>
                        <th>GRUPO</th>
                        <th>MATERIAL</th>
                        <th>TU PROPUESTA</th>
                    </tr>
                </thead>
                <tbody>
        ";
                foreach ($this->data as $data) {
        $code_message .= "
                    <tr>
                        <td>". $data['materiales']['grupo']['label'] ."</td>
                        <td>". $data['materiales']['item'] ."</td>
                        <td>". $data['costo_unitario'] .".- \$Bs</td>
                    </tr>
        ";
                }
        $code_message .= "
                </tbody>
            </table>
            <br>
            <p>Esta oferta puede ser modificada en el momento que usted desee.</p>
            <p>Cualquier consulta en relación al uso del sistema de proveedores favor comunicarse con Teléfonos: 2 2424221 - 2 2422338 (La Paz-Bolivia)</p>
        ";
        try {
            $system = 'Notificación de envío de propuesta - OEP';
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
