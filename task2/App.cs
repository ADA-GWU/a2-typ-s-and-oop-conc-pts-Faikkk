using System;
namespace task2
{

    class Employee
    {
        public string name;
        public string department;

        public Employee(string name, string department)
        {
            this.name = name;
            this.department = department;
        }

        // virtual method - allowed to be overriden, so the type is resolved at runtime
        public virtual void Work()
        {
            Console.WriteLine($"Employee {name} is working in {department} department");
        }

        public void Leave()
        {
            Console.WriteLine($"Employee {name} has left the company.");
        }

    }


    class Engineer : Employee
    {
        public string specialization;

        public Engineer(string name, string department, string specialization)
        : base(name, department)
        {
            this.specialization = specialization;
        }

        // overriding the virtual method from the Employee class
        public override void Work()
        {
            Console.WriteLine($"{name} with specialization {specialization} is coding. ");
        }

        // this method will hide the method in Employee class
        public new void Leave()
        {
            Console.WriteLine($"Engineer {name} has left the company.");
        }
    }

    class Designer : Employee
    {
        public string designTool;

        public Designer(string name, string department, string designTool)
        : base(name, department)
        {
            this.designTool = designTool;
        }
        
        // overriding the virtual method from the Employee class
        public override void Work()
        {
            Console.WriteLine($"{name} is designing using {designTool}. ");
        }


        // this method will hide the method in Employee class
        public new void Leave()
        {
            Console.WriteLine($"Designer {name} has left the company.");
        }
    }
    
    class App
    {
        static void Main(string[] args)
        {
     
            // dynamic binding here - Work() method implementation depends
            // on the instance (Engineer or Employee)
            Employee engineer = new Engineer("Zakariyya", "Engineering", "backend");
            engineer.Work();
            
            Employee designer = new Designer("Abbas", "Designer", "Adobe Photoshop");
            designer.Work();

            // static binding - Leave() method implementation taken
            // from the type of the reference (Employee or Designer class)
            Employee designer1 = new Designer("Aliya", "Designer", "Figma");
            designer1.Leave();
            
            Designer designer2 = new Designer("Sabina", "Designer", "Adobe Illustrator");
            designer2.Leave();

        }
    }
}