using System;
using System.Collections.Generic;
using System.Linq;

namespace Queries
{
    class Program
    {
        static void Main(string[] args)
        {
            var context = new PlutoContext();

            //Lazy Loading
            var course = context.Courses.Single(c => c.Id == 2);
            foreach (var tag in course.Tags)
                Console.WriteLine(tag.Name);

            //IEnumerable
            //IEnumerable<Course> courses = context.Courses;
            //var filtered = courses.Where(c => c.Level == 1);
            //foreach (var course in filtered)
            //{
            //    Console.WriteLine(course.Name);
            //}

            //IQueryable
            //IQueryable<Course> courses = context.Courses;
            //var filtered = courses.Where(c => c.Level == 1);
            //foreach (var course in filtered)
            //{
            //    Console.WriteLine(course.Name);
            //}

            //Deferred Execution - Bunların hiçbirinde sorgu daha çalışmaz.
            //var courses = context.Courses.ToList().Where(c => c.IsBeginnerCourse == true);
            //foreach (var c in courses)
            //{
            //    Console.WriteLine(c.Name);
            //}


            //Aggregating
            //var count = context.Courses.Count();
            //context.Courses.Max(c => c.FullPrice);
            //context.Courses.Min(c => c.FullPrice);

            //Quantifying
            //var allAbove10Dollars = context.Courses.All(c => c.FullPrice > 10);
            //context.Courses.Any(c => c.Level == 1);

            //Element Of Operators
            // First kullanımı ile eğer dönen liste boş ise exception döner.
            // Firstor Default ile boş olsa da null döner.
            //context.Courses.OrderBy(c => c.Level).FirstOrDefault(c => c.FullPrice > 100);
            //context.Courses.SingleOrDefault(c => c.Id == 1);

            //PARTITIONING - Page of records
            //var courses = context.Courses.Skip(10).Take(10);

            //CROSSJOIN
            //context.Authors.SelectMany(a=>context.Courses, (author, courses) =>
            //    new { Author = author.Name, Courses = courses.Name });

            //GROUP JOIN
            //context.Authors.GroupJoin(context.Courses, a=> a.Id, c=> c.AuthorId, (author, courses) => 
            //    new { Author = author.Name, Courses = courses.Count() });
            //INNER JOIN
            //context.Courses.Join(context.Authors, c => c.AuthorId, a => a.Id, (course, author) =>
            //                new { CourseName = course.Name, AuthorName = author.Name });

            //PART 3.3 GROUP BY Kullanımı
            //var groups = context.Courses.GroupBy(c => c.Level);
            //foreach (var group in groups)
            //{
            //    Console.WriteLine("Key: " + group.Key);
            //    foreach (var course in group)
            //        Console.WriteLine(course.Name);

            //}


            //Part 3.2 Distinc kullanımı
            //var tags = context.Courses
            //    .Where(c => c.Level == 1)
            //    .OrderByDescending(c => c.Name)
            //    .ThenByDescending(c => c.Level)
            //    .SelectMany(c => c.Tags)
            //    .Distinct();
            //foreach (var t in tags)
            //    Console.WriteLine(t.Name);

            //Part 3.1 SelectMany Kullanımı
            //var courses = context.Courses
            //    .Where(c => c.Level == 1)
            //    .OrderByDescending(c => c.Name)
            //    .ThenByDescending(c => c.Level)
            //    //.Select(c => new { CourseName = c.Name, AuthorName = c.Author.Name });
            //    .SelectMany(c => c.Tags);


            //cross join
            //var query = from a in context.authors
            //            from c in context.courses
            //            select new { authorname = a.name, coursename = c.name };

            // GROUP JOIN - into g ile bu özellik sağlanmaktadır. 
            //var query = from a in context.Authors
            //            join c in context.Courses on a.Id equals c.AuthorId into g
            //            select new { AuthorName = a.Name, Courses = g.Count() };

            //INNER JOIN
            //var query = from c in context.Courses
            //            join a in context.Authors on c.AuthorId equals a.Id
            //            select new { CourseName = c.Name, AuthorName = a.Name };

            //            Part 2.2
            //var query = from c in context.Courses
            //            group c by c.Level into g
            //            select g;

            //            Part 2.1
            //var query = from c in context.Courses
            //            where c.AuthorId == 1
            //            orderby c.Level descending,c.Name 
            //            select new { Name = c.Name,Author = c.Author.Name };


            //            Part1
            //Linq Syntax
            //var query = from c in context.Courses
            //            where c.Name.Contains("c#")
            //            orderby c.Name
            //            select c;
            ///*foreach (var course in query)
            //{
            //    Console.WriteLine(course.Name);
            //}*/

            ////Extension Methods
            //var courses = context.Courses
            //    .Where(c => c.Name.Contains("c#"))
            //    .OrderBy(c => c.Name);

            //foreach (var course in courses)
            //{
            //    Console.WriteLine(course.Name);
            //}
        }
    }
}
