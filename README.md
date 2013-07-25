## netguru RoR workshop - test blog

Witaj przybyszu! Wykonałeś/aś pierwszy krok na Twojej przygodzie z programowaniem w Ruby. Jesteśmy z Ciebie dumni! Teraz czas na zadanie wstępne. Gotowy/a?

Podążaj za wskazówkami:

1. Sklonuj repozytorium: `git clone git@github.com:netguru/testblog.git`
2. Zainstaluj odpowiednie ruby (2.0) - polecamy do tego [rvm](https://rvm.io/) - i wykonaj polecenie `bundle`
3. Odpal aplikację i zobacz jak wygląda (`bundle exec rails s`)
4. Twoim zadaniem będzie:
  * dodać prosty system komentarzy
  * dodać prosty system głosowania (vote_up / vote_down wystarczy)
  * na widoku posta data powinna być w formacie "21/07/2013 : 14:10"
  * po otrzymaniu 3 negatywnych głosów komentarz powinien być oznaczony jako obraźliwy i być ukryty przed użytkownikami
  * komentarz powinien być jednak widoczny dla autora posta na liście komentarzy by ten mógł anulować status obraźliwego komentarza
  * użytkownik nie może głosować dwa razy na ten sam komentarz
  * aplikacja powinna być 'klikalna' (musisz dodać odpowiednie widoki do akcji)
5. Ogólne zasady:
  * nie forkuj repozytorium, po sklonowaniu stwórz NOWE - chcemy żeby każdy z Was miał równe szanse
  * staraj się pisać małe, zwięzłe komity
  * nie modyfikujemy specek tylko kod aplikacji!
6. Jeśli napotkasz trudności zawsze możesz porozmawiać o nich z innymi uczestnikami lub z którymś z coachy na [otwartym kanale](https://www.hipchat.com/gElgOYCSJ)
5. Kiedy już wykonasz zadanie, a wszystkie testy będą przechodzić:
  * umieść projekt na [heroku](https://www.heroku.com/) (start guide dostępny [tutaj](https://devcenter.heroku.com/articles/rails3))
  * wypełnij [formularz rejestracyjny](https://docs.google.com/a/netguru.pl/forms/d/1UACYlrBSd7w1eSCpC4j8pPEeKkgWObPYc0-y84n73ng/viewform)
6. Fantastycznie! Wykonałeś/aś zadanie! Wkrótce damy Ci znać o wyniku

Pamiętaj - ilość miejsc na warsztatach jest ograniczna więc im szybciej uporasz się z zdaniem tym lepiej.

## Co pomoże Ci w na początku Twojej przygody z Rails?

* [http://www.codeschool.com/paths/ruby](http://www.codeschool.com/paths/ruby) - masz do dyspozycji darmowe kursy na podstawowym poziomie z Ruby oraz Rails
* nie chcesz żeby Cię ktoś zagiął z podstaw Ruby? spróbuj sobie Ruby Koans - [http://rubykoans.com/](http://rubykoans.com/)
* [http://guides.rubyonrails.org/](http://guides.rubyonrails.org/) - przyda się i prędzej czy później
* słabo czujesz się z JavaScript/jQuery? tutaj też pomoże CodeSchool - [http://www.codeschool.com/courses/try-jquery](http://www.codeschool.com/courses/try-jquery)
