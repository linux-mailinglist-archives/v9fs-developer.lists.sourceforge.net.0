Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 02FA155ACA3
	for <lists+v9fs-developer@lfdr.de>; Sat, 25 Jun 2022 22:42:20 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1o5Cbc-0007My-Vs; Sat, 25 Jun 2022 20:42:13 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2) (envelope-from
 <010701819c996423-ee3fa121-6ac5-428a-8607-9e6a5cbcc560-000000@eu-central-1.amazonses.com>)
 id 1o5Cbc-0007Mr-57
 for v9fs-developer@lists.sourceforge.net; Sat, 25 Jun 2022 20:42:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=List-Unsubscribe:Content-Type:MIME-Version:To:
 Reply-To:From:Subject:Date:Message-ID:Sender:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=uHGa0Ytc+9Ojl3ZXOzxQEkRw+YeA0Y2Bp8kUvS+rhAY=; b=SwYpII2I1CII85+S+Un60X1Q5g
 df+GA8V1wCdvajuCXIRICUV7OCui6FP9VSzJz4Znt7Ew2GgjyDfurZG09kXrvyG0kHgNJ8DQGs4QV
 XOLAoPMVT0c1hcMEiHV39Dx6ebNkIeErUqoxbWayNNBFl1/G1qton8+AK81nrvUiXzaQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=List-Unsubscribe:Content-Type:MIME-Version:To:Reply-To:From:Subject:Date:
 Message-ID:Sender:Cc:Content-Transfer-Encoding:Content-ID:Content-Description
 :Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Subscribe:List-Post:List-Owner:
 List-Archive; bh=uHGa0Ytc+9Ojl3ZXOzxQEkRw+YeA0Y2Bp8kUvS+rhAY=; b=IyN8yXv3e4gd
 nTNN5CkrfXW1wH6VKdz4cu4thFhP57NrHpC8K2qqB/MRDjHNojc29js2UlH4dlZ6YG8TE9SELVc0f
 E2ZpMCZoyfAOjYWPq38Rxnbfm9hJNzLT3bvYdsWVhf8yylxH5m7DmGOgEdmStveRbbKKnyXrvqJhd
 AT5yM=;
Received: from b227-249.smtp-out.eu-central-1.amazonses.com ([69.169.227.249])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-SHA256:128) (Exim 4.94.2)
 id 1o5CbT-0003Xj-NB
 for v9fs-developer@lists.sourceforge.net; Sat, 25 Jun 2022 20:42:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
 s=6dycfttairtwnmbdpqj6xnhm6vx4dept; d=eko-trading.com;
 t=1656189707;
 h=Sender:Message-ID:Date:Subject:From:Reply-To:To:MIME-Version:Content-Type:List-Unsubscribe;
 bh=5iO/CmAOqCLGcszoV6s5H3WOg24YPNxVzUgYm2R3Ols=;
 b=BcFF5s0XR2dF9DVeWyNObsgfQlo4DX7Xjth1eactjpthy8lbVTWKCHl6Xdpc+XKq
 uPEN/8ICJtOD6sHZiLYXSApP3nQNpvQkoI9fIi6aOTO3ZXVjkwg3ZdfbE+fQAUwpUTV
 bVp+8g6B6Tqq45aq0+hS0fihrCUDM0YX3T4sHO5U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
 s=54ecsf3zk7z4mwxwwox7z7bg6e5gwjsz; d=amazonses.com; t=1656189707;
 h=Sender:Message-ID:Date:Subject:From:Reply-To:To:MIME-Version:Content-Type:List-Unsubscribe:Feedback-ID;
 bh=5iO/CmAOqCLGcszoV6s5H3WOg24YPNxVzUgYm2R3Ols=;
 b=V2LyXD1TunPAJI8Rhj1DjuWwBd2EB+zyI3iok8h3PSR02PnRUrZr1OxBTUc9O/iR
 JTrxnAbNgpCZWEOcjW3IYoQxxRpUMrBk6bAkOagjUVl7lcZq+mM7bLdlCxmTABgDzfY
 TOXFO0f7xZWABbD0C5+nSD70ROcT8OvLmGyiqm0E=
Message-ID: <010701819c996423-ee3fa121-6ac5-428a-8607-9e6a5cbcc560-000000@eu-central-1.amazonses.com>
Date: Sat, 25 Jun 2022 20:41:47 +0000
From: Office <office@eko-trading.com>
To: "" <v9fs-developer@lists.sourceforge.net>
MIME-Version: 1.0
Feedback-ID: 1.eu-central-1.N8GLPrwMW4DEokEt/uX8R5Dj6lDs1dpqTZ0OFMrLAAo=:AmazonSES
X-SES-Outgoing: 2022.06.25-69.169.227.249
X-Spam-Score: 4.3 (++++)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  [Vizualizează asta în navigatorul tău.](https://ekogroup.com.ro?mailpoet_router&endpoint=track&action=click&data=WzE0MzAwNSwibmlxaWF6cXMzYjQ0MGNjZ2s0YzRrNDRzOG9jZ2NrYzQiLCIxNDEiLCJjNWM5ZDJhMTY4ZDAi
    [...] 
 
 Content analysis details:   (4.3 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
                             mail domains are different
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [69.169.227.249 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  1.7 URIBL_BLACK            Contains an URL listed in the URIBL blacklist
                             [URIs: ekogroup.com.ro]
  0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
  0.0 T_KAM_HTML_FONT_INVALID Test for Invalidly Named or Formatted
                             Colors in HTML
  2.5 URI_WP_HACKED_2        URI for compromised WordPress site, possible
                             malware
X-Headers-End: 1o5CbT-0003Xj-NB
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] Romanian Water | in stock
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
Reply-To: Office <office@eko-trading.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

W1ZpenVhbGl6ZWF6xIMgYXN0YSDDrm4gbmF2aWdhdG9ydWwgdMSDdS5dKGh0dHBzOi8vZWtvZ3Jv
dXAuY29tLnJvP21haWxwb2V0X3JvdXRlciZlbmRwb2ludD10cmFjayZhY3Rpb249Y2xpY2smZGF0
YT1XekUwTXpBd05Td2libWx4YVdGNmNYTXpZalEwTUdOaloyczBZelJyTkRSek9HOWpaMk5yWXpR
aUxDSXhOREVpTENKak5XTTVaREpoTVRZNFpEQWlMR1poYkhObFhRKQoKW0Zhcm1lcnNNYXJrZXQt
VG9wXQoKW2xvZ29fZWtvZ3JvdXAtcmVtb3ZlYmctcHJldmlld10KCk91ciBjb21wYW55IGNhbiBv
ZmZlciArNjAuMDAwIEwgLyBwZXIgZGF5IG9mIFJvbWFuaWFuIFdhdGVyCltDYXB0dXJhzIYgZGUg
ZWNyYW4gZGluIDIwMjItMDYtMjMgbGEgMDkuMDYuMjZdKGh0dHBzOi8vZWtvZ3JvdXAuY29tLnJv
P21haWxwb2V0X3JvdXRlciZlbmRwb2ludD10cmFjayZhY3Rpb249Y2xpY2smZGF0YT1XekUwTXpB
d05Td2libWx4YVdGNmNYTXpZalEwTUdOaloyczBZelJyTkRSek9HOWpaMk5yWXpRaUxDSXhOREVp
TENJMU9EQmlZelF4TXpVellURWlMR1poYkhObFhRKQoKQXMgeW91IHdlbGwga25vdyxSb21hbmlh
IGlzIGEgY291bnRyeSB3aXRoIGV4dHJlbWVseSBtYW55cmVzb3VyY2VzYW5kIHdlIHdhbnQgdG8g
ZGV2ZWxvcCBsb25nLXRlcm0gcGFydG5lcnNoaXBzIHdpdGggY291bnRyaWVzIHRoYXQgY2FuIGhl
bHAgZGV2ZWxvcCBSb21hbmlhbiBleHBvcnRzLgpPdXIgY29tcGFueSBpcyBvbmUgb2YgdGhlIGxl
YWRlcnMgb24gdGhlIHRyYWRlIG1hcmtldCBpbiBSb21hbmlhIGFuZCB3ZSB3YW50IHRvIGRldmVs
b3AgbG9uZy10ZXJtIHBhcnRuZXJzaGlwcyB3aXRoIGFzIG1hbnkgY291bnRyaWVzIGluIHRoZSB3
b3JsZCBhcyBwb3NzaWJsZS4KSW4gdGhpcyBzZW5zZSwgd2Ugd2FudCB0byBpbmZvcm0geW91IG9m
IG91ciBvZmZlcnMgb2YgUm9tYW5pYW4gcHJvZHVjdHMgYXZhaWxhYmxlIGltbWVkaWF0ZWx5LgoK
RUtPIFRSQURFIEJVU0lORVNTCl9fX19fX18KClN0cmVldCBFbWlsIFBhbmdyYXR0aSwgbm8uMTAg
KzQgMDc1NyA3NyAyOCAyOAppbnZlc3RpdGlpQGVrb2dyb3VwLnJvCgpbZmFjZWJvb2tdKGh0dHBz
Oi8vZWtvZ3JvdXAuY29tLnJvP21haWxwb2V0X3JvdXRlciZlbmRwb2ludD10cmFjayZhY3Rpb249
Y2xpY2smZGF0YT1XekUwTXpBd05Td2libWx4YVdGNmNYTXpZalEwTUdOaloyczBZelJyTkRSek9H
OWpaMk5yWXpRaUxDSXhOREVpTENJeFlqWmtPVEEwTTJRd1pUa2lMR1poYkhObFhRKSBbaW5zdGFn
cmFtXShodHRwczovL2Vrb2dyb3VwLmNvbS5ybz9tYWlscG9ldF9yb3V0ZXImZW5kcG9pbnQ9dHJh
Y2smYWN0aW9uPWNsaWNrJmRhdGE9V3pFME16QXdOU3dpYm1seGFXRjZjWE16WWpRME1HTmpaMnMw
WXpSck5EUnpPRzlqWjJOcll6UWlMQ0l4TkRFaUxDSXdOekl5TUdSbFpEUTVOR0lpTEdaaGJITmxY
USkKW1Vuc2NyaWJlXShodHRwczovL2Vrb2dyb3VwLmNvbS5ybz9tYWlscG9ldF9yb3V0ZXImZW5k
cG9pbnQ9dHJhY2smYWN0aW9uPWNsaWNrJmRhdGE9V3pFME16QXdOU3dpYm1seGFXRjZjWE16WWpR
ME1HTmpaMnMwWXpSck5EUnpPRzlqWjJOcll6UWlMQ0l4TkRFaUxDSXlZV1E1WTJVM1lqRTBNbU1p
TEdaaGJITmxYUSkgfCBNYW5hZ2UgeW91ciBzdWJzY3JpcHRpb25bbF0oaHR0cHM6Ly9la29ncm91
cC5jb20ucm8/bWFpbHBvZXRfcm91dGVyJmVuZHBvaW50PXRyYWNrJmFjdGlvbj1jbGljayZkYXRh
PVd6RTBNekF3TlN3aWJtbHhhV0Y2Y1hNellqUTBNR05qWjJzMFl6UnJORFJ6T0c5aloyTnJZelFp
TENJeE5ERWlMQ0ptTkRCaU5qbGtOakExWTJVaUxHWmhiSE5sWFEpCkFkZCB5b3VyIGVtYWlsIGFk
cmVzcyBoZXJlIQpfX19fX19fCgpDb3B5cmlnaHQgwqkgMjAyMiB3d3cuZWtvZ3JvdXAucm8sIEFs
bCByaWdodHMgcmVzZXJ2ZWQuCgpbRmFybWVyc01hcmtldC1Cb3R0b21dCgpbTWFpbFBvZXRdKGh0
dHBzOi8vZWtvZ3JvdXAuY29tLnJvP21haWxwb2V0X3JvdXRlciZlbmRwb2ludD10cmFjayZhY3Rp
b249Y2xpY2smZGF0YT1XekUwTXpBd05Td2libWx4YVdGNmNYTXpZalEwTUdOaloyczBZelJyTkRS
ek9HOWpaMk5yWXpRaUxDSXhOREVpTENKaU56aG1ZMlF4WWpKak9XUWlMR1poYkhObFhRKQoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KVjlmcy1kZXZlbG9w
ZXIgbWFpbGluZyBsaXN0ClY5ZnMtZGV2ZWxvcGVyQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRw
czovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby92OWZzLWRldmVsb3Blcgo=
