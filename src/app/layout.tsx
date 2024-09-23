import type { Metadata } from "next";
import "./globals.css";

export const metadata: Metadata = {
  title: "GBF DB",
  description: "Generated by create next app",
};

export default function RootLayout({
  children,
}: Readonly<{
  children: React.ReactNode;
}>) {
  return (
    <html lang="ja">
      <body>
        <header></header>
        <main>
          <div className="container mx-auto">{children}</div>
        </main>
        <footer></footer>
      </body>
    </html>
  );
}
