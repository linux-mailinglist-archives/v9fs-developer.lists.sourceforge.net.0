Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 55805444E97
	for <lists+v9fs-developer@lfdr.de>; Thu,  4 Nov 2021 07:02:19 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1miVpJ-0008DL-CR; Thu, 04 Nov 2021 06:02:16 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2) (envelope-from
 <0107017ce98a0475-51969def-7325-480d-9c69-e8c1f187a370-000000@eu-central-1.amazonses.com>)
 id 1miVp3-0008Cq-Pc
 for v9fs-developer@lists.sourceforge.net; Thu, 04 Nov 2021 06:02:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=List-Unsubscribe:Content-Type:MIME-Version:To:
 Reply-To:From:Subject:Date:Message-ID:Sender:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=3T762kH/DOHMhaM57lHeRtw5GjRZfUVV9g/nksxZlrU=; b=Dx8tL5Ik/Tr1oOW9a2x6ItlZ3G
 CqkzKKlzEYhiN7p0wnU1Lm1dDVZHRWwTeH3SJFQqNf/CaZY4UeCl4UzjkA237xPw0rnmpOTUHBaXU
 NoNeCkKrkb2yN46mLweFdw+PgHVB8BHld1BMhC7ymPEaVqNg/H2zZi2Y/Ge8xaNEWkZc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=List-Unsubscribe:Content-Type:MIME-Version:To:Reply-To:From:Subject:Date:
 Message-ID:Sender:Cc:Content-Transfer-Encoding:Content-ID:Content-Description
 :Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Subscribe:List-Post:List-Owner:
 List-Archive; bh=3T762kH/DOHMhaM57lHeRtw5GjRZfUVV9g/nksxZlrU=; b=EyTcy37dMUis
 eMv0QvCqzVMWHGmt+SC6UwpiD9Lj+2fF0ffHoD2PTCvAEGwNF/LHSsa34GjYRzhJnVv5iKvpDLtcK
 sYDqt1THV2dvI0LtHD8jqW5JiEegjrK/ugk9Y2I3NFRBqQezDNW4tuTUT4JaeVl/5u/Alp2nCwiCl
 t22bA=;
Received: from b227-249.smtp-out.eu-central-1.amazonses.com ([69.169.227.249])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-SHA256:128) (Exim 4.92.3)
 id 1miVoy-0012lg-QE
 for v9fs-developer@lists.sourceforge.net; Thu, 04 Nov 2021 06:02:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
 s=saspfafem6lgzskpwcali7bn7m7elrbf; d=publicitateooh.ro;
 t=1636005709;
 h=Sender:Message-ID:Date:Subject:From:Reply-To:To:MIME-Version:Content-Type:List-Unsubscribe;
 bh=18A0oeREFbmLSr1xAfTdUh4Fz1GIbreTMSXCfniN8L8=;
 b=IYLMZ7Wqfs0H6rXVcI6j5LQLFxMC/yDXZgwhHQuqo7X6GC/csdKS4Qx7Py3ay9QI
 FY4sW52TI1AdQ/7BjMnNIY5dXNnG4OiVZS/cWjo5Fj6ELdnIfBwqCZcm9EOEjLaZWVx
 M2CwDF0mKPkm/x+uEe9Ud42ee2ZJMUycjt6tjDAt9BE/nsUSt0wYFckTSANXUKkELyg
 Z27VBtvLaIMNpR/HBcq++vlg54dLv77srpVfLs2/mvHt4FX2aDneKoMgIhWzAjca1WF
 Dvad+sYgH+Mcd8jM+9rTFfgbh6f85ED8btg/SVg4i5HpMdrhaHeqMz8hio3+0U3Re+g
 YbBoM42GNw==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
 s=54ecsf3zk7z4mwxwwox7z7bg6e5gwjsz; d=amazonses.com; t=1636005709;
 h=Sender:Message-ID:Date:Subject:From:Reply-To:To:MIME-Version:Content-Type:List-Unsubscribe:Feedback-ID;
 bh=18A0oeREFbmLSr1xAfTdUh4Fz1GIbreTMSXCfniN8L8=;
 b=grWalDuQ4+F5A1GId63kXhFh1PZT4TkDfrQKIAzLi29CkrphUA/7j6WnbfQq92JN
 yXQK3HAva3RQfxw6qUXdlgtFGdL7FXa3pmiRc896DDt2P7/f7L2ctuLWLqYzwKdSOKM
 NfRKKWrdAFljTOGOllyPKKR2tfAx7mBbKqwljXF4=
Message-ID: <0107017ce98a0475-51969def-7325-480d-9c69-e8c1f187a370-000000@eu-central-1.amazonses.com>
Date: Thu, 4 Nov 2021 06:01:48 +0000
From: Office <office@publicitateooh.ro>
To: "" <v9fs-developer@lists.sourceforge.net>
MIME-Version: 1.0
Feedback-ID: 1.eu-central-1.N8GLPrwMW4DEokEt/uX8R5Dj6lDs1dpqTZ0OFMrLAAo=:AmazonSES
X-SES-Outgoing: 2021.11.04-69.169.227.249
X-Spam-Score: 4.6 (++++)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  [Vizualizează asta în navigatorul tău.](https://ekogroup.com.ro?mailpoet_router&endpoint=track&action=click&data=WzE0MzAwNSwibmlxaWF6cXMzYjQ0MGNjZ2s0YzRrNDRzOG9jZ2NrYzQiLCI1NyIsImRkYjIwNGI5OGUwMiIs
    [...] 
 
 Content analysis details:   (4.6 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
                             blocked.  See
                             http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
                              for more information.
                             [URIs: publicitateooh.ro]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [69.169.227.249 listed in list.dnswl.org]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
                             mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [69.169.227.249 listed in wl.mailspike.net]
  0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  2.0 PYZOR_CHECK            Listed in Pyzor
                             (https://pyzor.readthedocs.io/en/latest/)
  0.0 T_KAM_HTML_FONT_INVALID Test for Invalidly Named or Formatted
                             Colors in HTML
  0.0 T_REMOTE_IMAGE         Message contains an external image
  2.5 URI_WP_HACKED_2        URI for compromised WordPress site, possible
                             malware
X-Headers-End: 1miVoy-0012lg-QE
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
aUxDSTFOeUlzSW1Sa1lqSXdOR0k1T0dVd01pSXNabUZzYzJWZCkKCltGYXJtZXJzTWFya2V0LVRv
cF0KCltQdWJsaWNpdGF0ZS1PT0gtTG9nby0xMDI0eDUxOV0oaHR0cHM6Ly9la29ncm91cC5jb20u
cm8/bWFpbHBvZXRfcm91dGVyJmVuZHBvaW50PXRyYWNrJmFjdGlvbj1jbGljayZkYXRhPVd6RTBN
ekF3TlN3aWJtbHhhV0Y2Y1hNellqUTBNR05qWjJzMFl6UnJORFJ6T0c5aloyTnJZelFpTENJMU55
SXNJalZpTm1NME1tTTNPVFV6TVNJc1ptRnNjMlZkKQoKRW1haWw6IFtvZmZpY2VAcHVibGljaXRh
dGVvb2gucm9dKGh0dHBzOi8vZWtvZ3JvdXAuY29tLnJvP21haWxwb2V0X3JvdXRlciZlbmRwb2lu
dD10cmFjayZhY3Rpb249Y2xpY2smZGF0YT1XekUwTXpBd05Td2libWx4YVdGNmNYTXpZalEwTUdO
aloyczBZelJyTkRSek9HOWpaMk5yWXpRaUxDSTFOeUlzSW1Ga09UVXdaREEzWXpBeFpDSXNabUZz
YzJWZCkKc2FsZXNAcHVibGljaXRhdGVvb2gucm8KClRlbDogWys0IDA3NTIgNzYwIDQyN10oaHR0
cHM6Ly9la29ncm91cC5jb20ucm8/bWFpbHBvZXRfcm91dGVyJmVuZHBvaW50PXRyYWNrJmFjdGlv
bj1jbGljayZkYXRhPVd6RTBNekF3TlN3aWJtbHhhV0Y2Y1hNellqUTBNR05qWjJzMFl6UnJORFJ6
T0c5aloyTnJZelFpTENJMU55SXNJbVJoWldZek5EWXdZVGs1WWlJc1ptRnNjMlZkKQoKWysgNTAw
MCBzdGVhZ3VyaSBpbiBCdWN1cmVzdGldKGh0dHBzOi8vZWtvZ3JvdXAuY29tLnJvP21haWxwb2V0
X3JvdXRlciZlbmRwb2ludD10cmFjayZhY3Rpb249Y2xpY2smZGF0YT1XekUwTXpBd05Td2libWx4
YVdGNmNYTXpZalEwTUdOaloyczBZelJyTkRSek9HOWpaMk5yWXpRaUxDSTFOeUlzSWpZM09UUTJN
VGRoTVRNNVpDSXNabUZzYzJWZCkKW1N0ZWFndXJpIGdlb3JnZSBlbmVzY3VdKGh0dHBzOi8vZWtv
Z3JvdXAuY29tLnJvP21haWxwb2V0X3JvdXRlciZlbmRwb2ludD10cmFjayZhY3Rpb249Y2xpY2sm
ZGF0YT1XekUwTXpBd05Td2libWx4YVdGNmNYTXpZalEwTUdOaloyczBZelJyTkRSek9HOWpaMk5y
WXpRaUxDSTFOeUlzSWpWaU5tTTBNbU0zT1RVek1TSXNabUZzYzJWZCkKW0V4ZW1wbGUgZ3JhZmlj
YV0oaHR0cHM6Ly9la29ncm91cC5jb20ucm8/bWFpbHBvZXRfcm91dGVyJmVuZHBvaW50PXRyYWNr
JmFjdGlvbj1jbGljayZkYXRhPVd6RTBNekF3TlN3aWJtbHhhV0Y2Y1hNellqUTBNR05qWjJzMFl6
UnJORFJ6T0c5aloyTnJZelFpTENJMU55SXNJalZpTm1NME1tTTNPVFV6TVNJc1ptRnNjMlZkKQoK
W1ZlemkgYWljaSBtb2RlbCBkZSByZWNsYW1hIHBlIHN0YWxwaV0oaHR0cHM6Ly9la29ncm91cC5j
b20ucm8/bWFpbHBvZXRfcm91dGVyJmVuZHBvaW50PXRyYWNrJmFjdGlvbj1jbGljayZkYXRhPVd6
RTBNekF3TlN3aWJtbHhhV0Y2Y1hNellqUTBNR05qWjJzMFl6UnJORFJ6T0c5aloyTnJZelFpTENJ
MU55SXNJalkzT1RRMk1UZGhNVE01WkNJc1ptRnNjMlZkKQpbU3RlYWd1cmkgaW1vYmlsaWFyZV0o
aHR0cHM6Ly9la29ncm91cC5jb20ucm8/bWFpbHBvZXRfcm91dGVyJmVuZHBvaW50PXRyYWNrJmFj
dGlvbj1jbGljayZkYXRhPVd6RTBNekF3TlN3aWJtbHhhV0Y2Y1hNellqUTBNR05qWjJzMFl6UnJO
RFJ6T0c5aloyTnJZelFpTENJMU55SXNJalZpTm1NME1tTTNPVFV6TVNJc1ptRnNjMlZkKQpbQm9y
ZGluZyBwYXNzIHdpenpdKGh0dHBzOi8vZWtvZ3JvdXAuY29tLnJvP21haWxwb2V0X3JvdXRlciZl
bmRwb2ludD10cmFjayZhY3Rpb249Y2xpY2smZGF0YT1XekUwTXpBd05Td2libWx4YVdGNmNYTXpZ
alEwTUdOaloyczBZelJyTkRSek9HOWpaMk5yWXpRaUxDSTFOeUlzSWpWaU5tTTBNbU0zT1RVek1T
SXNabUZzYzJWZCkKW0FwYXJhdGUgY2FmZWFdKGh0dHBzOi8vZWtvZ3JvdXAuY29tLnJvP21haWxw
b2V0X3JvdXRlciZlbmRwb2ludD10cmFjayZhY3Rpb249Y2xpY2smZGF0YT1XekUwTXpBd05Td2li
bWx4YVdGNmNYTXpZalEwTUdOaloyczBZelJyTkRSek9HOWpaMk5yWXpRaUxDSTFOeUlzSWpWaU5t
TTBNbU0zT1RVek1TSXNabUZzYzJWZCkKCkVLTyBUUkFERSBCVVNJTkVTUwpfX19fX19fClN0cmVl
dCBFbWlsIFBhbmdyYXR0aSwgbm8uMTAgKzQgMDc1MiA3NjAgNDI3Cm9mZmljZUBwdWJsaWNpdGF0
ZW9vaC5ybwpzYWxlc0BwdWJsaWNpdGF0ZW9vaC5ybwoKW2ZhY2Vib29rXShodHRwczovL2Vrb2dy
b3VwLmNvbS5ybz9tYWlscG9ldF9yb3V0ZXImZW5kcG9pbnQ9dHJhY2smYWN0aW9uPWNsaWNrJmRh
dGE9V3pFME16QXdOU3dpYm1seGFXRjZjWE16WWpRME1HTmpaMnMwWXpSck5EUnpPRzlqWjJOcll6
UWlMQ0kxTnlJc0lqazFaV1JsTW1KbVpEVTFNQ0lzWm1Gc2MyVmQpIFtpbnN0YWdyYW1dKGh0dHBz
Oi8vZWtvZ3JvdXAuY29tLnJvP21haWxwb2V0X3JvdXRlciZlbmRwb2ludD10cmFjayZhY3Rpb249
Y2xpY2smZGF0YT1XekUwTXpBd05Td2libWx4YVdGNmNYTXpZalEwTUdOaloyczBZelJyTkRSek9H
OWpaMk5yWXpRaUxDSTFOeUlzSWpsalptSTJPREprTUdJd1lTSXNabUZzYzJWZCkKW0RlemFib25h
cmVdKGh0dHBzOi8vZWtvZ3JvdXAuY29tLnJvP21haWxwb2V0X3JvdXRlciZlbmRwb2ludD10cmFj
ayZhY3Rpb249Y2xpY2smZGF0YT1XekUwTXpBd05Td2libWx4YVdGNmNYTXpZalEwTUdOaloyczBZ
elJyTkRSek9HOWpaMk5yWXpRaUxDSTFOeUlzSWpnNE5UazVPRE15WmpZeU1pSXNabUZzYzJWZCkg
fCBbQWRtaW5pc3RyZWF6xIMtyJtpIGFib25hbWVudHVsXShodHRwczovL2Vrb2dyb3VwLmNvbS5y
bz9tYWlscG9ldF9yb3V0ZXImZW5kcG9pbnQ9dHJhY2smYWN0aW9uPWNsaWNrJmRhdGE9V3pFME16
QXdOU3dpYm1seGFXRjZjWE16WWpRME1HTmpaMnMwWXpSck5EUnpPRzlqWjJOcll6UWlMQ0kxTnlJ
c0lqTTBNR1V5TnpnMlpXVmpaU0lzWm1Gc2MyVmQpCltvZmZpY2VAcHVibGljaXRhdGVvb2gucm9d
KGh0dHBzOi8vZWtvZ3JvdXAuY29tLnJvP21haWxwb2V0X3JvdXRlciZlbmRwb2ludD10cmFjayZh
Y3Rpb249Y2xpY2smZGF0YT1XekUwTXpBd05Td2libWx4YVdGNmNYTXpZalEwTUdOaloyczBZelJy
TkRSek9HOWpaMk5yWXpRaUxDSTFOeUlzSW1Ga09UVXdaREEzWXpBeFpDSXNabUZzYzJWZCkKX19f
X19fXwoKQ29weXJpZ2h0IMKpIDIwMjEgd3d3LnB1YmxpY2l0YXRlb29oLnJvLCBBbGwgcmlnaHRz
IHJlc2VydmVkLgoKW0Zhcm1lcnNNYXJrZXQtQm90dG9tXQoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KVjlmcy1kZXZlbG9wZXIgbWFpbGluZyBsaXN0ClY5
ZnMtZGV2ZWxvcGVyQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZv
cmdlLm5ldC9saXN0cy9saXN0aW5mby92OWZzLWRldmVsb3Blcgo=
