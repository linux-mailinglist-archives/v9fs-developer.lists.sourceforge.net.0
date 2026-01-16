Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 63CF5D295F7
	for <lists+v9fs-developer@lfdr.de>; Fri, 16 Jan 2026 01:08:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	Reply-To:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:
	List-Id:Subject:MIME-Version:Message-ID:From:To:Date:Sender:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=1WKS5dmnu6YDJR/dFpuW709uIUMYW7w7h0ZyrOz/zzw=; b=dOYivF3d0DyeBiSbsynS/lZouE
	Jp4ZHjLmCqm129F1qvCuR9G65ChnwGrVmz+OUhJcUm/JeytnaMS2DkGi/Thm3XD9mBhY/rNrquk6N
	i92ItBtlHqLQuEbyeKRGCVZdoMHWas+kcK6cMU1w4I9CVdabrDMNqOm0HMr55Wrxie4M=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1vgXNc-000147-P1;
	Fri, 16 Jan 2026 00:07:56 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <bounce.L3194S133745M1067@s1.arrobamail.com>)
 id 1vgXNa-00013x-Q1 for v9fs-developer@lists.sourceforge.net;
 Fri, 16 Jan 2026 00:07:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:List-ID:List-Unsubscribe:
 Message-ID:Subject:Reply-To:From:To:Date:Sender:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Help:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=xtJArry+8OjDpo/bdQHvU3PgseRqG2NQKgsgLaOW0Aw=; b=VimChy//PxzesH9oE5rH5hqMLJ
 ybuA6IEDOwHXoSJn+MhDfB/695Xmfhn12e518vSaE8a5DE6qkAycW8nkcc8EudW9gDqJGif9rZ9hR
 U3p84IptEazEfZT71o1Nhq5iH3l1BP5PSkZUG/mQoMw/ngoRKzHLDbN8RPc0xtcrZ6+4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:List-ID:List-Unsubscribe:Message-ID:Subject:
 Reply-To:From:To:Date:Sender:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Help:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=xtJArry+8OjDpo/bdQHvU3PgseRqG2NQKgsgLaOW0Aw=; b=U
 l/HnzhxYKeWJFTLGGc8ycdTIv1XMjSwrFHBeSjVr4327IXEkU6MZko41LWFei93E++F46WQaUAaVx
 OP4+2Y5hrfuqlqE51+JmlbKfPwdlO9mKdLOA9crG2mBlcQPQuYBhFPJNUBFjzy8hE44QzQbaIOt86
 nue14BhOBDwpkN9I=;
Received: from p144i156.pf.fmservers.net ([190.105.144.156])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1vgXNZ-0000Lz-St for v9fs-developer@lists.sourceforge.net;
 Fri, 16 Jan 2026 00:07:54 +0000
Date: Thu, 15 Jan 2026 18:07:41 -0600
To: V9fs-developer <v9fs-developer@lists.sourceforge.net>
From: =?utf-8?Q?Valeria_P=C3=A9rez?= <valeria.perez@consultores-rh.com>
Message-ID: <48da9a2035ddf7a92500be0e28b110a0@s1.arrobamail.com>
X-Mailer: FMMailer v3
X-Data: ZXx2OWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXR8
X-Fid: eGZpZC12OWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQtMTA2Ny0zMTk0LTEzMzc0NS0yNjktczEuYXJyb2JhbWFpbC5jb20=
X-fmbh: djlmcy1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0OzEwNjc7MzE5NDsxMzM3NDU7MjY5
X-bhid: X-bhd: 1067;3194;133745
List-Unsubscribe-Post: List-Unsubscribe=One-Click
X-AntiAbuse: abuse@outservices.net
Precedence: bulk
Feedback-ID: 1067:3194s133745:124931:WPservicesESP
X-Transport: p144i156
MIME-Version: 1.0
DKIM-Signature: v=1; d=consultores-rh.com; s=fm;
 a=rsa-sha256; q=dns/txt; t=1768522061; c=relaxed/simple;
 h=Date:To:From:Reply-To:Subject:Message-ID:X-Mailer:X-Data:X-Fid:X-fmbh:List-Unsubscribe:X-AntiAbuse:Feedback-ID:List-ID:MIME-Version:Content-Type;
 z=Date:Thu,=2015=20Jan=202026=2018:07:41=20-0600
 |To:V9fs-developer=20<v9fs-developer@lists.sourceforge.net>
 |From:=3D?utf-8?Q?Valeria_P=3DC3=3DA9rez?=3D=20<valeria.perez@consultores-
 rh.com>
 |Reply-To:=3D?utf-8?Q?Valeria_P=3DC3=3DA9rez?=3D=20<valeria.perez@consulto
 res-rh.com>
 |Subject:=3D?utf-8?Q?PsicoSmart:_Selecci=3DC3=3DB3n_de_talento_y_reducci=3
 DC3=3DB3n_de_rotaci=3DC3=3DB3n?=3D
 |Message-ID:<48da9a2035ddf7a92500be0e28b110a0@s1.arrobamail.com>
 |X-Mailer:FMMailer=20v3
 |X-Data:ZXx2OWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXR8
 |X-Fid:eGZpZC12OWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQtMTA2Ny0zMTk
 0LTEzMzc0NS0yNjktczEuYXJyb2JhbWFpbC5jb20=3D
 |X-fmbh:djlmcy1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0OzEwNjc7MzE5NDsxMz
 M3NDU7MjY5
 |List-Unsubscribe:<https://s1.arrobamail.com/unsuscribe.php?FormData=3Dwrr
 itysrwptswquiseup> |X-AntiAbuse:abuse@outservices.net
 |Feedback-ID:1067:3194s133745:124931:WPservicesESP
 |List-ID:<38328:2407410> |MIME-Version:1.0
 |Content-Type:multipart/alternative=3B=20boundary=3D"b1_2KE8ZvfqxkDSXhxYiT
 Wa1JpIuv0Qmx30OkpPV54iH4";
 bh=XiT/95f1t60gshGibTQ/unnSOzprNsEN0F3dfnwPt7E=;
 b=ZQydPJrxx2mTxlKGzIMGA549Xp6ZQG6D2wim1aNhq6Zj3G0tFrBACo6/PLw0ECpI8+mBHanOw
 Cgt0T4MGzK7PBv2h/jOJKXQ+V6f8T55xN309Pz9en4+BcCJmxTrk4FqcDk/F834Qk/RXHlUAL
 jNh7AMjXzog2Tb48ZiLwqv0z4=
X-Spam-Score: 3.9 (+++)
X-Spam-Report: Spam detection software, running on the system "sfi-spamd-2.hosts.colo.sdot.me",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Reduce la rotación y retén a tu talento clave body { margin:
    0; padding: 0; font-family: Arial, Helvetica, sans-serif; font-size: 14px;
    color: #333; background-color: #ffffff; } table { border-spac [...] 
 
 Content analysis details:   (3.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  1.0 RCVD_IN_UCE2           RBL: IP Subnet Listed in UCEPROTECT Level 2
                             [190.105.144.156 listed in dnsbl-2.uceprotect.net]
  4.0 RCVD_IN_UCE1           RBL: IP Listed in UCEPROTECT Level 1
                             [190.105.144.156 listed in dnsbl-1.uceprotect.net]
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
  0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
                             domains are different
  0.0 HTML_FONT_LOW_CONTRAST BODY: HTML font color similar or identical to
                             background
  0.0 HTML_MESSAGE           BODY: HTML included in message
 -1.0 MAILING_LIST_MULTI     Multiple indicators imply a widely-seen list
                             manager
X-Headers-End: 1vgXNZ-0000Lz-St
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
aXR5c3J3cHRzd3F1aXNldXAiPmNsaWNrIGFxdSZpYWN1dGU7PC9hPgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpWOWZzLWRldmVsb3BlciBtYWlsaW5nIGxp
c3QKVjlmcy1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291
cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL3Y5ZnMtZGV2ZWxvcGVyCg==
