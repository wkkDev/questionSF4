<?php

namespace App\Controller;

use App\Entity\Contact;
use App\Form\ContactType;


use Symfony\Component\HttpFoundation\Request;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Response;


class MainController extends Controller {

    /**
     * @Route("/", name="home")
     */
    public function indexAction() {

        return $this->render('views/index.html.twig', array(
           'name' => 'Wojciech',
        ));
    }

    /**
     * @Route("/about", name="about")
     */
    public function aboutAction() {


        return $this->render('views/about.html.twig', array(
           'name' => 'Wojciech',
        ));
    }

    /**
     * @Route("/contact", name="contact")
     */
    public function contactAction(Request $request, \Swift_Mailer $mailer) {

        $contact = new Contact();
        $form = $this->createForm(ContactType::class, $contact);
        $session = $this->get('session');

        if ($request->isMethod('POST')) {
            $form->submit($request->request->get($form->getName()));

            if ($form->isSubmitted() && $form->isValid()) {
                $msg = 'Wiadomość została wysłana.';

                $message = (new \Swift_Message('Formularz kontaktowy'))
                        ->setFrom($form->get('email')->getData())
                        ->setTo('wk.kondraciuk@gmail.com')
                        ->setBody($this->renderView('views/send.html.twig',array(
                            'email'   => $form->get('email')->getData(),
                            'content' => $form->get('content')->getData()
                        )),'text/html');

                 $mailer->send($message);
                 $session->getFlashBag()->add('success', 'Your message has been sent');
                 return $this->redirect($this->generateUrl('contact'));
            } else {
                $session->getFlashBag()->add('danger', 'Correct the errors');
            }
        }

        return $this->render('views/contact.html.twig', ['form' => $form->createView()]);
    }

}