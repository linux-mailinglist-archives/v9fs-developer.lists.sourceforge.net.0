Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 486974285AF
	for <lists+v9fs-developer@lfdr.de>; Mon, 11 Oct 2021 06:08:44 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mZmcD-0008Uz-VD; Mon, 11 Oct 2021 04:08:41 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from
 <0107017c6d897b46-5c187a34-3da8-403f-9389-82a075b7caaf-000000@eu-central-1.amazonses.com>)
 id 1mZmcC-0008Uj-0j
 for v9fs-developer@lists.sourceforge.net; Mon, 11 Oct 2021 04:08:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=List-Unsubscribe:Content-Type:MIME-Version:To:
 Reply-To:From:Subject:Date:Message-ID:Sender:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=LL8tnNDcyijK6jRcIYIpxBHnCnzVvmJYwYqm8TGAPcg=; b=kklgjIqjOgArI9yAWJfMuNVhiF
 8eDi5/TRjlcKr2dro/Hvy8oB/As0hfN62XTTj+xoJ0xM43pEdG8LXnCPY0bY6f1PKeFgFd5i9C4ol
 FU3/BYZJH/7KiLTQ1Idx9FXQ3tD61enIxZVKMq/bjWBBR4TjdBUY/IKKq2LQAQLgfbZ8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=List-Unsubscribe:Content-Type:MIME-Version:To:Reply-To:From:Subject:Date:
 Message-ID:Sender:Cc:Content-Transfer-Encoding:Content-ID:Content-Description
 :Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Subscribe:List-Post:List-Owner:
 List-Archive; bh=LL8tnNDcyijK6jRcIYIpxBHnCnzVvmJYwYqm8TGAPcg=; b=SHoyF6xzw/XQ
 PZX+6ghxqyaTaII6dvV/2Hsw7f6MpFqLxlwOL/Uv4xPSQhvcbyF8t+Tbn9DLVWnNVzlEvvY5/tOzy
 ynoRWi3zEOh50qjb9B0bHeFHpMppw3hSki1WD4eHn7+azWivR2jZmJdpp3HzvVnm+w6QbdYobVZE6
 dBXq4=;
Received: from b227-249.smtp-out.eu-central-1.amazonses.com ([69.169.227.249])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-SHA256:128) (Exim 4.92.3)
 id 1mZmc7-001lhV-FN
 for v9fs-developer@lists.sourceforge.net; Mon, 11 Oct 2021 04:08:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
 s=azn2h6rx57537id7wxygi2kd6pvhrgz3; d=eko-med.ro; t=1633925299;
 h=Sender:Message-ID:Date:Subject:From:Reply-To:To:MIME-Version:Content-Type:List-Unsubscribe;
 bh=I3ahdE2bA7OrsdyeeGFHNpm94fxgWPi+9yGk5HPSqqU=;
 b=FtUHQpJwXW/3kBBDl1QBpC8vVGdDzkPSBZrbN0374EQTFOpmiDLt1OMaDxX5LKJC
 k2SAM3ZkyJ52p625As9zfVlIxZxdmrOkea4Uk7u4sEbursi3z92k7q5zaUO05wLWqPr
 vBpzRmmzAMGaz5Vk6tlsc9jevyg70O0E6PXEtGmg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
 s=54ecsf3zk7z4mwxwwox7z7bg6e5gwjsz; d=amazonses.com; t=1633925299;
 h=Sender:Message-ID:Date:Subject:From:Reply-To:To:MIME-Version:Content-Type:List-Unsubscribe:Feedback-ID;
 bh=I3ahdE2bA7OrsdyeeGFHNpm94fxgWPi+9yGk5HPSqqU=;
 b=BIo07xnXEUSaQguNEH434sG5AQ57ZghB8mJF9UzIpqdLI0FgTj2+37em5VpnmC2l
 evYvMAmApQWHG3XhtDAXYWrggcTqXswanHzn/fkmTknvTjJwLq4qy2uLWcgW/YZ+Rj9
 HXzqKc1Gq0RzB69DS0Yz+9fOkN7PQfgfLdGS8skY=
Message-ID: <0107017c6d897b46-5c187a34-3da8-403f-9389-82a075b7caaf-000000@eu-central-1.amazonses.com>
Date: Mon, 11 Oct 2021 04:08:19 +0000
From: Teste covid-19 <office@eko-med.ro>
To: "" <v9fs-developer@lists.sourceforge.net>
MIME-Version: 1.0
Feedback-ID: 1.eu-central-1.N8GLPrwMW4DEokEt/uX8R5Dj6lDs1dpqTZ0OFMrLAAo=:AmazonSES
X-SES-Outgoing: 2021.10.11-69.169.227.249
X-Spam-Score: 4.5 (++++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: [FarmersMarket-Top]
 [eko-med](https://eko-med.ro?mailpoet_router&endpoint=track&action=click&data=WzY1NTg0OSwiYzdxbzNucDczYW9zc2NjNDRva2djYzQwY2tvZ3NzZzAiLCIyMyIsIjRiZjFjY2QyZjMwMCIsZmFsc2Vd)
 PESTE 500 MILIOANE DE PRODUSE ANTI-COVID 19 VANDUTE IN TOATA EUROPA 
 Content analysis details:   (4.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [69.169.227.249 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 2.0 PYZOR_CHECK            Listed in Pyzor
 (https://pyzor.readthedocs.io/en/latest/)
 0.0 T_KAM_HTML_FONT_INVALID Test for Invalidly Named or Formatted
 Colors in HTML
 2.5 URI_WP_HACKED_2        URI for compromised WordPress site, possible
 malware
X-Headers-End: 1mZmc7-001lhV-FN
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] Teste 4 in 1 anti-covid-19 pentru toate tulpinile
X-BeenThere: v9fs-developer@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <v9fs-developer.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/v9fs-developer>, 
 <mailto:v9fs-developer-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=v9fs-developer>
List-Post: <mailto:v9fs-developer@lists.sourceforge.net>
List-Help: <mailto:v9fs-developer-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/v9fs-developer>, 
 <mailto:v9fs-developer-request@lists.sourceforge.net?subject=subscribe>
Reply-To: Office | eko-med ro <office@eko-med.ro>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

W0Zhcm1lcnNNYXJrZXQtVG9wXQoKW2Vrby1tZWRdKGh0dHBzOi8vZWtvLW1lZC5ybz9tYWlscG9l
dF9yb3V0ZXImZW5kcG9pbnQ9dHJhY2smYWN0aW9uPWNsaWNrJmRhdGE9V3pZMU5UZzBPU3dpWXpk
eGJ6TnVjRGN6WVc5emMyTmpORFJ2YTJkall6UXdZMnR2WjNOelp6QWlMQ0l5TXlJc0lqUmlaakZq
WTJReVpqTXdNQ0lzWm1Gc2MyVmQpCgpQRVNURSA1MDAgTUlMSU9BTkUgREUgUFJPRFVTRQpBTlRJ
LUNPVklEIDE5ClZBTkRVVEUgSU4gVE9BVEEgRVVST1BBCgpPZmVydGEgbm9hc3RyYSBjdXByaW5k
ZToKLSBwcm9kdXNlIGFudGktY292aWQgMTkKLSBkaXNwb3ppdGl2ZSBtZWRpY2FsZSBhdml6YXRl
IE1TCi0gZ2FtYSBIaWd5ZW5pdW0KX19fX18KT0ZGSUNFQEVLT0dST1VQLlJPCk9GRklDRUBFS08t
TUVELlJPCis0IDA3NzEgNjc1IDI0MAoKW0NhcHR1cmHMhiBkZSBlY3JhbiBkaW4gMjAyMS0wOS0x
MyBsYSAxNC40Ni4yM10oaHR0cHM6Ly9la28tbWVkLnJvP21haWxwb2V0X3JvdXRlciZlbmRwb2lu
dD10cmFjayZhY3Rpb249Y2xpY2smZGF0YT1XelkxTlRnME9Td2lZemR4YnpOdWNEY3pZVzl6YzJO
ak5EUnZhMmRqWXpRd1kydHZaM056WnpBaUxDSXlNeUlzSWpSaVpqRmpZMlF5WmpNd01DSXNabUZz
YzJWZCkKCkVLT0dST1VQLlJPIGlzIGFuIGludGVybmF0aW9uYWwgVFJBREUgY29tcGFueSB3aXRo
IGFyZWFzIG9mIGFjdGlvbiBpbiBkaWZmZXJlbnQgcmVnaW9ucyBvZiB0aGUgd29ybGQuCkFzayBm
b3IgYSBwcmljZSBxdW90ZSBhbmQgeW91IHdpbGwgYmUgYW5zd2VyZWQgaW4gYSBtYXhpbXVtIG9m
IDQ4IGhvdXJzLgoKWzEzNjAwLXJlbW92ZWJnLXByZXZpZXddKGh0dHBzOi8vZWtvLW1lZC5ybz9t
YWlscG9ldF9yb3V0ZXImZW5kcG9pbnQ9dHJhY2smYWN0aW9uPWNsaWNrJmRhdGE9V3pZMU5UZzBP
U3dpWXpkeGJ6TnVjRGN6WVc5emMyTmpORFJ2YTJkall6UXdZMnR2WjNOelp6QWlMQ0l5TXlJc0lt
WTBNR1F5WldKbVpXTm1aaUlzWm1Gc2MyVmQpCgo4LDUgbGVpLCB0dmEgemVybwpPUklDRSBURVNU
IGFudGktY292aWQgMTkKCltOZWdvY2lhemEgcHJldHVyaWxlIHRlbGVmb25pY10oaHR0cHM6Ly9l
a28tbWVkLnJvP21haWxwb2V0X3JvdXRlciZlbmRwb2ludD10cmFjayZhY3Rpb249Y2xpY2smZGF0
YT1XelkxTlRnME9Td2lZemR4YnpOdWNEY3pZVzl6YzJOak5EUnZhMmRqWXpRd1kydHZaM056WnpB
aUxDSXlNeUlzSW1ZME1HUXlaV0ptWldObVppSXNabUZzYzJWZCkKCltDYXB0dXJhzIZfZGVfZWNy
YW5fZGluXzIwMjEtMDktMTNfbGFfMTQuNTYuMDMtcmVtb3ZlYmctcHJldmlld10oaHR0cHM6Ly9l
a28tbWVkLnJvP21haWxwb2V0X3JvdXRlciZlbmRwb2ludD10cmFjayZhY3Rpb249Y2xpY2smZGF0
YT1XelkxTlRnME9Td2lZemR4YnpOdWNEY3pZVzl6YzJOak5EUnZhMmRqWXpRd1kydHZaM056WnpB
aUxDSXlNeUlzSW1ZME1HUXlaV0ptWldObVppSXNabUZzYzJWZCkKCjAsMTUgbGVpK3R2YQpPUklD
RSBNQVNDQSBtZWRpY2FsYQoKW05lZ29jaWF6YSBwcmV0dXJpbGUgdGVsZWZvbmljXShodHRwczov
L2Vrby1tZWQucm8/bWFpbHBvZXRfcm91dGVyJmVuZHBvaW50PXRyYWNrJmFjdGlvbj1jbGljayZk
YXRhPVd6WTFOVGcwT1N3aVl6ZHhiek51Y0RjellXOXpjMk5qTkRSdmEyZGpZelF3WTJ0dlozTnpa
ekFpTENJeU15SXNJbVkwTUdReVpXSm1aV05tWmlJc1ptRnNjMlZkKQoKW0NhcHR1cmHMhl9kZV9l
Y3Jhbl9kaW5fMjAyMS0wOS0xM19sYV8xNC41OC4zNC1yZW1vdmViZy1wcmV2aWV3XShodHRwczov
L2Vrby1tZWQucm8/bWFpbHBvZXRfcm91dGVyJmVuZHBvaW50PXRyYWNrJmFjdGlvbj1jbGljayZk
YXRhPVd6WTFOVGcwT1N3aVl6ZHhiek51Y0RjellXOXpjMk5qTkRSdmEyZGpZelF3WTJ0dlozTnpa
ekFpTENJeU15SXNJbVkwTUdReVpXSm1aV05tWmlJc1ptRnNjMlZkKQoKMTkgbGVpICsgdHZhCk9S
SUNFIFBST0RVUyBhbnRpLWNvdmlkIDE5CgpbTmVnb2NpYXphIHByZXR1cmlsZSB0ZWxlZm9uaWNd
KGh0dHBzOi8vZWtvLW1lZC5ybz9tYWlscG9ldF9yb3V0ZXImZW5kcG9pbnQ9dHJhY2smYWN0aW9u
PWNsaWNrJmRhdGE9V3pZMU5UZzBPU3dpWXpkeGJ6TnVjRGN6WVc5emMyTmpORFJ2YTJkall6UXdZ
MnR2WjNOelp6QWlMQ0l5TXlJc0ltWTBNR1F5WldKbVpXTm1aaUlzWm1Gc2MyVmQpCgpbQ2FwdHVy
YcyGIGRlIGVjcmFuIGRpbiAyMDIxLTA5LTEzIGxhIDE1LjAxLjE3XShodHRwczovL2Vrby1tZWQu
cm8/bWFpbHBvZXRfcm91dGVyJmVuZHBvaW50PXRyYWNrJmFjdGlvbj1jbGljayZkYXRhPVd6WTFO
VGcwT1N3aVl6ZHhiek51Y0RjellXOXpjMk5qTkRSdmEyZGpZelF3WTJ0dlozTnpaekFpTENJeU15
SXNJalJpWmpGalkyUXlaak13TUNJc1ptRnNjMlZkKQoKQ2VyZSBvZmVydGEgSGlnZW55dW0KCltO
ZWdvY2lhemEgcHJldHVyaWxlXShodHRwczovL2Vrby1tZWQucm8/bWFpbHBvZXRfcm91dGVyJmVu
ZHBvaW50PXRyYWNrJmFjdGlvbj1jbGljayZkYXRhPVd6WTFOVGcwT1N3aVl6ZHhiek51Y0RjellX
OXpjMk5qTkRSdmEyZGpZelF3WTJ0dlozTnpaekFpTENJeU15SXNJalJpWmpGalkyUXlaak13TUNJ
c1ptRnNjMlZkKQoKW0NhcHR1cmHMhiBkZSBlY3JhbiBkaW4gMjAyMS0wOS0xMyBsYSAxNS4wMS4y
Nl0oaHR0cHM6Ly9la28tbWVkLnJvP21haWxwb2V0X3JvdXRlciZlbmRwb2ludD10cmFjayZhY3Rp
b249Y2xpY2smZGF0YT1XelkxTlRnME9Td2lZemR4YnpOdWNEY3pZVzl6YzJOak5EUnZhMmRqWXpR
d1kydHZaM056WnpBaUxDSXlNeUlzSWpSaVpqRmpZMlF5WmpNd01DSXNabUZzYzJWZCkKCkNlcmUg
b2ZlcnRhIGNvbXBsZXRhCgpbTmVnb2NpYXphIHByZXR1cmlsZV0oaHR0cHM6Ly9la28tbWVkLnJv
P21haWxwb2V0X3JvdXRlciZlbmRwb2ludD10cmFjayZhY3Rpb249Y2xpY2smZGF0YT1XelkxTlRn
ME9Td2lZemR4YnpOdWNEY3pZVzl6YzJOak5EUnZhMmRqWXpRd1kydHZaM056WnpBaUxDSXlNeUlz
SWpSaVpqRmpZMlF5WmpNd01DSXNabUZzYzJWZCkKCltDYXB0dXJhzIYgZGUgZWNyYW4gZGluIDIw
MjEtMDktMTMgbGEgMTUuMDEuMzRdKGh0dHBzOi8vZWtvLW1lZC5ybz9tYWlscG9ldF9yb3V0ZXIm
ZW5kcG9pbnQ9dHJhY2smYWN0aW9uPWNsaWNrJmRhdGE9V3pZMU5UZzBPU3dpWXpkeGJ6TnVjRGN6
WVc5emMyTmpORFJ2YTJkall6UXdZMnR2WjNOelp6QWlMQ0l5TXlJc0lqUmlaakZqWTJReVpqTXdN
Q0lzWm1Gc2MyVmQpCgpPcmljZSBhcGFyYXQgbWVkaWNhbAoKW0NlcmUgb2ZlcnRhIHBlIG1haWxd
KGh0dHBzOi8vZWtvLW1lZC5ybz9tYWlscG9ldF9yb3V0ZXImZW5kcG9pbnQ9dHJhY2smYWN0aW9u
PWNsaWNrJmRhdGE9V3pZMU5UZzBPU3dpWXpkeGJ6TnVjRGN6WVc5emMyTmpORFJ2YTJkall6UXdZ
MnR2WjNOelp6QWlMQ0l5TXlJc0lqUmlaakZqWTJReVpqTXdNQ0lzWm1Gc2MyVmQpCgpbZWtvLW1l
ZF0KCltmYWNlYm9va10oaHR0cHM6Ly9la28tbWVkLnJvP21haWxwb2V0X3JvdXRlciZlbmRwb2lu
dD10cmFjayZhY3Rpb249Y2xpY2smZGF0YT1XelkxTlRnME9Td2lZemR4YnpOdWNEY3pZVzl6YzJO
ak5EUnZhMmRqWXpRd1kydHZaM056WnpBaUxDSXlNeUlzSWpreU5EUXdPRGN6TkRBMU1TSXNabUZz
YzJWZCkgW2luc3RhZ3JhbV0oaHR0cHM6Ly9la28tbWVkLnJvP21haWxwb2V0X3JvdXRlciZlbmRw
b2ludD10cmFjayZhY3Rpb249Y2xpY2smZGF0YT1XelkxTlRnME9Td2lZemR4YnpOdWNEY3pZVzl6
YzJOak5EUnZhMmRqWXpRd1kydHZaM056WnpBaUxDSXlNeUlzSW1RM1pUQXdNRGM1TkdaaU1pSXNa
bUZzYzJWZCkKW1Vuc3Vic2NyaWJlXShodHRwczovL2Vrby1tZWQucm8/bWFpbHBvZXRfcm91dGVy
JmVuZHBvaW50PXRyYWNrJmFjdGlvbj1jbGljayZkYXRhPVd6WTFOVGcwT1N3aVl6ZHhiek51Y0Rj
ellXOXpjMk5qTkRSdmEyZGpZelF3WTJ0dlozTnpaekFpTENJeU15SXNJakppTnpoaVpXTm1aREE0
WVNJc1ptRnNjMlZkKSB8IFtNYW5hZ2UgeW91ciBzdWJzY3JpcHRpb25dKGh0dHBzOi8vZWtvLW1l
ZC5ybz9tYWlscG9ldF9yb3V0ZXImZW5kcG9pbnQ9dHJhY2smYWN0aW9uPWNsaWNrJmRhdGE9V3pZ
MU5UZzBPU3dpWXpkeGJ6TnVjRGN6WVc5emMyTmpORFJ2YTJkall6UXdZMnR2WjNOelp6QWlMQ0l5
TXlJc0lqTmxOakk1TVdKak1XVTBZeUlzWm1Gc2MyVmQpCkFkZCB5b3VyIHBvc3RhbCBhZGRyZXNz
IGhlcmUhCl9fX19fXwpvZmZpY2VAZWtvZ3JvdXAucm8KKzQgMDc3MSA2NzUgMjQwCgpbRmFybWVy
c01hcmtldC1Cb3R0b21dCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpWOWZzLWRldmVsb3BlciBtYWlsaW5nIGxpc3QKVjlmcy1kZXZlbG9wZXJAbGlzdHMu
c291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3Rp
bmZvL3Y5ZnMtZGV2ZWxvcGVyCg==
