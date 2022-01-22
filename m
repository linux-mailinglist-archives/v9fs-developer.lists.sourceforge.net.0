Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A0642496AC1
	for <lists+v9fs-developer@lfdr.de>; Sat, 22 Jan 2022 08:54:05 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1nBBDn-0004Ny-68; Sat, 22 Jan 2022 07:54:02 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2) (envelope-from
 <0107017e80c6fee0-ca203598-74de-40aa-a84e-ab4a768113b0-000000@eu-central-1.amazonses.com>)
 id 1nBBDl-0004Nh-Ft
 for v9fs-developer@lists.sourceforge.net; Sat, 22 Jan 2022 07:54:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=List-Unsubscribe:Content-Type:MIME-Version:To:
 Reply-To:From:Subject:Date:Message-ID:Sender:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=/KCTMCgRDnG/T+ncU1IxrZkGap4V890/Bs+c5GNYmWc=; b=kXiWmk1oZP5+VKxL4RNwc2UT20
 SawK9IYV13KwO7cP5l+gYjDakb+Cwt/YZCdz0HqIrhNtU3Ibhd7ImBuXPG/MPn256x1m7UVMqOaho
 6cMc2CAMwcsjLECtT4qjht+pPJ8NbYkmsUvwU2w7HtpoSDY0ARxqKR+mKn+ZQai+P7sA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=List-Unsubscribe:Content-Type:MIME-Version:To:Reply-To:From:Subject:Date:
 Message-ID:Sender:Cc:Content-Transfer-Encoding:Content-ID:Content-Description
 :Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Subscribe:List-Post:List-Owner:
 List-Archive; bh=/KCTMCgRDnG/T+ncU1IxrZkGap4V890/Bs+c5GNYmWc=; b=QF7A7T1wFkUC
 UWyZGEnW5zGylza+OzEFV0j+9xQHDUFeEkHXqRGa6drLqqzzD/bJ8SEInF8/RZSG5xvS9Zz4wf8R4
 W1FiLsM/LQP61H4UVjFm3/qEt6kpEWLe+1lomFMhmhFurDGu6LcMpqveds05mi6PSkQpgF7jwfqI2
 zIjQs=;
Received: from b228-111.smtp-out.eu-central-1.amazonses.com ([69.169.228.111])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-SHA256:128) (Exim 4.92.3)
 id 1nBBDi-0001KJ-Q2
 for v9fs-developer@lists.sourceforge.net; Sat, 22 Jan 2022 07:54:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
 s=lkjdrgmpuv6xpbrfc76qdyxnr4o42p2r; d=eko-print.ro; t=1642838032;
 h=Sender:Message-ID:Date:Subject:From:Reply-To:To:MIME-Version:Content-Type:List-Unsubscribe;
 bh=ctGhoMW/d/S/7AvJh0x5X9CTYzP3rLn591P/MLtuh+s=;
 b=uIx7rIdLhDsqWU+ifsP2uifnJsL/vP6Uf6Tz9ADB1ZpMDAW6l6GTotyUmcAY9sfE
 ObiCQnt62olgW1/VvJnw9AleSauTYI8p+QajpiB2rU56cu74ZJZozWstpUxriakYwrW
 QBLAYjbsacfIpbJyPyrjLC4AhNbmKoX7zQ+wOcLE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
 s=54ecsf3zk7z4mwxwwox7z7bg6e5gwjsz; d=amazonses.com; t=1642838032;
 h=Sender:Message-ID:Date:Subject:From:Reply-To:To:MIME-Version:Content-Type:List-Unsubscribe:Feedback-ID;
 bh=ctGhoMW/d/S/7AvJh0x5X9CTYzP3rLn591P/MLtuh+s=;
 b=fZFcVo8mao6l9JEbIOuRdEQ/iwcEue8o3C5UrmmxgXDYHRkndD7o+1o+1tj3JBjm
 p5iVf4BBgZ/LGsfhmtnHQmouDlcxTO4v0GQ2ueDsJcjM/d2HyqbUVtIJvCSLpFLhZoZ
 drXZb38j9AnnFGHmbJrgeJiM+Y4bEUWR8YByAQP4=
Message-ID: <0107017e80c6fee0-ca203598-74de-40aa-a84e-ab4a768113b0-000000@eu-central-1.amazonses.com>
Date: Sat, 22 Jan 2022 07:53:52 +0000
From: Office <office@eko-print.ro>
To: "" <v9fs-developer@lists.sourceforge.net>
MIME-Version: 1.0
Feedback-ID: 1.eu-central-1.N8GLPrwMW4DEokEt/uX8R5Dj6lDs1dpqTZ0OFMrLAAo=:AmazonSES
X-SES-Outgoing: 2022.01.22-69.169.228.111
X-Spam-Score: 4.3 (++++)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  [Vizualizează asta în navigatorul tău.](https://ekogroup.com.ro?mailpoet_router&endpoint=track&action=click&data=WzE0MzAwNSwibmlxaWF6cXMzYjQ0MGNjZ2s0YzRrNDRzOG9jZ2NrYzQiLCI5MSIsIjBkYmE5YmRhMGJlYiIs
    [...] 
 
 Content analysis details:   (4.3 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [69.169.228.111 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [69.169.228.111 listed in wl.mailspike.net]
  1.7 URIBL_BLACK            Contains an URL listed in the URIBL blacklist
                             [URIs: ekogroup.com.ro]
  0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
                             mail domains are different
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.0 T_KAM_HTML_FONT_INVALID Test for Invalidly Named or Formatted
                             Colors in HTML
  0.0 T_REMOTE_IMAGE         Message contains an external image
  2.5 URI_WP_HACKED_2        URI for compromised WordPress site, possible
                             malware
X-Headers-End: 1nBBDi-0001KJ-Q2
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] Printuri promotionale, la alt nivel!
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
Reply-To: Office <office@eko-print.ro>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

W1ZpenVhbGl6ZWF6xIMgYXN0YSDDrm4gbmF2aWdhdG9ydWwgdMSDdS5dKGh0dHBzOi8vZWtvZ3Jv
dXAuY29tLnJvP21haWxwb2V0X3JvdXRlciZlbmRwb2ludD10cmFjayZhY3Rpb249Y2xpY2smZGF0
YT1XekUwTXpBd05Td2libWx4YVdGNmNYTXpZalEwTUdOaloyczBZelJyTkRSek9HOWpaMk5yWXpR
aUxDSTVNU0lzSWpCa1ltRTVZbVJoTUdKbFlpSXNabUZzYzJWZCkKCltGYXJtZXJzTWFya2V0LVRv
cF0KCltwcmludC0xLXJlbW92ZWJnLXByZXZpZXddKGh0dHBzOi8vZWtvZ3JvdXAuY29tLnJvP21h
aWxwb2V0X3JvdXRlciZlbmRwb2ludD10cmFjayZhY3Rpb249Y2xpY2smZGF0YT1XekUwTXpBd05T
d2libWx4YVdGNmNYTXpZalEwTUdOaloyczBZelJyTkRSek9HOWpaMk5yWXpRaUxDSTVNU0lzSWpN
NE56RmtPREkxWVRObFl5SXNabUZzYzJWZCkKClRPVCBDRSBTRSBQT0FURSBQUklOVEEKClBFTlRS
VSBDT01QQU5JQSBUQQoKX19fX19fCgpDZXJlIG8gb2ZlcnRhIHNpIGNvbnZpbmdlLXRlIQoKW0Nh
cHR1cmHMhiBkZSBlY3JhbiBkaW4gMjAyMi0wMS0yMSBsYSAxMC4wNS4yMV0oaHR0cHM6Ly9la29n
cm91cC5jb20ucm8/bWFpbHBvZXRfcm91dGVyJmVuZHBvaW50PXRyYWNrJmFjdGlvbj1jbGljayZk
YXRhPVd6RTBNekF3TlN3aWJtbHhhV0Y2Y1hNellqUTBNR05qWjJzMFl6UnJORFJ6T0c5aloyTnJZ
elFpTENJNU1TSXNJak00TnpGa09ESTFZVE5sWXlJc1ptRnNjMlZkKQoKb2ZmaWNlQGVrby1wcmlu
dC5ybwp3d3cuZWtvLXByaW50LnJvCgpb4p6hXShodHRwczovL2Vrb2dyb3VwLmNvbS5ybz9tYWls
cG9ldF9yb3V0ZXImZW5kcG9pbnQ9dHJhY2smYWN0aW9uPWNsaWNrJmRhdGE9V3pFME16QXdOU3dp
Ym1seGFXRjZjWE16WWpRME1HTmpaMnMwWXpSck5EUnpPRzlqWjJOcll6UWlMQ0k1TVNJc0ltVXdN
ekprTnpRMU56TXlOQ0lzWm1Gc2MyVmQpIFByaW50dXJpIG91dGRvb3Igc2kgaW5kb29yLiBb4p6h
XShodHRwczovL2Vrb2dyb3VwLmNvbS5ybz9tYWlscG9ldF9yb3V0ZXImZW5kcG9pbnQ9dHJhY2sm
YWN0aW9uPWNsaWNrJmRhdGE9V3pFME16QXdOU3dpYm1seGFXRjZjWE16WWpRME1HTmpaMnMwWXpS
ck5EUnpPRzlqWjJOcll6UWlMQ0k1TVNJc0ltVXdNekprTnpRMU56TXlOQ0lzWm1Gc2MyVmQpIFNp
Z25hbGlzdGljYQpb4p6hXShodHRwczovL2Vrb2dyb3VwLmNvbS5ybz9tYWlscG9ldF9yb3V0ZXIm
ZW5kcG9pbnQ9dHJhY2smYWN0aW9uPWNsaWNrJmRhdGE9V3pFME16QXdOU3dpYm1seGFXRjZjWE16
WWpRME1HTmpaMnMwWXpSck5EUnpPRzlqWjJOcll6UWlMQ0k1TVNJc0ltVXdNekprTnpRMU56TXlO
Q0lzWm1Gc2MyVmQpIFBhbm91cmkgcHVibGljaXRhcmUgW+KeoV0oaHR0cHM6Ly9la29ncm91cC5j
b20ucm8/bWFpbHBvZXRfcm91dGVyJmVuZHBvaW50PXRyYWNrJmFjdGlvbj1jbGljayZkYXRhPVd6
RTBNekF3TlN3aWJtbHhhV0Y2Y1hNellqUTBNR05qWjJzMFl6UnJORFJ6T0c5aloyTnJZelFpTENJ
NU1TSXNJbVV3TXpKa056UTFOek15TkNJc1ptRnNjMlZkKSBFY3JhbmUgdmlkZW8gUkdCClvinqFd
KGh0dHBzOi8vZWtvZ3JvdXAuY29tLnJvP21haWxwb2V0X3JvdXRlciZlbmRwb2ludD10cmFjayZh
Y3Rpb249Y2xpY2smZGF0YT1XekUwTXpBd05Td2libWx4YVdGNmNYTXpZalEwTUdOaloyczBZelJy
TkRSek9HOWpaMk5yWXpRaUxDSTVNU0lzSW1Vd016SmtOelExTnpNeU5DSXNabUZzYzJWZCkgU2lz
dGVtZSBhZmlzYWog4p6haHR0cHM6Ly93d3cuZW1vamlhbGwuY29tL3JvL2Vtb2ppLyVFMiU5QyU5
NCVFRiVCOCU4RiBEZWNvcmFyaSBleHRlcmlvYXJlIHNpIGludGVyaW9hcmUKW+KeoV0oaHR0cHM6
Ly9la29ncm91cC5jb20ucm8/bWFpbHBvZXRfcm91dGVyJmVuZHBvaW50PXRyYWNrJmFjdGlvbj1j
bGljayZkYXRhPVd6RTBNekF3TlN3aWJtbHhhV0Y2Y1hNellqUTBNR05qWjJzMFl6UnJORFJ6T0c5
aloyTnJZelFpTENJNU1TSXNJbVV3TXpKa056UTFOek15TkNJc1ptRnNjMlZkKSBTaXN0ZW1lIHJl
Y2xhbWEg4p6haHR0cHM6Ly93d3cuZW1vamlhbGwuY29tL3JvL2Vtb2ppLyVFMiU5QyU5NCVFRiVC
OCU4RiBFeHBveml0b2FyZSBzaSBtb2JpbGllciBwdWJsaWNpdGFyClvinqFdKGh0dHBzOi8vZWtv
Z3JvdXAuY29tLnJvP21haWxwb2V0X3JvdXRlciZlbmRwb2ludD10cmFjayZhY3Rpb249Y2xpY2sm
ZGF0YT1XekUwTXpBd05Td2libWx4YVdGNmNYTXpZalEwTUdOaloyczBZelJyTkRSek9HOWpaMk5y
WXpRaUxDSTVNU0lzSW1Vd016SmtOelExTnpNeU5DSXNabUZzYzJWZCkgUmVjbGFtZSBsdW1pbm9h
c2Ug4p6hIGh0dHBzOi8vd3d3LmVtb2ppYWxsLmNvbS9yby9lbW9qaS8lRTIlOUMlOTQlRUYlQjgl
OEZTdGFuZHVyaSBleHBveml0aW9uYWxlCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KCkF2YW50YWplbGUgZWtvLXByaW50LnJvCgpb4p6hXShodHRw
czovL2Vrb2dyb3VwLmNvbS5ybz9tYWlscG9ldF9yb3V0ZXImZW5kcG9pbnQ9dHJhY2smYWN0aW9u
PWNsaWNrJmRhdGE9V3pFME16QXdOU3dpYm1seGFXRjZjWE16WWpRME1HTmpaMnMwWXpSck5EUnpP
RzlqWjJOcll6UWlMQ0k1TVNJc0ltVXdNekprTnpRMU56TXlOQ0lzWm1Gc2MyVmQpUHJpbiBwdWJs
aWNpdGF0ZSBpdGkgYXBlcmkgYWZhY2VyZWEhIFvinqFdKGh0dHBzOi8vZWtvZ3JvdXAuY29tLnJv
P21haWxwb2V0X3JvdXRlciZlbmRwb2ludD10cmFjayZhY3Rpb249Y2xpY2smZGF0YT1XekUwTXpB
d05Td2libWx4YVdGNmNYTXpZalEwTUdOaloyczBZelJyTkRSek9HOWpaMk5yWXpRaUxDSTVNU0lz
SW1Vd016SmtOelExTnpNeU5DSXNabUZzYzJWZCkgRGlmZXJlbnRpZXJlIGZhdGEgZGUgY29uY3Vy
ZW50YQpb4p6hXShodHRwczovL2Vrb2dyb3VwLmNvbS5ybz9tYWlscG9ldF9yb3V0ZXImZW5kcG9p
bnQ9dHJhY2smYWN0aW9uPWNsaWNrJmRhdGE9V3pFME16QXdOU3dpYm1seGFXRjZjWE16WWpRME1H
TmpaMnMwWXpSck5EUnpPRzlqWjJOcll6UWlMQ0k1TVNJc0ltVXdNekprTnpRMU56TXlOQ0lzWm1G
c2MyVmQpRGVtb25zdHJlemkgY2EgZXZvbHVlemkuIFvinqFdKGh0dHBzOi8vZWtvZ3JvdXAuY29t
LnJvP21haWxwb2V0X3JvdXRlciZlbmRwb2ludD10cmFjayZhY3Rpb249Y2xpY2smZGF0YT1XekUw
TXpBd05Td2libWx4YVdGNmNYTXpZalEwTUdOaloyczBZelJyTkRSek9HOWpaMk5yWXpRaUxDSTVN
U0lzSW1Vd016SmtOelExTnpNeU5DSXNabUZzYzJWZClQb3ppdGlvbmFyZWEgaW4gbWludGVhIGNs
aWVudGlsb3IKW+KeoV0oaHR0cHM6Ly9la29ncm91cC5jb20ucm8/bWFpbHBvZXRfcm91dGVyJmVu
ZHBvaW50PXRyYWNrJmFjdGlvbj1jbGljayZkYXRhPVd6RTBNekF3TlN3aWJtbHhhV0Y2Y1hNellq
UTBNR05qWjJzMFl6UnJORFJ6T0c5aloyTnJZelFpTENJNU1TSXNJbVV3TXpKa056UTFOek15TkNJ
c1ptRnNjMlZkKVB1YmxpY2l0YXRlYSBlc3RlIG8gcHJvbWlzaXVuZSBmYXRhIGRlIGNsaWVudGkh
IFvinqFdKGh0dHBzOi8vZWtvZ3JvdXAuY29tLnJvP21haWxwb2V0X3JvdXRlciZlbmRwb2ludD10
cmFjayZhY3Rpb249Y2xpY2smZGF0YT1XekUwTXpBd05Td2libWx4YVdGNmNYTXpZalEwTUdOaloy
czBZelJyTkRSek9HOWpaMk5yWXpRaUxDSTVNU0lzSW1Vd016SmtOelExTnpNeU5DSXNabUZzYzJW
ZClFc3RpIHByZXplbnQgYWNvbG8gdW5kZSBzdW50IGNsaWVudGlpClvinqFdKGh0dHBzOi8vZWtv
Z3JvdXAuY29tLnJvP21haWxwb2V0X3JvdXRlciZlbmRwb2ludD10cmFjayZhY3Rpb249Y2xpY2sm
ZGF0YT1XekUwTXpBd05Td2libWx4YVdGNmNYTXpZalEwTUdOaloyczBZelJyTkRSek9HOWpaMk5y
WXpRaUxDSTVNU0lzSW1Vd016SmtOelExTnpNeU5DSXNabUZzYzJWZClQb3RpIGNyZWVhIG1haSB1
c29yIHRyZW5kdXJpIFvinqFdKGh0dHBzOi8vZWtvZ3JvdXAuY29tLnJvP21haWxwb2V0X3JvdXRl
ciZlbmRwb2ludD10cmFjayZhY3Rpb249Y2xpY2smZGF0YT1XekUwTXpBd05Td2libWx4YVdGNmNY
TXpZalEwTUdOaloyczBZelJyTkRSek9HOWpaMk5yWXpRaUxDSTVNU0lzSW1Vd016SmtOelExTnpN
eU5DSXNabUZzYzJWZClSZWFkdWNpIGluIGF0ZW50aWUgbnVtZWxlIHRhdQpb4p6hXShodHRwczov
L2Vrb2dyb3VwLmNvbS5ybz9tYWlscG9ldF9yb3V0ZXImZW5kcG9pbnQ9dHJhY2smYWN0aW9uPWNs
aWNrJmRhdGE9V3pFME16QXdOU3dpYm1seGFXRjZjWE16WWpRME1HTmpaMnMwWXpSck5EUnpPRzlq
WjJOcll6UWlMQ0k1TVNJc0ltVXdNekprTnpRMU56TXlOQ0lzWm1Gc2MyVmQpQmVuZWZpY2llemkg
ZGUgb3BvcnR1bml0YXRpIFvinqFdKGh0dHBzOi8vZWtvZ3JvdXAuY29tLnJvP21haWxwb2V0X3Jv
dXRlciZlbmRwb2ludD10cmFjayZhY3Rpb249Y2xpY2smZGF0YT1XekUwTXpBd05Td2libWx4YVdG
NmNYTXpZalEwTUdOaloyczBZelJyTkRSek9HOWpaMk5yWXpRaUxDSTVNU0lzSW1Vd016SmtOelEx
TnpNeU5DSXNabUZzYzJWZClBdHJhZ2kgYXRlbnRpYSBhc3VwcmEgdGEKW+KeoV0oaHR0cHM6Ly9l
a29ncm91cC5jb20ucm8/bWFpbHBvZXRfcm91dGVyJmVuZHBvaW50PXRyYWNrJmFjdGlvbj1jbGlj
ayZkYXRhPVd6RTBNekF3TlN3aWJtbHhhV0Y2Y1hNellqUTBNR05qWjJzMFl6UnJORFJ6T0c5aloy
TnJZelFpTENJNU1TSXNJbVV3TXpKa056UTFOek15TkNJc1ptRnNjMlZkKUltcHVpIHZpemliaWxp
dGF0ZSBwZSBwaWF0YSBb4p6hXShodHRwczovL2Vrb2dyb3VwLmNvbS5ybz9tYWlscG9ldF9yb3V0
ZXImZW5kcG9pbnQ9dHJhY2smYWN0aW9uPWNsaWNrJmRhdGE9V3pFME16QXdOU3dpYm1seGFXRjZj
WE16WWpRME1HTmpaMnMwWXpSck5EUnpPRzlqWjJOcll6UWlMQ0k1TVNJc0ltVXdNekprTnpRMU56
TXlOQ0lzWm1Gc2MyVmQpUHVibGljdWwgdGUgbG9jYWxpemVhemEgbWFpIHVzb3IKW+KeoV0oaHR0
cHM6Ly9la29ncm91cC5jb20ucm8/bWFpbHBvZXRfcm91dGVyJmVuZHBvaW50PXRyYWNrJmFjdGlv
bj1jbGljayZkYXRhPVd6RTBNekF3TlN3aWJtbHhhV0Y2Y1hNellqUTBNR05qWjJzMFl6UnJORFJ6
T0c5aloyTnJZelFpTENJNU1TSXNJbVV3TXpKa056UTFOek15TkNJc1ptRnNjMlZkKVZpemliaWxp
dGF0ZWEgY3JlZWF6YSBvIGlkZW50aXRhdGUgW+KeoV0oaHR0cHM6Ly9la29ncm91cC5jb20ucm8/
bWFpbHBvZXRfcm91dGVyJmVuZHBvaW50PXRyYWNrJmFjdGlvbj1jbGljayZkYXRhPVd6RTBNekF3
TlN3aWJtbHhhV0Y2Y1hNellqUTBNR05qWjJzMFl6UnJORFJ6T0c5aloyTnJZelFpTENJNU1TSXNJ
bVV3TXpKa056UTFOek15TkNJc1ptRnNjMlZkKUluZm9ybWFtIHB1YmxpY3VsClvinqFdKGh0dHBz
Oi8vZWtvZ3JvdXAuY29tLnJvP21haWxwb2V0X3JvdXRlciZlbmRwb2ludD10cmFjayZhY3Rpb249
Y2xpY2smZGF0YT1XekUwTXpBd05Td2libWx4YVdGNmNYTXpZalEwTUdOaloyczBZelJyTkRSek9H
OWpaMk5yWXpRaUxDSTVNU0lzSW1Vd016SmtOelExTnpNeU5DSXNabUZzYzJWZClFc3RlIG8gYWN0
aXZpdGF0ZSBkZSB0aXB1bCBXSU4tV0lOIFvinqFdKGh0dHBzOi8vZWtvZ3JvdXAuY29tLnJvP21h
aWxwb2V0X3JvdXRlciZlbmRwb2ludD10cmFjayZhY3Rpb249Y2xpY2smZGF0YT1XekUwTXpBd05T
d2libWx4YVdGNmNYTXpZalEwTUdOaloyczBZelJyTkRSek9HOWpaMk5yWXpRaUxDSTVNU0lzSW1V
d016SmtOelExTnpNeU5DSXNabUZzYzJWZClDcmVzdGVtIHZhbnphcmlsZQpb4p6hXShodHRwczov
L2Vrb2dyb3VwLmNvbS5ybz9tYWlscG9ldF9yb3V0ZXImZW5kcG9pbnQ9dHJhY2smYWN0aW9uPWNs
aWNrJmRhdGE9V3pFME16QXdOU3dpYm1seGFXRjZjWE16WWpRME1HTmpaMnMwWXpSck5EUnpPRzlq
WjJOcll6UWlMQ0k1TVNJc0ltVXdNekprTnpRMU56TXlOQ0lzWm1Gc2MyVmQpRmlkZWxpemFyZSBm
YXRhIGRlIHB1YmxpY3VsIGNvbnN1bWF0b3IgW+KeoV0oaHR0cHM6Ly9la29ncm91cC5jb20ucm8/
bWFpbHBvZXRfcm91dGVyJmVuZHBvaW50PXRyYWNrJmFjdGlvbj1jbGljayZkYXRhPVd6RTBNekF3
TlN3aWJtbHhhV0Y2Y1hNellqUTBNR05qWjJzMFl6UnJORFJ6T0c5aloyTnJZelFpTENJNU1TSXNJ
bVV3TXpKa056UTFOek15TkNJc1ptRnNjMlZkKUltcG9ydGFtIG9iaWNlaXVyaQpb4p6hXShodHRw
czovL2Vrb2dyb3VwLmNvbS5ybz9tYWlscG9ldF9yb3V0ZXImZW5kcG9pbnQ9dHJhY2smYWN0aW9u
PWNsaWNrJmRhdGE9V3pFME16QXdOU3dpYm1seGFXRjZjWE16WWpRME1HTmpaMnMwWXpSck5EUnpP
RzlqWjJOcll6UWlMQ0k1TVNJc0ltVXdNekprTnpRMU56TXlOQ0lzWm1Gc2MyVmQpTG9pYWxpemV6
aSBjbGllbnRpaSBwZSBwcm9kdXNlbGUgbm9pISBb4p6hXShodHRwczovL2Vrb2dyb3VwLmNvbS5y
bz9tYWlscG9ldF9yb3V0ZXImZW5kcG9pbnQ9dHJhY2smYWN0aW9uPWNsaWNrJmRhdGE9V3pFME16
QXdOU3dpYm1seGFXRjZjWE16WWpRME1HTmpaMnMwWXpSck5EUnpPRzlqWjJOcll6UWlMQ0k1TVNJ
c0ltVXdNekprTnpRMU56TXlOQ0lzWm1Gc2MyVmQpRXN0ZSBmb2FydGUgbGEgbW9kYSBzYSB0ZSBz
dGllIGx1bWVhIQpb4p6hXShodHRwczovL2Vrb2dyb3VwLmNvbS5ybz9tYWlscG9ldF9yb3V0ZXIm
ZW5kcG9pbnQ9dHJhY2smYWN0aW9uPWNsaWNrJmRhdGE9V3pFME16QXdOU3dpYm1seGFXRjZjWE16
WWpRME1HTmpaMnMwWXpSck5EUnpPRzlqWjJOcll6UWlMQ0k1TVNJc0ltVXdNekprTnpRMU56TXlO
Q0lzWm1Gc2MyVmQpVXN1cmV6aSB2aWF0YSBhbmdhamF0aWxvciBzaSBhIGNvbnN1bWF0b3JpbG9y
LiBb4p6hXShodHRwczovL2Vrb2dyb3VwLmNvbS5ybz9tYWlscG9ldF9yb3V0ZXImZW5kcG9pbnQ9
dHJhY2smYWN0aW9uPWNsaWNrJmRhdGE9V3pFME16QXdOU3dpYm1seGFXRjZjWE16WWpRME1HTmpa
MnMwWXpSck5EUnpPRzlqWjJOcll6UWlMQ0k1TVNJc0ltVXdNekprTnpRMU56TXlOQ0lzWm1Gc2My
VmQpSW5mb3JtYXRpYSBzdXBsaW1lbnRhcmEgdmluZGUhClvinqFdKGh0dHBzOi8vZWtvZ3JvdXAu
Y29tLnJvP21haWxwb2V0X3JvdXRlciZlbmRwb2ludD10cmFjayZhY3Rpb249Y2xpY2smZGF0YT1X
ekUwTXpBd05Td2libWx4YVdGNmNYTXpZalEwTUdOaloyczBZelJyTkRSek9HOWpaMk5yWXpRaUxD
STVNU0lzSW1Vd016SmtOelExTnpNeU5DSXNabUZzYzJWZClTdGF0dXR1bCBzb2NpYWwgY3Jlc3Rl
LiAgW+KeoV0oaHR0cHM6Ly9la29ncm91cC5jb20ucm8/bWFpbHBvZXRfcm91dGVyJmVuZHBvaW50
PXRyYWNrJmFjdGlvbj1jbGljayZkYXRhPVd6RTBNekF3TlN3aWJtbHhhV0Y2Y1hNellqUTBNR05q
WjJzMFl6UnJORFJ6T0c5aloyTnJZelFpTENJNU1TSXNJbVV3TXpKa056UTFOek15TkNJc1ptRnNj
MlZkKVRlaG5vbG9naWEgc2kgR2FkZ2V0dXJpbGUgbmUgaW5ncm9hcGEuClvinqFdKGh0dHBzOi8v
ZWtvZ3JvdXAuY29tLnJvP21haWxwb2V0X3JvdXRlciZlbmRwb2ludD10cmFjayZhY3Rpb249Y2xp
Y2smZGF0YT1XekUwTXpBd05Td2libWx4YVdGNmNYTXpZalEwTUdOaloyczBZelJyTkRSek9HOWpa
Mk5yWXpRaUxDSTVNU0lzSW1Vd016SmtOelExTnpNeU5DSXNabUZzYzJWZClHdXJhIEx1bWlpIGVz
dGUgZm9hcnRlIGltcG9ydGFudGEhIFvinqFdKGh0dHBzOi8vZWtvZ3JvdXAuY29tLnJvP21haWxw
b2V0X3JvdXRlciZlbmRwb2ludD10cmFjayZhY3Rpb249Y2xpY2smZGF0YT1XekUwTXpBd05Td2li
bWx4YVdGNmNYTXpZalEwTUdOaloyczBZelJyTkRSek9HOWpaMk5yWXpRaUxDSTVNU0lzSW1Vd016
SmtOelExTnpNeU5DSXNabUZzYzJWZClDcmVzdGUgQ3VyaW96aXRhdGVhIHB1YmxpY3VsdWkhClB1
YmxpY2l0YXRlYSBlc3RlIHNpIHZhIGZpIHN1ZmxldHVsIGNvbWVydHVsdWkKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwoKW3ByaW50LTEtcmVtb3Zl
YmctcHJldmlld10oaHR0cHM6Ly9la29ncm91cC5jb20ucm8/bWFpbHBvZXRfcm91dGVyJmVuZHBv
aW50PXRyYWNrJmFjdGlvbj1jbGljayZkYXRhPVd6RTBNekF3TlN3aWJtbHhhV0Y2Y1hNellqUTBN
R05qWjJzMFl6UnJORFJ6T0c5aloyTnJZelFpTENJNU1TSXNJak00TnpGa09ESTFZVE5sWXlJc1pt
RnNjMlZkKQoKW2ZhY2Vib29rXShodHRwczovL2Vrb2dyb3VwLmNvbS5ybz9tYWlscG9ldF9yb3V0
ZXImZW5kcG9pbnQ9dHJhY2smYWN0aW9uPWNsaWNrJmRhdGE9V3pFME16QXdOU3dpYm1seGFXRjZj
WE16WWpRME1HTmpaMnMwWXpSck5EUnpPRzlqWjJOcll6UWlMQ0k1TVNJc0lqbGtNakZpWVRJNFlq
STJPU0lzWm1Gc2MyVmQpCltEZXphYm9uYXJlXShodHRwczovL2Vrb2dyb3VwLmNvbS5ybz9tYWls
cG9ldF9yb3V0ZXImZW5kcG9pbnQ9dHJhY2smYWN0aW9uPWNsaWNrJmRhdGE9V3pFME16QXdOU3dp
Ym1seGFXRjZjWE16WWpRME1HTmpaMnMwWXpSck5EUnpPRzlqWjJOcll6UWlMQ0k1TVNJc0lqbG1O
ek0wT0dJd056a3pNaUlzWm1Gc2MyVmQpIHwgW0FkbWluaXN0cmVhesSDLcibaSBhYm9uYW1lbnR1
bF0oaHR0cHM6Ly9la29ncm91cC5jb20ucm8/bWFpbHBvZXRfcm91dGVyJmVuZHBvaW50PXRyYWNr
JmFjdGlvbj1jbGljayZkYXRhPVd6RTBNekF3TlN3aWJtbHhhV0Y2Y1hNellqUTBNR05qWjJzMFl6
UnJORFJ6T0c5aloyTnJZelFpTENJNU1TSXNJakl6TmpJMVl6a3pZMk15WWlJc1ptRnNjMlZkKQoK
b2ZmaWNlQGVrby1wcmludC5ybwp3d3cuZWtvLXByaW50LnJvCgpbRmFybWVyc01hcmtldC1Cb3R0
b21dCgpbTWFpbFBvZXRdKGh0dHBzOi8vZWtvZ3JvdXAuY29tLnJvP21haWxwb2V0X3JvdXRlciZl
bmRwb2ludD10cmFjayZhY3Rpb249Y2xpY2smZGF0YT1XekUwTXpBd05Td2libWx4YVdGNmNYTXpZ
alEwTUdOaloyczBZelJyTkRSek9HOWpaMk5yWXpRaUxDSTVNU0lzSWpaa1kyWXhOV0U1TURKbE9D
SXNabUZzYzJWZCkKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fClY5ZnMtZGV2ZWxvcGVyIG1haWxpbmcgbGlzdApWOWZzLWRldmVsb3BlckBsaXN0cy5zb3Vy
Y2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8v
djlmcy1kZXZlbG9wZXIK
