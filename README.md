# 近畿大学 esports 体験イベント Mock Site

Java / Spring Boot / Thymeleafで作成した、eスポーツイベント来場者向けホームページのモックです。

## 必要環境

- Java 17以上
- Maven

## 起動方法

```bash
mvn spring-boot:run
```

同梱のMaven Wrapperを使う場合:

```bash
./mvnw spring-boot:run
```

起動後、ブラウザで以下を開いてください。

```text
http://localhost:8080
```

## ページURL

- `/` ホーム
- `/event-a` イベントA詳細
- `/event-b` イベントB詳細
- `/location` 場所

感想フォームはサイト内ページではなく、ヘッダーメニューからGoogleフォームへ遷移します。

## Googleフォームについて

予約情報と感想はGoogleフォームで管理する想定です。サイト内に入力フォームやデータ保存機能は作成していません。

GoogleフォームURLは、以下のHTML内で後から差し替えてください。

- `src/main/resources/templates/event-a.html`
- `src/main/resources/templates/event-b.html`
- `src/main/resources/templates/index.html`
- `src/main/resources/templates/location.html`

現在の仮URL:

- イベントA: `https://forms.gle/example-event-a`
- イベントB: `https://forms.gle/example-event-b`
- 感想フォーム: `https://forms.gle/example-feedback`

Googleフォームで聞く予定の項目:

- 予約フォーム: 名前、メールアドレス、年齢、希望時間、そのゲームを知っているか、ゲームを普段からするか
- 感想フォーム: 名前、参加したイベント、満足度、コメント

## 実装方針

このサイトは情報提供サイトです。入力系はすべてGoogleフォームで管理する想定です。

そのため、以下は作成していません。

- 管理者ページ
- 予約フォーム
- 感想フォーム
- データ保存機能
- データベース

## 管理者ページについて

管理者ページは作成していません。サイト側では予約データや感想データを保存しません。
