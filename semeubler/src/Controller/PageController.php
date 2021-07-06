<?php 
    namespace App\Controller;
    use Symfony\Component\Routing\Annotation\Route;
    use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
    use Symfony\Component\HttpFoundation\Request;
    use  App\Entity\Articles;
    use Symfony\Component\HttpFoundation\Response;

class PageController extends AbstractController
{
    /**
     * @Route("/",   name="home", methods ="get")
     */
	public function theHomePage(Request $request)
	{   if($request->get('famille') !== null){
            $requestValue = $request->get('famille');
            /**
             * -Execute query
             * -convert the query result to json
             * -then send to the client 
             */
            $articles = $this->getDoctrine()
            ->getRepository(Articles::class)
            ->findFamilleandSoudFamille($requestValue);
            if($articles){
              $res = json_encode($articles);
            }else{
                $res ="bad";
            }
           
            //$res = !empty($requestValue)?"all fill":"* remplir le champ famille";
           return new Response($res);
        }
        
        /**
         * show famille , sous famille and sous sous famille
         * event the user don't ask for it..
         * this is some bonus
         */
        
         $elements_sous_famille = $this->getDoctrine()
         ->getRepository(Articles::class)
         ->sousFamille();
         $elements_famille = $this->getDoctrine()
         ->getRepository(Articles::class)
         ->showFamille();
         $sous_sous_famille =  $this->getDoctrine()
         ->getRepository(Articles::class)
         ->sousSousFamille();

		return $this->render("home.html.twig", 
        ["elements_sous_famille"=>$elements_sous_famille,
         "elements_famille"=> $elements_famille,
         "sous_sous_famille" =>$sous_sous_famille
        ]);
	}

   
}
?>