Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 427CE5A0A61
	for <lists+v9fs-developer@lfdr.de>; Thu, 25 Aug 2022 09:37:00 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1oR7Q9-0004BB-QF;
	Thu, 25 Aug 2022 07:36:57 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <01070182d3ee98a8-aea0a9ea-48b5-4d89-8102-8d4500cabd91-000000@eu-central-1.amazonses.com>)
 id 1oR7Q8-0004B4-PM for v9fs-developer@lists.sourceforge.net;
 Thu, 25 Aug 2022 07:36:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=List-Unsubscribe:Content-Type:MIME-Version:To:
 Reply-To:From:Subject:Date:Message-ID:Sender:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=eLsLHp7K9VqrwwRypnOWZsyfLiEGQckf+ilO/biUW7s=; b=H89sCXw2R34/qABubemAgI2uCt
 bZvYn8EH/7SbwDyCyPaxv9AE/vK55/1gh2cBxN+yQpYS1gY6xVxIsWf5T0zC9z41thS4nsB09eQ8P
 vGC+2I9jUQAueEUU1kU9UYwNgEb31FCjQkGzF0f0K2sYubajNtCuxthVo+asbIwtjP74=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=List-Unsubscribe:Content-Type:MIME-Version:To:Reply-To:From:Subject:Date:
 Message-ID:Sender:Cc:Content-Transfer-Encoding:Content-ID:Content-Description
 :Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Subscribe:List-Post:List-Owner:
 List-Archive; bh=eLsLHp7K9VqrwwRypnOWZsyfLiEGQckf+ilO/biUW7s=; b=A7bY88wCZ47s
 nzzPjDdE46imOFub2JSEGNKR8WTZY0Vy8J0fvCY5JvzReRL43uvQp2I5Tz0tZCQXRcqCd0YArmjJ+
 g4RITTjkLisy8BfMxP4etdsOUg/EcHQWAGgQc5aUZC0TUpXC8cj67gCz5NKN6F4kEaa6A0hX1Rmu9
 CDge8=;
Received: from b224-12.smtp-out.eu-central-1.amazonses.com ([69.169.224.12])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-SHA256:128) (Exim 4.95) id 1oR7Q7-00H5ka-EU
 for v9fs-developer@lists.sourceforge.net;
 Thu, 25 Aug 2022 07:36:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
 s=rs3pg3nubqjweh4ftg7z7rkpbs5c5az5; d=publicitateooh.ro;
 t=1661413005;
 h=Sender:Message-ID:Date:Subject:From:Reply-To:To:MIME-Version:Content-Type:List-Unsubscribe;
 bh=p/RpL++WmTwMLwDAqh3k97b+LdQGBvrxuZe8QEhsrc0=;
 b=sKlFVNZMCmL4KYg/JoDODG+SWT85AIHRfyYt1ffSGTjboMOnJfmBkHaNsDTNij7c
 aikZSTyGrRd+i5GWJaoup/fSllUA03JBPMvKazvqKsldcfuchNDutKIIycSD8puMm2I
 MA5PbmZQW+f9lJHFQ6LM7HFisuEQvZ+hPDXBOOvmTkbdbR6hbfmzGrIrQGC0mKum5Zj
 k//su+w8HGcvD4eneeC2o1AKUN5UlNbq7Rni33lx8/S9ihq4bSNDS4Sbej0yzhoUqux
 Q9DVXeEmVUAXjRSaCpFIZmiXCgvbLQH0MjFfERZpc8YRHGRyj1xm8Bvmp03vYXCB8jE
 DVCLk5TxcQ==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
 s=54ecsf3zk7z4mwxwwox7z7bg6e5gwjsz; d=amazonses.com; t=1661413005;
 h=Sender:Message-ID:Date:Subject:From:Reply-To:To:MIME-Version:Content-Type:List-Unsubscribe:Feedback-ID;
 bh=p/RpL++WmTwMLwDAqh3k97b+LdQGBvrxuZe8QEhsrc0=;
 b=lzQjFl91obGKk3LzYeBIJZx9Jzeq1lQ6aa9kqJL+My3kBpZWxAWO3wQzBK+WwZzI
 rLvaMPt6q7xqGrQ7mhvcr7sK3UQIx1sbOC6kmHvYn6DE47RMHHECRJO+NC33haG6J9G
 E+Q5CRCp1taeIxrl1Tl5guOc2Sy7FX1dSFMeA9XU=
Message-ID: <01070182d3ee98a8-aea0a9ea-48b5-4d89-8102-8d4500cabd91-000000@eu-central-1.amazonses.com>
Date: Thu, 25 Aug 2022 07:36:45 +0000
From: Office <office@publicitateooh.ro>
To: "" <v9fs-developer@lists.sourceforge.net>
MIME-Version: 1.0
Feedback-ID: 1.eu-central-1.djyq42v8KkM0/QeLxShdouHjGcCwozGoD2tdHmaPOOk=:AmazonSES
X-SES-Outgoing: 2022.08.25-69.169.224.12
X-Spam-Score: 4.3 (++++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: [View this in your
 browser.](https://ekogroup.com.ro?mailpoet_router&endpoint=track&action=click&data=WzE0MzAwNSwibmlxaWF6cXMzYjQ0MGNjZ2s0YzRrNDRzOG9jZ2NrYzQiLCIxNjIiLCJhZDIyMjkzMWEyYTQiLGZhbHNlXQ)
 [FarmersMarket-Top] 
 Content analysis details:   (4.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [69.169.224.12 listed in list.dnswl.org]
 1.7 URIBL_BLACK            Contains an URL listed in the URIBL blacklist
 [URIs: ekogroup.com.ro]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [69.169.224.12 listed in wl.mailspike.net]
 0.0 HTML_MESSAGE           BODY: HTML included in message
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 T_KAM_HTML_FONT_INVALID Test for Invalidly Named or Formatted
 Colors in HTML
 2.5 URI_WP_HACKED_2        URI for compromised WordPress site, possible
 malware
X-Headers-End: 1oR7Q7-00H5ka-EU
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] Reclama ta in BUCURESTI MALL
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
Ym1seGFXRjZjWE16WWpRME1HTmpaMnMwWXpSck5EUnpPRzlqWjJOcll6UWlMQ0l4TmpJaUxDSmha
REl5TWprek1XRXlZVFFpTEdaaGJITmxYUSkKCltGYXJtZXJzTWFya2V0LVRvcF0KCltDYXB0dXJh
zIZfZGVfZWNyYW5fZGluXzIwMjItMDctMDVfbGFfMDkuMDQuNDAtcmVtb3ZlYmctcHJldmlld10o
aHR0cHM6Ly9la29ncm91cC5jb20ucm8/bWFpbHBvZXRfcm91dGVyJmVuZHBvaW50PXRyYWNrJmFj
dGlvbj1jbGljayZkYXRhPVd6RTBNekF3TlN3aWJtbHhhV0Y2Y1hNellqUTBNR05qWjJzMFl6UnJO
RFJ6T0c5aloyTnJZelFpTENJeE5qSWlMQ0ppWm1Rek5UVm1NVGxrTm1ZaUxHWmhiSE5sWFEpCgpb
dml0YW4gbWFsbCBieSBwdWJsaWNpdGF0ZW9vaC5yb10oaHR0cHM6Ly9la29ncm91cC5jb20ucm8/
bWFpbHBvZXRfcm91dGVyJmVuZHBvaW50PXRyYWNrJmFjdGlvbj1jbGljayZkYXRhPVd6RTBNekF3
TlN3aWJtbHhhV0Y2Y1hNellqUTBNR05qWjJzMFl6UnJORFJ6T0c5aloyTnJZelFpTENJeE5qSWlM
Q0ptWVRoalpXVTBPVGxrT1dJaUxHWmhiSE5sWFEpCgpbQ2FwdHVyYcyGIGRlIGVjcmFuIGRpbiAy
MDIyLTA3LTA1IGxhIDA5LjUzLjM2XShodHRwczovL2Vrb2dyb3VwLmNvbS5ybz9tYWlscG9ldF9y
b3V0ZXImZW5kcG9pbnQ9dHJhY2smYWN0aW9uPWNsaWNrJmRhdGE9V3pFME16QXdOU3dpYm1seGFX
RjZjWE16WWpRME1HTmpaMnMwWXpSck5EUnpPRzlqWjJOcll6UWlMQ0l4TmpJaUxDSmpaV0kxTnpS
ak16Z3pNbVVpTEdaaGJITmxYUSkKCltDYXB0dXJhzIYgZGUgZWNyYW4gZGluIDIwMjItMDctMDUg
bGEgMDkuMTEuNDBdKGh0dHBzOi8vZWtvZ3JvdXAuY29tLnJvP21haWxwb2V0X3JvdXRlciZlbmRw
b2ludD10cmFjayZhY3Rpb249Y2xpY2smZGF0YT1XekUwTXpBd05Td2libWx4YVdGNmNYTXpZalEw
TUdOaloyczBZelJyTkRSek9HOWpaMk5yWXpRaUxDSXhOaklpTENJMU1qUTJZMlUzTkdaaVl6WWlM
R1poYkhObFhRKQoKW0ZlZWRiYWNrIGNsaWVudCBPT0hdKGh0dHBzOi8vZWtvZ3JvdXAuY29tLnJv
P21haWxwb2V0X3JvdXRlciZlbmRwb2ludD10cmFjayZhY3Rpb249Y2xpY2smZGF0YT1XekUwTXpB
d05Td2libWx4YVdGNmNYTXpZalEwTUdOaloyczBZelJyTkRSek9HOWpaMk5yWXpRaUxDSXhOaklp
TENJMU1qUTJZMlUzTkdaaVl6WWlMR1poYkhObFhRKQoKW0NhcHR1cmHMhiBkZSBlY3JhbiBkaW4g
MjAyMi0wNy0wNSBsYSAwOS4xMi4xOF0oaHR0cHM6Ly9la29ncm91cC5jb20ucm8/bWFpbHBvZXRf
cm91dGVyJmVuZHBvaW50PXRyYWNrJmFjdGlvbj1jbGljayZkYXRhPVd6RTBNekF3TlN3aWJtbHhh
V0Y2Y1hNellqUTBNR05qWjJzMFl6UnJORFJ6T0c5aloyTnJZelFpTENJeE5qSWlMQ0prWWprM01q
ZzNOekl6TWpBaUxHWmhiSE5sWFEpCgpbRmVlZGJhY2sgY2xpZW50IE9PSF0oaHR0cHM6Ly9la29n
cm91cC5jb20ucm8/bWFpbHBvZXRfcm91dGVyJmVuZHBvaW50PXRyYWNrJmFjdGlvbj1jbGljayZk
YXRhPVd6RTBNekF3TlN3aWJtbHhhV0Y2Y1hNellqUTBNR05qWjJzMFl6UnJORFJ6T0c5aloyTnJZ
elFpTENJeE5qSWlMQ0prWWprM01qZzNOekl6TWpBaUxHWmhiSE5sWFEpCgpbQ2FwdHVyYcyGIGRl
IGVjcmFuIGRpbiAyMDIyLTA3LTA1IGxhIDA5LjEzLjE3XShodHRwczovL2Vrb2dyb3VwLmNvbS5y
bz9tYWlscG9ldF9yb3V0ZXImZW5kcG9pbnQ9dHJhY2smYWN0aW9uPWNsaWNrJmRhdGE9V3pFME16
QXdOU3dpYm1seGFXRjZjWE16WWpRME1HTmpaMnMwWXpSck5EUnpPRzlqWjJOcll6UWlMQ0l4TmpJ
aUxDSXdaRGs1Tm1aaE1qSTFOV0VpTEdaaGJITmxYUSkKCltGZWVkYmFjayBjbGllbnQgT09IXSho
dHRwczovL2Vrb2dyb3VwLmNvbS5ybz9tYWlscG9ldF9yb3V0ZXImZW5kcG9pbnQ9dHJhY2smYWN0
aW9uPWNsaWNrJmRhdGE9V3pFME16QXdOU3dpYm1seGFXRjZjWE16WWpRME1HTmpaMnMwWXpSck5E
UnpPRzlqWjJOcll6UWlMQ0l4TmpJaUxDSXdaRGs1Tm1aaE1qSTFOV0VpTEdaaGJITmxYUSkKCltD
YXB0dXJhzIYgZGUgZWNyYW4gZGluIDIwMjItMDctMDUgbGEgMDkuMDkuMzddKGh0dHBzOi8vZWtv
Z3JvdXAuY29tLnJvP21haWxwb2V0X3JvdXRlciZlbmRwb2ludD10cmFjayZhY3Rpb249Y2xpY2sm
ZGF0YT1XekUwTXpBd05Td2libWx4YVdGNmNYTXpZalEwTUdOaloyczBZelJyTkRSek9HOWpaMk5y
WXpRaUxDSXhOaklpTENJNU9EVmpaamczWlRRek16VWlMR1poYkhObFhRKQoKW1VuIGJ1bGV2YXJk
IGludHJlZyBkZSBzdGVhZ3VyaT9dKGh0dHBzOi8vZWtvZ3JvdXAuY29tLnJvP21haWxwb2V0X3Jv
dXRlciZlbmRwb2ludD10cmFjayZhY3Rpb249Y2xpY2smZGF0YT1XekUwTXpBd05Td2libWx4YVdG
NmNYTXpZalEwTUdOaloyczBZelJyTkRSek9HOWpaMk5yWXpRaUxDSXhOaklpTENJNU9EVmpaamcz
WlRRek16VWlMR1poYkhObFhRKQoKW0NhcHR1cmHMhiBkZSBlY3JhbiBkaW4gMjAyMi0wNy0wNSBs
YSAwOS4wOC41NV0oaHR0cHM6Ly9la29ncm91cC5jb20ucm8/bWFpbHBvZXRfcm91dGVyJmVuZHBv
aW50PXRyYWNrJmFjdGlvbj1jbGljayZkYXRhPVd6RTBNekF3TlN3aWJtbHhhV0Y2Y1hNellqUTBN
R05qWjJzMFl6UnJORFJ6T0c5aloyTnJZelFpTENJeE5qSWlMQ0kzWlRJd01HUXpOVEF4WW1JaUxH
WmhiSE5sWFEpCgpbRGUgY2UgbWluaW0gMyBzdGVhZ3VyaSBjb25zZWN1dGl2ZSFdKGh0dHBzOi8v
ZWtvZ3JvdXAuY29tLnJvP21haWxwb2V0X3JvdXRlciZlbmRwb2ludD10cmFjayZhY3Rpb249Y2xp
Y2smZGF0YT1XekUwTXpBd05Td2libWx4YVdGNmNYTXpZalEwTUdOaloyczBZelJyTkRSek9HOWpa
Mk5yWXpRaUxDSXhOaklpTENJM1pUSXdNR1F6TlRBeFltSWlMR1poYkhObFhRKQoKW0NhcHR1cmHM
hiBkZSBlY3JhbiBkaW4gMjAyMi0wNy0wNyBsYSAxMC41Ni4zN10oaHR0cHM6Ly9la29ncm91cC5j
b20ucm8/bWFpbHBvZXRfcm91dGVyJmVuZHBvaW50PXRyYWNrJmFjdGlvbj1jbGljayZkYXRhPVd6
RTBNekF3TlN3aWJtbHhhV0Y2Y1hNellqUTBNR05qWjJzMFl6UnJORFJ6T0c5aloyTnJZelFpTENJ
eE5qSWlMQ0k0Wmpnek1XVmtPVE16T1dJaUxHWmhiSE5sWFEpCgpbQ2UgZXN0ZSBPT0g/IChvdXQt
b2YtaG9tZSldKGh0dHBzOi8vZWtvZ3JvdXAuY29tLnJvP21haWxwb2V0X3JvdXRlciZlbmRwb2lu
dD10cmFjayZhY3Rpb249Y2xpY2smZGF0YT1XekUwTXpBd05Td2libWx4YVdGNmNYTXpZalEwTUdO
aloyczBZelJyTkRSek9HOWpaMk5yWXpRaUxDSXhOaklpTENJNFpqZ3pNV1ZrT1RNek9XSWlMR1po
YkhObFhRKQoKW0NhcHR1cmHMhiBkZSBlY3JhbiBkaW4gMjAyMi0wNy0wNyBsYSAxMC41NS41OV0o
aHR0cHM6Ly9la29ncm91cC5jb20ucm8/bWFpbHBvZXRfcm91dGVyJmVuZHBvaW50PXRyYWNrJmFj
dGlvbj1jbGljayZkYXRhPVd6RTBNekF3TlN3aWJtbHhhV0Y2Y1hNellqUTBNR05qWjJzMFl6UnJO
RFJ6T0c5aloyTnJZelFpTENJeE5qSWlMQ0l5TXpobU5UWXlZalZqWW1FaUxHWmhiSE5sWFEpCgpb
RGUgY2Ugc2Egb3B0ZXppIHBlbnRydSBPT0g/XShodHRwczovL2Vrb2dyb3VwLmNvbS5ybz9tYWls
cG9ldF9yb3V0ZXImZW5kcG9pbnQ9dHJhY2smYWN0aW9uPWNsaWNrJmRhdGE9V3pFME16QXdOU3dp
Ym1seGFXRjZjWE16WWpRME1HTmpaMnMwWXpSck5EUnpPRzlqWjJOcll6UWlMQ0l4TmpJaUxDSXlN
emhtTlRZeVlqVmpZbUVpTEdaaGJITmxYUSkKCltDYXB0dXJhzIYgZGUgZWNyYW4gZGluIDIwMjIt
MDctMDcgbGEgMTAuNTUuMTNdKGh0dHBzOi8vZWtvZ3JvdXAuY29tLnJvP21haWxwb2V0X3JvdXRl
ciZlbmRwb2ludD10cmFjayZhY3Rpb249Y2xpY2smZGF0YT1XekUwTXpBd05Td2libWx4YVdGNmNY
TXpZalEwTUdOaloyczBZelJyTkRSek9HOWpaMk5yWXpRaUxDSXhOaklpTENJd1l6VTFNakZsTW1F
NU1XVWlMR1poYkhObFhRKQoKW0RlIGNlIHN1bnQgaW1wb3J0YW50ZSBncmFmaWNhIHNpIG1lc2Fq
ZWxlP10oaHR0cHM6Ly9la29ncm91cC5jb20ucm8/bWFpbHBvZXRfcm91dGVyJmVuZHBvaW50PXRy
YWNrJmFjdGlvbj1jbGljayZkYXRhPVd6RTBNekF3TlN3aWJtbHhhV0Y2Y1hNellqUTBNR05qWjJz
MFl6UnJORFJ6T0c5aloyTnJZelFpTENJeE5qSWlMQ0l3WXpVMU1qRmxNbUU1TVdVaUxHWmhiSE5s
WFEpCgpbbG9nb19la29ncm91cC1yZW1vdmViZy1wcmV2aWV3XShodHRwczovL2Vrb2dyb3VwLmNv
bS5ybz9tYWlscG9ldF9yb3V0ZXImZW5kcG9pbnQ9dHJhY2smYWN0aW9uPWNsaWNrJmRhdGE9V3pF
ME16QXdOU3dpYm1seGFXRjZjWE16WWpRME1HTmpaMnMwWXpSck5EUnpPRzlqWjJOcll6UWlMQ0l4
TmpJaUxDSm1NVGN5Tm1SaE5qTXlPVGtpTEdaaGJITmxYUSkKCltmYWNlYm9va10oaHR0cHM6Ly9l
a29ncm91cC5jb20ucm8/bWFpbHBvZXRfcm91dGVyJmVuZHBvaW50PXRyYWNrJmFjdGlvbj1jbGlj
ayZkYXRhPVd6RTBNekF3TlN3aWJtbHhhV0Y2Y1hNellqUTBNR05qWjJzMFl6UnJORFJ6T0c5aloy
TnJZelFpTENJeE5qSWlMQ0l5TXpJelltUmtNbVl6TXpRaUxHWmhiSE5sWFEpIFtpbnN0YWdyYW1d
KGh0dHBzOi8vZWtvZ3JvdXAuY29tLnJvP21haWxwb2V0X3JvdXRlciZlbmRwb2ludD10cmFjayZh
Y3Rpb249Y2xpY2smZGF0YT1XekUwTXpBd05Td2libWx4YVdGNmNYTXpZalEwTUdOaloyczBZelJy
TkRSek9HOWpaMk5yWXpRaUxDSXhOaklpTENJeFl6bGlPRGcxWm1FMk9USWlMR1poYkhObFhRKQpb
VW5zdWJzY3JpYmVdKGh0dHBzOi8vZWtvZ3JvdXAuY29tLnJvP21haWxwb2V0X3JvdXRlciZlbmRw
b2ludD10cmFjayZhY3Rpb249Y2xpY2smZGF0YT1XekUwTXpBd05Td2libWx4YVdGNmNYTXpZalEw
TUdOaloyczBZelJyTkRSek9HOWpaMk5yWXpRaUxDSXhOaklpTENKbE5EazROak5tWVRVMk4ySWlM
R1poYkhObFhRKSB8IFtNYW5hZ2UgeW91ciBzdWJzY3JpcHRpb25dKGh0dHBzOi8vZWtvZ3JvdXAu
Y29tLnJvP21haWxwb2V0X3JvdXRlciZlbmRwb2ludD10cmFjayZhY3Rpb249Y2xpY2smZGF0YT1X
ekUwTXpBd05Td2libWx4YVdGNmNYTXpZalEwTUdOaloyczBZelJyTkRSek9HOWpaMk5yWXpRaUxD
SXhOaklpTENJNU9HVXdaalV6WTJJeFl6TWlMR1poYkhObFhRKQpBZGQgeW91ciBwb3N0YWwgYWRk
cmVzcyBoZXJlIQoKb2ZmaWNlQHB1YmxpY2l0YXRlT09ILnJvCnd3dy5wdWJsaWNpdGF0ZU9PSC5y
bwoKW0Zhcm1lcnNNYXJrZXQtQm90dG9tXQoKW01haWxQb2V0XShodHRwczovL2Vrb2dyb3VwLmNv
bS5ybz9tYWlscG9ldF9yb3V0ZXImZW5kcG9pbnQ9dHJhY2smYWN0aW9uPWNsaWNrJmRhdGE9V3pF
ME16QXdOU3dpYm1seGFXRjZjWE16WWpRME1HTmpaMnMwWXpSck5EUnpPRzlqWjJOcll6UWlMQ0l4
TmpJaUxDSTRNRGRqTkRreVpUZ3lOR0lpTEdaaGJITmxYUSkKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fClY5ZnMtZGV2ZWxvcGVyIG1haWxpbmcgbGlzdApW
OWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vm
b3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vdjlmcy1kZXZlbG9wZXIK
