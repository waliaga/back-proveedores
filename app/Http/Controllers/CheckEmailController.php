<?php

namespace App\Http\Controllers;

use App\Jobs\SendEmailWithCode;
use App\Models\Proveedores;
use App\Models\RepresentanteLegal;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Http;

class CheckEmailController extends Controller
{

    /**
     * @param Request $request
     * @return JsonResponse
     */
    public function updateproveedor(Request $request)
    {
        // Sanitizamos el valor enviado
        $email = htmlentities($request->email, ENT_QUOTES);
        $email_empresa = filter_var($email, FILTER_SANITIZE_EMAIL);
        // Verificamos el codigo
        $codigo = filter_var(base64_decode(base64_decode($request->codigo)), FILTER_SANITIZE_NUMBER_INT);
        // Verificamos la informacion
        if(Proveedores::where('status', 'A')->where('email_empresa', $email_empresa)->where('codigo', $codigo)->exists())
        {
            Proveedores::where('email_empresa', $email_empresa)
                ->where('codigo', $codigo)->update(
                    [
                        'nombre_empresa'    =>      $request->nombre_empresa,
                        'nit'               =>      $request->nit,
                        'pais'              =>      $request->pais,
                        'ciudad'            =>      $request->ciudad,
                        'telefono'          =>      $request->telefono,
                        'updated_at'        =>      date("Y-m-d H:i:s")
                    ]
                );
            $proveedor = Proveedores::where('status', 'A')->where('email_empresa', $email_empresa)->where('codigo', $codigo)->get()->first();
            $id_proveedores = $proveedor->id;
            $registro_representante_legal = RepresentanteLegal::where('status', 'A')->where('id_proveedores', $id_proveedores)->update(
                [
                    'id_proveedores'            =>      $id_proveedores,
                    'nombre_completo'           =>      $request->nombre_completo,
                    'telefono_representante'    =>      $request->telefono_representante,
                    'email_representante'       =>      $request->email_representante,
                    'updated_at'                =>      date("Y-m-d H:i:s")
                ]
            );
            return response()->json(
                true, 200
            );
        }
        else
        {
            return response()->json(
                false, 200
            );
        }
    }

    /**
     * @param Request $request
     * @return JsonResponse
     */
    public function registerproveedor(Request $request)
    {
        // Sanitizamos el valor enviado
        $email = htmlentities($request->email, ENT_QUOTES);
        $email_empresa = filter_var($email, FILTER_SANITIZE_EMAIL);
        // Verificamos el codigo
        $codigo = filter_var(base64_decode(base64_decode($request->codigo)), FILTER_SANITIZE_NUMBER_INT);
        // Verificamos la informacion
        if(Proveedores::where('status', 'A')->where('email_empresa', $email_empresa)->where('codigo', $codigo)->exists())
        {
            Proveedores::where('email_empresa', $email_empresa)
                ->where('codigo', $codigo)->update(
                [
                    'nombre_empresa'    =>      $request->nombre_empresa,
                    'nit'               =>      $request->nit,
                    'pais'              =>      $request->pais,
                    'ciudad'            =>      $request->ciudad,
                    'telefono'          =>      $request->telefono,
                    'status'            =>      'A',
                    'created_at'        =>      date("Y-m-d H:i:s")
                ]
            );
            $proveedor = Proveedores::where('status', 'A')->where('email_empresa', $email_empresa)->where('codigo', $codigo)->get()->first();
            $id_proveedores = $proveedor->id;
            $registro_representante_legal = RepresentanteLegal::create(
                [
                    'id_proveedores'            =>      $id_proveedores,
                    'nombre_completo'           =>      $request->nombre_completo,
                    'telefono_representante'    =>      $request->telefono_representante,
                    'email_representante'       =>      $request->email_representante,
                    'status'            =>      'A',
                    'created_at'        =>      date("Y-m-d H:i:s")
                ]
            );
            return response()->json(
                true, 200
            );
        }
        else
        {
            return response()->json(
                false, 200
            );
        }
    }

    /**
     * @param Request $request
     * @return JsonResponse
     */
    public function getproveedorinfo(Request $request)
    {
        // Sanitizamos el valor enviado
        $email = htmlentities($request->email, ENT_QUOTES);
        $email_empresa = filter_var($email, FILTER_SANITIZE_EMAIL);
        // Verificamos el codigo
        $codigo = base64_decode(base64_decode($request->code));
        if(Proveedores::where('status', 'A')->where('email_empresa', $email_empresa)->where('codigo', $codigo)->exists())
        {
            $proveedor = Proveedores::where('status', 'A')->where('email_empresa', $email_empresa)
                ->where('codigo', $codigo)->with(['representantelegal'])->get()->first();
            return response()->json(
                $proveedor, 200
            );
        }
        else
        {
            return response()->json(
                false, 200
            );
        }
    }

    /**
     * @param Request $request
     * @return \Illuminate\Http\JsonResponse
     */
    public function validateemailandcode(Request $request)
    {
        // Sanitizamos el valor enviado
        $email = htmlentities($request->email, ENT_QUOTES);
        $email_empresa = filter_var($email, FILTER_SANITIZE_EMAIL);
        // Verificamos el codigo
        $codigo = filter_var($request->codigo, FILTER_SANITIZE_NUMBER_INT);
        // Verificamos su validez
        if(Proveedores::where('status', 'A')->where('email_empresa', $email_empresa)->where('codigo', $codigo)->exists())
        {
            return response()->json(
                true, 200
            );
        }
        else
        {
            return response()->json(
                false, 200
            );
        }
    }

    /**
     * @param Request $request
     * @return \Illuminate\Http\JsonResponse
     */
    public function checkproveedordata(Request $request)
    {
        // Sanitizamos el valor enviado
        $email = htmlentities($request->email, ENT_QUOTES);
        $email_empresa = filter_var($email, FILTER_SANITIZE_EMAIL);
        // Verificamos el codigo
        $codigo = base64_decode(base64_decode($request->codigo));
        // Verificamos su validez
        if(
        Proveedores::where('status', 'A')
            ->where('email_empresa', $email_empresa)
            ->where('codigo', $codigo)
            ->where('nombre_empresa', '<>', null)
            ->where('pais', '<>', null)
            ->exists()
        )
        {

            return response()->json(
                true, 200
            );
        }
        else
        {
            return response()->json(
                false, 200
            );
        }
    }

    /**
     * @param Request $request
     * @return \Illuminate\Http\Client\Response
     */
    public function checkemail(Request $request)
    {
        // Sanitizamos el valor enviado
        $email = htmlentities($request->email, ENT_QUOTES);
        $email_empresa = filter_var($email, FILTER_SANITIZE_EMAIL);
        // Generamos el nuevo codigo
        $codigo = rand(100000, 999999);
        // Verificamos si existe o no
        if(Proveedores::where('email_empresa', $email_empresa)->where('status', 'A')->exists())
        {
            // El email existe, entonces actualizamos
            $actualizar_proveedor = Proveedores::where('email_empresa', $email_empresa)
                ->where('status', 'A')->update(
                    [
                        'codigo'        =>      $codigo
                    ]
                );
            //SendEmailWithCode::dispatch($email_empresa, $codigo);
            return Http::withHeaders([
                "Content-Type" => "text/xml;charset=utf-8",
            ])->withoutVerifying()->send("POST", "http://192.168.137.191/oep-le-backend-proveedores/public/api/justsendmail",
                [
                    "email_empresa" => $email_empresa,
                    "codigo"        => $codigo
                ]
            );
        }
        else
        {
            // El email es nuevo
            $registro_proveedor = Proveedores::create(
                [
                    'email_empresa'     =>      $email_empresa,
                    'status'            =>      'A',
                    'created_at'        =>      date("Y-m-d H:i:s"),
                    'codigo'            =>      $codigo
                ]
            );
            return Http::withHeaders([
                "Content-Type" => "text/xml;charset=utf-8",
            ])->withoutVerifying()->send("POST", "http://192.168.137.191/oep-le-backend-proveedores/public/api/justsendmail",
                [
                    "email_empresa" => $email_empresa,
                    "codigo"        => $codigo
                ]
            );
            //SendEmailWithCode::dispatch($email_empresa, $codigo);
//            SendEmailWithCode::dispatch($email_empresa, $codigo)->delay(now()->addSeconds(5));
        }
//        return response()->json(
//            1, 200
//        );
    }

    /**
     * @param Request $request
     * @return JsonResponse
     */
    public function justsendmail(Request $request)
    {
        $email_empresa = $request->email_empresa;
        $codigo = $request->codigo;
        SendEmailWithCode::dispatch($email_empresa, $codigo);
        return response()->json(
            1, 200
        );
    }
}
