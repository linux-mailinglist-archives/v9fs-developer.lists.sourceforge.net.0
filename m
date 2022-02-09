Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 00CDF4AEAC6
	for <lists+v9fs-developer@lfdr.de>; Wed,  9 Feb 2022 08:11:32 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1nHh8U-0005FL-5A; Wed, 09 Feb 2022 07:11:28 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2) (envelope-from
 <0107017edd527fe3-1d4f3e52-5e58-4993-aae2-a0b3f25e04d5-000000@eu-central-1.amazonses.com>)
 id 1nHh8T-0005FE-GC
 for v9fs-developer@lists.sourceforge.net; Wed, 09 Feb 2022 07:11:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=List-Unsubscribe:Content-Type:MIME-Version:To:
 Reply-To:From:Subject:Date:Message-ID:Sender:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=3jiXcCIZhhFwKGFzY5V98ALqCA+R3M/njwiMMuRGx0Q=; b=SyAfgrMHc0dUMuONHKzhds+soU
 GIGfH6fUHxG2wZ42FOnrxSZeiRjM8xSBMbpFHsZv+/JX8HkGit/M7YpgZbgoJZ+3U1B+FUfJAOin2
 GL1+wE+GRSbNxlpsPrDe9yTMnTnmcBGikPlCE+AP6t1O2uJchWdFc81bjsJWNoRBKNrQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=List-Unsubscribe:Content-Type:MIME-Version:To:Reply-To:From:Subject:Date:
 Message-ID:Sender:Cc:Content-Transfer-Encoding:Content-ID:Content-Description
 :Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Subscribe:List-Post:List-Owner:
 List-Archive; bh=3jiXcCIZhhFwKGFzY5V98ALqCA+R3M/njwiMMuRGx0Q=; b=KOPHGU0b0eWx
 Dhc7TQhy0D8Qmmg5nSdSRAjcbMu1AkH65DbEDdueGG6PQ3M9EJ4wSsB4ynnTcxR9nBTxIrpDXlLll
 QuPpKsovDl8mbVWdyNVWQYZwCDFqkkvIbV7bdKNaL1NJiKHFCwOGE1t+lCS/fU1gZzmwJEI32FvmF
 dMJ6s=;
Received: from b227-249.smtp-out.eu-central-1.amazonses.com ([69.169.227.249])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-SHA256:128) (Exim 4.94.2)
 id 1nHh8Q-0008A7-T9
 for v9fs-developer@lists.sourceforge.net; Wed, 09 Feb 2022 07:11:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
 s=otmemashwe6jj5fkh3u4i6fgtdu3soy2; d=eko-atelier.ro; t=1644390678;
 h=Sender:Message-ID:Date:Subject:From:Reply-To:To:MIME-Version:Content-Type:List-Unsubscribe;
 bh=CbFDnTvXn+7loWtGInjicIjKa4LyV0U4PPlZpk/wnNE=;
 b=dOL77FFBfAgN9QXjuV8oc6i68hGxJN66gVfZ6cpSOqoMiFRsxnwNIMNyI5E/FGA1
 L3EZov0AGzb16IVpgXASgf6fq2sZ/AthY+eaWdT70+XGEltvjHdED2jhDMfetey/7tP
 ItCmgZkWDbuFO2CX+ZvUyMwzvV4conEh2jSmR4a0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
 s=54ecsf3zk7z4mwxwwox7z7bg6e5gwjsz; d=amazonses.com; t=1644390678;
 h=Sender:Message-ID:Date:Subject:From:Reply-To:To:MIME-Version:Content-Type:List-Unsubscribe:Feedback-ID;
 bh=CbFDnTvXn+7loWtGInjicIjKa4LyV0U4PPlZpk/wnNE=;
 b=TfWCq6gt0WEUBEhn/46OEGyNEOQF1qCDLEuhwOykssriVnF0CNQ20aP7jIbcRUzZ
 vaPQfxgrRXLrcoAno9arBX/iPetnvf4JKJK9sC68NexQ5fEkSB0yvdExym/MWu2oMjf
 KosELlhdgRvZRnVeAmTO3I4tGmkTMpXakeVW7huI=
Message-ID: <0107017edd527fe3-1d4f3e52-5e58-4993-aae2-a0b3f25e04d5-000000@eu-central-1.amazonses.com>
Date: Wed, 9 Feb 2022 07:11:18 +0000
From: Office <office@eko-atelier.ro>
To: "" <v9fs-developer@lists.sourceforge.net>
MIME-Version: 1.0
Feedback-ID: 1.eu-central-1.N8GLPrwMW4DEokEt/uX8R5Dj6lDs1dpqTZ0OFMrLAAo=:AmazonSES
X-SES-Outgoing: 2022.02.09-69.169.227.249
X-Spam-Score: 6.2 (++++++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has identified this incoming email as possible spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: [View this in your
 browser.](https://ekogroup.com.ro?mailpoet_router&endpoint=track&action=click&data=WzE0MzAwNSwibmlxaWF6cXMzYjQ0MGNjZ2s0YzRrNDRzOG9jZ2NrYzQiLCIxMDMiLCJiNDhlNmI4NzEyYTgiLGZhbHNlXQ)
 [FarmersMarket-Top] 
 Content analysis details:   (6.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [69.169.227.249 listed in list.dnswl.org]
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
X-Headers-End: 1nHh8Q-0008A7-T9
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
Ym1seGFXRjZjWE16WWpRME1HTmpaMnMwWXpSck5EUnpPRzlqWjJOcll6UWlMQ0l4TURNaUxDSmlO
RGhsTm1JNE56RXlZVGdpTEdaaGJITmxYUSkKCltGYXJtZXJzTWFya2V0LVRvcF0KCltla28tYXRl
bGllci1idW5dKGh0dHBzOi8vZWtvZ3JvdXAuY29tLnJvP21haWxwb2V0X3JvdXRlciZlbmRwb2lu
dD10cmFjayZhY3Rpb249Y2xpY2smZGF0YT1XekUwTXpBd05Td2libWx4YVdGNmNYTXpZalEwTUdO
aloyczBZelJyTkRSek9HOWpaMk5yWXpRaUxDSXhNRE1pTENJek56WXhaVEpsWm1OaE9HWWlMR1po
YkhObFhRKQoKQ1JFQVpBLVRJIFVOSUZPUk1BIENVIE5PSQpJVEkgR0FSQU5UQU0gQ0VMIE1BSSBN
SUMgUFJFVCBsYQotIHVuaWZvcm1lIG1lZGljYWxlCi0gdW5pZm9ybWUgSC5PLlIuRS5DLkEKLSB1
bmlmb3JtZSBtaWxpdGFyZQotIHVuaWZvcm1lIGNvcnBvcmF0ZQotIHByb2R1c2UgZGUgcHJvdGVj
dGlhIG11bmNpaQpfX19fCkNlcmUgbyBjb3RhdGllIGRlIHByZXQgc2kgY29udmluZ2UtdGUhCgpb
QU1BIExpc3RzX0lHRF0KCk9GRklDRUBFS08tQVRFTElFUi5STwp3d3cuZWtvLWF0ZWxpZXIucm8K
CltDYXB0dXJhzIYgZGUgZWNyYW4gZGluIDIwMjEtMDktMTYgbGEgMTMuMTMuMjddKGh0dHBzOi8v
ZWtvZ3JvdXAuY29tLnJvP21haWxwb2V0X3JvdXRlciZlbmRwb2ludD10cmFjayZhY3Rpb249Y2xp
Y2smZGF0YT1XekUwTXpBd05Td2libWx4YVdGNmNYTXpZalEwTUdOaloyczBZelJyTkRSek9HOWpa
Mk5yWXpRaUxDSXhNRE1pTENJMVlUSXlNelV4Tm1FellXTWlMR1poYkhObFhRKQoKW1VuaWZvcm1l
IE1FRElDQUxFXShodHRwczovL2Vrb2dyb3VwLmNvbS5ybz9tYWlscG9ldF9yb3V0ZXImZW5kcG9p
bnQ9dHJhY2smYWN0aW9uPWNsaWNrJmRhdGE9V3pFME16QXdOU3dpYm1seGFXRjZjWE16WWpRME1H
TmpaMnMwWXpSck5EUnpPRzlqWjJOcll6UWlMQ0l4TURNaUxDSTFZVEl5TXpVeE5tRXpZV01pTEda
aGJITmxYUSkKCltDYXB0dXJhzIYgZGUgZWNyYW4gZGluIDIwMjEtMDktMTYgbGEgMTMuMTMuMzNd
KGh0dHBzOi8vZWtvZ3JvdXAuY29tLnJvP21haWxwb2V0X3JvdXRlciZlbmRwb2ludD10cmFjayZh
Y3Rpb249Y2xpY2smZGF0YT1XekUwTXpBd05Td2libWx4YVdGNmNYTXpZalEwTUdOaloyczBZelJy
TkRSek9HOWpaMk5yWXpRaUxDSXhNRE1pTENJMU4ySTNaakV4TVRObVltRWlMR1poYkhObFhRKQoK
W1VuaWZvcm1lIEguTy5SLkUuQy5BXShodHRwczovL2Vrb2dyb3VwLmNvbS5ybz9tYWlscG9ldF9y
b3V0ZXImZW5kcG9pbnQ9dHJhY2smYWN0aW9uPWNsaWNrJmRhdGE9V3pFME16QXdOU3dpYm1seGFX
RjZjWE16WWpRME1HTmpaMnMwWXpSck5EUnpPRzlqWjJOcll6UWlMQ0l4TURNaUxDSTFOMkkzWmpF
eE1UTm1ZbUVpTEdaaGJITmxYUSkKCltDYXB0dXJhzIYgZGUgZWNyYW4gZGluIDIwMjEtMDktMTYg
bGEgMTMuMTMuNDBdKGh0dHBzOi8vZWtvZ3JvdXAuY29tLnJvP21haWxwb2V0X3JvdXRlciZlbmRw
b2ludD10cmFjayZhY3Rpb249Y2xpY2smZGF0YT1XekUwTXpBd05Td2libWx4YVdGNmNYTXpZalEw
TUdOaloyczBZelJyTkRSek9HOWpaMk5yWXpRaUxDSXhNRE1pTENKbVlUVmlOalJsTjJGaU1HWWlM
R1poYkhObFhRKQoKW1VuaWZvcm1lIE1JTElUQVJFXShodHRwczovL2Vrb2dyb3VwLmNvbS5ybz9t
YWlscG9ldF9yb3V0ZXImZW5kcG9pbnQ9dHJhY2smYWN0aW9uPWNsaWNrJmRhdGE9V3pFME16QXdO
U3dpYm1seGFXRjZjWE16WWpRME1HTmpaMnMwWXpSck5EUnpPRzlqWjJOcll6UWlMQ0l4TURNaUxD
Sm1ZVFZpTmpSbE4yRmlNR1lpTEdaaGJITmxYUSkKCltmYXZpY29uXQoKW2ZhY2Vib29rXShodHRw
czovL2Vrb2dyb3VwLmNvbS5ybz9tYWlscG9ldF9yb3V0ZXImZW5kcG9pbnQ9dHJhY2smYWN0aW9u
PWNsaWNrJmRhdGE9V3pFME16QXdOU3dpYm1seGFXRjZjWE16WWpRME1HTmpaMnMwWXpSck5EUnpP
RzlqWjJOcll6UWlMQ0l4TURNaUxDSTRabVZoWWpjMk9EVTNNREVpTEdaaGJITmxYUSkgW2luc3Rh
Z3JhbV0oaHR0cHM6Ly9la29ncm91cC5jb20ucm8/bWFpbHBvZXRfcm91dGVyJmVuZHBvaW50PXRy
YWNrJmFjdGlvbj1jbGljayZkYXRhPVd6RTBNekF3TlN3aWJtbHhhV0Y2Y1hNellqUTBNR05qWjJz
MFl6UnJORFJ6T0c5aloyTnJZelFpTENJeE1ETWlMQ0prT1dRd01ETm1Oems1TURRaUxHWmhiSE5s
WFEpCltVbnN1YnNjcmliZV0oaHR0cHM6Ly9la29ncm91cC5jb20ucm8/bWFpbHBvZXRfcm91dGVy
JmVuZHBvaW50PXRyYWNrJmFjdGlvbj1jbGljayZkYXRhPVd6RTBNekF3TlN3aWJtbHhhV0Y2Y1hN
ellqUTBNR05qWjJzMFl6UnJORFJ6T0c5aloyTnJZelFpTENJeE1ETWlMQ0kxWldNeVlXWmpZell3
TkRraUxHWmhiSE5sWFEpIHwgW01hbmFnZSB5b3VyIHN1YnNjcmlwdGlvbl0oaHR0cHM6Ly9la29n
cm91cC5jb20ucm8/bWFpbHBvZXRfcm91dGVyJmVuZHBvaW50PXRyYWNrJmFjdGlvbj1jbGljayZk
YXRhPVd6RTBNekF3TlN3aWJtbHhhV0Y2Y1hNellqUTBNR05qWjJzMFl6UnJORFJ6T0c5aloyTnJZ
elFpTENJeE1ETWlMQ0l4TkRaaFpqWmxNVGt3TW1JaUxHWmhiSE5sWFEpCkFkZCB5b3VyIHBvc3Rh
bCBhZGRyZXNzIGhlcmUhCgpPRkZJQ0VARUtPLUFURUxJRVIuUk8Kd3d3LmVrby1hdGVsaWVyLnJv
CgpbRmFybWVyc01hcmtldC1Cb3R0b21dCgpbTWFpbFBvZXRdKGh0dHBzOi8vZWtvZ3JvdXAuY29t
LnJvP21haWxwb2V0X3JvdXRlciZlbmRwb2ludD10cmFjayZhY3Rpb249Y2xpY2smZGF0YT1XekUw
TXpBd05Td2libWx4YVdGNmNYTXpZalEwTUdOaloyczBZelJyTkRSek9HOWpaMk5yWXpRaUxDSXhN
RE1pTENJelpUWXdaalpqTWpFelpUWWlMR1poYkhObFhRKQoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KVjlmcy1kZXZlbG9wZXIgbWFpbGluZyBsaXN0ClY5
ZnMtZGV2ZWxvcGVyQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZv
cmdlLm5ldC9saXN0cy9saXN0aW5mby92OWZzLWRldmVsb3Blcgo=
