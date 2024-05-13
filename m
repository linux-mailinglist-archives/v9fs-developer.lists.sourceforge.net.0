Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id EB81D8C4992
	for <lists+v9fs-developer@lfdr.de>; Tue, 14 May 2024 00:20:39 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1s6e28-0004Ml-CA;
	Mon, 13 May 2024 22:20:37 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <bounce.L3079S42415M150@s1.arrobamail.com>)
 id 1s6e26-0004Mb-PU for v9fs-developer@lists.sourceforge.net;
 Mon, 13 May 2024 22:20:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:List-ID:List-Unsubscribe:
 Message-ID:Subject:Reply-To:From:To:Date:Sender:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Help:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=f8izr3cMfHC9qgi7UYEgptlHjc4Z7F3N2CyIFg3bOl4=; b=XALTiuSyO6ZlWOoEKB00MUlm2k
 YSPG6b7kP/3UXHJ4BajGEt2ARx7qFT7Szycr/qY2Lft0J3CAZy4SQydsZd/LOcXPyy/AGmVikshZv
 Zt2RZIK6L9E9idH1BQGNEsPK7C9FxfhugeOgbIS0J4cCHS0QYgVB0gsBMcKBvB1f6SAY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:List-ID:List-Unsubscribe:Message-ID:Subject:
 Reply-To:From:To:Date:Sender:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Help:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=f8izr3cMfHC9qgi7UYEgptlHjc4Z7F3N2CyIFg3bOl4=; b=P
 xltf96JAzj6kesReiVx9gAO3D4o7UNEbHMQArJDU0rfQY0nNewyjtjkDqCNhozJHfVxAmDkdBnc/W
 WKSHRCoOT4De50VUW128hywYu8lvvmfvIF7+4Z98pGPFV6j5l6M2bkI9fXqxNvIpgtWSNtnYpRQPV
 Aru4VMkn8XUMyefg=;
Received: from pf-28.fleetservers.net ([190.105.146.28])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1s6e26-00010q-17 for v9fs-developer@lists.sourceforge.net;
 Mon, 13 May 2024 22:20:35 +0000
Date: Mon, 13 May 2024 17:20:21 -0500
To: v9fs-developer@lists.sourceforge.net
From: Mariann Rivas <mariann.rivas@consultores-rh.com>
Message-ID: <HKvtYYb9Eornwie5SrIRKgvcxnSx5KwE8wlHwDuJWQ@s1.arrobamail.com>
X-Mailer: FMMailer v3
X-Data: ZXx2OWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXR8
X-Fid: eGZpZC12OWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQtMTUwLTMwNzktNDI0MTUtMjY5LXMxLmFycm9iYW1haWwuY29t
X-fmbh: djlmcy1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0OzE1MDszMDc5OzQyNDE1OzI2OQ==
X-bhid: X-bhd: 150;3079;42415
List-Unsubscribe-Post: List-Unsubscribe=One-Click
X-AntiAbuse: abuse@outservices.net
Precedence: bulk
Feedback-ID: 150:3079s42415:124931:WPservicesESP
X-Transport: AgdLcOmFm
MIME-Version: 1.0
DKIM-Signature: v=1; d=consultores-rh.com; s=fm;
 a=rsa-sha256; q=dns/txt; t=1715638821; c=relaxed/simple;
 h=Date:To:From:Reply-To:Subject:Message-ID:X-Mailer:X-Data:X-Fid:X-fmbh:List-Unsubscribe:X-AntiAbuse:Feedback-ID:List-ID:MIME-Version:Content-Type;
 z=Date:Mon,=2013=20May=202024=2017:20:21=20-0500
 |To:v9fs-developer@lists.sourceforge.net
 |From:Mariann=20Rivas=20<mariann.rivas@consultores-rh.com>
 |Reply-To:Mariann=20Rivas=20<mariann.rivas@consultores-rh.com>
 |Subject:=3D?utf-8?Q?Plan_de_capacitaci=3DC3=3DB3n_anual?=3D
 |Message-ID:<HKvtYYb9Eornwie5SrIRKgvcxnSx5KwE8wlHwDuJWQ@s1.arrobamail.com>
 |X-Mailer:FMMailer=20v3
 |X-Data:ZXx2OWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXR8
 |X-Fid:eGZpZC12OWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQtMTUwLTMwNzk
 tNDI0MTUtMjY5LXMxLmFycm9iYW1haWwuY29t
 |X-fmbh:djlmcy1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0OzE1MDszMDc5OzQyND
 E1OzI2OQ=3D=3D
 |List-Unsubscribe:<https://s1.arrobamail.com/unsuscribe.php?FormData=3Dtet
 wysrqipswyqseup> |X-AntiAbuse:abuse@outservices.net
 |Feedback-ID:150:3079s42415:124931:WPservicesESP
 |List-ID:<36948:763470> |MIME-Version:1.0
 |Content-Type:multipart/alternative=3B=20boundary=3D"b1_HKvtYYb9Eornwie5Sr
 IRKgvcxnSx5KwE8wlHwDuJWQ";
 bh=f8izr3cMfHC9qgi7UYEgptlHjc4Z7F3N2CyIFg3bOl4=;
 b=aBH/ZHkMdAM+yELLYXTqhdNIAQC7VHOi9Lcq3ZwVdZKFOxB6DmhhRHPvZXnYhbDUwZZpiy2HA
 CccKnND35gcjsQmtTOocG2ljmniyjW/N+GXh7LkYac9ny9PtRpWFp3xw4yOgqMicl2LsBaffd
 4b9jOJmIZ1CcvwMwrQXJeqkGg=
X-Spam-Score: -3.9 (---)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hola, &nbsp; Un estudio de LinkedIn indica que el 94% de los
    empleados se inclinan a permanecer más&nbsp;tiempo en empresas que invierten
    en su desarrollo profesional. Esto subraya la importancia de contar con un
    [...] 
 
 Content analysis details:   (-3.9 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
                             blocked.  See
                             http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
                              for more information.
                             [URIs: consultores-rh.com]
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
                             high trust
                             [190.105.146.28 listed in list.dnswl.org]
  0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
                             mail domains are different
  0.0 SPF_NONE               SPF: sender does not publish an SPF Record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.0 HTML_MESSAGE           BODY: HTML included in message
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  2.0 PYZOR_CHECK            Listed in Pyzor
                             (https://pyzor.readthedocs.io/en/latest/)
  0.0 T_KAM_HTML_FONT_INVALID Test for Invalidly Named or Formatted
                             Colors in HTML
 -1.0 MAILING_LIST_MULTI     Multiple indicators imply a widely-seen list
                             manager
X-Headers-End: 1s6e26-00010q-17
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] =?utf-8?q?Plan_de_capacitaci=C3=B3n_anual?=
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

CgoKCQoJCgkKCgpIb2xhLAoKJm5ic3A7CgpVbiBlc3R1ZGlvIGRlIExpbmtlZEluIGluZGljYSBx
dWUgZWwgOTQlIGRlIGxvcyBlbXBsZWFkb3Mgc2UgaW5jbGluYW4gYSBwZXJtYW5lY2VyIG3DoXMm
bmJzcDt0aWVtcG8gZW4gZW1wcmVzYXMgcXVlIGludmllcnRlbiBlbiBzdSBkZXNhcnJvbGxvIHBy
b2Zlc2lvbmFsLiBFc3RvIHN1YnJheWEgbGEgaW1wb3J0YW5jaWEgZGUgY29udGFyIGNvbiB1bmEg
cGxhdGFmb3JtYSBlZmljaWVudGUgZGUgY2FwYWNpdGFjacOzbiwgY29tbyBIdW1hbiBMZWFybmlu
ZywgcGFyYSByZXRlbmVyIHRhbGVudG8geSBtZWpvcmFyIGxhIGNvbXBldGl0aXZpZGFkLgoKJm5i
c3A7CgpIdW1hbiBMZWFybmluZyBvZnJlY2UgY2FwYWNpdGFjacOzbiZuYnNwO29ubGluZSBlZmVj
dGl2YSBwYXJhIDEgYSA1LDAwMCBjb2xhYm9yYWRvcmVzIHNpbXVsdMOhbmVhbWVudGUsIGNvbiB1
biBjYXTDoWxvZ28mbmJzcDtlbiBleHBhbnNpw7NuJm5ic3A7ZGUgbcOhcyZuYnNwO2RlIDEwMCBj
dXJzb3MgZW4gw4FyZWFzJm5ic3A7Y29tbyByZWN1cnNvcyBodW1hbm9zLCB2ZW50YXMsIHkgZGVz
YXJyb2xsbyBodW1hbm8geSBnZXJlbmNpYWwuIEFkZW3DoXMsIGNvbiBIdW1hbiBMZWFybmluZyBw
b2Ryw6FzIGVsYWJvcmFyIHVuIHBsYW4gYW51YWwgZGUgY2FwYWNpdGFjacOzbiZuYnNwO3BlcnNv
bmFsaXphZG8sIGFsaW5lYWRvIGNvbiBsYXMgbmVjZXNpZGFkZXMgeSBvYmpldGl2b3MgZXNwZWPD
rWZpY29zIGRlIHR1IGVtcHJlc2EgeSBlbXBsZWFkb3MsIGFzZWd1cmFuZG8gdW4gZGVzYXJyb2xs
byBwcm9mZXNpb25hbCBjb25zdGFudGUgeSBhY3R1YWxpemFkbyBjb24gbGFzIHRlbmRlbmNpYXMg
ZGVsIG1lcmNhZG8uCgombmJzcDsKCkJlbmVmaWNpb3MgZGUgdXNhciBIdW1hbiBMZWFybmluZzoK
CiZuYnNwOwoKCglBY2Nlc28gZmxleGlibGUgcGFyYSB0b2RvczogUGVybWl0ZSBxdWUgdHVzIGVt
cGxlYWRvcyBzZSBjYXBhY2l0ZW4gZGVzZGUgY3VhbHF1aWVyIGx1Z2FyIHkgZGlzcG9zaXRpdm8s
IGZhY2lsaXRhbmRvIGxhIGdlc3Rpw7NuJm5ic3A7eSBzZWd1aW1pZW50byBkZSBzdSBwcm9ncmVz
byBkZSBmb3JtYSBlZmljaWVudGUgeSBlcXVpdGF0aXZhLgoJTW9uaXRvcmVvIGVuIHRpZW1wbyBy
ZWFsOiBPYnNlcnZhIGVsIGF2YW5jZSBkZSBjYWRhIGVtcGxlYWRvIGNvbiBkYXRvcyBhY3R1YWxp
emFkb3MsIGxvIHF1ZSBmYWNpbGl0YSBhanVzdGVzIHByZWNpc29zIHkgb3BvcnR1bm9zIHBhcmEg
bWF4aW1pemFyIHN1IGRlc2Fycm9sbG8gcHJvZmVzaW9uYWwuCglDZXJ0aWZpY2FjacOzbiBhdXRv
bcOhdGljYTogQWwgY29tcGxldGFyIGxvcyBjdXJzb3MsIHR1cyBjb2xhYm9yYWRvcmVzIHJlY2li
aXLDoW4gY2VydGlmaWNhZG9zIHF1ZSByZWNvbm9jZW4geSBjZWxlYnJhbiBzdXMgbG9ncm9zLCBt
b3RpdsOhbmRvbG9zJm5ic3A7aGFjaWEgc3UgY3JlY2ltaWVudG8gY29udGludW8KCgombmJzcDsK
ClBhcmEgZGVzY3VicmlyIGNvbW8mbmJzcDtIdW1hbiBMZWFybmluZyBwdWVkZSBlbGV2YXIgZWwg
cG90ZW5jaWFsIGRlIHR1IGVxdWlwbywgY2xpYyBhcXXDrSwgbyBzaSBsbyBxdWUgcmVxdWllcmVz
IGVzIHVuYSBkZW1vc3RyYWNpw7NuJm5ic3A7ZGVsIHNpc3RlbWEsIGRhIGNsaWMgYXF1w63CrS4K
CiZuYnNwOwoKU2FsdWRvcwoKCgkKCQkKCQkJCgkJCU1hcmlhbm4gUml2YXMKCgkJCSZuYnNwOwoK
CQkJTGzDoW1hbm9zIHNpbiBjb3N0bzogMDAgMSAoODgwKSAzNTEgNzkyNAoKCQkJQ2l1ZGFkIGRl
IE3DqXhpY286ICg1NSkgNTAxOCAwNTY1CgoJCQlDb2xvbWJpYSwgQm9nb3TDoTogKDU3MSkgNTgw
IDAzNTEKCgkJCVJlcMO6YmxpY2EgRG9taW5pY2FuYTogKDgyOSkgOTU0IDgwNzcKCgkJCUd1YXRl
bWFsYTogKDUwMikgMjMxNSA5ODM1CgoJCQlFbCBTYWx2YWRvcjogKDUwMykgMjExMyA5NDIyCgoJ
CQlDaGlsZTogKDU2KSAyMjU4IDM1OTI5CgoJCQlXaGF0c0FwcDogKzUyIDMzIDE2MDcgMjA4OQoJ
CQkKCQkJCgkJCQoJCQkKCQkKCQoKCiZuYnNwOwoKJm5ic3A7CgpDbGljIGFxdcOtJm5ic3A7cGFy
YSBkYXJzZSBkZSBiYWphLgoKJm5ic3A7CgoKCgpQYXJhIHJlbW92ZXIgc3UgZGlyZWNjaSZvYWN1
dGU7biBkZSBlc3RhIGxpc3RhIGhhZ2EgPGEgaHJlZj0iaHR0cHM6Ly9zMS5hcnJvYmFtYWlsLmNv
bS91bnN1c2NyaWJlLnBocD9pZD10ZXR3eXNycWlwc3d5cXNldXAiPmNsaWNrIGFxdSZpYWN1dGU7
PC9hPgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpWOWZz
LWRldmVsb3BlciBtYWlsaW5nIGxpc3QKVjlmcy1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2Uu
bmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL3Y5ZnMtZGV2
ZWxvcGVyCg==
