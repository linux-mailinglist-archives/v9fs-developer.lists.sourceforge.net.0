Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DEAE45ADCE8
	for <lists+v9fs-developer@lfdr.de>; Tue,  6 Sep 2022 03:32:37 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1oVNS5-00078L-Jf;
	Tue, 06 Sep 2022 01:32:33 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <01070183106d3e6d-40058129-f17f-4d62-a089-cff9aaf9ea6d-000000@eu-central-1.amazonses.com>)
 id 1oVNS4-00078D-I8 for v9fs-developer@lists.sourceforge.net;
 Tue, 06 Sep 2022 01:32:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=List-Unsubscribe:Content-Type:MIME-Version:To:
 Reply-To:From:Subject:Date:Message-ID:Sender:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=lvQUsUXZCW+eIHtyjUvU69acyCWlW3+mj44t42McFHk=; b=JHHshLMRQ+iUDkFlXAp+pVgSa9
 9ZQPUZQ1IlsIBfo0xunEQ9uYKQzu7m7ZFbRu4gLli0z2I5//PjvaAUJ+herpkHdyLbqwS63T7+MFp
 SMEHqNd5IlEgNxkl3zsTvDrSLndn8UINInkp9E+Eu4KBJEgkpI15tUJNDODXbqBRWjug=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=List-Unsubscribe:Content-Type:MIME-Version:To:Reply-To:From:Subject:Date:
 Message-ID:Sender:Cc:Content-Transfer-Encoding:Content-ID:Content-Description
 :Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Subscribe:List-Post:List-Owner:
 List-Archive; bh=lvQUsUXZCW+eIHtyjUvU69acyCWlW3+mj44t42McFHk=; b=DwveCciKLYZd
 QwJ2RxRuPXe6L7EUEuIniVhPJdPnk+EjtfuqQfTSo/XRdjlWXz2uLsWjlWyyujhHRr/BZgeHv4YQB
 mO7q2EJGmM57VJzPtou5BHcXEC+/Viyjml4osUSpM6eK+lnRg7o7wgm10KjDzt+UYNX9ayJCKyHl7
 DWNTs=;
Received: from b224-10.smtp-out.eu-central-1.amazonses.com ([69.169.224.10])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-SHA256:128) (Exim 4.95) id 1oVNS0-00GnbI-Ji
 for v9fs-developer@lists.sourceforge.net;
 Tue, 06 Sep 2022 01:32:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
 s=rs3pg3nubqjweh4ftg7z7rkpbs5c5az5; d=publicitateooh.ro;
 t=1662427938;
 h=Sender:Message-ID:Date:Subject:From:Reply-To:To:MIME-Version:Content-Type:List-Unsubscribe;
 bh=kz+85sPy7J9PMN1L62xFTE/E5Bqmfe+ojcmoluXyV9A=;
 b=Yd4RnORnXaRWzayeFlHGJM+x2QZFM6vbkwi5KI3/Fz8kTDn3C3NnLmF4V3Yl7eY9
 L8aWNGMoqUzjjFuRKfLK1nGYbC50YZHoUSAqZObGBih2O0jOTr3D81vU7y1pPMWoXjy
 +4eVkD9tJOyRRL18dLy9u9O6M+uohpyJJ1huZWv+V6+OL9HwoVxdzXJZ07miDLFjD9J
 5pfOKAF8Dp3UVhJjgxA0kzmc3N0HNW41yUZ3LBapCc9I8zkKuSh2GHD/12rfxu7TfZn
 8fYZti7tqMphKMkg+q397ahhsqyV8hM2YGDOKRkvjt15btJ7kJ+i0OHvIYTuRDSfKKP
 B/WAwZ5SCA==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
 s=54ecsf3zk7z4mwxwwox7z7bg6e5gwjsz; d=amazonses.com; t=1662427938;
 h=Sender:Message-ID:Date:Subject:From:Reply-To:To:MIME-Version:Content-Type:List-Unsubscribe:Feedback-ID;
 bh=kz+85sPy7J9PMN1L62xFTE/E5Bqmfe+ojcmoluXyV9A=;
 b=HeGCRo4XEPGsOuh43olY7mFVT0jjqU09278f89qpWrKYcU3BFyMEFKTtLwXYFBlY
 LQ9evWNJ1Q7J4/ii46xu+XVRpddvhIaBYyTHnxsFaxbUfIesOqcVw851UFBFKXuxUwL
 1XHhPynNI6WQlZ2mNutmkxSh1mc+tuij3201LixU=
Message-ID: <01070183106d3e6d-40058129-f17f-4d62-a089-cff9aaf9ea6d-000000@eu-central-1.amazonses.com>
Date: Tue, 6 Sep 2022 01:32:18 +0000
From: Office <office@publicitateooh.ro>
To: "" <v9fs-developer@lists.sourceforge.net>
MIME-Version: 1.0
Feedback-ID: 1.eu-central-1.djyq42v8KkM0/QeLxShdouHjGcCwozGoD2tdHmaPOOk=:AmazonSES
X-SES-Outgoing: 2022.09.06-69.169.224.10
X-Spam-Score: 6.3 (++++++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has identified this incoming email as possible spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: [View this in your
 browser.](https://ekogroup.com.ro?mailpoet_router&endpoint=track&action=click&data=WzE0MzAwNSwibmlxaWF6cXMzYjQ0MGNjZ2s0YzRrNDRzOG9jZ2NrYzQiLCIxNjUiLCI2OTkwY2JkYTdkNWQiLGZhbHNlXQ)
 [FarmersMarket-Top] 
 Content analysis details:   (6.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.7 URIBL_BLACK            Contains an URL listed in the URIBL blacklist
 [URIs: ekogroup.com.ro]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [69.169.224.10 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [69.169.224.10 listed in wl.mailspike.net]
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain 2.0 PYZOR_CHECK            Listed in Pyzor
 (https://pyzor.readthedocs.io/en/latest/)
 0.1 PLING_QUERY            Subject has exclamation mark and question mark
 0.0 T_KAM_HTML_FONT_INVALID Test for Invalidly Named or Formatted
 Colors in HTML
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 2.5 URI_WP_HACKED_2        URI for compromised WordPress site, possible
 malware
X-Headers-End: 1oVNS0-00GnbI-Ji
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] De ce steaguri pentru afacerea ta? Urmareste
 video-urile!
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

W1ZpZXcgdGhpcyBpbiB5b3VyIGJyb3dzZXIuXShodHRwczovL2Vrb2dyb3VwLmNvbS5ybz9tYWls
cG9ldF9yb3V0ZXImZW5kcG9pbnQ9dHJhY2smYWN0aW9uPWNsaWNrJmRhdGE9V3pFME16QXdOU3dp
Ym1seGFXRjZjWE16WWpRME1HTmpaMnMwWXpSck5EUnpPRzlqWjJOcll6UWlMQ0l4TmpVaUxDSTJP
VGt3WTJKa1lUZGtOV1FpTEdaaGJITmxYUSkKCltGYXJtZXJzTWFya2V0LVRvcF0KCltDYXB0dXJh
zIZfZGVfZWNyYW5fZGluXzIwMjItMDctMDVfbGFfMDkuMDQuNDAtcmVtb3ZlYmctcHJldmlld10o
aHR0cHM6Ly9la29ncm91cC5jb20ucm8/bWFpbHBvZXRfcm91dGVyJmVuZHBvaW50PXRyYWNrJmFj
dGlvbj1jbGljayZkYXRhPVd6RTBNekF3TlN3aWJtbHhhV0Y2Y1hNellqUTBNR05qWjJzMFl6UnJO
RFJ6T0c5aloyTnJZelFpTENJeE5qVWlMQ0ptTlRZek56YzJOVGhsWlRjaUxHWmhiSE5sWFEpCgpb
Q2FwdHVyYcyGIGRlIGVjcmFuIGRpbiAyMDIyLTA3LTA1IGxhIDA5LjUzLjM2XShodHRwczovL2Vr
b2dyb3VwLmNvbS5ybz9tYWlscG9ldF9yb3V0ZXImZW5kcG9pbnQ9dHJhY2smYWN0aW9uPWNsaWNr
JmRhdGE9V3pFME16QXdOU3dpYm1seGFXRjZjWE16WWpRME1HTmpaMnMwWXpSck5EUnpPRzlqWjJO
cll6UWlMQ0l4TmpVaUxDSTVZMkl6WWpneFlqWm1OV0VpTEdaaGJITmxYUSkKCltDYXB0dXJhzIYg
ZGUgZWNyYW4gZGluIDIwMjItMDctMDUgbGEgMDkuMTEuNDBdKGh0dHBzOi8vZWtvZ3JvdXAuY29t
LnJvP21haWxwb2V0X3JvdXRlciZlbmRwb2ludD10cmFjayZhY3Rpb249Y2xpY2smZGF0YT1XekUw
TXpBd05Td2libWx4YVdGNmNYTXpZalEwTUdOaloyczBZelJyTkRSek9HOWpaMk5yWXpRaUxDSXhO
alVpTENKbVpqRmlNbUV3WmpWbFl6SWlMR1poYkhObFhRKQoKW0ZlZWRiYWNrIGNsaWVudCBPT0hd
KGh0dHBzOi8vZWtvZ3JvdXAuY29tLnJvP21haWxwb2V0X3JvdXRlciZlbmRwb2ludD10cmFjayZh
Y3Rpb249Y2xpY2smZGF0YT1XekUwTXpBd05Td2libWx4YVdGNmNYTXpZalEwTUdOaloyczBZelJy
TkRSek9HOWpaMk5yWXpRaUxDSXhOalVpTENKbVpqRmlNbUV3WmpWbFl6SWlMR1poYkhObFhRKQoK
W0NhcHR1cmHMhiBkZSBlY3JhbiBkaW4gMjAyMi0wNy0wNSBsYSAwOS4xMi4xOF0oaHR0cHM6Ly9l
a29ncm91cC5jb20ucm8/bWFpbHBvZXRfcm91dGVyJmVuZHBvaW50PXRyYWNrJmFjdGlvbj1jbGlj
ayZkYXRhPVd6RTBNekF3TlN3aWJtbHhhV0Y2Y1hNellqUTBNR05qWjJzMFl6UnJORFJ6T0c5aloy
TnJZelFpTENJeE5qVWlMQ0k0WkRjNU56WTBaR1JsTXpNaUxHWmhiSE5sWFEpCgpbRmVlZGJhY2sg
Y2xpZW50IE9PSF0oaHR0cHM6Ly9la29ncm91cC5jb20ucm8/bWFpbHBvZXRfcm91dGVyJmVuZHBv
aW50PXRyYWNrJmFjdGlvbj1jbGljayZkYXRhPVd6RTBNekF3TlN3aWJtbHhhV0Y2Y1hNellqUTBN
R05qWjJzMFl6UnJORFJ6T0c5aloyTnJZelFpTENJeE5qVWlMQ0k0WkRjNU56WTBaR1JsTXpNaUxH
WmhiSE5sWFEpCgpbQ2FwdHVyYcyGIGRlIGVjcmFuIGRpbiAyMDIyLTA3LTA1IGxhIDA5LjEzLjE3
XShodHRwczovL2Vrb2dyb3VwLmNvbS5ybz9tYWlscG9ldF9yb3V0ZXImZW5kcG9pbnQ9dHJhY2sm
YWN0aW9uPWNsaWNrJmRhdGE9V3pFME16QXdOU3dpYm1seGFXRjZjWE16WWpRME1HTmpaMnMwWXpS
ck5EUnpPRzlqWjJOcll6UWlMQ0l4TmpVaUxDSmtPRFJqTm1FeFpEWXlNR1lpTEdaaGJITmxYUSkK
CltGZWVkYmFjayBjbGllbnQgT09IXShodHRwczovL2Vrb2dyb3VwLmNvbS5ybz9tYWlscG9ldF9y
b3V0ZXImZW5kcG9pbnQ9dHJhY2smYWN0aW9uPWNsaWNrJmRhdGE9V3pFME16QXdOU3dpYm1seGFX
RjZjWE16WWpRME1HTmpaMnMwWXpSck5EUnpPRzlqWjJOcll6UWlMQ0l4TmpVaUxDSmtPRFJqTm1F
eFpEWXlNR1lpTEdaaGJITmxYUSkKCltDYXB0dXJhzIYgZGUgZWNyYW4gZGluIDIwMjItMDctMDUg
bGEgMDkuMDkuMzddKGh0dHBzOi8vZWtvZ3JvdXAuY29tLnJvP21haWxwb2V0X3JvdXRlciZlbmRw
b2ludD10cmFjayZhY3Rpb249Y2xpY2smZGF0YT1XekUwTXpBd05Td2libWx4YVdGNmNYTXpZalEw
TUdOaloyczBZelJyTkRSek9HOWpaMk5yWXpRaUxDSXhOalVpTENKaVpEWmpPRGt4TUdZeU1tSWlM
R1poYkhObFhRKQoKW1VuIGJ1bGV2YXJkIGludHJlZyBkZSBzdGVhZ3VyaT9dKGh0dHBzOi8vZWtv
Z3JvdXAuY29tLnJvP21haWxwb2V0X3JvdXRlciZlbmRwb2ludD10cmFjayZhY3Rpb249Y2xpY2sm
ZGF0YT1XekUwTXpBd05Td2libWx4YVdGNmNYTXpZalEwTUdOaloyczBZelJyTkRSek9HOWpaMk5y
WXpRaUxDSXhOalVpTENKaVpEWmpPRGt4TUdZeU1tSWlMR1poYkhObFhRKQoKW0NhcHR1cmHMhiBk
ZSBlY3JhbiBkaW4gMjAyMi0wNy0wNSBsYSAwOS4wOC41NV0oaHR0cHM6Ly9la29ncm91cC5jb20u
cm8/bWFpbHBvZXRfcm91dGVyJmVuZHBvaW50PXRyYWNrJmFjdGlvbj1jbGljayZkYXRhPVd6RTBN
ekF3TlN3aWJtbHhhV0Y2Y1hNellqUTBNR05qWjJzMFl6UnJORFJ6T0c5aloyTnJZelFpTENJeE5q
VWlMQ0kxTW1NM1lqTXdObUZtTVRraUxHWmhiSE5sWFEpCgpbRGUgY2UgbWluaW0gMyBzdGVhZ3Vy
aSBjb25zZWN1dGl2ZSFdKGh0dHBzOi8vZWtvZ3JvdXAuY29tLnJvP21haWxwb2V0X3JvdXRlciZl
bmRwb2ludD10cmFjayZhY3Rpb249Y2xpY2smZGF0YT1XekUwTXpBd05Td2libWx4YVdGNmNYTXpZ
alEwTUdOaloyczBZelJyTkRSek9HOWpaMk5yWXpRaUxDSXhOalVpTENJMU1tTTNZak13Tm1GbU1U
a2lMR1poYkhObFhRKQoKW0NhcHR1cmHMhiBkZSBlY3JhbiBkaW4gMjAyMi0wNy0wNyBsYSAxMC41
Ni4zN10oaHR0cHM6Ly9la29ncm91cC5jb20ucm8/bWFpbHBvZXRfcm91dGVyJmVuZHBvaW50PXRy
YWNrJmFjdGlvbj1jbGljayZkYXRhPVd6RTBNekF3TlN3aWJtbHhhV0Y2Y1hNellqUTBNR05qWjJz
MFl6UnJORFJ6T0c5aloyTnJZelFpTENJeE5qVWlMQ0l5TmpWbU5URXlNREl4WlRFaUxHWmhiSE5s
WFEpCgpbQ2UgZXN0ZSBPT0g/IChvdXQtb2YtaG9tZSldKGh0dHBzOi8vZWtvZ3JvdXAuY29tLnJv
P21haWxwb2V0X3JvdXRlciZlbmRwb2ludD10cmFjayZhY3Rpb249Y2xpY2smZGF0YT1XekUwTXpB
d05Td2libWx4YVdGNmNYTXpZalEwTUdOaloyczBZelJyTkRSek9HOWpaMk5yWXpRaUxDSXhOalVp
TENJeU5qVm1OVEV5TURJeFpURWlMR1poYkhObFhRKQoKW0NhcHR1cmHMhiBkZSBlY3JhbiBkaW4g
MjAyMi0wNy0wNyBsYSAxMC41NS41OV0oaHR0cHM6Ly9la29ncm91cC5jb20ucm8/bWFpbHBvZXRf
cm91dGVyJmVuZHBvaW50PXRyYWNrJmFjdGlvbj1jbGljayZkYXRhPVd6RTBNekF3TlN3aWJtbHhh
V0Y2Y1hNellqUTBNR05qWjJzMFl6UnJORFJ6T0c5aloyTnJZelFpTENJeE5qVWlMQ0psTUdaaFpt
UTVNVEkyWmpraUxHWmhiSE5sWFEpCgpbRGUgY2Ugc2Egb3B0ZXppIHBlbnRydSBPT0g/XShodHRw
czovL2Vrb2dyb3VwLmNvbS5ybz9tYWlscG9ldF9yb3V0ZXImZW5kcG9pbnQ9dHJhY2smYWN0aW9u
PWNsaWNrJmRhdGE9V3pFME16QXdOU3dpYm1seGFXRjZjWE16WWpRME1HTmpaMnMwWXpSck5EUnpP
RzlqWjJOcll6UWlMQ0l4TmpVaUxDSmxNR1poWm1RNU1USTJaamtpTEdaaGJITmxYUSkKCltDYXB0
dXJhzIYgZGUgZWNyYW4gZGluIDIwMjItMDctMDcgbGEgMTAuNTUuMTNdKGh0dHBzOi8vZWtvZ3Jv
dXAuY29tLnJvP21haWxwb2V0X3JvdXRlciZlbmRwb2ludD10cmFjayZhY3Rpb249Y2xpY2smZGF0
YT1XekUwTXpBd05Td2libWx4YVdGNmNYTXpZalEwTUdOaloyczBZelJyTkRSek9HOWpaMk5yWXpR
aUxDSXhOalVpTENJM01qWTFaV00zTnpBNFlURWlMR1poYkhObFhRKQoKW0RlIGNlIHN1bnQgaW1w
b3J0YW50ZSBncmFmaWNhIHNpIG1lc2FqZWxlP10oaHR0cHM6Ly9la29ncm91cC5jb20ucm8/bWFp
bHBvZXRfcm91dGVyJmVuZHBvaW50PXRyYWNrJmFjdGlvbj1jbGljayZkYXRhPVd6RTBNekF3TlN3
aWJtbHhhV0Y2Y1hNellqUTBNR05qWjJzMFl6UnJORFJ6T0c5aloyTnJZelFpTENJeE5qVWlMQ0kz
TWpZMVpXTTNOekE0WVRFaUxHWmhiSE5sWFEpCgpbbG9nb19la29ncm91cC1yZW1vdmViZy1wcmV2
aWV3XShodHRwczovL2Vrb2dyb3VwLmNvbS5ybz9tYWlscG9ldF9yb3V0ZXImZW5kcG9pbnQ9dHJh
Y2smYWN0aW9uPWNsaWNrJmRhdGE9V3pFME16QXdOU3dpYm1seGFXRjZjWE16WWpRME1HTmpaMnMw
WXpSck5EUnpPRzlqWjJOcll6UWlMQ0l4TmpVaUxDSm1OMkkxTkRNd01ERTNZVGdpTEdaaGJITmxY
USkKCltmYWNlYm9va10oaHR0cHM6Ly9la29ncm91cC5jb20ucm8/bWFpbHBvZXRfcm91dGVyJmVu
ZHBvaW50PXRyYWNrJmFjdGlvbj1jbGljayZkYXRhPVd6RTBNekF3TlN3aWJtbHhhV0Y2Y1hNellq
UTBNR05qWjJzMFl6UnJORFJ6T0c5aloyTnJZelFpTENJeE5qVWlMQ0l3WXpGaU1tVTNaalkzTjJZ
aUxHWmhiSE5sWFEpIFtpbnN0YWdyYW1dKGh0dHBzOi8vZWtvZ3JvdXAuY29tLnJvP21haWxwb2V0
X3JvdXRlciZlbmRwb2ludD10cmFjayZhY3Rpb249Y2xpY2smZGF0YT1XekUwTXpBd05Td2libWx4
YVdGNmNYTXpZalEwTUdOaloyczBZelJyTkRSek9HOWpaMk5yWXpRaUxDSXhOalVpTENKbVlXWTBN
elF3WWpsbU1HWWlMR1poYkhObFhRKQpbVW5zdWJzY3JpYmVdKGh0dHBzOi8vZWtvZ3JvdXAuY29t
LnJvP21haWxwb2V0X3JvdXRlciZlbmRwb2ludD10cmFjayZhY3Rpb249Y2xpY2smZGF0YT1XekUw
TXpBd05Td2libWx4YVdGNmNYTXpZalEwTUdOaloyczBZelJyTkRSek9HOWpaMk5yWXpRaUxDSXhO
alVpTENJeU9ESmlabU0wTnpOaE1HSWlMR1poYkhObFhRKSB8IFtNYW5hZ2UgeW91ciBzdWJzY3Jp
cHRpb25dKGh0dHBzOi8vZWtvZ3JvdXAuY29tLnJvP21haWxwb2V0X3JvdXRlciZlbmRwb2ludD10
cmFjayZhY3Rpb249Y2xpY2smZGF0YT1XekUwTXpBd05Td2libWx4YVdGNmNYTXpZalEwTUdOaloy
czBZelJyTkRSek9HOWpaMk5yWXpRaUxDSXhOalVpTENKbFptTXpORFExT1RKa056SWlMR1poYkhO
bFhRKQpBZGQgeW91ciBwb3N0YWwgYWRkcmVzcyBoZXJlIQoKb2ZmaWNlQHB1YmxpY2l0YXRlT09I
LnJvCnd3dy5wdWJsaWNpdGF0ZU9PSC5ybwoKW0Zhcm1lcnNNYXJrZXQtQm90dG9tXQoKW01haWxQ
b2V0XShodHRwczovL2Vrb2dyb3VwLmNvbS5ybz9tYWlscG9ldF9yb3V0ZXImZW5kcG9pbnQ9dHJh
Y2smYWN0aW9uPWNsaWNrJmRhdGE9V3pFME16QXdOU3dpYm1seGFXRjZjWE16WWpRME1HTmpaMnMw
WXpSck5EUnpPRzlqWjJOcll6UWlMQ0l4TmpVaUxDSm1NR0UxTkdVMU5XUTNNakFpTEdaaGJITmxY
USkKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClY5ZnMt
ZGV2ZWxvcGVyIG1haWxpbmcgbGlzdApWOWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5u
ZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vdjlmcy1kZXZl
bG9wZXIK
