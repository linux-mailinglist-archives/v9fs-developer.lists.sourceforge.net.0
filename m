Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BDFC48FA29
	for <lists+v9fs-developer@lfdr.de>; Sun, 16 Jan 2022 02:27:23 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1n8uKH-0007mM-Mh; Sun, 16 Jan 2022 01:27:20 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2) (envelope-from
 <0107017e607ed16b-bf1d6fe6-2252-4971-8067-0e806e3fdcf7-000000@eu-central-1.amazonses.com>)
 id 1n8uKG-0007mG-9N
 for v9fs-developer@lists.sourceforge.net; Sun, 16 Jan 2022 01:27:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=List-Unsubscribe:Content-Type:MIME-Version:To:
 Reply-To:From:Subject:Date:Message-ID:Sender:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=OGSabcUFD9zE9HEx7bmoiUNyPjMiEJjVcDsTQEXaCTU=; b=NkV1JY5NiZLogolgonGNeFGVXK
 Bf/wLVgG00CajFMzbPQY8GSnz/2OMJ7N3/yaZ0UYAdj//WcKTcGc6COyO0ZJsoi/rDTro/w+7/LCK
 DqaIEZPzCCAHFGG4+LxjcSOShwVaVPgVh6jto2qe5b4D/8JKYBq2qR4zO/XD+pDTpGnM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=List-Unsubscribe:Content-Type:MIME-Version:To:Reply-To:From:Subject:Date:
 Message-ID:Sender:Cc:Content-Transfer-Encoding:Content-ID:Content-Description
 :Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Subscribe:List-Post:List-Owner:
 List-Archive; bh=OGSabcUFD9zE9HEx7bmoiUNyPjMiEJjVcDsTQEXaCTU=; b=BM1bIBgUnXV1
 2aUkKdkaQ4aL+71+zgiG+neI8/uWTVEyMA7c27NVjHksNxJkg5bCB7oWQI+4NJqKLUn0ARkT7pU1V
 ym3/oGoBtNQhQ7o5nhg7mbjm+mjUtwLd3dGAKFmSrNUTQii0OXfTy4cOEXgd7gDYr+lQcuHA0e3QZ
 6RpeY=;
Received: from b228-111.smtp-out.eu-central-1.amazonses.com ([69.169.228.111])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-SHA256:128) (Exim 4.92.3)
 id 1n8uKD-0005SM-M5
 for v9fs-developer@lists.sourceforge.net; Sun, 16 Jan 2022 01:27:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
 s=otmemashwe6jj5fkh3u4i6fgtdu3soy2; d=eko-atelier.ro; t=1642296431;
 h=Sender:Message-ID:Date:Subject:From:Reply-To:To:MIME-Version:Content-Type:List-Unsubscribe;
 bh=6OWnspaPXHhKZpeLc510uoLv8L0TuYipfZS+DLHYnRI=;
 b=Xgru94ueN2TA8DMyig3bdX9oVv5wqxfITLxvcF+naYPG0ps3uSLOGkYziY61encq
 lvbRmMXL0MoFGm2Ou3sJqAqEeQawqG2fRj0t23MKv97SHczebK/sganoL/6QDSwgT7B
 kfMuArih2jF1104o8prrKpScaKBxfSqkkXOmRQ30=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
 s=54ecsf3zk7z4mwxwwox7z7bg6e5gwjsz; d=amazonses.com; t=1642296431;
 h=Sender:Message-ID:Date:Subject:From:Reply-To:To:MIME-Version:Content-Type:List-Unsubscribe:Feedback-ID;
 bh=6OWnspaPXHhKZpeLc510uoLv8L0TuYipfZS+DLHYnRI=;
 b=IfM6wj6GayDnQUVhP9D1xCktD19E6cwPi10pCpadGZsEm3wFTeqM9oMe0KQ6B3Ak
 SCcx13/0Rc36POSW1gNwR2GU4p5g40CV2WEXAFL5ztvKFuO+0K/6cQFxXiDk+kUMWFw
 ToRHpSrvnZizbShJNaIEbvmyHIunqiehhvEfKWrI=
Message-ID: <0107017e607ed16b-bf1d6fe6-2252-4971-8067-0e806e3fdcf7-000000@eu-central-1.amazonses.com>
Date: Sun, 16 Jan 2022 01:27:10 +0000
From: Office <office@eko-atelier.ro>
To: "" <v9fs-developer@lists.sourceforge.net>
MIME-Version: 1.0
Feedback-ID: 1.eu-central-1.N8GLPrwMW4DEokEt/uX8R5Dj6lDs1dpqTZ0OFMrLAAo=:AmazonSES
X-SES-Outgoing: 2022.01.16-69.169.228.111
X-Spam-Score: 6.2 (++++++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has identified this incoming email as possible spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: [View this in your
 browser.](https://ekogroup.com.ro?mailpoet_router&endpoint=track&action=click&data=WzE0MzAwNSwibmlxaWF6cXMzYjQ0MGNjZ2s0YzRrNDRzOG9jZ2NrYzQiLCI4OSIsImJjOTE0ZjQzNzE2MSIsZmFsc2Vd)
 [FarmersMarket-Top] 
 Content analysis details:   (6.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [69.169.228.111 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 1.7 URIBL_BLACK            Contains an URL listed in the URIBL blacklist
 [URIs: ekogroup.com.ro]
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 2.0 PYZOR_CHECK            Listed in Pyzor
 (https://pyzor.readthedocs.io/en/latest/)
 0.0 T_KAM_HTML_FONT_INVALID Test for Invalidly Named or Formatted
 Colors in HTML
 2.5 URI_WP_HACKED_2        URI for compromised WordPress site, possible
 malware
X-Headers-End: 1n8uKD-0005SM-M5
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] Uniforme pentru afacerea ta!
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
Reply-To: Office <office@eko-atelier.ro>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

W1ZpZXcgdGhpcyBpbiB5b3VyIGJyb3dzZXIuXShodHRwczovL2Vrb2dyb3VwLmNvbS5ybz9tYWls
cG9ldF9yb3V0ZXImZW5kcG9pbnQ9dHJhY2smYWN0aW9uPWNsaWNrJmRhdGE9V3pFME16QXdOU3dp
Ym1seGFXRjZjWE16WWpRME1HTmpaMnMwWXpSck5EUnpPRzlqWjJOcll6UWlMQ0k0T1NJc0ltSmpP
VEUwWmpRek56RTJNU0lzWm1Gc2MyVmQpCgpbRmFybWVyc01hcmtldC1Ub3BdCgpbZWtvLWF0ZWxp
ZXItYnVuXShodHRwczovL2Vrb2dyb3VwLmNvbS5ybz9tYWlscG9ldF9yb3V0ZXImZW5kcG9pbnQ9
dHJhY2smYWN0aW9uPWNsaWNrJmRhdGE9V3pFME16QXdOU3dpYm1seGFXRjZjWE16WWpRME1HTmpa
MnMwWXpSck5EUnpPRzlqWjJOcll6UWlMQ0k0T1NJc0lqZzBNbVF4WVRGbE56STRNeUlzWm1Gc2My
VmQpCgpDUkVBWkEtVEkgVU5JRk9STUEgQ1UgTk9JCklUSSBHQVJBTlRBTSBDRUwgTUFJIE1JQyBQ
UkVUIGxhCi0gdW5pZm9ybWUgbWVkaWNhbGUKLSB1bmlmb3JtZSBILk8uUi5FLkMuQQotIHVuaWZv
cm1lIG1pbGl0YXJlCi0gdW5pZm9ybWUgY29ycG9yYXRlCi0gcHJvZHVzZSBkZSBwcm90ZWN0aWEg
bXVuY2lpCl9fX18KQ2VyZSBvIGNvdGF0aWUgZGUgcHJldCBzaSBjb252aW5nZS10ZSEKCltBTUEg
TGlzdHNfSUdEXQoKT0ZGSUNFQEVLTy1BVEVMSUVSLlJPCnd3dy5la28tYXRlbGllci5ybwoKW0Nh
cHR1cmHMhiBkZSBlY3JhbiBkaW4gMjAyMS0wOS0xNiBsYSAxMy4xMy4yN10oaHR0cHM6Ly9la29n
cm91cC5jb20ucm8/bWFpbHBvZXRfcm91dGVyJmVuZHBvaW50PXRyYWNrJmFjdGlvbj1jbGljayZk
YXRhPVd6RTBNekF3TlN3aWJtbHhhV0Y2Y1hNellqUTBNR05qWjJzMFl6UnJORFJ6T0c5aloyTnJZ
elFpTENJNE9TSXNJbU0yTnpCaU5qQmtaVFV6WXlJc1ptRnNjMlZkKQoKW1VuaWZvcm1lIE1FRElD
QUxFXShodHRwczovL2Vrb2dyb3VwLmNvbS5ybz9tYWlscG9ldF9yb3V0ZXImZW5kcG9pbnQ9dHJh
Y2smYWN0aW9uPWNsaWNrJmRhdGE9V3pFME16QXdOU3dpYm1seGFXRjZjWE16WWpRME1HTmpaMnMw
WXpSck5EUnpPRzlqWjJOcll6UWlMQ0k0T1NJc0ltTTJOekJpTmpCa1pUVXpZeUlzWm1Gc2MyVmQp
CgpbQ2FwdHVyYcyGIGRlIGVjcmFuIGRpbiAyMDIxLTA5LTE2IGxhIDEzLjEzLjMzXShodHRwczov
L2Vrb2dyb3VwLmNvbS5ybz9tYWlscG9ldF9yb3V0ZXImZW5kcG9pbnQ9dHJhY2smYWN0aW9uPWNs
aWNrJmRhdGE9V3pFME16QXdOU3dpYm1seGFXRjZjWE16WWpRME1HTmpaMnMwWXpSck5EUnpPRzlq
WjJOcll6UWlMQ0k0T1NJc0lqa3hPREUxTlRZMU56UmpaaUlzWm1Gc2MyVmQpCgpbVW5pZm9ybWUg
SC5PLlIuRS5DLkFdKGh0dHBzOi8vZWtvZ3JvdXAuY29tLnJvP21haWxwb2V0X3JvdXRlciZlbmRw
b2ludD10cmFjayZhY3Rpb249Y2xpY2smZGF0YT1XekUwTXpBd05Td2libWx4YVdGNmNYTXpZalEw
TUdOaloyczBZelJyTkRSek9HOWpaMk5yWXpRaUxDSTRPU0lzSWpreE9ERTFOVFkxTnpSalppSXNa
bUZzYzJWZCkKCltDYXB0dXJhzIYgZGUgZWNyYW4gZGluIDIwMjEtMDktMTYgbGEgMTMuMTMuNDBd
KGh0dHBzOi8vZWtvZ3JvdXAuY29tLnJvP21haWxwb2V0X3JvdXRlciZlbmRwb2ludD10cmFjayZh
Y3Rpb249Y2xpY2smZGF0YT1XekUwTXpBd05Td2libWx4YVdGNmNYTXpZalEwTUdOaloyczBZelJy
TkRSek9HOWpaMk5yWXpRaUxDSTRPU0lzSWpReE9XSTBZbU5rT1dFME15SXNabUZzYzJWZCkKCltV
bmlmb3JtZSBNSUxJVEFSRV0oaHR0cHM6Ly9la29ncm91cC5jb20ucm8/bWFpbHBvZXRfcm91dGVy
JmVuZHBvaW50PXRyYWNrJmFjdGlvbj1jbGljayZkYXRhPVd6RTBNekF3TlN3aWJtbHhhV0Y2Y1hN
ellqUTBNR05qWjJzMFl6UnJORFJ6T0c5aloyTnJZelFpTENJNE9TSXNJalF4T1dJMFltTmtPV0Uw
TXlJc1ptRnNjMlZkKQoKW2Zhdmljb25dCgpbZmFjZWJvb2tdKGh0dHBzOi8vZWtvZ3JvdXAuY29t
LnJvP21haWxwb2V0X3JvdXRlciZlbmRwb2ludD10cmFjayZhY3Rpb249Y2xpY2smZGF0YT1XekUw
TXpBd05Td2libWx4YVdGNmNYTXpZalEwTUdOaloyczBZelJyTkRSek9HOWpaMk5yWXpRaUxDSTRP
U0lzSWpoaE1tWmxNbU13T0RjME55SXNabUZzYzJWZCkgW2luc3RhZ3JhbV0oaHR0cHM6Ly9la29n
cm91cC5jb20ucm8/bWFpbHBvZXRfcm91dGVyJmVuZHBvaW50PXRyYWNrJmFjdGlvbj1jbGljayZk
YXRhPVd6RTBNekF3TlN3aWJtbHhhV0Y2Y1hNellqUTBNR05qWjJzMFl6UnJORFJ6T0c5aloyTnJZ
elFpTENJNE9TSXNJbUl3Tm1OalpURXhZVEUwTlNJc1ptRnNjMlZkKQpbVW5zdWJzY3JpYmVdKGh0
dHBzOi8vZWtvZ3JvdXAuY29tLnJvP21haWxwb2V0X3JvdXRlciZlbmRwb2ludD10cmFjayZhY3Rp
b249Y2xpY2smZGF0YT1XekUwTXpBd05Td2libWx4YVdGNmNYTXpZalEwTUdOaloyczBZelJyTkRS
ek9HOWpaMk5yWXpRaUxDSTRPU0lzSW1NMk1EY3laVFpqTVdZMk9DSXNabUZzYzJWZCkgfCBbTWFu
YWdlIHlvdXIgc3Vic2NyaXB0aW9uXShodHRwczovL2Vrb2dyb3VwLmNvbS5ybz9tYWlscG9ldF9y
b3V0ZXImZW5kcG9pbnQ9dHJhY2smYWN0aW9uPWNsaWNrJmRhdGE9V3pFME16QXdOU3dpYm1seGFX
RjZjWE16WWpRME1HTmpaMnMwWXpSck5EUnpPRzlqWjJOcll6UWlMQ0k0T1NJc0ltRXhaR1F4TlRn
MVpUVXdNaUlzWm1Gc2MyVmQpCkFkZCB5b3VyIHBvc3RhbCBhZGRyZXNzIGhlcmUhCgpPRkZJQ0VA
RUtPLUFURUxJRVIuUk8Kd3d3LmVrby1hdGVsaWVyLnJvCgpbRmFybWVyc01hcmtldC1Cb3R0b21d
CgpbTWFpbFBvZXRdKGh0dHBzOi8vZWtvZ3JvdXAuY29tLnJvP21haWxwb2V0X3JvdXRlciZlbmRw
b2ludD10cmFjayZhY3Rpb249Y2xpY2smZGF0YT1XekUwTXpBd05Td2libWx4YVdGNmNYTXpZalEw
TUdOaloyczBZelJyTkRSek9HOWpaMk5yWXpRaUxDSTRPU0lzSW1VME9UZ3pOell4WkdOaE55SXNa
bUZzYzJWZCkKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
ClY5ZnMtZGV2ZWxvcGVyIG1haWxpbmcgbGlzdApWOWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vm
b3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vdjlm
cy1kZXZlbG9wZXIK
