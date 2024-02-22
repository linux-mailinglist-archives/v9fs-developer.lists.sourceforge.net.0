Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 88BEA860703
	for <lists+v9fs-developer@lfdr.de>; Fri, 23 Feb 2024 00:33:49 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1rdIZW-00074M-27;
	Thu, 22 Feb 2024 23:33:46 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <bounce.L6S44242M7@s1.arrobamail.com>)
 id 1rdIZV-00074C-Az for v9fs-developer@lists.sourceforge.net;
 Thu, 22 Feb 2024 23:33:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:List-ID:List-Unsubscribe:
 Message-ID:Subject:Reply-To:From:To:Date:Sender:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Help:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=wqA3wTZe/FZR3CcY6ZbjN2JhH09kX82TqfFN6ivScFc=; b=QE3aWRPxX/SgmyXyrbh5HxxpDI
 pod6dcG6I2I+eqistbW9WH8sTYESnh4ouVLpg5biSe+5o4sADFcIgr1bPDdGpwIzIPb2HJVhGa3mX
 zS+TQkcwgED7ah95S51F9o1STMkPibIu5uizvRFLefE8WgXMXFahhTXt6FeViVIn5nq0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:List-ID:List-Unsubscribe:Message-ID:Subject:
 Reply-To:From:To:Date:Sender:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Help:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=wqA3wTZe/FZR3CcY6ZbjN2JhH09kX82TqfFN6ivScFc=; b=Q
 0czzx+e6E0F0sSGu5yNRbJSQkO7n+an8OGbh/a0duHb4p2tlHsuw+m/G9Sumc6t1nJSFvIKxApiIs
 hGjB0/lbT20D9OeF847lP8exYr8h1OEAspzyaIAr0O47PA4JfXHC8RkkOXTTi2/HFVfMaApBEkvJA
 Ks2wFh7Q8DbX1zus=;
Received: from pf-28.fleetservers.net ([190.105.146.28])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rdIZQ-0005De-3V for v9fs-developer@lists.sourceforge.net;
 Thu, 22 Feb 2024 23:33:45 +0000
Date: Thu, 22 Feb 2024 17:33:34 -0600
To: v9fs-developer@lists.sourceforge.net
From: Mariann Rivas <mariann.rivas@consultores-rh.com>
Message-ID: <Zem1GdAZ466D0pO4XqHCC9GXOTuOwT5A1xcDwNpu2KA@s1.arrobamail.com>
X-Mailer: FMMailer v3
X-Data: ZXx2OWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXR8
X-Fid: eGZpZC12OWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQtNy02LTQ0MjQyLTI2OS1zMS5hcnJvYmFtYWlsLmNvbQ==
X-fmbh: djlmcy1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0Ozc7Njs0NDI0MjsyNjk=
X-bhid: X-bhd: 7;6;44242
List-Unsubscribe-Post: List-Unsubscribe=One-Click
X-AntiAbuse: abuse@outservices.net
Precedence: bulk
Feedback-ID: 7:6s44242:124931:WPservicesESP
X-Transport: AgdLcOmFm
MIME-Version: 1.0
DKIM-Signature: v=1; d=consultores-rh.com; s=fm;
 a=rsa-sha256; q=dns/txt; t=1708644814; c=relaxed/simple;
 h=Date:To:From:Reply-To:Subject:Message-ID:X-Mailer:X-Data:X-Fid:X-fmbh:List-Unsubscribe:X-AntiAbuse:Feedback-ID:List-ID:MIME-Version:Content-Type;
 z=Date:Thu,=2022=20Feb=202024=2017:33:34=20-0600
 |To:v9fs-developer@lists.sourceforge.net
 |From:Mariann=20Rivas=20<mariann.rivas@consultores-rh.com>
 |Reply-To:Mariann=20Rivas=20<mariann.rivas@consultores-rh.com>
 |Subject:=3D?utf-8?Q?Mide_el_desempe=3DC3=3DB1o_laboral_mediante_KPI=3DC2=
 3DB4s.?=3D
 |Message-ID:<Zem1GdAZ466D0pO4XqHCC9GXOTuOwT5A1xcDwNpu2KA@s1.arrobamail.com
 > |X-Mailer:FMMailer=20v3
 |X-Data:ZXx2OWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXR8
 |X-Fid:eGZpZC12OWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQtNy02LTQ0MjQ
 yLTI2OS1zMS5hcnJvYmFtYWlsLmNvbQ=3D=3D
 |X-fmbh:djlmcy1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0Ozc7Njs0NDI0MjsyNj
 k=3D
 |List-Unsubscribe:<https://s1.arrobamail.com/unsuscribe.php?FormData=3Dtte
 tesusiseup> |X-AntiAbuse:abuse@outservices.net
 |Feedback-ID:7:6s44242:124931:WPservicesESP
 |List-ID:<72:796356> |MIME-Version:1.0
 |Content-Type:multipart/alternative=3B=20boundary=3D"b1_Zem1GdAZ466D0pO4Xq
 HCC9GXOTuOwT5A1xcDwNpu2KA";
 bh=wqA3wTZe/FZR3CcY6ZbjN2JhH09kX82TqfFN6ivScFc=;
 b=ofn+9Ot2P8AnwZIG1azaV70z1vA+dg0aTi0AZF940Dm2bzvUBMVWYslUYWI115668GnTcPQGC
 XmuiLlY1OfZ1mXP4pToddgytmf6TK6JS6lxUXTZ6VWTKTiNCeu9dQNvggxkLBChyX61yV1tku
 M7jLXf3zhGJiJOh/boy/drUGY=
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hola ¿Has tenido dificultades para evaluar y hacer seguimiento
    del desempeño laboral de tus empleados? ¿Te gustaría poder hacer un seguimiento
    de los indicadores clave de desempeño (KPI) de manera má [...] 
 
 Content analysis details:   (-0.9 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
                             mail domains are different
  0.0 SPF_NONE               SPF: sender does not publish an SPF Record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -1.0 MAILING_LIST_MULTI     Multiple indicators imply a widely-seen list
                             manager
X-Headers-End: 1rdIZQ-0005De-3V
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] =?utf-8?q?Mide_el_desempe=C3=B1o_laboral_mediant?=
 =?utf-8?b?ZSBLUEnCtHMu?=
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

CgoKCQoKCkhvbGEKCsK/SGFzIHRlbmlkbyBkaWZpY3VsdGFkZXMgcGFyYSBldmFsdWFyIHkgaGFj
ZXIgc2VndWltaWVudG8gZGVsIGRlc2VtcGXDsW8gbGFib3JhbCBkZSB0dXMgZW1wbGVhZG9zPyDC
v1RlIGd1c3RhcsOtYSBwb2RlciBoYWNlciB1biBzZWd1aW1pZW50byBkZSBsb3MgaW5kaWNhZG9y
ZXMgY2xhdmUgZGUgZGVzZW1wZcOxbyAoS1BJKSBkZSBtYW5lcmEgbcOhcyBlZmljaWVudGUgeSBl
ZmVjdGl2YT8gU2kgZXMgYXPDrSwgdGVuZW1vcyBsYSBzb2x1Y2nDs24gcGFyYSB0aS4KCkVuIFBs
dXNvcmlhLCBub3MgZW5mb2NhbW9zIGVuIHJlc29sdmVyIGVsIHByb2JsZW1hIHF1ZSBtdWNoYXMg
ZW1wcmVzYXMgZW5mcmVudGFuIGVuIGxhIGdlc3Rpw7NuIGRlbCBkZXNlbXBlw7FvIHkgZWwgc2Vn
dWltaWVudG8gZGUgS1BJLiBTYWJlbW9zIHF1ZSBlc3RvcyBwcm9jZXNvcyBwdWVkZW4gc2VyIGNv
bXBsaWNhZG9zIHkgY29uc3VtaXIgbXVjaG8gdGllbXBvLiBFcyBwb3IgZXNvIHBvciBsbyBxdWUg
Y3JlYW1vcyBQbHVzb3JpYSwgcGFyYSBheXVkYXJ0ZSBhIHRpIHkgYSB0dSBlbXByZXNhLCBhIGF1
dG9tYXRpemFyIGVzdG9zIHByb2Nlc29zIHkgb2J0ZW5lciByZXN1bHRhZG9zIHByZWNpc29zIHkg
dmFsaW9zb3Mgc29icmUgZWwgZGVzZW1wZcOxbyBsYWJvcmFsIGRlIHR1cyBlbXBsZWFkb3MuCgpD
b24gbnVlc3RybyBzb2Z0d2FyZSBvYnRpZW5lcyBiZW5lZmljaW9zIHRhbGVzIGNvbW86CgoKCUF1
dG9tYXRpemFjacOzbiBkZSBQcm9jZXNvczogTnVlc3RybyBzb2Z0d2FyZSBwZXJtaXRlIGxhIGF1
dG9tYXRpemFjacOzbiBkZSBsb3MgcHJvY2Vzb3MgZGUgZXZhbHVhY2nDs24gZGUgZGVzZW1wZcOx
byB5IHNlZ3VpbWllbnRvIGRlIEtQSXMgYWhvcnJhbmRvIGFzw60gdGllbXBvIHkgcmVjdXJzb3Mg
Y3J1Y2lhbGVzLgoJRXZhbHVhY2nDs24gRWZlY3RpdmEgZGVsIERlc2VtcGXDsW8gTGFib3JhbDog
Q29uIG51ZXN0cm8gc29mdHdhcmUsIHB1ZWRlcyBldmFsdWFyIGRlIG1hbmVyYSBlZmVjdGl2YSB5
IGVmaWNpZW50ZSBlbCBkZXNlbXBlw7FvIGxhYm9yYWwgZGUgdHVzIGVtcGxlYWRvcy4KCU1lam9y
YSBkZWwgQ29tcHJvbWlzbyBkZSBsb3MgRW1wbGVhZG9zOiBBbCBwcm9wb3JjaW9uYXIgcmV0cm9h
bGltZW50YWNpw7NuIGNvbnN0YW50ZSB5IG9iamV0aXZhIHNvYnJlIGVsIGRlc2VtcGXDsW8gZGUg
bG9zIGVtcGxlYWRvcywgbnVlc3RybyBzb2Z0d2FyZSBwdWVkZSBheXVkYXIgYSBtZWpvcmFyIGVs
IGNvbXByb21pc28geSBsYSBzYXRpc2ZhY2Npw7NuIGRlIGxvcyBlbXBsZWFkb3MgJm5ic3A7Jm5i
c3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7CgoKVHUgZW1wcmVzYSB1IG9yZ2FuaXphY2nDs24gdGVuZHLD
oSB1biBtZWpvciBkZXNlbXBlw7FvIGFsIGxsZXZhciB1bmEgcmV2aXNpw7NuIHBlcmnDs2RpY2Eg
ZGUgbG9zIGF2YW5jZXMgbGFib3JhbGVzLiZuYnNwO05vIHBpZXJkYXMgbcOhcyB0aWVtcG8gaW50
ZW50YW5kbyBnZXN0aW9uYXIgZWwgZGVzZW1wZcOxbyBsYWJvcmFsIHkgZWwgc2VndWltaWVudG8g
ZGUgS1BJIHBvciB0dSBjdWVudGEuJm5ic3A7IFNpIGRlc2VhcyBjb25vY2VyIGxvcyBjb3N0b3Ms
IGRhIGNsaWMgYXF1w60uIFBhcmEgc29saWNpdGFyIHVuYSBkZW1vc3RyYWNpw7NuIGRlbCBzaXN0
ZW1hLCBjbGljIGFxdcOtCgpTYWx1ZG9zLiAmbmJzcDsKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwoKCgkK
CQkKCQkJCgkJCU1hcmlhbm4gUml2YXMKCQkJCgkJCUxsw6FtYW5vcyBzaW4gY29zdG86IDAwIDEg
KDg4MCkgMzUxIDc5MjQKCQkJQ29sb21iaWEsIEJvZ290w6E6ICg1NzEpIDU4MCAwMzUxCgkJCUNp
dWRhZCBkZSBNw6l4aWNvOiAoNTUpIDUwMTggMDU2NQoJCQlSZXDDumJsaWNhIERvbWluaWNhbmE6
ICg4MjkpIDk1NCA4MDc3CgkJCUd1YXRlbWFsYTogKDUwMikgMjMxNSA5ODM1CgkJCUVsIFNhbHZh
ZG9yOiAoNTAzKSAyMTEzIDk0MjIKCQkJQ2hpbGU6ICg1NikgMjI1OCAzNTkyOQoJCQlXaGF0c0Fw
cDogKzUyIDMzIDE2MDcgMjA4OQoJCQkKCQkJCgkJCQoJCQkKCQkKCQoKCiZuYnNwOwoKJm5ic3A7
CgombmJzcDsKCiZuYnNwOwoKJm5ic3A7CgombmJzcDsKClBhcmEgZGFyc2UgZGUgYmFqYSBkZWwg
Ym9sZXTDrW4gZGUmbmJzcDtjbGljIGFxdcOtLgoKCgoKUGFyYSByZW1vdmVyIHN1IGRpcmVjY2km
b2FjdXRlO24gZGUgZXN0YSBsaXN0YSBoYWdhIDxhIGhyZWY9Imh0dHBzOi8vczEuYXJyb2JhbWFp
bC5jb20vdW5zdXNjcmliZS5waHA/aWQ9dHRldGVzdXNpc2V1cCI+Y2xpY2sgYXF1JmlhY3V0ZTs8
L2E+Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClY5ZnMt
ZGV2ZWxvcGVyIG1haWxpbmcgbGlzdApWOWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5u
ZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vdjlmcy1kZXZl
bG9wZXIK
