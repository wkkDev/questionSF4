<?php

namespace App\Form;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\Extension\Core\Type\IntegerType;
use Symfony\Component\Form\Extension\Core\Type\DateType;
use Symfony\Component\Form\Extension\Core\Type\SubmitType;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\Validator\Constraints as Assert;

class QuestionForm extends AbstractType {

/**
 * @param FormBuilderInterface $builder
 * @param array $options
 */

public function buildForm(FormBuilderInterface $builder, array $options) {

  $builder
          ->add('name', TextType::class, array(
              'label' => 'First name and last name',
              'attr' => array(
                'class' => 'form-control'
            )
          ))
          ->add('age', IntegerType::class, array(
            'attr' => array(
              'class' => 'form-control'
            )
          ))

          ->add('save', SubmitType::class, array(
            'label' => 'Send',
            'attr' => array(
              'class' => 'btn btn-primary'
            )
          ))
      ;
  }
}
