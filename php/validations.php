<?php
namespace PHP\Validations;
/**
 * 
 */
class Validations
{
   
   public function password_validation($clave, &$error_clave) {
      $result = true;
      
      $error_clave = strlen($clave) < 6 ? "La clave debe tener al menos 6 caracteres" : "";
      $result = strlen($clave) < 6 ? false : true;

      $error_clave = strlen($clave) > 16 ? "La clave no puede tener más de 16 caracteres" : "";
      $result = strlen($clave) > 16 ? false : true;

      $error_clave = !preg_match('`[a-z]`',$clave) ? "La clave debe tener al menos una letra minúscula": "";
      $result = !preg_match('`[a-z]`',$clave) ? false : true;

      $error_clave = !preg_match('`[A-Z]`',$clave) ? "La clave debe tener al menos una letra mayúscula" : "";
      $result = !preg_match('`[A-Z]`',$clave) ? false : true;
      
      $error_clave = !preg_match('`[0-9]`',$clave) ? "La clave debe tener al menos un caracter numérico" : "";
      $result = !preg_match('`[0-9]`',$clave) ? false : true;

      return array('result'=>$result, 'msg'=>$error_clave);
   }

   public function email_validation($email){
      $mail_correcto = 0;
      //compruebo unas cosas primeras
      if ((strlen($email) >= 6) && (substr_count($email,"@") == 1) && (substr($email,0,1) != "@") && (substr($email,strlen($email)-1,1) != "@")){      
         if ((!strstr($email,"'")) && (!strstr($email,"\"")) && (!strstr($email,"\\")) && (!strstr($email,"\$")) && (!strstr($email," "))) {
            //miro si tiene caracter .
            if (substr_count($email,".")>= 1){
               //obtengo la terminacion del dominio
               $term_dom = substr(strrchr ($email, '.'),1);
               //compruebo que la terminación del dominio sea correcta
               if (strlen($term_dom)>1 && strlen($term_dom)<5 && (!strstr($term_dom,"@")) ){
                  //compruebo que lo de antes del dominio sea correcto
                  $antes_dom = substr($email,0,strlen($email) - strlen($term_dom) - 1);
                  $caracter_ult = substr($antes_dom,strlen($antes_dom)-1,1);
                  if ($caracter_ult != "@" && $caracter_ult != "."){
                     $mail_correcto = 1;
                  }
               }
            }
         }
      }
      if ($mail_correcto) {
         return 1;
      } else {
         return 0;
      }
   }

   public function word_validation($word){
      if(preg_match('/[^a-Z]/',$word)){
         return false;
      } else {
         return true;
      }
   }
}
