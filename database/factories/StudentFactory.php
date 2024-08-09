<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use App\Models\Teacher;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Student>
 */
class StudentFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'student_name' => $this->faker->name,
            'class_teacher_id' => Teacher::factory(),
            'class' => $this->faker->randomElement(['A', 'B', 'C']),
            'admission_date' => $this->faker->date(),
            'yearly_fees' => $this->faker->randomFloat(2, 1000, 5000),
        ];
    }
}
