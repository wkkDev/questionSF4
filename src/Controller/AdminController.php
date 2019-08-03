<?php

namespace App\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\HttpFoundation\Request;
use Knp\Component\Pager\PaginatorInterface;

use App\Entity\Questionnaire;
use App\Form\QuestionForm;

class AdminController extends Controller {
    /**
     * @Route("/admin", name="admin")
     */
    public function adminAction(Request $request, PaginatorInterface $paginator) {

      $session = $this->get('session');

      if ($this->get('security.authorization_checker')->isGranted('ROLE_ADMIN') === TRUE) {

        $rows = $this->getDoctrine()->getRepository(Questionnaire::class)->findAll();

        $pagination = $paginator->paginate($rows, $request->query->getInt('page', 1), 10);

        return $this->render('views/admin.html.twig', array(
          'rows' => $pagination
        ));
      } else {
        $session->getFlashBag()->add('danger', 'You must log in as an administrator');
        return $this->redirect($this->generateUrl('home'));
      }
    }

    /**
    * @Route("/delete/{id}")
    * @Method({"DELETE"})
    */

    public function deleteAction(Request $request, $id) {

      $row = $this->getDoctrine()->getRepository(Questionnaire::class)->find($id);

      $em = $this->getDoctrine()->getManager();
      $em->remove($row);
      $em->flush();

      $response = new Response();
      $response->send();

      return $this->redirectToRoute('admin');
    }

    /**
    * @Route("/edit/{id}", name="edit")
    * @Method({"GET", "POST"})
    */

    public function editAction(Request $request, $id) {

      $row = new Questionnaire();
      $row = $this->getDoctrine()->getRepository(Questionnaire::class)->find($id);

      $form = $this->createForm(QuestionForm::class, $row);


        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
          $row = $form->getData();

          $row->setDate(new \DateTime('now'));

          $entityManager = $this->getDoctrine()->getManager();
          $entityManager->flush();

          return $this->redirectToRoute('admin');
        }

      return $this->render('views/edit.html.twig', array(
        'form' => $form->createView()
      ));
    }
}
