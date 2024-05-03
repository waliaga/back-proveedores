<?php

namespace App\Http\Helpers;

use Carbon\Carbon;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Str;
use Intervention\Image\ImageManagerStatic as Image;

/**
 * Class UploadFile
 * @package App\Http\Helpers
 */
class UploadFile
{
    /**
     * @param string $pathSended
     * @param $files
     * @param string $chmod
     * @return string
     */
    public static function uploadFile($pathSended='storage', $secondPath="attachments", $files, $chmod='0775')
    {
        $image = false;
        $application = false;
        $filenameNoExt = array();
        $filename = array();
        $ext = array();
        $process = array();
        $id = 0;
        $file_complete = array();

        if($files !== null)
        {
            unset($file_complete);
            foreach ($files as $eachFile)
            {
                // Generate a random number
                $random = rand(1000000, 9999999);
                // Create the full name without the extension
                $filenameNoExt[$id] = Carbon::now()->timestamp.'-'.$random.'-'.Str::uuid()->toString();
                // Extract the initial data from the file
                $data = explode(';base64,', $eachFile)[0];

                // Detect if the file it's an image or a document
                if (strpos($data, 'data:image/') !== false) {
                    // Image detected;
                    $ext[$id] = explode('data:image/', $data)[1];
                    $image = true;
                    $application = false;
                } else if(strpos($data, 'data:application/') !== false) {
                    // File aplication detected
                    $process[$id] = explode('data:application/', $data)[1];
                    if($process[$id] == 'msword') $ext[$id] = "doc";
                    if($process[$id] == 'vnd.openxmlformats-officedocument.wordprocessingml.document') $ext[$id] = "docx";
                    if($process[$id] == 'vnd.ms-excel') $ext[$id] = "xls";
                    if($process[$id] == 'vnd.openxmlformats-officedocument.spreadsheetml.sheet') $ext[$id] = "xlsx";
                    if($process[$id] == 'vnd.ms-powerpoint') $ext[$id] = "ppt";
                    if($process[$id] == 'vnd.openxmlformats-officedocument.presentationml.presentation') $ext[$id] = "pptx";
                    if($process[$id] == 'pdf') $ext[$id] = "pdf";
                    $image = false;
                    $application = true;
                }
                // Attach the file name with the new extension
                $filename[$id] = $filenameNoExt[$id] . '.' . $ext[$id];
                // Create the full public path and file name
                $public_path = public_path() . DIRECTORY_SEPARATOR . $pathSended . DIRECTORY_SEPARATOR . $secondPath . DIRECTORY_SEPARATOR . $filename[$id];
                // If the file is an image
                if($image)
                {
                    // Save the image and return the path
                    $path = Image::make(file_get_contents($eachFile))->save($public_path);
                }
                if($application)
                {
                    // Save the file and return the path
                    $path = File::put($public_path, file_get_contents($eachFile));
                }
                // Change the file chmod
                chmod($public_path, $chmod);
                $file_complete[] = $filename[$id];
            }
            // Glue the files on one variable
            $files = implode("|", $file_complete);
        }
        return $files;
    }
}
