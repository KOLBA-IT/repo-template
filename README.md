# KOLBA-IT Repo Template

Минимальный шаблон репозитория для проектов студии **KOLBA‑IT**.
Дает единый Git‑workflow «из коробки»:
- Единый стиль форматирования через `.editorconfig`
- Шаблон Pull Request'а
- Простой CI на PR (если есть `package.json`, запускаются `lint/test/build` — опционально)
- Локальная защита от случайного `git push` в `main` (pre‑push hook)

## Как использовать
1) Создайте новый репозиторий от этого шаблона: **Use this template → Create a new repository**.
2) Склонируйте новый репозиторий и установите локальный pre‑push hook:
   ```bash
   bash scripts/install-pre-push.sh
   ```
   > Хук запретит прямой `git push` в ветку `main`.

## Минимальный Git‑процесс
- Все изменения — через ветки `<type>/<short-name>` (например, `backend/post-audits`)
- Рабочий ритуал:
  ```bash
  git switch main && git pull
  git switch -c <type>/<short-name>
  # работа → коммиты
  git push -u origin <type>/<short-name>
  ```
- Открываем PR → проверяем, что CI зелёный → **Squash and merge** → удаляем ветку

## Структура
```
.editorconfig
.gitignore
LICENSE
CONTRIBUTING.md
.github/
  PULL_REQUEST_TEMPLATE.md
  workflows/ci.yml
scripts/
  pre-push
  install-pre-push.sh
```

## FAQ
**Почему CI «условный»?**  
Он запускает `lint/test/build` только если в репозитории есть `package.json`. Для Python/прочих стеков он ничего не ломает.

**Можно ли добавить строгие проверки?**  
Да — позже можно включить линтеры/типы/e2e, добавить `pre-commit`, `commitlint` и т.д.
