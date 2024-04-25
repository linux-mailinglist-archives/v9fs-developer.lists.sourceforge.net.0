Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 174C28B2C74
	for <lists+v9fs-developer@lfdr.de>; Fri, 26 Apr 2024 00:01:50 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1s07A3-0003pq-I1;
	Thu, 25 Apr 2024 22:01:47 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <bounce.L3079S42415M125@s1.arrobamail.com>)
 id 1s079y-0003pW-Sz for v9fs-developer@lists.sourceforge.net;
 Thu, 25 Apr 2024 22:01:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:List-ID:List-Unsubscribe:
 Message-ID:Subject:Reply-To:From:To:Date:Sender:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Help:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=7Pw3AGuGz4vtga9cRWAI70MeV03u3mhub+WrSqgLzaQ=; b=TYxbotmp0RAuM6sZjXDlGZxANE
 oU5nyhqZBATlrVBkluSaRwVKLCbaWtHkGMDIN8IKxp2xKVKAJxcsw8f53GI6BTfmR0cA/Tgze2YQ5
 pAD4UgLI4XkFqpzu9PgrDC3JWWg19DgzsojfE9/EIk9DKBxjp01dwuq/46eUVeanWjeI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:List-ID:List-Unsubscribe:Message-ID:Subject:
 Reply-To:From:To:Date:Sender:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Help:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=7Pw3AGuGz4vtga9cRWAI70MeV03u3mhub+WrSqgLzaQ=; b=K
 /6TNqE0T1DQVP4A4b5TNB1JJfqcp/jz8IJJVmISLqupEHAI5Yp12jxu9Qh7TSbWTUkWOIStukBeGN
 o589zgkDXAA9e3ujyv56Sh0H/ndPiitWqSshYN9jap+MeLM6nIV5ZSeK/RYotj3l8qXm6rQgWjGOr
 EuyZaEA80+nl0UqE=;
Received: from pf-28.fleetservers.net ([190.105.146.28])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1s079u-0004o3-DP for v9fs-developer@lists.sourceforge.net;
 Thu, 25 Apr 2024 22:01:40 +0000
Date: Thu, 25 Apr 2024 17:01:32 -0500
To: v9fs-developer@lists.sourceforge.net
From: =?utf-8?Q?Luis_Ram=C3=ADrez?= <luis.ramirez@consultores-rh.com>
Message-ID: <hilEzKrdXSIcsBkENGSrT1XcXwUCFoyewgcLfSMoCXQ@s1.arrobamail.com>
X-Mailer: FMMailer v3
X-Data: ZXx2OWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXR8
X-Fid: eGZpZC12OWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQtMTI1LTMwNzktNDI0MTUtMjY5LXMxLmFycm9iYW1haWwuY29t
X-fmbh: djlmcy1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0OzEyNTszMDc5OzQyNDE1OzI2OQ==
X-bhid: X-bhd: 125;3079;42415
List-Unsubscribe-Post: List-Unsubscribe=One-Click
X-AntiAbuse: abuse@outservices.net
Precedence: bulk
Feedback-ID: 125:3079s42415:124931:WPservicesESP
X-Transport: AgdLcOmFm
MIME-Version: 1.0
DKIM-Signature: v=1; d=consultores-rh.com; s=fm;
 a=rsa-sha256; q=dns/txt; t=1714082492; c=relaxed/simple;
 h=Date:To:From:Reply-To:Subject:Message-ID:X-Mailer:X-Data:X-Fid:X-fmbh:List-Unsubscribe:X-AntiAbuse:Feedback-ID:List-ID:MIME-Version:Content-Type;
 z=Date:Thu,=2025=20Apr=202024=2017:01:32=20-0500
 |To:v9fs-developer@lists.sourceforge.net
 |From:=3D?utf-8?Q?Luis_Ram=3DC3=3DADrez?=3D=20<luis.ramirez@consultores-rh
 .com>
 |Reply-To:=3D?utf-8?Q?Luis_Ram=3DC3=3DADrez?=3D=20<luis.ramirez@consultore
 s-rh.com>
 |Subject:=3D?utf-8?Q?=3DC2=3DA1Incrementa_el_desempe=3DC3=3DB1o_de_tu_equi
 po_con_Smart_360!?=3D
 |Message-ID:<hilEzKrdXSIcsBkENGSrT1XcXwUCFoyewgcLfSMoCXQ@s1.arrobamail.com
 > |X-Mailer:FMMailer=20v3
 |X-Data:ZXx2OWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXR8
 |X-Fid:eGZpZC12OWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQtMTI1LTMwNzk
 tNDI0MTUtMjY5LXMxLmFycm9iYW1haWwuY29t
 |X-fmbh:djlmcy1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0OzEyNTszMDc5OzQyND
 E1OzI2OQ=3D=3D
 |List-Unsubscribe:<https://s1.arrobamail.com/unsuscribe.php?FormData=3Dtet
 wysrqipsweyseup> |X-AntiAbuse:abuse@outservices.net
 |Feedback-ID:125:3079s42415:124931:WPservicesESP
 |List-ID:<36948:763470> |MIME-Version:1.0
 |Content-Type:multipart/alternative=3B=20boundary=3D"b1_hilEzKrdXSIcsBkENG
 SrT1XcXwUCFoyewgcLfSMoCXQ";
 bh=7Pw3AGuGz4vtga9cRWAI70MeV03u3mhub+WrSqgLzaQ=;
 b=GxZrpmOnArvB8NPdVW0YL8fw2txrsEE4JbVS0x5lY1p/RhGj0140DYKdVSA0EYuRDECCAoJqe
 JDngG0guiQFdcFNefjp4/eDyrfSve8GzKh5iSzVgu0TAhyThSZ9nXuRxAJylcEUN71ZnePllY
 u3ucim8nrVLhEjLwB3Mvd4qXE=
X-Spam-Score: 1.1 (+)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hola, &nbsp; ¿Sabías&nbsp;que implementar evaluaciones de
    360 grados correctamente, puede mejorar el desempeñó&nbsp;de tus colaboradores
    en un 35%, según&nbsp;Forbes? Gigantes corporativos como Apple han adop
   [...] 
 
 Content analysis details:   (1.1 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
                             blocked.  See
                             http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
                              for more information.
                             [URIs: consultores-rh.com]
  0.0 RCVD_IN_DNSWL_BLOCKED  RBL: ADMINISTRATOR NOTICE: The query to
                             DNSWL was blocked.  See
                             http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
                              for more information.
                             [190.105.146.28 listed in list.dnswl.org]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.0 SPF_NONE               SPF: sender does not publish an SPF Record
  0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
                             mail domains are different
  0.0 HTML_MESSAGE           BODY: HTML included in message
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
  2.0 PYZOR_CHECK            Listed in Pyzor
                             (https://pyzor.readthedocs.io/en/latest/)
  0.0 T_KAM_HTML_FONT_INVALID Test for Invalidly Named or Formatted
                             Colors in HTML
 -1.0 MAILING_LIST_MULTI     Multiple indicators imply a widely-seen list
                             manager
X-Headers-End: 1s079u-0004o3-DP
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] =?utf-8?q?=C2=A1Incrementa_el_desempe=C3=B1o_de_?=
 =?utf-8?q?tu_equipo_con_Smart_360!?=
X-BeenThere: v9fs-developer@lists.sourceforge.net
X-Mailman-Version: 2.1.21
List-Id: "deprecated: use v9fs@lists.linux.dev"
 <v9fs-developer.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/v9fs-developer>, 
 <mailto:v9fs-developer-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=v9fs-developer>
List-Post: <mailto:v9fs-developer@lists.sourceforge.net>
List-Help: <mailto:v9fs-developer-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/v9fs-developer>, 
 <mailto:v9fs-developer-request@lists.sourceforge.net?subject=subscribe>
Reply-To: =?utf-8?Q?Luis_Ram=C3=ADrez?= <luis.ramirez@consultores-rh.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

CgoKCQoJCgoKSG9sYSwKCiZuYnNwOwoKwr9TYWLDrWFzJm5ic3A7cXVlIGltcGxlbWVudGFyIGV2
YWx1YWNpb25lcyBkZSAzNjAgZ3JhZG9zIGNvcnJlY3RhbWVudGUsIHB1ZWRlIG1lam9yYXIgZWwg
ZGVzZW1wZcOxw7MmbmJzcDtkZSB0dXMgY29sYWJvcmFkb3JlcyBlbiB1biAzNSUsIHNlZ8O6biZu
YnNwO0ZvcmJlcz8gR2lnYW50ZXMgY29ycG9yYXRpdm9zIGNvbW8gQXBwbGUgaGFuIGFkb3B0YWRv
IGVzdGEgaGVycmFtaWVudGEgcGFyYSBwcm9mdW5kaXphciBlbiBzdXMgcHJvY2Vzb3MgZGUgcmV0
cm9hbGltZW50YWNpw7NuJm5ic3A7eSBkZXNhcnJvbGxvIHByb2Zlc2lvbmFsLgoKJm5ic3A7CgpU
ZSBwcmVzZW50byBTbWFydCAzNjAsIHVuYSBwbGF0YWZvcm1hIGF2YW56YWRhIHF1ZSBzaW1wbGlm
aWNhIHkgb3B0aW1pemEgbGEgcmVhbGl6YWNpw7NuIGRlIGV2YWx1YWNpb25lcyBkZSAzNjAgZ3Jh
ZG9zIHV0aWxpemFuZG8gaW50ZWxpZ2VuY2lhIGFydGlmaWNpYWwgeSBhbsOhbGlzaXMgZGUgZGF0
b3MgYXZhbnphZG9zLiBTbWFydCAzNjAgdHJhbnNmb3JtYSB1biBwcm9jZXNvIHF1ZSB0cmFkaWNp
b25hbG1lbnRlIGVzIGNvbXBsZWpvIHkgbGFib3Jpb3NvIGVuIHVuYSBvcGVyYWNpw7NuIGVmaWNp
ZW50ZSB5IHNpbiBjb21wbGljYWNpb25lcy4KCiZuYnNwOwoKQmVuZWZpY2lvcyBjbGF2ZSBkZSBT
bWFydCAzNjA6CgoKCQoJTcOhcyZuYnNwO3RpZW1wbyBwYXJhIGxvIHF1ZSBpbXBvcnRhOiBTbWFy
dCAzNjAgYXV0b21hdGl6YSBsYXMgZXZhbHVhY2lvbmVzLCByZWR1Y2llbmRvIGxhIGNhcmdhIGFk
bWluaXN0cmF0aXZhLiBFc3RvIGxpYmVyYSB0dSB0aWVtcG8gcGFyYSBjZW50cmFydGUgZW4gaW5p
Y2lhdGl2YXMgZGUgbWF5b3IgaW1wYWN0byBodW1hbm8geSBlc3RyYXTDqWdpY28uCgkKCQoJRGVj
aXNpb25lcyBjb24gY29uZmlhbnphOiBDb24gbGEgaW50ZWxpZ2VuY2lhIGFydGlmaWNpYWwsIG51
ZXN0cm8gc2lzdGVtYSBhbmFsaXphIGxvcyBkYXRvcyBkZSBkZXNlbXBlw7FvJm5ic3A7eSBvZnJl
Y2UgcmVjb21lbmRhY2lvbmVzIGNsYXJhcywgYXl1ZMOhbmRvdGUmbmJzcDthIHRvbWFyIGRlY2lz
aW9uZXMgaW5mb3JtYWRhcyB5IGZ1bmRhbWVudGFkYXMuCgkKCQoJUGxhbiBkZSBjcmVjaW1pZW50
bzogRGlzZcOxYW1vcyZuYnNwO3BsYW5lcyBkZSBkZXNhcnJvbGxvIHF1ZSByZXNwb25kZW4gZXNw
ZWPDrWZpY2FtZW50ZSBhIGxhcyBuZWNlc2lkYWRlcyBkZSBjYWRhIGVtcGxlYWRvLCBhbGluZcOh
bmRvbG9zJm5ic3A7Y29uIGxvcyBvYmpldGl2b3MgZGUgdHUgZW1wcmVzYS4gRXN0byBwcm9tdWV2
ZSB1biBhbWJpZW50ZSBkZSB0cmFiYWpvIGVuIGVsIHF1ZSB0b2RvcyBwdWVkZW4gcHJvc3BlcmFy
LgoJCgoKJm5ic3A7CgpQYXJhIG3DoXMmbmJzcDtpbmZvcm1hY2nDs24mbmJzcDtzb2JyZSBjb21v
Jm5ic3A7bnVlc3RyYSBwbGF0YWZvcm1hIFNtYXJ0IDM2MCBwdWVkZSBwb3RlbmNpYXIgZWwgcG90
ZW5jaWFsIGRlIHR1IGVxdWlwbywgY2xpYyBhcXXDrSBwYXJhIG3DoXMmbmJzcDtkZXRhbGxlcy4g
U2kgZXN0w6FzJm5ic3A7aW50ZXJlc2FkbyBlbiB2ZXIgU21hcnQgMzYwLCBzb2xpY2l0YSB1bmEg
ZGVtb3N0cmFjacOzbiZuYnNwO2RhbmRvIGNsaWMgYXF1w60uCgpTYWx1ZG9zCgoKCQoJCQoJCQkK
CQkJTHVpcyBSYW3DrXJlegoKCQkJJm5ic3A7CgoJCQlMbMOhbWFub3MmbmJzcDtzaW4gY29zdG86
IDAwIDEgKDg4MCkgMzUxIDc5MjQKCgkJCUNpdWRhZCBkZSBNw6l4aWNvOiAoNTUpIDUwMTggMDU2
NQoKCQkJQ29sb21iaWEsIEJvZ290w6E6ICg1NzEpIDU4MCAwMzUxCgoJCQlSZXDDumJsaWNhIERv
bWluaWNhbmE6ICg4MjkpIDk1NCA4MDc3CgoJCQlHdWF0ZW1hbGE6ICg1MDIpIDIzMTUgOTgzNQoK
CQkJRWwgU2FsdmFkb3I6ICg1MDMpIDIxMTMgOTQyMgoKCQkJQ2hpbGU6ICg1NikgMjI1OCAzNTky
OQoKCQkJV2hhdHNBcHA6ICs1MiAzMyAxNjA3IDIwODkKCgkJCSZuYnNwOwoJCQkKCQkJCgkJCSZu
YnNwOwoKCQkJJm5ic3A7CgoJCQkmbmJzcDsKCgkJCQoJCQkKCQkKCQoKCkNsaWMgcGFyYSZuYnNw
O2RhcnNlIGRlIGJhamEgZGVsIGJvbGV0w61uCgoKCgpQYXJhIHJlbW92ZXIgc3UgZGlyZWNjaSZv
YWN1dGU7biBkZSBlc3RhIGxpc3RhIGhhZ2EgPGEgaHJlZj0iaHR0cHM6Ly9zMS5hcnJvYmFtYWls
LmNvbS91bnN1c2NyaWJlLnBocD9pZD10ZXR3eXNycWlwc3dleXNldXAiPmNsaWNrIGFxdSZpYWN1
dGU7PC9hPgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpW
OWZzLWRldmVsb3BlciBtYWlsaW5nIGxpc3QKVjlmcy1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9y
Z2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL3Y5ZnMt
ZGV2ZWxvcGVyCg==
