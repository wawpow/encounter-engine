# -*- coding: utf-8 -*-

When %r{захожу на главную страницу$}i do
  When %{захожу по адресу /}
end

Then %r{должен быть перенаправлен на главную страницу}i do
  Then %{должен быть перенаправлен по адресу /}
end
