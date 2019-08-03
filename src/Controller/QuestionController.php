<?php

namespace App\Controller;

use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\HttpFoundation\Request;

use App\Form\QuestionForm;
use App\Entity\Questionnaire;

class QuestionController extends Controller {


    /**
     * @Route("/questionnaire", name="questionnaire")
     * @Method({"GET", "POST"})
     */
    public function questionnaireAction(Request $request) {

      if ($this->get('security.authorization_checker')->isGranted('ROLE_USER') === TRUE) {

        $username = '';

        $session = $this->get('session');

        $question = new Questionnaire();

        $form = $this->createForm(QuestionForm::class, $question);

          $username = $this->getUser()->getUsername();
          $question->setUsername($username);

          $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
          $question = $form->getData();

          $question->setDate(new \DateTime('now'));

          $entityManager = $this->getDoctrine()->getManager();
          $userRepo = $entityManager->getRepository(Questionnaire::class);

          if ($userRepo->findOneBy(['username' => $username])) {
              $session->getFlashBag()->add('danger', 'You have already completed the questionnaire');
              return $this->redirect($this->generateUrl('questionnaire'));
          } else {
            $entityManager = $this->getDoctrine()->getManager();
            $entityManager->persist($question);
            $entityManager->flush();
            $session->getFlashBag()->add('success', 'Your poll has been sent');
            return $this->redirect($this->generateUrl('questionnaire'));
          }
        }
      } else {
        return $this->render('views/questionnaire.html.twig');
      }

      return $this->render('views/questionnaire.html.twig', array(
        'form' => isset($form) ? $form->createView() : NULL
      ));
    }
}

