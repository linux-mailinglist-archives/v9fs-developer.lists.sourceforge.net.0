Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A76AB8738C
	for <lists+v9fs-developer@lfdr.de>; Fri, 19 Sep 2025 00:25:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	Reply-To:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:
	List-Id:Subject:MIME-Version:Message-ID:From:To:Date:Sender:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=SneP8IXmsN0bds8Tv57E0KHHiyKRFWIywIVdXkoSZMY=; b=YUWhplbvvBe2qla1bRK4FQtvT/
	xjk+M9ERHEg+K5jBTqnHewvpDrO8wD17HgECQmSI4NomnwiWi1/gonqq3SUv2lqn7WLVg+bdhd0EQ
	MQcDj1Xx+OD7JN1W7tOKRU9UqP0/lcGePHFZ7tJKq3iEylZkQo3XV0XzqwA0MyoOV/Ho=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1uzN3k-0006NY-WE;
	Thu, 18 Sep 2025 22:25:01 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <bounce.L3194S133745M963@s1.arrobamail.com>)
 id 1uzN3j-0006NQ-Gs for v9fs-developer@lists.sourceforge.net;
 Thu, 18 Sep 2025 22:24:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:List-ID:List-Unsubscribe:
 Message-ID:Subject:Reply-To:From:To:Date:Sender:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Help:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=I9WxMinkF2LvgNmGHSLeX8L/B7T037d53nTQiCKl2Z0=; b=Az7vvZrjdCM15NcQZvrY7RkVcC
 FnBCOuW4p6dqtzWXwFuanrk9yBAImR+On6QTAIBbehrvKFJiC/87G0oMqhSwRg6eAaaLFFaPyLuO+
 UskU0q+XenUlMurbk77LoYjf/gCB+ySapSC2R14jpGhnhBS/ueFPS1n9bkNBjGBNAhjw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:List-ID:List-Unsubscribe:Message-ID:Subject:
 Reply-To:From:To:Date:Sender:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Help:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=I9WxMinkF2LvgNmGHSLeX8L/B7T037d53nTQiCKl2Z0=; b=e
 uY3Is0LsdbIv/Ov66IrVpooEl/p79EtNgzuxothePGUzs/oh/WYMd17zegiUeUol1gfYKxjGGv+hl
 CKXZkjW3PV6B1ZEy7m4Aa8TvINESjqqBqSITVhlACKmP3ybQdtYzbyg4I7QP+yUXS1OTi/bxmhVA/
 qp2c0YGcfLPhcII8=;
Received: from p144i156.pf.fmservers.net ([190.105.144.156])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uzN3i-0006d8-DU for v9fs-developer@lists.sourceforge.net;
 Thu, 18 Sep 2025 22:24:59 +0000
Date: Thu, 18 Sep 2025 17:10:27 -0500
To: V9fs-developer <v9fs-developer@lists.sourceforge.net>
From: =?utf-8?Q?Valeria_P=C3=A9rez?= <valeria.perez@consultores-rh.com>
Message-ID: <X28GiCbDN7RxKGVWY1OrXVUkw4617kusZDI6bRJEhc@s1.arrobamail.com>
X-Mailer: FMMailer v3
X-Data: ZXx2OWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXR8
X-Fid: eGZpZC12OWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQtOTYzLTMxOTQtMTMzNzQ1LTI2OS1zMS5hcnJvYmFtYWlsLmNvbQ==
X-fmbh: djlmcy1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0Ozk2MzszMTk0OzEzMzc0NTsyNjk=
X-bhid: X-bhd: 963;3194;133745
List-Unsubscribe-Post: List-Unsubscribe=One-Click
X-AntiAbuse: abuse@outservices.net
Precedence: bulk
Feedback-ID: 963:3194s133745:124931:WPservicesESP
X-Transport: p144i156
MIME-Version: 1.0
DKIM-Signature: v=1; d=consultores-rh.com; s=fm;
 a=rsa-sha256; q=dns/txt; t=1758233427; c=relaxed/simple;
 h=Date:To:From:Reply-To:Subject:Message-ID:X-Mailer:X-Data:X-Fid:X-fmbh:List-Unsubscribe:X-AntiAbuse:Feedback-ID:List-ID:MIME-Version:Content-Type;
 z=Date:Thu,=2018=20Sep=202025=2017:10:27=20-0500
 |To:V9fs-developer=20<v9fs-developer@lists.sourceforge.net>
 |From:=3D?utf-8?Q?Valeria_P=3DC3=3DA9rez?=3D=20<valeria.perez@consultores-
 rh.com>
 |Reply-To:=3D?utf-8?Q?Valeria_P=3DC3=3DA9rez?=3D=20<valeria.perez@consulto
 res-rh.com>
 |Subject:=3D?utf-8?Q?PsicoSmart:_Selecci=3DC3=3DB3n_de_talento_y_reducci=3
 DC3=3DB3n_de_rotaci=3DC3=3DB3n?=3D
 |Message-ID:<X28GiCbDN7RxKGVWY1OrXVUkw4617kusZDI6bRJEhc@s1.arrobamail.com>
 |X-Mailer:FMMailer=20v3
 |X-Data:ZXx2OWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXR8
 |X-Fid:eGZpZC12OWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQtOTYzLTMxOTQ
 tMTMzNzQ1LTI2OS1zMS5hcnJvYmFtYWlsLmNvbQ=3D=3D
 |X-fmbh:djlmcy1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0Ozk2MzszMTk0OzEzMz
 c0NTsyNjk=3D
 |List-Unsubscribe:<https://s1.arrobamail.com/unsuscribe.php?FormData=3Dwrr
 itysrwptspurseup> |X-AntiAbuse:abuse@outservices.net
 |Feedback-ID:963:3194s133745:124931:WPservicesESP
 |List-ID:<38328:2407410> |MIME-Version:1.0
 |Content-Type:multipart/alternative=3B=20boundary=3D"b1_X28GiCbDN7RxKGVWY1
 OrXVUkw4617kusZDI6bRJEhc";
 bh=DaDxUXSt6Nt2FBep6uS2mYuxxa2pNRaNGz1TJCEkxa0=;
 b=AVckQaTQaYxxbykpKCdk4HLoNbRVujgznZkbphLSrLqXKhhZPYhl8JkMp9nU7Sj9w47dKnLeY
 bVNgilgB3ISnX6D8g05+nqQaFRE4YCyzvRnKlMN3+Z2DxdOJiVJEnEwk8G9ghmUuJs2vnIJrr
 wXEfQjKQQpRvFC5x4UN+E7RzA=
X-Spam-Score: 2.9 (++)
X-Spam-Report: Spam detection software, running on the system "sfi-spamd-1.hosts.colo.sdot.me",
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
  0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
                             domains are different
  0.0 HTML_MESSAGE           BODY: HTML included in message
  0.0 HTML_FONT_LOW_CONTRAST BODY: HTML font color similar or identical to
                             background
 -1.0 MAILING_LIST_MULTI     Multiple indicators imply a widely-seen list
                             manager
X-Headers-End: 1uzN3i-0006d8-DU
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
aXR5c3J3cHRzcHVyc2V1cCI+Y2xpY2sgYXF1JmlhY3V0ZTs8L2E+Cl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClY5ZnMtZGV2ZWxvcGVyIG1haWxpbmcgbGlz
dApWOWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3Vy
Y2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vdjlmcy1kZXZlbG9wZXIK
