Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id EE32A8BF4A0
	for <lists+v9fs-developer@lfdr.de>; Wed,  8 May 2024 04:37:44 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1s4XBf-00025y-B0;
	Wed, 08 May 2024 02:37:43 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <bounce.L3079S42415M146@s1.arrobamail.com>)
 id 1s4XBd-00025h-9r for v9fs-developer@lists.sourceforge.net;
 Wed, 08 May 2024 02:37:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:List-ID:List-Unsubscribe:
 Message-ID:Subject:Reply-To:From:To:Date:Sender:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Help:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=badYycVkvvcCvL/OD6RkqyX22ENBg2mohQ9/3TdtSBs=; b=hvTDBPScE5fa5fUxmUXqhYpWR5
 A/3k7rR6HslLxXrLcfeVPgK2GrueENSzXRWtJU8OO8ZLc26ZzM3JUBkRPisW2aUUPaRiiW4E3FWYn
 bESw0Z2ENZjdXyxR6j9q8Mx/c0Xl4LKWoJLF842F/eAzIz4K8eGv2xYZp7DZI8ZBUX50=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:List-ID:List-Unsubscribe:Message-ID:Subject:
 Reply-To:From:To:Date:Sender:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Help:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=badYycVkvvcCvL/OD6RkqyX22ENBg2mohQ9/3TdtSBs=; b=H
 zpObPE9D3m8WcDGPMvYOisYo/ikevGSiV16LeCE6MaK5pFmPQcu4trxEKppVjDBVGcAyNfV7druiQ
 KNPJfQULpeWAOnEtfyxraMui6qT4rp0OS8N1TvigL4DzBdo5L4zO1hYI77G2NsPMW0vlfFF0zZNzH
 i8+7qYCEnLT4IOsQ=;
Received: from pf-28.fleetservers.net ([190.105.146.28])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1s4XBd-0003BT-2p for v9fs-developer@lists.sourceforge.net;
 Wed, 08 May 2024 02:37:41 +0000
Date: Tue, 7 May 2024 21:37:33 -0500
To: v9fs-developer@lists.sourceforge.net
From: Mariann Rivas <mariann.rivas@consultores-rh.com>
Message-ID: <WSxAR0GbLselSLQqDlzcMM1raF2kJKmj5WmUZnxsys@s1.arrobamail.com>
X-Mailer: FMMailer v3
X-Data: ZXx2OWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXR8
X-Fid: eGZpZC12OWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQtMTQ2LTMwNzktNDI0MTUtMjY5LXMxLmFycm9iYW1haWwuY29t
X-fmbh: djlmcy1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0OzE0NjszMDc5OzQyNDE1OzI2OQ==
X-bhid: X-bhd: 146;3079;42415
List-Unsubscribe-Post: List-Unsubscribe=One-Click
X-AntiAbuse: abuse@outservices.net
Precedence: bulk
Feedback-ID: 146:3079s42415:124931:WPservicesESP
X-Transport: AgdLcOmFm
MIME-Version: 1.0
DKIM-Signature: v=1; d=consultores-rh.com; s=fm;
 a=rsa-sha256; q=dns/txt; t=1715135853; c=relaxed/simple;
 h=Date:To:From:Reply-To:Subject:Message-ID:X-Mailer:X-Data:X-Fid:X-fmbh:List-Unsubscribe:X-AntiAbuse:Feedback-ID:List-ID:MIME-Version:Content-Type;
 z=Date:Tue,=207=20May=202024=2021:37:33=20-0500
 |To:v9fs-developer@lists.sourceforge.net
 |From:Mariann=20Rivas=20<mariann.rivas@consultores-rh.com>
 |Reply-To:Mariann=20Rivas=20<mariann.rivas@consultores-rh.com>
 |Subject:=3D?utf-8?Q?Generaci=3DC3=3DB3n_de_tabulador_de_sueldos_en_l=3DC3
 =3DADnea.?=3D
 |Message-ID:<WSxAR0GbLselSLQqDlzcMM1raF2kJKmj5WmUZnxsys@s1.arrobamail.com>
 |X-Mailer:FMMailer=20v3
 |X-Data:ZXx2OWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXR8
 |X-Fid:eGZpZC12OWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQtMTQ2LTMwNzk
 tNDI0MTUtMjY5LXMxLmFycm9iYW1haWwuY29t
 |X-fmbh:djlmcy1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0OzE0NjszMDc5OzQyND
 E1OzI2OQ=3D=3D
 |List-Unsubscribe:<https://s1.arrobamail.com/unsuscribe.php?FormData=3Dtet
 wysrqipswtuseup> |X-AntiAbuse:abuse@outservices.net
 |Feedback-ID:146:3079s42415:124931:WPservicesESP
 |List-ID:<36948:763470> |MIME-Version:1.0
 |Content-Type:multipart/alternative=3B=20boundary=3D"b1_WSxAR0GbLselSLQqDl
 zcMM1raF2kJKmj5WmUZnxsys";
 bh=badYycVkvvcCvL/OD6RkqyX22ENBg2mohQ9/3TdtSBs=;
 b=qE3Es849crGARb17UwpcUbvwgk+lVw5yLvtI1Px4WJH/OFA9jLQMK1ovaAI0YC1iPiO+GN0wa
 HURGN1Pt5Y8IJ2Osx5rLGP4FZyQ/+5thf1dDKZXEoZT3d2ezdRmgCXYnk8SiHnYd1lcZVvuF3
 BXvbNVEXn4ARzi+FrAbLd0XBk=
X-Spam-Score: 1.1 (+)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hola, &nbsp; Esta información, consideramos, es importante
    para tu departamento de recursos humanos. Los tabuladores salariales no solo
    reflejan equidad, sino que son pilares de motivación&nbsp;y retención&nbsp
    [...] 
 
 Content analysis details:   (1.1 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
                             blocked.  See
                             http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
                              for more information.
                             [URIs: arrobamail.com]
  0.0 RCVD_IN_DNSWL_BLOCKED  RBL: ADMINISTRATOR NOTICE: The query to
                             DNSWL was blocked.  See
                             http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
                              for more information.
                             [190.105.146.28 listed in list.dnswl.org]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
                             mail domains are different
  0.0 SPF_NONE               SPF: sender does not publish an SPF Record
  0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
  2.0 PYZOR_CHECK            Listed in Pyzor
                             (https://pyzor.readthedocs.io/en/latest/)
  0.0 T_KAM_HTML_FONT_INVALID Test for Invalidly Named or Formatted
                             Colors in HTML
 -1.0 MAILING_LIST_MULTI     Multiple indicators imply a widely-seen list
                             manager
X-Headers-End: 1s4XBd-0003BT-2p
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] =?utf-8?q?Generaci=C3=B3n_de_tabulador_de_sueldo?=
 =?utf-8?b?cyBlbiBsw61uZWEu?=
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
Reply-To: Mariann Rivas <mariann.rivas@consultores-rh.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

CgoKCQoJCgoKSG9sYSwKCiZuYnNwOwoKRXN0YSBpbmZvcm1hY2nDs24sIGNvbnNpZGVyYW1vcywg
ZXMgaW1wb3J0YW50ZSBwYXJhIHR1IGRlcGFydGFtZW50byBkZSByZWN1cnNvcyBodW1hbm9zLiBM
b3MgdGFidWxhZG9yZXMgc2FsYXJpYWxlcyBubyBzb2xvIHJlZmxlamFuIGVxdWlkYWQsIHNpbm8g
cXVlIHNvbiBwaWxhcmVzIGRlIG1vdGl2YWNpw7NuJm5ic3A7eSByZXRlbmNpw7NuJm5ic3A7ZGVs
IHRhbGVudG87IHNpbiBlbWJhcmdvLCBlbiBtdWNoYXMgZW1wcmVzYXMgeSBvcmdhbml6YWNpb25l
cyBubyBzZSB0aWVuZSB1biBwYW5vcmFtYSBjbGFybyBzb2JyZSBjdcOhbCZuYnNwO2VzIGVsIHN1
ZWxkbyBpZGVhbCBkZSBjYWRhIHB1ZXN0byBkZSBhY3VlcmRvIGNvbiBsYSBleHBlcmllbmNpYSwg
ZWR1Y2FjacOzbiwgaGFiaWxpZGFkZXMsIHJlc3BvbnNhYmlsaWRhZGVzLCBldGMuCgpFcyBwb3Ig
ZWxsbyBxdWUgdW4gdGFidWxhZG9yIGRlIHN1ZWxkb3MgeSBzYWxhcmlvcyBzZSBjb252aWVydGUg
ZW4gbGEgYnLDump1bGEgcXVlIHRvZGEgb3JnYW5pemFjacOzbiZuYnNwO25lY2VzaXRhIHBhcmEg
bGEgY29ycmVjdGEgY29tcGVuc2FjacOzbiZuYnNwO3NhbGFyaWFsLgoKU2FsYXJpeiBlbiB1bmEg
aGVycmFtaWVudGEgb25saW5lIHF1ZSBkZSBtYW5lcmEgcsOhcGlkYSZuYnNwO2UgaW50dWl0aXZh
IHRlIGF5dWRhcmEgY29uIGxhIGNyZWFjacOzbiZuYnNwO2RlbCB0YWJ1bGFkb3IgZGUgc3VlbGRv
cyB5IHNhbGFyaW9zIGRlIHR1IGVtcHJlc2EgdSBvcmdhbml6YWNpw7NuLCBhZGVtw6FzJm5ic3A7
cXVlIG51ZXN0cm8gZXF1aXBvIGRlIGNvbnN1bHRvcmVzIGV4cGVydG9zIGVuIGVsIHNpc3RlbWEg
eSBtZXRvZG9sb2fDrWEgZXN0YXLDoW4mbmJzcDtkaXNwb25pYmxlcyBwYXJhIHRpIHBhcmEgY3Vh
bHF1aWVyIGR1ZGEgcXVlIHN1cmphIGR1cmFudGUgZWwgcHJvY2Vzby4KCiZuYnNwOwoKTG9zIGJl
bmVmaWNpb3MgaW5zdGFudMOhbmVvcyZuYnNwO2FsIGltcGxlbWVudGFyIFNhbGFyaXogc2Vyw6Fu
OgoKCglQcm9waWNpYXIgbGEgZXF1aWRhZCBpbnRlcm5hCglTaW4gbmVjZXNpZGFkIGRlIHNlciBl
eHBlcnRvLCBjcmVhcsOhcyB1biB0YWJ1bGFkb3IKCVRvbWFyw6FzIGRlY2lzaW9uZXMgZGUgbWFu
ZXJhIHNlbmNpbGxhLCB5YSBxdWUgZXN0YXLDoW4gcmVzcGFsZGFyYW4gZW4gZGF0b3MKCgrigIsK
ClBhcmEgbcOhcyBpbmZvcm1hY2nDs24gZGUgU2FsYXJpeiBkYSZuYnNwO2NsaWMgYXF1w60mbmJz
cDtvIHNpIGxvIHF1ZSBkZXNlYXMgZXMgZ2VuZXJhciB1bmEgdmlkZW8gZGVtb3N0cmFjacOzbiBk
YSBjbGljIGFxdcOtCgpHcmFjaWFzLgoKJm5ic3A7CgoKCQoJCQoJCQkKCQkJTWFyaWFubiBSaXZh
cwoKCQkJTGzDoW1hbm9zJm5ic3A7c2luIGNvc3RvOiAwMCAxICg4ODApIDM1MSA3OTI0CgoJCQlD
b2xvbWJpYSwgQm9nb3TDoTogKDU3MSkgNTgwIDAzNTEKCgkJCUNpdWRhZCBkZSBNw6l4aWNvOiAo
NTUpIDUwMTggMDU2NQoKCQkJUmVww7pibGljYSBEb21pbmljYW5hOiAoODI5KSA5NTQgODA3NwoK
CQkJR3VhdGVtYWxhOiAoNTAyKSAyMzE1IDk4MzUKCgkJCUVsIFNhbHZhZG9yOiAoNTAzKSAyMTEz
IDk0MjIKCgkJCUNoaWxlOiAoNTYpIDIyNTggMzU5MjkKCgkJCVdoYXRzQXBwOiArNTIgMzMgMTYw
NyAyMDg5CgkJCQoJCQkKCQkJCgkJCQoJCQoJCgoKQ2xpYyBhcXXDrSZuYnNwO3BhcmEgZGFyc2Ug
ZGUgYmFqYS4KCgoKClBhcmEgcmVtb3ZlciBzdSBkaXJlY2NpJm9hY3V0ZTtuIGRlIGVzdGEgbGlz
dGEgaGFnYSA8YSBocmVmPSJodHRwczovL3MxLmFycm9iYW1haWwuY29tL3Vuc3VzY3JpYmUucGhw
P2lkPXRldHd5c3JxaXBzd3R1c2V1cCI+Y2xpY2sgYXF1JmlhY3V0ZTs8L2E+Cl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClY5ZnMtZGV2ZWxvcGVyIG1haWxp
bmcgbGlzdApWOWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0
cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vdjlmcy1kZXZlbG9wZXIK
