Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7505543DCAB
	for <lists+v9fs-developer@lfdr.de>; Thu, 28 Oct 2021 10:09:27 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mg0TS-00051E-Ib; Thu, 28 Oct 2021 08:09:23 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2) (envelope-from
 <0107017cc5f1d883-07ce5c01-26cb-4994-bc92-61f878ef4597-000000@eu-central-1.amazonses.com>)
 id 1mg0TM-000510-1y
 for v9fs-developer@lists.sourceforge.net; Thu, 28 Oct 2021 08:09:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=List-Unsubscribe:Content-Type:MIME-Version:To:
 Reply-To:From:Subject:Date:Message-ID:Sender:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=WWX/w46CHYpd5uWRuxL1dh+h3QTU1oDX41R8j2VAFjE=; b=fdM1RaeIF5B301GwAt5dmEL2sm
 fg0ZzR/wdDRUf4FT/tV5JlC6eE43WKljR0Kj1Wee1Z4TWgCCs1CRbbwyZhOlUidILCCHcZ/kAigqw
 Y35vMzai5XKfjWs1/7fLRX1ON52/UNHQgHyumVFykdO4o0gGlglU7ALlppeDhufVzODE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=List-Unsubscribe:Content-Type:MIME-Version:To:Reply-To:From:Subject:Date:
 Message-ID:Sender:Cc:Content-Transfer-Encoding:Content-ID:Content-Description
 :Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Subscribe:List-Post:List-Owner:
 List-Archive; bh=WWX/w46CHYpd5uWRuxL1dh+h3QTU1oDX41R8j2VAFjE=; b=j64kMY4OWGyQ
 8UCYrF7r9/VYl1K0NwUsDh1s6jrOub5R27wSWQdqRpNvCZIB6kMYmF+kkq7LkFZoxBTlFtthhcJHO
 cuIyBAsSAuX9judXkv20Xg3/k1+SdhA4bHrIthJ4ELavuuXHzDSSU0rhy6RkT6f1A+7luOTgJqB6A
 AeG8k=;
Received: from b228-111.smtp-out.eu-central-1.amazonses.com ([69.169.228.111])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-SHA256:128) (Exim 4.92.3)
 id 1mg0TF-0001pj-GN
 for v9fs-developer@lists.sourceforge.net; Thu, 28 Oct 2021 08:09:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
 s=chhfa7u27a4tep4llzorwkggr6ld47ie; d=eko.com.ro; t=1635408533;
 h=Sender:Message-ID:Date:Subject:From:Reply-To:To:MIME-Version:Content-Type:List-Unsubscribe;
 bh=3kHn8cbUDaVDyLrsus2RVELI2JXb6pRjNFa47NUF2/w=;
 b=NICqcLtPhzBhbuMV6tV0bi+Az640UMHlVf2C+DIwxApg0ZGu17zQsV0EoHD04knO
 xBfNRWmhcAocLpOivKjmh7VPFRTAjY+ID7BOMp31iS6m0ryVFgl7SIb5lfSSolPSRZR
 hKfNujQMnsM8+HQ9wY7qT5A5h61SDqwjl3YkQ7kjva3mufUSAE7xOGmhJ0aVUtfw9px
 SBsJnUaBcnGkRgg7JYza/8N28ezvqNMZAgxBM3HvFM12BlO8Uv7OjpabyBAYNflwBf5
 5jA24E88R3KDsC2P5yXvLu5UAyfGePVhYllMjWKxPSUcFutThXP3z6Cxius832u8VOT
 Hba0/zcQtA==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
 s=54ecsf3zk7z4mwxwwox7z7bg6e5gwjsz; d=amazonses.com; t=1635408533;
 h=Sender:Message-ID:Date:Subject:From:Reply-To:To:MIME-Version:Content-Type:List-Unsubscribe:Feedback-ID;
 bh=3kHn8cbUDaVDyLrsus2RVELI2JXb6pRjNFa47NUF2/w=;
 b=UZp/FdXEBBASyLDxhWtnucTOnclsr4pU/ITu7jM0iUYj3uiP9u3QAVOCOGj0GW/2
 wUOOrd+qHANHCmhzme3qSstEs2hsHkx/Lp/g4W7jQ9ZPfgXMcfDho98/mBhhBfzFXXS
 rDpLzWHDAi9XcyKM/viIgfgrDA5RHzQxpxC2Vnxo=
Message-ID: <0107017cc5f1d883-07ce5c01-26cb-4994-bc92-61f878ef4597-000000@eu-central-1.amazonses.com>
Date: Thu, 28 Oct 2021 08:08:53 +0000
From: Office <office@eko.com.ro>
To: "" <v9fs-developer@lists.sourceforge.net>
MIME-Version: 1.0
Feedback-ID: 1.eu-central-1.N8GLPrwMW4DEokEt/uX8R5Dj6lDs1dpqTZ0OFMrLAAo=:AmazonSES
X-SES-Outgoing: 2021.10.28-69.169.228.111
X-Spam-Score: 4.3 (++++)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  [Vizualizează asta în navigatorul tău.](https://ekogroup.com.ro?mailpoet_router&endpoint=track&action=click&data=WzE0MzAwNSwibmlxaWF6cXMzYjQ0MGNjZ2s0YzRrNDRzOG9jZ2NrYzQiLCI0OSIsIjZhZjM5NTU3YzMzNSIs
    [...] 
 
 Content analysis details:   (4.3 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
                             blocked.  See
                             http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
                              for more information.
                             [URIs: ekogroup.com.ro]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [69.169.228.111 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
                             mail domains are different
  0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
  2.0 PYZOR_CHECK            Listed in Pyzor
                             (https://pyzor.readthedocs.io/en/latest/)
  0.0 T_KAM_HTML_FONT_INVALID Test for Invalidly Named or Formatted
                             Colors in HTML
  0.0 T_REMOTE_IMAGE         Message contains an external image
  2.2 URI_WP_HACKED_2        URI for compromised WordPress site, possible
                             malware
X-Headers-End: 1mg0TF-0001pj-GN
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] Steaguri directionale pentru afacerea ta
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
Reply-To: Office <office@publicitateooh.ro>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

W1ZpenVhbGl6ZWF6xIMgYXN0YSDDrm4gbmF2aWdhdG9ydWwgdMSDdS5dKGh0dHBzOi8vZWtvZ3Jv
dXAuY29tLnJvP21haWxwb2V0X3JvdXRlciZlbmRwb2ludD10cmFjayZhY3Rpb249Y2xpY2smZGF0
YT1XekUwTXpBd05Td2libWx4YVdGNmNYTXpZalEwTUdOaloyczBZelJyTkRSek9HOWpaMk5yWXpR
aUxDSTBPU0lzSWpaaFpqTTVOVFUzWXpNek5TSXNabUZzYzJWZCkKCltGYXJtZXJzTWFya2V0LVRv
cF0KCltQdWJsaWNpdGF0ZS1PT0gtTG9nby0xMDI0eDUxOV0oaHR0cHM6Ly9la29ncm91cC5jb20u
cm8/bWFpbHBvZXRfcm91dGVyJmVuZHBvaW50PXRyYWNrJmFjdGlvbj1jbGljayZkYXRhPVd6RTBN
ekF3TlN3aWJtbHhhV0Y2Y1hNellqUTBNR05qWjJzMFl6UnJORFJ6T0c5aloyTnJZelFpTENJME9T
SXNJak0yTW1JM1pHUm1Nekl3WmlJc1ptRnNjMlZkKQoKRW1haWw6IFtvZmZpY2VAcHVibGljaXRh
dGVvb2gucm9dKGh0dHBzOi8vZWtvZ3JvdXAuY29tLnJvP21haWxwb2V0X3JvdXRlciZlbmRwb2lu
dD10cmFjayZhY3Rpb249Y2xpY2smZGF0YT1XekUwTXpBd05Td2libWx4YVdGNmNYTXpZalEwTUdO
aloyczBZelJyTkRSek9HOWpaMk5yWXpRaUxDSTBPU0lzSWpWaU1USTBNRFJpTkROa1lTSXNabUZz
YzJWZCkKc2FsZXNAcHVibGljaXRhdGVvb2gucm8KClRlbDogWys0IDA3NTIgNzYwIDQyN10oaHR0
cHM6Ly9la29ncm91cC5jb20ucm8/bWFpbHBvZXRfcm91dGVyJmVuZHBvaW50PXRyYWNrJmFjdGlv
bj1jbGljayZkYXRhPVd6RTBNekF3TlN3aWJtbHhhV0Y2Y1hNellqUTBNR05qWjJzMFl6UnJORFJ6
T0c5aloyTnJZelFpTENJME9TSXNJamMzWmpFeE9HUXhNVEZpT1NJc1ptRnNjMlZkKQoKWysgNTAw
MCBzdGVhZ3VyaSBpbiBCdWN1cmVzdGldKGh0dHBzOi8vZWtvZ3JvdXAuY29tLnJvP21haWxwb2V0
X3JvdXRlciZlbmRwb2ludD10cmFjayZhY3Rpb249Y2xpY2smZGF0YT1XekUwTXpBd05Td2libWx4
YVdGNmNYTXpZalEwTUdOaloyczBZelJyTkRSek9HOWpaMk5yWXpRaUxDSTBPU0lzSWpnelpURTFO
alk1TkRCaU9DSXNabUZzYzJWZCkKW1N0ZWFndXJpIGdlb3JnZSBlbmVzY3VdKGh0dHBzOi8vZWtv
Z3JvdXAuY29tLnJvP21haWxwb2V0X3JvdXRlciZlbmRwb2ludD10cmFjayZhY3Rpb249Y2xpY2sm
ZGF0YT1XekUwTXpBd05Td2libWx4YVdGNmNYTXpZalEwTUdOaloyczBZelJyTkRSek9HOWpaMk5y
WXpRaUxDSTBPU0lzSWpNMk1tSTNaR1JtTXpJd1ppSXNabUZzYzJWZCkKW0V4ZW1wbGUgZ3JhZmlj
YV0oaHR0cHM6Ly9la29ncm91cC5jb20ucm8/bWFpbHBvZXRfcm91dGVyJmVuZHBvaW50PXRyYWNr
JmFjdGlvbj1jbGljayZkYXRhPVd6RTBNekF3TlN3aWJtbHhhV0Y2Y1hNellqUTBNR05qWjJzMFl6
UnJORFJ6T0c5aloyTnJZelFpTENJME9TSXNJak0yTW1JM1pHUm1Nekl3WmlJc1ptRnNjMlZkKQoK
W1ZlemkgYWljaSBtb2RlbCBkZSByZWNsYW1hIHBlIHN0YWxwaV0oaHR0cHM6Ly9la29ncm91cC5j
b20ucm8/bWFpbHBvZXRfcm91dGVyJmVuZHBvaW50PXRyYWNrJmFjdGlvbj1jbGljayZkYXRhPVd6
RTBNekF3TlN3aWJtbHhhV0Y2Y1hNellqUTBNR05qWjJzMFl6UnJORFJ6T0c5aloyTnJZelFpTENJ
ME9TSXNJamd6WlRFMU5qWTVOREJpT0NJc1ptRnNjMlZkKQpbU3RlYWd1cmkgaW1vYmlsaWFyZV0o
aHR0cHM6Ly9la29ncm91cC5jb20ucm8/bWFpbHBvZXRfcm91dGVyJmVuZHBvaW50PXRyYWNrJmFj
dGlvbj1jbGljayZkYXRhPVd6RTBNekF3TlN3aWJtbHhhV0Y2Y1hNellqUTBNR05qWjJzMFl6UnJO
RFJ6T0c5aloyTnJZelFpTENJME9TSXNJak0yTW1JM1pHUm1Nekl3WmlJc1ptRnNjMlZkKQpbQm9y
ZGluZyBwYXNzIHdpenpdKGh0dHBzOi8vZWtvZ3JvdXAuY29tLnJvP21haWxwb2V0X3JvdXRlciZl
bmRwb2ludD10cmFjayZhY3Rpb249Y2xpY2smZGF0YT1XekUwTXpBd05Td2libWx4YVdGNmNYTXpZ
alEwTUdOaloyczBZelJyTkRSek9HOWpaMk5yWXpRaUxDSTBPU0lzSWpNMk1tSTNaR1JtTXpJd1pp
SXNabUZzYzJWZCkKW0FwYXJhdGUgY2FmZWFdKGh0dHBzOi8vZWtvZ3JvdXAuY29tLnJvP21haWxw
b2V0X3JvdXRlciZlbmRwb2ludD10cmFjayZhY3Rpb249Y2xpY2smZGF0YT1XekUwTXpBd05Td2li
bWx4YVdGNmNYTXpZalEwTUdOaloyczBZelJyTkRSek9HOWpaMk5yWXpRaUxDSTBPU0lzSWpNMk1t
STNaR1JtTXpJd1ppSXNabUZzYzJWZCkKCkVLTyBUUkFERSBCVVNJTkVTUwpfX19fX19fClN0cmVl
dCBFbWlsIFBhbmdyYXR0aSwgbm8uMTAgKzQgMDc1MiA3NjAgNDI3Cm9mZmljZUBwdWJsaWNpdGF0
ZW9vaC5ybwpzYWxlc0BwdWJsaWNpdGF0ZW9vaC5ybwoKW2ZhY2Vib29rXShodHRwczovL2Vrb2dy
b3VwLmNvbS5ybz9tYWlscG9ldF9yb3V0ZXImZW5kcG9pbnQ9dHJhY2smYWN0aW9uPWNsaWNrJmRh
dGE9V3pFME16QXdOU3dpYm1seGFXRjZjWE16WWpRME1HTmpaMnMwWXpSck5EUnpPRzlqWjJOcll6
UWlMQ0kwT1NJc0lqaGhaR1JrWmpVeU5tSmtOaUlzWm1Gc2MyVmQpIFtpbnN0YWdyYW1dKGh0dHBz
Oi8vZWtvZ3JvdXAuY29tLnJvP21haWxwb2V0X3JvdXRlciZlbmRwb2ludD10cmFjayZhY3Rpb249
Y2xpY2smZGF0YT1XekUwTXpBd05Td2libWx4YVdGNmNYTXpZalEwTUdOaloyczBZelJyTkRSek9H
OWpaMk5yWXpRaUxDSTBPU0lzSWpGaVpERm1PRFl4WkdVek1pSXNabUZzYzJWZCkKW0RlemFib25h
cmVdKGh0dHBzOi8vZWtvZ3JvdXAuY29tLnJvP21haWxwb2V0X3JvdXRlciZlbmRwb2ludD10cmFj
ayZhY3Rpb249Y2xpY2smZGF0YT1XekUwTXpBd05Td2libWx4YVdGNmNYTXpZalEwTUdOaloyczBZ
elJyTkRSek9HOWpaMk5yWXpRaUxDSTBPU0lzSWpWaU1qTTJZMk0wTTJaa1lTSXNabUZzYzJWZCkg
fCBbQWRtaW5pc3RyZWF6xIMtyJtpIGFib25hbWVudHVsXShodHRwczovL2Vrb2dyb3VwLmNvbS5y
bz9tYWlscG9ldF9yb3V0ZXImZW5kcG9pbnQ9dHJhY2smYWN0aW9uPWNsaWNrJmRhdGE9V3pFME16
QXdOU3dpYm1seGFXRjZjWE16WWpRME1HTmpaMnMwWXpSck5EUnpPRzlqWjJOcll6UWlMQ0kwT1NJ
c0lqSmpNalZsWWpFNU1ESmpOaUlzWm1Gc2MyVmQpCkFkYXVnxIMgYWRyZXNhIHRhIHBvyJl0YWzE
gyBhaWNpIQpfX19fX19fCgpDb3B5cmlnaHQgwqkgMjAyMSB3d3cuZWtvZ3JvdXAucm8sIEFsbCBy
aWdodHMgcmVzZXJ2ZWQuCgpbRmFybWVyc01hcmtldC1Cb3R0b21dCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpWOWZzLWRldmVsb3BlciBtYWlsaW5nIGxp
c3QKVjlmcy1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291
cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL3Y5ZnMtZGV2ZWxvcGVyCg==
