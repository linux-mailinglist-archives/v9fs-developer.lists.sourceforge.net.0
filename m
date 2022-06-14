Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1018E54B368
	for <lists+v9fs-developer@lfdr.de>; Tue, 14 Jun 2022 16:38:18 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1o17gM-0008Lq-IN; Tue, 14 Jun 2022 14:38:15 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2) (envelope-from
 <0107018162a645f5-de640110-e838-4dfb-abb8-783414b5136f-000000@eu-central-1.amazonses.com>)
 id 1o17gH-0008Ld-HU
 for v9fs-developer@lists.sourceforge.net; Tue, 14 Jun 2022 14:38:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=List-Unsubscribe:Content-Type:MIME-Version:To:
 Reply-To:From:Subject:Date:Message-ID:Sender:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=9ZMsWhSeBQ/9nyTmjMlz3F/xI/QuEsBNRyuTmoumWS8=; b=P5LmZm9xKshhnHjTs1oEEFNV3D
 WYTtwKKYQX/CAZ1GEbnY2TfvXEuREfw2zHD/ng3Hs6giNeXruSx69oqrKm/96H6ri5NW4sYeFlls5
 SP6NvhbVExaYiO62Ymkun6S1E7vPJkUUb1bjT57rLI4XdnRwVw5i6F2b/gjWu2WU11e8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=List-Unsubscribe:Content-Type:MIME-Version:To:Reply-To:From:Subject:Date:
 Message-ID:Sender:Cc:Content-Transfer-Encoding:Content-ID:Content-Description
 :Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Subscribe:List-Post:List-Owner:
 List-Archive; bh=9ZMsWhSeBQ/9nyTmjMlz3F/xI/QuEsBNRyuTmoumWS8=; b=AntOh+v+XrOw
 p8YuUKWWrgr1uoQFJBBXFIM1KCShP7pzzyfsWRCbOj8UfD6HmC1EDoSOD1k130vXxJ3P+EL9+i5LR
 lOnsQAUOWBypAyVcDZwD7VPkj8x12Ho31gTJ6YWLne5ABFw/YagBRcrj5NOaiLSTzf0CEE/CNRQ7i
 1dZPs=;
Received: from b227-249.smtp-out.eu-central-1.amazonses.com ([69.169.227.249])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-SHA256:128) (Exim 4.94.2)
 id 1o17gD-0005mB-Om
 for v9fs-developer@lists.sourceforge.net; Tue, 14 Jun 2022 14:38:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
 s=saspfafem6lgzskpwcali7bn7m7elrbf; d=publicitateooh.ro;
 t=1655217473;
 h=Sender:Message-ID:Date:Subject:From:Reply-To:To:MIME-Version:Content-Type:List-Unsubscribe;
 bh=pEP1RoUEuyViX3W/zlg4S1FgkHi6K+4+FpBj2StTroA=;
 b=dy424CbboLxqu61I19MayhB9NRh1W3yKVlKrtVQH95VfcQ78V7gr5EtlTOArzqMg
 QHepR1QSTmBSJM3db5dNWxx58/Ies4fRzDCTadgFt95kC9Lv3zWyRhgyoyAkEBhDTzO
 lNrRpenL7Pk3305Vt3nnbFo1e16SThJp8txSe6ppLQlLk+mKo0zfnTUZER9nBNMS/ZL
 MgnJrEA1od154eBlH3NgmkbI+Gu/AkkzhnatOQsGRtVocEbFlqS0BRkRzOaGM/DRUg3
 yaTuvuuoJS8KKYkrXcW3H/1keEWSAL7VAL8P89UZOK51qO+NZqK7Zu+L3T78AjsAfnq
 jRibYEh/yA==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
 s=54ecsf3zk7z4mwxwwox7z7bg6e5gwjsz; d=amazonses.com; t=1655217473;
 h=Sender:Message-ID:Date:Subject:From:Reply-To:To:MIME-Version:Content-Type:List-Unsubscribe:Feedback-ID;
 bh=pEP1RoUEuyViX3W/zlg4S1FgkHi6K+4+FpBj2StTroA=;
 b=HXFPvdNZrZSHfWNywxJZMBjAV0sQXwEtj6KvGh/5DfdOHXS2Wb7f4+bVrcWPZqlW
 D0xYjnAAju2kC4BIEe4Js/bf7lBf+xGIWwD0kbUfGo5Q6oGGferVHWGl4nR0JAwneRg
 5KWRJ47xOy8OYuARmjRPjvLZevK5kR92O9f2nQb8=
Message-ID: <0107018162a645f5-de640110-e838-4dfb-abb8-783414b5136f-000000@eu-central-1.amazonses.com>
Date: Tue, 14 Jun 2022 14:37:53 +0000
From: Office <office@publicitateooh.ro>
To: "" <v9fs-developer@lists.sourceforge.net>
MIME-Version: 1.0
Feedback-ID: 1.eu-central-1.N8GLPrwMW4DEokEt/uX8R5Dj6lDs1dpqTZ0OFMrLAAo=:AmazonSES
X-SES-Outgoing: 2022.06.14-69.169.227.249
X-Spam-Score: 6.3 (++++++)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has identified this incoming email as possible spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  [Vizualizează asta în navigatorul tău.](https://ekogroup.com.ro?mailpoet_router&endpoint=track&action=click&data=WzE0MzAwNSwibmlxaWF6cXMzYjQ0MGNjZ2s0YzRrNDRzOG9jZ2NrYzQiLCIxMzUiLCJiNThmOWQ4MmQ2ZGMi
    [...] 
 
 Content analysis details:   (6.3 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [69.169.227.249 listed in list.dnswl.org]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
                             mail domains are different
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
  2.0 PYZOR_CHECK            Listed in Pyzor
                             (https://pyzor.readthedocs.io/en/latest/)
  0.0 T_KAM_HTML_FONT_INVALID Test for Invalidly Named or Formatted
                             Colors in HTML
  0.0 T_REMOTE_IMAGE         Message contains an external image
  2.5 URI_WP_HACKED_2        URI for compromised WordPress site, possible
                             malware
X-Headers-End: 1o17gD-0005mB-Om
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] Afacerea ta are nevoie de vizibilitate!
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
aUxDSXhNelVpTENKaU5UaG1PV1E0TW1RMlpHTWlMR1poYkhObFhRKQoKW0Zhcm1lcnNNYXJrZXQt
VG9wXQoKW1B1YmxpY2l0YXRlLU9PSC1Mb2dvXShodHRwczovL2Vrb2dyb3VwLmNvbS5ybz9tYWls
cG9ldF9yb3V0ZXImZW5kcG9pbnQ9dHJhY2smYWN0aW9uPWNsaWNrJmRhdGE9V3pFME16QXdOU3dp
Ym1seGFXRjZjWE16WWpRME1HTmpaMnMwWXpSck5EUnpPRzlqWjJOcll6UWlMQ0l4TXpVaUxDSmhN
bUkwWldFeFkyUmtZVGdpTEdaaGJITmxYUSkKClsrNCAwNzUyIDc2MCA0MjddKGh0dHBzOi8vZWtv
Z3JvdXAuY29tLnJvP21haWxwb2V0X3JvdXRlciZlbmRwb2ludD10cmFjayZhY3Rpb249Y2xpY2sm
ZGF0YT1XekUwTXpBd05Td2libWx4YVdGNmNYTXpZalEwTUdOaloyczBZelJyTkRSek9HOWpaMk5y
WXpRaUxDSXhNelVpTENJeE4yTXpNekV6WWpSa1l6SWlMR1poYkhObFhRKQpvZmZpY2VAcHVibGlj
aXRhdGVvb2gucm8KCltsb2dvX2Vrb2dyb3VwLXJlbW92ZWJnLXByZXZpZXddKGh0dHBzOi8vZWtv
Z3JvdXAuY29tLnJvP21haWxwb2V0X3JvdXRlciZlbmRwb2ludD10cmFjayZhY3Rpb249Y2xpY2sm
ZGF0YT1XekUwTXpBd05Td2libWx4YVdGNmNYTXpZalEwTUdOaloyczBZelJyTkRSek9HOWpaMk5y
WXpRaUxDSXhNelVpTENJd1pUbG1NamczWVRFNE1UQWlMR1poYkhObFhRKQoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KCltQUkVUVUwgQ0hJUklFSSBORUdPQ0lBQklMXShodHRwczovL2Vrb2dyb3VwLmNv
bS5ybz9tYWlscG9ldF9yb3V0ZXImZW5kcG9pbnQ9dHJhY2smYWN0aW9uPWNsaWNrJmRhdGE9V3pF
ME16QXdOU3dpYm1seGFXRjZjWE16WWpRME1HTmpaMnMwWXpSck5EUnpPRzlqWjJOcll6UWlMQ0l4
TXpVaUxDSmtObU0yTWpGaU9HRmtZVGNpTEdaaGJITmxYUSkKCltWZXppIGFpY2kgbW9kZWwgZGUg
cmVjbGFtYSBwZSBzdGFscGldKGh0dHBzOi8vZWtvZ3JvdXAuY29tLnJvP21haWxwb2V0X3JvdXRl
ciZlbmRwb2ludD10cmFjayZhY3Rpb249Y2xpY2smZGF0YT1XekUwTXpBd05Td2libWx4YVdGNmNY
TXpZalEwTUdOaloyczBZelJyTkRSek9HOWpaMk5yWXpRaUxDSXhNelVpTENKa05tTTJNakZpT0dG
a1lUY2lMR1poYkhObFhRKQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ09NUEFOSUEgVEEgYXJlIG5l
dm9pZSBkZSBCUkFORCBBV0FSRU5FU1MgQUdSRVNJVgpEZSBhY2VzdCBsdWNydSBzdW50ZW0gY29u
c3RpZW50aSB0b3RpLi4uCl9fX19fX18KCj4+CgpNT05UQUosIFBST0RVQ1RJRSwgTkVVVFJBTEla
QVJFIFNJIE1FTlRFTkFOVEEKCkdSQVRVSVRBKgoKX19fX19fXwpBdml6IFBNQiBwZW50cnUgZmll
Y2FyZSBzdGVhZwpQdXRlbSBtb250YSBzdGVhZ3VyaSBPUklVTkRFIGluIEJ1Y3VyZXN0aSBzaSBJ
bGZvdi4gIFBlc3RlIDEwMC4wMDAgZGUgZmV0ZSBwZW50cnUgZXhwdW5lcmUKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KCi4uLm8gcGFydGUgZGluIGdyYWZpY2lsZSBjbGllbnRpbG9yIG5vc3RyaSBwZW50
cnUgaW5zcGlyYXRpYSBUQQpbQ2FwdHVyYcyGIGRlIGVjcmFuIGRpbiAyMDIyLTAzLTAyIGxhIDEw
LjU3LjI4XShodHRwczovL2Vrb2dyb3VwLmNvbS5ybz9tYWlscG9ldF9yb3V0ZXImZW5kcG9pbnQ9
dHJhY2smYWN0aW9uPWNsaWNrJmRhdGE9V3pFME16QXdOU3dpYm1seGFXRjZjWE16WWpRME1HTmpa
MnMwWXpSck5EUnpPRzlqWjJOcll6UWlMQ0l4TXpVaUxDSmtaRE00TW1VM05ETXhaVGtpTEdaaGJI
TmxYUSkKCltDYXB0dXJhzIYgZGUgZWNyYW4gZGluIDIwMjEtMDgtMDYgbGEgMTYuNTEuMDJdKGh0
dHBzOi8vZWtvZ3JvdXAuY29tLnJvP21haWxwb2V0X3JvdXRlciZlbmRwb2ludD10cmFjayZhY3Rp
b249Y2xpY2smZGF0YT1XekUwTXpBd05Td2libWx4YVdGNmNYTXpZalEwTUdOaloyczBZelJyTkRS
ek9HOWpaMk5yWXpRaUxDSXhNelVpTENKbE9EUmtZalEyWlRNNU5UWWlMR1poYkhObFhRKQoKLi4u
cHJvaWVjdGUgcGVudHJ1IHN1ZmxldCB8IFJvbWFuaWEgbWVyaXTDowoKW0NhcHR1cmHMhiBkZSBl
Y3JhbiBkaW4gMjAyMS0xMS0xNiBsYSAwOS4zNi4wNl0oaHR0cHM6Ly9la29ncm91cC5jb20ucm8/
bWFpbHBvZXRfcm91dGVyJmVuZHBvaW50PXRyYWNrJmFjdGlvbj1jbGljayZkYXRhPVd6RTBNekF3
TlN3aWJtbHhhV0Y2Y1hNellqUTBNR05qWjJzMFl6UnJORFJ6T0c5aloyTnJZelFpTENJeE16VWlM
Q0l6WlRNek56WXlZVFkyT0RNaUxHWmhiSE5sWFEpCgpFS08gVFJBREUgQlVTSU5FU1MKX19fX19f
XwpTdHJlZXQgRW1pbCBQYW5ncmF0dGksIG5vLjEwICs0IDA3NTIgNzYwIDQyNwpvZmZpY2VAcHVi
bGljaXRhdGVvb2gucm8Kc2FsZXNAcHVibGljaXRhdGVvb2gucm8KCltmYWNlYm9va10oaHR0cHM6
Ly9la29ncm91cC5jb20ucm8/bWFpbHBvZXRfcm91dGVyJmVuZHBvaW50PXRyYWNrJmFjdGlvbj1j
bGljayZkYXRhPVd6RTBNekF3TlN3aWJtbHhhV0Y2Y1hNellqUTBNR05qWjJzMFl6UnJORFJ6T0c5
aloyTnJZelFpTENJeE16VWlMQ0kzWVdWa09EaGlaVFV5WW1JaUxHWmhiSE5sWFEpIFtpbnN0YWdy
YW1dKGh0dHBzOi8vZWtvZ3JvdXAuY29tLnJvP21haWxwb2V0X3JvdXRlciZlbmRwb2ludD10cmFj
ayZhY3Rpb249Y2xpY2smZGF0YT1XekUwTXpBd05Td2libWx4YVdGNmNYTXpZalEwTUdOaloyczBZ
elJyTkRSek9HOWpaMk5yWXpRaUxDSXhNelVpTENJellUTTFZakE0WmpnNU1UQWlMR1poYkhObFhR
KQpbRGV6YWJvbmFyZV0oaHR0cHM6Ly9la29ncm91cC5jb20ucm8/bWFpbHBvZXRfcm91dGVyJmVu
ZHBvaW50PXRyYWNrJmFjdGlvbj1jbGljayZkYXRhPVd6RTBNekF3TlN3aWJtbHhhV0Y2Y1hNellq
UTBNR05qWjJzMFl6UnJORFJ6T0c5aloyTnJZelFpTENJeE16VWlMQ0pqWXpsaE9HRXdZMkU0TlRJ
aUxHWmhiSE5sWFEpIHwgW0FkbWluaXN0cmVhesSDLcibaSBhYm9uYW1lbnR1bF0oaHR0cHM6Ly9l
a29ncm91cC5jb20ucm8/bWFpbHBvZXRfcm91dGVyJmVuZHBvaW50PXRyYWNrJmFjdGlvbj1jbGlj
ayZkYXRhPVd6RTBNekF3TlN3aWJtbHhhV0Y2Y1hNellqUTBNR05qWjJzMFl6UnJORFJ6T0c5aloy
TnJZelFpTENJeE16VWlMQ0l4Tm1JMk1EaG1aVE5rT1dZaUxHWmhiSE5sWFEpCltvZmZpY2VAcHVi
bGljaXRhdGVvb2gucm9dKGh0dHBzOi8vZWtvZ3JvdXAuY29tLnJvP21haWxwb2V0X3JvdXRlciZl
bmRwb2ludD10cmFjayZhY3Rpb249Y2xpY2smZGF0YT1XekUwTXpBd05Td2libWx4YVdGNmNYTXpZ
alEwTUdOaloyczBZelJyTkRSek9HOWpaMk5yWXpRaUxDSXhNelVpTENJMFpqZzFaVFJoT1RFNFlt
RWlMR1poYkhObFhRKQpfX19fX19fCgpDb3B5cmlnaHQgwqkgMjAyMiB3d3cucHVibGljaXRhdGVv
b2gucm8sIEFsbCByaWdodHMgcmVzZXJ2ZWQuCgpbRmFybWVyc01hcmtldC1Cb3R0b21dCgpQcmlt
ZXN0aSBhY2VzdGUgZW1haWx1cmkgZGVvYXJlY2UgdGUtYWkgaW5yZWdpc3RyYXQgcGUgc2l0ZXVs
IG5vc3RydSBpbiBkYXRhIGRlIDI3IGZlYiAyMDE5IGN1IGFkcmVzYSBkZSBlbWFpbCB2OWZzLWRl
dmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQuCgpbTWFpbFBvZXRdKGh0dHBzOi8vZWtvZ3Jv
dXAuY29tLnJvP21haWxwb2V0X3JvdXRlciZlbmRwb2ludD10cmFjayZhY3Rpb249Y2xpY2smZGF0
YT1XekUwTXpBd05Td2libWx4YVdGNmNYTXpZalEwTUdOaloyczBZelJyTkRSek9HOWpaMk5yWXpR
aUxDSXhNelVpTENJek9EZzBZbVprT1Roa1pqSWlMR1poYkhObFhRKQoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KVjlmcy1kZXZlbG9wZXIgbWFpbGluZyBs
aXN0ClY5ZnMtZGV2ZWxvcGVyQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNv
dXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby92OWZzLWRldmVsb3Blcgo=
