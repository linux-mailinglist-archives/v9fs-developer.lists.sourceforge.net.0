Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 086A7453E86
	for <lists+v9fs-developer@lfdr.de>; Wed, 17 Nov 2021 03:41:10 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mnAsi-0000QC-IQ; Wed, 17 Nov 2021 02:41:05 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2) (envelope-from
 <0107017d2bc4c490-6be5f61c-7255-4f22-a810-a0e0346f3e16-000000@eu-central-1.amazonses.com>)
 id 1mnAsh-0000Q4-Pf
 for v9fs-developer@lists.sourceforge.net; Wed, 17 Nov 2021 02:41:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=List-Unsubscribe:Content-Type:MIME-Version:To:
 Reply-To:From:Subject:Date:Message-ID:Sender:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=9ICgdxeASixnP/WtR72NpxRKdyzbw/kysMVtgbqDKi4=; b=ghjsVcwKL/Phs8rZ+WH2WYeGqX
 uzkrKwWmUTjbtoXCN1UCfzFprL58XMTK2qMkWxIOA4GF1x57iW/ASOTZxBISvihifv1NwqqpgDDOa
 WeHtzXZbiA2vr32oQxQpQmT97HbUKgYaavRKT6AjHy+Q62jvSVjkSQYPhoQ2hL99kO8A=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=List-Unsubscribe:Content-Type:MIME-Version:To:Reply-To:From:Subject:Date:
 Message-ID:Sender:Cc:Content-Transfer-Encoding:Content-ID:Content-Description
 :Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Subscribe:List-Post:List-Owner:
 List-Archive; bh=9ICgdxeASixnP/WtR72NpxRKdyzbw/kysMVtgbqDKi4=; b=YPiMOem87+Fs
 tKuF4lQZzgT/d5Z7pjYUnIT39ghXA6t8J2FsotSgJPElnJUAYOqa6I7ane23L5ld6IYolRxRkbqbA
 LaYSKv7Vh8b17dFIrOcqd8LYIg1MjbojRbA/1SzhGWow3s9Bmmwt1UMEhO8OP2/ZhCMmSl/z71gzu
 STCZc=;
Received: from b228-111.smtp-out.eu-central-1.amazonses.com ([69.169.228.111])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-SHA256:128) (Exim 4.92.3)
 id 1mnAsg-00Fakj-7x
 for v9fs-developer@lists.sourceforge.net; Wed, 17 Nov 2021 02:41:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
 s=saspfafem6lgzskpwcali7bn7m7elrbf; d=publicitateooh.ro;
 t=1637116855;
 h=Sender:Message-ID:Date:Subject:From:Reply-To:To:MIME-Version:Content-Type:List-Unsubscribe;
 bh=NkWUq48r1BIRjjfLJNO6BTAZtoIVIsz0CtVT57HMzyw=;
 b=iztdv5hVJaDYjhv3+jPx7u+CcL6T2mp0G2rTS8Pooa8nIS5lUOw6/s/zHxQrxvvL
 uKa+Wh1j87NzE/1Zd7uIcl23RbXff3naWA/52mlJKYoFPp9iKnzlBx5td93VD+Mp0O4
 1eXQFycl5cSAwt62UKVT7j0HYD5TZfIxNCoUk2j4XtydFPjgAvbA7HVkywx5Y0BEOL3
 HTVzspPMnU6A7IHwJ3HEKoRdUH/UApkQT3JROaBi6SQkQz7zPyP5yATrZNYhgEzk01Q
 01O3bxcYD+M5iPFd8Vq+PQPcms4PWWva/Erhko4eYoApqyfetUdXy6kzZZVdw8UQReb
 XnWVd0lkEg==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
 s=54ecsf3zk7z4mwxwwox7z7bg6e5gwjsz; d=amazonses.com; t=1637116855;
 h=Sender:Message-ID:Date:Subject:From:Reply-To:To:MIME-Version:Content-Type:List-Unsubscribe:Feedback-ID;
 bh=NkWUq48r1BIRjjfLJNO6BTAZtoIVIsz0CtVT57HMzyw=;
 b=csnkZrdw5Z2RVtIIGYghEj64uR1duOiGkZefKutj0Vg9wwBrMwnwznwTxgebtWQq
 p97IAnDNf7OeL7NwtFP7zzjqUKIxAlr9OZJc/UFgAMs2JVyypKf0B0m4EAyTb2trFJ3
 L7DB3ZxCtHLdZuSLJlKd52TQ3NsEUSTsWgx/y8D0=
Message-ID: <0107017d2bc4c490-6be5f61c-7255-4f22-a810-a0e0346f3e16-000000@eu-central-1.amazonses.com>
Date: Wed, 17 Nov 2021 02:40:55 +0000
From: Office <office@publicitateooh.ro>
To: "" <v9fs-developer@lists.sourceforge.net>
MIME-Version: 1.0
Feedback-ID: 1.eu-central-1.N8GLPrwMW4DEokEt/uX8R5Dj6lDs1dpqTZ0OFMrLAAo=:AmazonSES
X-SES-Outgoing: 2021.11.17-69.169.228.111
X-Spam-Score: 4.3 (++++)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  [Vizualizează asta în navigatorul tău.](https://ekogroup.com.ro?mailpoet_router&endpoint=track&action=click&data=WzE0MzAwNSwibmlxaWF6cXMzYjQ0MGNjZ2s0YzRrNDRzOG9jZ2NrYzQiLCI3MSIsIjk1ZDY2Yzk5MTc0NCIs
    [...] 
 
 Content analysis details:   (4.3 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [69.169.228.111 listed in list.dnswl.org]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
                             mail domains are different
  0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  1.7 URIBL_BLACK            Contains an URL listed in the URIBL blacklist
                             [URIs: ekogroup.com.ro]
  0.0 T_KAM_HTML_FONT_INVALID Test for Invalidly Named or Formatted
                             Colors in HTML
  0.0 T_REMOTE_IMAGE         Message contains an external image
  2.5 URI_WP_HACKED_2        URI for compromised WordPress site, possible
                             malware
X-Headers-End: 1mnAsg-00Fakj-7x
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] Steaguri directionale | avizate PMB
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
aUxDSTNNU0lzSWprMVpEWTJZems1TVRjME5DSXNabUZzYzJWZCkKCltGYXJtZXJzTWFya2V0LVRv
cF0KCltQdWJsaWNpdGF0ZS1PT0gtTG9nby0xMDI0eDUxOV0oaHR0cHM6Ly9la29ncm91cC5jb20u
cm8/bWFpbHBvZXRfcm91dGVyJmVuZHBvaW50PXRyYWNrJmFjdGlvbj1jbGljayZkYXRhPVd6RTBN
ekF3TlN3aWJtbHhhV0Y2Y1hNellqUTBNR05qWjJzMFl6UnJORFJ6T0c5aloyTnJZelFpTENJM01T
SXNJak5oWVRFNU1tVXpNVGhoTmlJc1ptRnNjMlZkKQoKRW1haWw6IFtvZmZpY2VAcHVibGljaXRh
dGVvb2gucm9dKGh0dHBzOi8vZWtvZ3JvdXAuY29tLnJvP21haWxwb2V0X3JvdXRlciZlbmRwb2lu
dD10cmFjayZhY3Rpb249Y2xpY2smZGF0YT1XekUwTXpBd05Td2libWx4YVdGNmNYTXpZalEwTUdO
aloyczBZelJyTkRSek9HOWpaMk5yWXpRaUxDSTNNU0lzSWpSaE9UTmxaVGxrTURRM05TSXNabUZz
YzJWZCkKc2FsZXNAcHVibGljaXRhdGVvb2gucm8KClRlbDogWys0IDA3NTIgNzYwIDQyN10oaHR0
cHM6Ly9la29ncm91cC5jb20ucm8/bWFpbHBvZXRfcm91dGVyJmVuZHBvaW50PXRyYWNrJmFjdGlv
bj1jbGljayZkYXRhPVd6RTBNekF3TlN3aWJtbHhhV0Y2Y1hNellqUTBNR05qWjJzMFl6UnJORFJ6
T0c5aloyTnJZelFpTENJM01TSXNJbUl3TVRaaU1UWTRZakU0TVNJc1ptRnNjMlZkKQoKW1BSRVRV
TCBDSElSSUVJIE5FR09DSUFCSUxdKGh0dHBzOi8vZWtvZ3JvdXAuY29tLnJvP21haWxwb2V0X3Jv
dXRlciZlbmRwb2ludD10cmFjayZhY3Rpb249Y2xpY2smZGF0YT1XekUwTXpBd05Td2libWx4YVdG
NmNYTXpZalEwTUdOaloyczBZelJyTkRSek9HOWpaMk5yWXpRaUxDSTNNU0lzSW1FeU1USTRZVGt6
WkRVeVlTSXNabUZzYzJWZCkKClsrIDYwMDAgc3RlYWd1cmkgaW4gQnVjdXJlc3RpXShodHRwczov
L2Vrb2dyb3VwLmNvbS5ybz9tYWlscG9ldF9yb3V0ZXImZW5kcG9pbnQ9dHJhY2smYWN0aW9uPWNs
aWNrJmRhdGE9V3pFME16QXdOU3dpYm1seGFXRjZjWE16WWpRME1HTmpaMnMwWXpSck5EUnpPRzlq
WjJOcll6UWlMQ0kzTVNJc0ltRXlNVEk0WVRrelpEVXlZU0lzWm1Gc2MyVmQpCgpbVmV6aSBhaWNp
IG1vZGVsIGRlIHJlY2xhbWEgcGUgc3RhbHBpXShodHRwczovL2Vrb2dyb3VwLmNvbS5ybz9tYWls
cG9ldF9yb3V0ZXImZW5kcG9pbnQ9dHJhY2smYWN0aW9uPWNsaWNrJmRhdGE9V3pFME16QXdOU3dp
Ym1seGFXRjZjWE16WWpRME1HTmpaMnMwWXpSck5EUnpPRzlqWjJOcll6UWlMQ0kzTVNJc0ltRXlN
VEk0WVRrelpEVXlZU0lzWm1Gc2MyVmQpCltFeGVtcGxlIGdyYWZpY2FdKGh0dHBzOi8vZWtvZ3Jv
dXAuY29tLnJvP21haWxwb2V0X3JvdXRlciZlbmRwb2ludD10cmFjayZhY3Rpb249Y2xpY2smZGF0
YT1XekUwTXpBd05Td2libWx4YVdGNmNYTXpZalEwTUdOaloyczBZelJyTkRSek9HOWpaMk5yWXpR
aUxDSTNNU0lzSWpOaFlURTVNbVV6TVRoaE5pSXNabUZzYzJWZCkKW1N0ZWFndXJpIGltb2JpbGlh
cmVdKGh0dHBzOi8vZWtvZ3JvdXAuY29tLnJvP21haWxwb2V0X3JvdXRlciZlbmRwb2ludD10cmFj
ayZhY3Rpb249Y2xpY2smZGF0YT1XekUwTXpBd05Td2libWx4YVdGNmNYTXpZalEwTUdOaloyczBZ
elJyTkRSek9HOWpaMk5yWXpRaUxDSTNNU0lzSWpOaFlURTVNbVV6TVRoaE5pSXNabUZzYzJWZCkK
W1N0ZWFndXJpIGdlb3JnZSBlbmVzY3VdKGh0dHBzOi8vZWtvZ3JvdXAuY29tLnJvP21haWxwb2V0
X3JvdXRlciZlbmRwb2ludD10cmFjayZhY3Rpb249Y2xpY2smZGF0YT1XekUwTXpBd05Td2libWx4
YVdGNmNYTXpZalEwTUdOaloyczBZelJyTkRSek9HOWpaMk5yWXpRaUxDSTNNU0lzSWpOaFlURTVN
bVV6TVRoaE5pSXNabUZzYzJWZCkKW0NhcHR1cmHMhiBkZSBlY3JhbiBkaW4gMjAyMS0xMS0xNiBs
YSAwOS4zNi4wNl0oaHR0cHM6Ly9la29ncm91cC5jb20ucm8/bWFpbHBvZXRfcm91dGVyJmVuZHBv
aW50PXRyYWNrJmFjdGlvbj1jbGljayZkYXRhPVd6RTBNekF3TlN3aWJtbHhhV0Y2Y1hNellqUTBN
R05qWjJzMFl6UnJORFJ6T0c5aloyTnJZelFpTENJM01TSXNJak5oWVRFNU1tVXpNVGhoTmlJc1pt
RnNjMlZkKQoKRUtPIFRSQURFIEJVU0lORVNTCl9fX19fX18KU3RyZWV0IEVtaWwgUGFuZ3JhdHRp
LCBuby4xMCArNCAwNzUyIDc2MCA0MjcKb2ZmaWNlQHB1YmxpY2l0YXRlb29oLnJvCnNhbGVzQHB1
YmxpY2l0YXRlb29oLnJvCgpbZmFjZWJvb2tdKGh0dHBzOi8vZWtvZ3JvdXAuY29tLnJvP21haWxw
b2V0X3JvdXRlciZlbmRwb2ludD10cmFjayZhY3Rpb249Y2xpY2smZGF0YT1XekUwTXpBd05Td2li
bWx4YVdGNmNYTXpZalEwTUdOaloyczBZelJyTkRSek9HOWpaMk5yWXpRaUxDSTNNU0lzSW1Vd01X
RXlNREkxT1RabE55SXNabUZzYzJWZCkgW2luc3RhZ3JhbV0oaHR0cHM6Ly9la29ncm91cC5jb20u
cm8/bWFpbHBvZXRfcm91dGVyJmVuZHBvaW50PXRyYWNrJmFjdGlvbj1jbGljayZkYXRhPVd6RTBN
ekF3TlN3aWJtbHhhV0Y2Y1hNellqUTBNR05qWjJzMFl6UnJORFJ6T0c5aloyTnJZelFpTENJM01T
SXNJamRqTUdZeU56TXdZMkV5TkNJc1ptRnNjMlZkKQpbRGV6YWJvbmFyZV0oaHR0cHM6Ly9la29n
cm91cC5jb20ucm8/bWFpbHBvZXRfcm91dGVyJmVuZHBvaW50PXRyYWNrJmFjdGlvbj1jbGljayZk
YXRhPVd6RTBNekF3TlN3aWJtbHhhV0Y2Y1hNellqUTBNR05qWjJzMFl6UnJORFJ6T0c5aloyTnJZ
elFpTENJM01TSXNJbUZoWkRjMU9UbGlOV0ZpTmlJc1ptRnNjMlZkKSB8IFtBZG1pbmlzdHJlYXrE
gy3Im2kgYWJvbmFtZW50dWxdKGh0dHBzOi8vZWtvZ3JvdXAuY29tLnJvP21haWxwb2V0X3JvdXRl
ciZlbmRwb2ludD10cmFjayZhY3Rpb249Y2xpY2smZGF0YT1XekUwTXpBd05Td2libWx4YVdGNmNY
TXpZalEwTUdOaloyczBZelJyTkRSek9HOWpaMk5yWXpRaUxDSTNNU0lzSWpnM00yUmxaVEkyWmpJ
MVpTSXNabUZzYzJWZCkKW29mZmljZUBwdWJsaWNpdGF0ZW9vaC5yb10oaHR0cHM6Ly9la29ncm91
cC5jb20ucm8/bWFpbHBvZXRfcm91dGVyJmVuZHBvaW50PXRyYWNrJmFjdGlvbj1jbGljayZkYXRh
PVd6RTBNekF3TlN3aWJtbHhhV0Y2Y1hNellqUTBNR05qWjJzMFl6UnJORFJ6T0c5aloyTnJZelFp
TENJM01TSXNJalJoT1RObFpUbGtNRFEzTlNJc1ptRnNjMlZkKQpfX19fX19fCgpDb3B5cmlnaHQg
wqkgMjAyMSB3d3cucHVibGljaXRhdGVvb2gucm8sIEFsbCByaWdodHMgcmVzZXJ2ZWQuCgpbRmFy
bWVyc01hcmtldC1Cb3R0b21dCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpWOWZzLWRldmVsb3BlciBtYWlsaW5nIGxpc3QKVjlmcy1kZXZlbG9wZXJAbGlz
dHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xp
c3RpbmZvL3Y5ZnMtZGV2ZWxvcGVyCg==
