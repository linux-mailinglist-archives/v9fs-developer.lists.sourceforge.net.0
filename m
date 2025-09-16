Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 73531B58A7E
	for <lists+v9fs-developer@lfdr.de>; Tue, 16 Sep 2025 03:01:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	Reply-To:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:
	List-Id:Subject:MIME-Version:Message-ID:From:To:Date:Sender:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=veFEtMFyyk5g56zcYNcTlCi9nlksu8EMMPzDV4jwx+c=; b=HoYZj1szRxaUTddiVXyu+ydTtO
	s+MLxaFO3wU2gGm+uayQyOphlt4tgMQZoqNDgDyy2khgGe8nlLGc+CwYAgBdQW1ncDvyMFBJy+pMa
	DyMmlz4R93xWNGvk0ZNO/RtRRUEVPUMjZfGZAksryHnQudZlaC5ktXTLoS0FjIB2sY9s=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1uyK4y-0000yy-Ae;
	Tue, 16 Sep 2025 01:01:57 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <bounce.L3194S133745M960@s1.arrobamail.com>)
 id 1uyK4x-0000yk-DI for v9fs-developer@lists.sourceforge.net;
 Tue, 16 Sep 2025 01:01:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:List-ID:List-Unsubscribe:
 Message-ID:Subject:Reply-To:From:To:Date:Sender:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Help:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=1iyetr62fc5DM0UXQHDjhoZQJlq2k804KE1zYM6hAWI=; b=TI7U3pwTzdR6pyvK8enM5E+n2l
 CWfTJoXh1C9kUGiGerWPJ9EdnS/nbOVAhWBTOiSzyj/SRoIpNPM1mW5XYXyftkO5LWpfRClAB6WUt
 1zrw9yYrnhdJRwWj5TfyEcdOLcYoedi/f/RBjukoTcRBvkEaNXztu+AmwXrdNf2fOhgk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:List-ID:List-Unsubscribe:Message-ID:Subject:
 Reply-To:From:To:Date:Sender:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Help:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=1iyetr62fc5DM0UXQHDjhoZQJlq2k804KE1zYM6hAWI=; b=G
 tPNuuW9fzlnk8BQ9zRe2gn7Bu0r3u7j+ETHMn9eRbNcg5Ej4ZzMB9Gw+GsXk1whMuK17cavJeCxAQ
 ghP7E4sR9D/xzNZA9S1q2Y/I25Hq4xNMH4v6CMhQqdaeXyCJTdn1/Ppp92W/qQiDFR0nVpsIWLgYS
 kkuIZAgD5+QTkyZY=;
Received: from p144i156.pf.fmservers.net ([190.105.144.156])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uyK4x-00069O-9v for v9fs-developer@lists.sourceforge.net;
 Tue, 16 Sep 2025 01:01:56 +0000
Date: Mon, 15 Sep 2025 20:01:48 -0500
To: V9fs-developer <v9fs-developer@lists.sourceforge.net>
From: =?utf-8?Q?Valeria_P=C3=A9rez?= <valeria.perez@consultores-rh.com>
Message-ID: <m6kDWoRthxUWyemngGIGasUffjTodjO9j3B9pbc5Q@s1.arrobamail.com>
X-Mailer: FMMailer v3
X-Data: ZXx2OWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXR8
X-Fid: eGZpZC12OWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQtOTYwLTMxOTQtMTMzNzQ1LTI2OS1zMS5hcnJvYmFtYWlsLmNvbQ==
X-fmbh: djlmcy1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0Ozk2MDszMTk0OzEzMzc0NTsyNjk=
X-bhid: X-bhd: 960;3194;133745
List-Unsubscribe-Post: List-Unsubscribe=One-Click
X-AntiAbuse: abuse@outservices.net
Precedence: bulk
Feedback-ID: 960:3194s133745:124931:WPservicesESP
X-Transport: p144i156
MIME-Version: 1.0
DKIM-Signature: v=1; d=consultores-rh.com; s=fm;
 a=rsa-sha256; q=dns/txt; t=1757984508; c=relaxed/simple;
 h=Date:To:From:Reply-To:Subject:Message-ID:X-Mailer:X-Data:X-Fid:X-fmbh:List-Unsubscribe:X-AntiAbuse:Feedback-ID:List-ID:MIME-Version:Content-Type;
 z=Date:Mon,=2015=20Sep=202025=2020:01:48=20-0500
 |To:V9fs-developer=20<v9fs-developer@lists.sourceforge.net>
 |From:=3D?utf-8?Q?Valeria_P=3DC3=3DA9rez?=3D=20<valeria.perez@consultores-
 rh.com>
 |Reply-To:=3D?utf-8?Q?Valeria_P=3DC3=3DA9rez?=3D=20<valeria.perez@consulto
 res-rh.com>
 |Subject:=3D?utf-8?Q?PsicoSmart:_Selecci=3DC3=3DB3n_de_talento_y_reducci=3
 DC3=3DB3n_de_rotaci=3DC3=3DB3n?=3D
 |Message-ID:<m6kDWoRthxUWyemngGIGasUffjTodjO9j3B9pbc5Q@s1.arrobamail.com>
 |X-Mailer:FMMailer=20v3
 |X-Data:ZXx2OWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXR8
 |X-Fid:eGZpZC12OWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQtOTYwLTMxOTQ
 tMTMzNzQ1LTI2OS1zMS5hcnJvYmFtYWlsLmNvbQ=3D=3D
 |X-fmbh:djlmcy1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0Ozk2MDszMTk0OzEzMz
 c0NTsyNjk=3D
 |List-Unsubscribe:<https://s1.arrobamail.com/unsuscribe.php?FormData=3Dwrr
 itysrwptspuqseup> |X-AntiAbuse:abuse@outservices.net
 |Feedback-ID:960:3194s133745:124931:WPservicesESP
 |List-ID:<38328:2407410> |MIME-Version:1.0
 |Content-Type:multipart/alternative=3B=20boundary=3D"b1_m6kDWoRthxUWyemngG
 IGasUffjTodjO9j3B9pbc5Q";
 bh=pky1X9z81VLTcuKW62YVHSo0JkSIMceXEh/PDb45rUc=;
 b=LXuRcEI51Uhpp4z2kMA1HnmyuP4Ai5ZUO4OScW3M4vUMko9dCEA5tqK95sshINe0tpBK6Y+uD
 nBv+kBGME3jFcbzsKN5PTUEuSupwCKPFI9sx48WbbX1aS57B9B1autSY+9SgsjR30RdhojuOA
 UjaDAPkwKyeogf7i81xyhiur0=
X-Spam-Score: 2.9 (++)
X-Spam-Report: Spam detection software, running on the system "sfi-spamd-2.hosts.colo.sdot.me",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Reduce la rotación y retén a tu talento clave body { margin:
    0; padding: 0; font-family: Arial, Helvetica, sans-serif; font-size: 14px;
    color: #333; background-color: #ffffff; } table { border-spac [...] 
 
 Content analysis details:   (2.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  4.0 RCVD_IN_UCE1           RBL: IP Listed in UCEPROTECT Level 1
                             [190.105.144.156 listed in dnsbl-1.uceprotect.net]
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
  0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
                             domains are different
  0.0 HTML_FONT_LOW_CONTRAST BODY: HTML font color similar or identical to
                             background
  0.0 HTML_MESSAGE           BODY: HTML included in message
 -1.0 MAILING_LIST_MULTI     Multiple indicators imply a widely-seen list
                             manager
X-Headers-End: 1uyK4x-00069O-9v
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] =?utf-8?q?PsicoSmart=3A_Selecci=C3=B3n_de_talent?=
 =?utf-8?q?o_y_reducci=C3=B3n_de_rotaci=C3=B3n?=
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
Reply-To: =?utf-8?Q?Valeria_P=C3=A9rez?= <valeria.perez@consultores-rh.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

CgoKCVJlZHVjZSBsYSByb3RhY2nDs24geSByZXTDqW4gYSB0dSB0YWxlbnRvIGNsYXZlCglib2R5
IHsKICAgICAgbWFyZ2luOiAwOwogICAgICBwYWRkaW5nOiAwOwogICAgICBmb250LWZhbWlseTog
QXJpYWwsIEhlbHZldGljYSwgc2Fucy1zZXJpZjsKICAgICAgZm9udC1zaXplOiAxNHB4OwogICAg
ICBjb2xvcjogIzMzMzsKICAgICAgYmFja2dyb3VuZC1jb2xvcjogI2ZmZmZmZjsKICAgIH0KICAg
IHRhYmxlIHsKICAgICAgYm9yZGVyLXNwYWNpbmc6IDA7CiAgICAgIHdpZHRoOiAxMDAlOwogICAg
ICBtYXgtd2lkdGg6IDYwMHB4OwogICAgICBtYXJnaW46IGF1dG87CiAgICB9CiAgICB0ZCB7CiAg
ICAgIHBhZGRpbmc6IDEycHggMjBweDsKICAgIH0KICAgIGEgewogICAgICBjb2xvcjogIzFhNzNl
ODsKICAgICAgdGV4dC1kZWNvcmF0aW9uOiBub25lOwogICAgfQogICAgLmZvb3RlciB7CiAgICAg
IGZvbnQtc2l6ZTogMTJweDsKICAgICAgY29sb3I6ICM4ODg4ODg7CiAgICAgIHRleHQtYWxpZ246
IGNlbnRlcjsKICAgIH0KCQoKCkV2aXRhIGxhIHJvdGFjacOzbiBkZSBwZXJzb25hbCB5IHJldMOp
biB0YWxlbnRvIGNsYXZlIGNvbiBQc2ljb1NtYXJ0LgoKCgoJCgkJCgkJCQoJCQlIb2xhLCZuYnNw
O1Y5ZnMtZGV2ZWxvcGVyLAoKCQkJwr9UZSBoYSBwYXNhZG8gcXVlIHR1cyBtZWpvcmVzIGVtcGxl
YWRvcyByZW51bmNpYW4gcG9jbyBkZXNwdcOpcyBkZSBzZXIgY29udHJhdGFkb3MsIGRlamFuZG8g
dmFjYW50ZXMgeSBnZW5lcmFuZG8gY29zdG9zIGluZXNwZXJhZG9zPwoKCQkJQ29uZmlhciDDum5p
Y2FtZW50ZSBlbiBlbnRyZXZpc3RhcyBvIGN1cnLDrWN1bHVtcyBubyBzaWVtcHJlIGdhcmFudGl6
YSBxdWUgdW4gY2FuZGlkYXRvIGVuY2FqZSBlbiB0dSBlbXByZXNhLiBQb3IgZXNvIHF1aWVybyBw
cmVzZW50YXJ0ZSBQc2ljb1NtYXJ0LCB1bmEgaGVycmFtaWVudGEgcXVlIGF5dWRhIGEgdG9tYXIg
ZGVjaXNpb25lcyBkZSBzZWxlY2Npw7NuIGJhc2FkYXMgZW4gZGF0b3MsIHJlZHVjaWVuZG8gc29y
cHJlc2FzIHkgcm90YWNpw7NuIGRlIHBlcnNvbmFsLgoKCQkJQ29uIFBzaWNvU21hcnQgcHVlZGVz
OgoKCQkJCgkJCQlFdmFsdWFyIDMxIGNvbXBldGVuY2lhcyBwc2ljb23DqXRyaWNhcywgaW5jbHV5
ZW5kbyBsaWRlcmF6Z28sIGNvbXVuaWNhY2nDs24sIGhvbmVzdGlkYWQgZSBpbnRlbGlnZW5jaWEg
ZW1vY2lvbmFsLgoJCQkJVmFsaWRhciBjb25vY2ltaWVudG9zIHTDqWNuaWNvcyBjb24gbcOhcyBk
ZSAyLDUwMCBleMOhbWVuZXMgZXNwZWNpYWxpemFkb3MuCgkJCQlWZXJpZmljYXIgbGEgaWRlbnRp
ZGFkIGRlIHF1aWVuIHJlc3BvbmRlIG1lZGlhbnRlIGNhcHR1cmEgZm90b2dyw6FmaWNhIGF1dG9t
w6F0aWNhIGR1cmFudGUgbGEgZXZhbHVhY2nDs24uCgkJCQlHZXN0aW9uYXIgdG9kbyBkZXNkZSB1
bmEgc29sYSBwbGF0YWZvcm1hLCBhY2Nlc2libGUgZGVzZGUgY3VhbHF1aWVyIGRpc3Bvc2l0aXZv
LgoJCQkKCgkJCVJlZHVjaXIgbGEgcm90YWNpw7NuIHkgcmV0ZW5lciB0YWxlbnRvIGNsYXZlIGVz
dMOhIGFsIGFsY2FuY2UgZGUgdW4gY2xpYy4gU2kgcXVpZXJlcyBjb25vY2VyIG3DoXMsIHB1ZWRl
cyByZXNwb25kZXIgZXN0ZSBjb3JyZW8gbyBjb250YWN0YXJtZSBkaXJlY3RhbWVudGUsIG1pcyBk
YXRvcyBlc3TDoW4gYWJham8uCgoJCQlTYWx1ZG9zLAoKCQkJLS0tLS0tLS0tLS0tLS0KCgkJCUF0
dGUuOiBWYWxlcmlhIFDDqXJlegoKCQkJQ2l1ZGFkIGRlIE3DqXhpY286ICg1NSkgNTAxOCAwNTY1
CgoJCQlXaGF0c0FwcDogKzUyIDMzIDE2MDcgMjA4OQoKCQkJU2kgbm8gZGVzZWFzIHJlY2liaXIg
bcOhcyBjb3JyZW9zLCBoYXogY2xpYyBhcXXDrSBwYXJhIGRhcnRlIGRlIGJhamEuCgkJCQoJCQoJ
CgoKCgoKUGFyYSByZW1vdmVyIHN1IGRpcmVjY2kmb2FjdXRlO24gZGUgZXN0YSBsaXN0YSBoYWdh
IDxhIGhyZWY9Imh0dHBzOi8vczEuYXJyb2JhbWFpbC5jb20vdW5zdXNjcmliZS5waHA/aWQ9d3Jy
aXR5c3J3cHRzcHVxc2V1cCI+Y2xpY2sgYXF1JmlhY3V0ZTs8L2E+Cl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClY5ZnMtZGV2ZWxvcGVyIG1haWxpbmcgbGlz
dApWOWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3Vy
Y2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vdjlmcy1kZXZlbG9wZXIK
