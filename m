Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id EE8DB878D29
	for <lists+v9fs-developer@lfdr.de>; Tue, 12 Mar 2024 03:47:53 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1rjsBC-0002xz-5H;
	Tue, 12 Mar 2024 02:47:50 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <bounce.L20S111707M18@s1.arrobamail.com>)
 id 1rjsBA-0002xs-Os for v9fs-developer@lists.sourceforge.net;
 Tue, 12 Mar 2024 02:47:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:List-ID:List-Unsubscribe:
 Message-ID:Subject:Reply-To:From:To:Date:Sender:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Help:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ojSpEW8v6rdJ3xoYiVJ58EGZc7Kae/M5WlqEALI7tbo=; b=lp08G8x1JfkvO+dJoxGUnw5Mbo
 6ov+MNkYRhkwt+Ss1WQ7HfuuVhwVsWD5qmby1IYs8HGvsSfPhKG2QHYV+K7mPyRkEAOxUu9Sejj6k
 4ns/refx1Y4fDf0P/9qWdk1v3wpq0VdevQeHgARuRBmmkVIJMezO8IwY2D/eJv2DadxM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:List-ID:List-Unsubscribe:Message-ID:Subject:
 Reply-To:From:To:Date:Sender:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Help:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=ojSpEW8v6rdJ3xoYiVJ58EGZc7Kae/M5WlqEALI7tbo=; b=M
 Rb3i9pvnRErNNw1v/UL9KPlJpNuwSL+mPO1cLFZhgzt09NA+C3brWJJaO1ItcLrIyelGf3bL5xweH
 PcEuSy4AoV7Tp6p9U+Wd7CqSsNogjkOctBC8FiZJG2CydFtWerJGOQ5xYMn/UVM4fORfbMal0t0b1
 1RizEDsDBVJ4SB90=;
Received: from pf-28.fleetservers.net ([190.105.146.28])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rjsAz-0005Dn-R1 for v9fs-developer@lists.sourceforge.net;
 Tue, 12 Mar 2024 02:47:49 +0000
Date: Mon, 11 Mar 2024 20:47:37 -0600
To: v9fs-developer@lists.sourceforge.net
From: Mariann Rivas <mariann.rivas@consultores-rh.com>
Message-ID: <t9kBZIXgSdjjLq3BqY56QNyupCkn53lanLxAOrzI@s1.arrobamail.com>
X-Mailer: FMMailer v3
X-Data: ZXx2OWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXR8
X-Fid: eGZpZC12OWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQtMTgtMjAtMTExNzA3LTI2OS1zMS5hcnJvYmFtYWlsLmNvbQ==
X-fmbh: djlmcy1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0OzE4OzIwOzExMTcwNzsyNjk=
X-bhid: X-bhd: 18;20;111707
List-Unsubscribe-Post: List-Unsubscribe=One-Click
X-AntiAbuse: abuse@outservices.net
Precedence: bulk
Feedback-ID: 18:20s111707:124931:WPservicesESP
X-Transport: AgdLcOmFm
MIME-Version: 1.0
DKIM-Signature: v=1; d=consultores-rh.com; s=fm;
 a=rsa-sha256; q=dns/txt; t=1710211657; c=relaxed/simple;
 h=Date:To:From:Reply-To:Subject:Message-ID:X-Mailer:X-Data:X-Fid:X-fmbh:List-Unsubscribe:X-AntiAbuse:Feedback-ID:List-ID:MIME-Version:Content-Type;
 z=Date:Mon,=2011=20Mar=202024=2020:47:37=20-0600
 |To:v9fs-developer@lists.sourceforge.net
 |From:Mariann=20Rivas=20<mariann.rivas@consultores-rh.com>
 |Reply-To:Mariann=20Rivas=20<mariann.rivas@consultores-rh.com>
 |Subject:=3D?utf-8?Q?Mide_el_desempe=3DC3=3DB1o_laboral_mediante_KPI=3DC2=
 3DB4s.?=3D
 |Message-ID:<t9kBZIXgSdjjLq3BqY56QNyupCkn53lanLxAOrzI@s1.arrobamail.com>
 |X-Mailer:FMMailer=20v3
 |X-Data:ZXx2OWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXR8
 |X-Fid:eGZpZC12OWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQtMTgtMjAtMTE
 xNzA3LTI2OS1zMS5hcnJvYmFtYWlsLmNvbQ=3D=3D
 |X-fmbh:djlmcy1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0OzE4OzIwOzExMTcwNz
 syNjk=3D
 |List-Unsubscribe:<https://s1.arrobamail.com/unsuscribe.php?FormData=3Dwww
 iqiseqswoseup> |X-AntiAbuse:abuse@outservices.net
 |Feedback-ID:18:20s111707:124931:WPservicesESP
 |List-ID:<240:2010726> |MIME-Version:1.0
 |Content-Type:multipart/alternative=3B=20boundary=3D"b1_t9kBZIXgSdjjLq3BqY
 56QNyupCkn53lanLxAOrzI";
 bh=ojSpEW8v6rdJ3xoYiVJ58EGZc7Kae/M5WlqEALI7tbo=;
 b=U066n9f1O9i4U2nS/3+uVyWjbWe2lrAofnQK38djnj3rbhX0gclI14rGT/WZvf520uTwWBmW1
 4C+ZOffLm0qrrIAfVI7JHKZsJvSXVq2usFt7SY3Odx3v02ayi7QeKHLBV54Xs01Z9OJcjYb5H
 irS2utyhhAC55/oB86Q/CcJ94=
X-Spam-Score: 0.1 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hola ¿Has tenido dificultades para evaluar y hacer seguimiento
    del desempeño laboral de tus empleados? ¿Te gustaría poder hacer un seguimiento
    de los indicadores clave de desempeño (KPI) de manera má [...] 
 
 Content analysis details:   (0.1 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  1.0 RCVD_IN_UCE1           RBL: IP Listed in UCEPROTECT Level 1
                             [190.105.146.28 listed in dnsbl-1.uceprotect.net]
  0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
                             mail domains are different
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.0 SPF_NONE               SPF: sender does not publish an SPF Record
  0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -1.0 MAILING_LIST_MULTI     Multiple indicators imply a widely-seen list
                             manager
X-Headers-End: 1rjsAz-0005Dn-R1
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
bC5jb20vdW5zdXNjcmliZS5waHA/aWQ9d3d3aXFpc2Vxc3dvc2V1cCI+Y2xpY2sgYXF1JmlhY3V0
ZTs8L2E+Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClY5
ZnMtZGV2ZWxvcGVyIG1haWxpbmcgbGlzdApWOWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3Jn
ZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vdjlmcy1k
ZXZlbG9wZXIK
