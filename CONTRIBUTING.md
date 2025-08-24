# CONTRIBUTING

Спасибо за вклад! Минимальные правила:
- Работайте через ветки `<type>/<short-name>`
- В `main` напрямую не пушим — используйте PR (+ локальный pre‑push hook)
- Мёрджим только кнопкой **Squash and merge**
- Держим PR небольшими и понятными

## Ритуал перед началом задачи
```bash
git switch main && git pull
git switch -c <type>/<short-name>
```

## Запрет случайного push в main
Установите хук один раз на машине:
```bash
bash scripts/install-pre-push.sh
```
