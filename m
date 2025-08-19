Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 06648B2CFAC
	for <lists+v9fs-developer@lfdr.de>; Wed, 20 Aug 2025 01:15:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	Reply-To:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:
	List-Id:Subject:MIME-Version:Message-ID:From:To:Date:Sender:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=vml5DDxePW3hKxcE7t5PrGPfp1DGXlyCGb5Z10oDvnI=; b=EeMJfGPv9ZEohxYIFJ8iQoeJvA
	CAdTjUf1EmHxmc9pkyotFepFFtNIK10w75J/9mPMpBfSHaWB5DWXAXdX5qLnk6VTd0wPF/BOuNtw3
	k/Y/p74PlueMmdvVc6ZbH8zGAXlwORZ21J74c5oTkFylZ8wXkzhuKVyP3Kciq4dE5Shg=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1uoVYR-0000TU-Vx;
	Tue, 19 Aug 2025 23:15:47 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <bounce.L3194S133745M934@s1.arrobamail.com>)
 id 1uoVYR-0000TO-5w for v9fs-developer@lists.sourceforge.net;
 Tue, 19 Aug 2025 23:15:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:List-ID:List-Unsubscribe:
 Message-ID:Subject:Reply-To:From:To:Date:Sender:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Help:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=sJbV8gY6MHOm6oN5qH6Pcn8suBp8uvbi7onTsyQxKJM=; b=ltoTv512ooPWM8LhPqQipiRM9V
 VYeD8fuQWOyFAD8EMlPIFCdAsApj2MILfyBReaWWsVx3js0t4At3LskseluMEgQxCojMxvzxRN7K2
 IZuvncsClMYA4nF0E2e/eAABcsnhGKA+fVkD9a0BHE2S+381juDbaq9r9orysWMrqDRg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:List-ID:List-Unsubscribe:Message-ID:Subject:
 Reply-To:From:To:Date:Sender:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Help:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=sJbV8gY6MHOm6oN5qH6Pcn8suBp8uvbi7onTsyQxKJM=; b=B
 m1Ngc/wLS0ejbehF7G9j9BLuHJDyPJCKQ1YpHG7M5NAcwQX5Py+oDq994BzIpsgDBERE+IzGHCKop
 kxr93BQIKltjvOXhHivlWckBYPgZgG+7l/1iEFm+Aw/V0XKnNdYgzV3cH+DunB2algTTjR4gUxxyh
 TWILHX9PDyRCty20=;
Received: from p144i156.pf.fmservers.net ([190.105.144.156])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uoVYQ-0000jT-4L for v9fs-developer@lists.sourceforge.net;
 Tue, 19 Aug 2025 23:15:47 +0000
Date: Tue, 19 Aug 2025 18:15:34 -0500
To: V9fs-developer <v9fs-developer@lists.sourceforge.net>
From: Mariann Rivas <mariann.rivas@consultores-rh.com>
Message-ID: <WOWQBFAi3Bpygy6jB3EW39MDn3xSy6xOybvEuq6DQk@s1.arrobamail.com>
X-Mailer: FMMailer v3
X-Data: ZXx2OWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXR8
X-Fid: eGZpZC12OWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQtOTM0LTMxOTQtMTMzNzQ1LTI2OS1zMS5hcnJvYmFtYWlsLmNvbQ==
X-fmbh: djlmcy1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0OzkzNDszMTk0OzEzMzc0NTsyNjk=
X-bhid: X-bhd: 934;3194;133745
List-Unsubscribe-Post: List-Unsubscribe=One-Click
X-AntiAbuse: abuse@outservices.net
Precedence: bulk
Feedback-ID: 934:3194s133745:124931:WPservicesESP
X-Transport: p144i156
MIME-Version: 1.0
DKIM-Signature: v=1; d=consultores-rh.com; s=fm;
 a=rsa-sha256; q=dns/txt; t=1755645334; c=relaxed/simple;
 h=Date:To:From:Reply-To:Subject:Message-ID:X-Mailer:X-Data:X-Fid:X-fmbh:List-Unsubscribe:X-AntiAbuse:Feedback-ID:List-ID:MIME-Version:Content-Type;
 z=Date:Tue,=2019=20Aug=202025=2018:15:34=20-0500
 |To:V9fs-developer=20<v9fs-developer@lists.sourceforge.net>
 |From:Mariann=20Rivas=20<mariann.rivas@consultores-rh.com>
 |Reply-To:Mariann=20Rivas=20<mariann.rivas@consultores-rh.com>
 |Subject:=3D?utf-8?Q?V9fs-developer,_capacitaci=3DC3=3DB3n_sin_seguimiento
 _no_es_desarrollo?=3D
 |Message-ID:<WOWQBFAi3Bpygy6jB3EW39MDn3xSy6xOybvEuq6DQk@s1.arrobamail.com>
 |X-Mailer:FMMailer=20v3
 |X-Data:ZXx2OWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXR8
 |X-Fid:eGZpZC12OWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQtOTM0LTMxOTQ
 tMTMzNzQ1LTI2OS1zMS5hcnJvYmFtYWlsLmNvbQ=3D=3D
 |X-fmbh:djlmcy1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0OzkzNDszMTk0OzEzMz
 c0NTsyNjk=3D
 |List-Unsubscribe:<https://s1.arrobamail.com/unsuscribe.php?FormData=3Dwrr
 itysrwptsprtseup> |X-AntiAbuse:abuse@outservices.net
 |Feedback-ID:934:3194s133745:124931:WPservicesESP
 |List-ID:<38328:2407410> |MIME-Version:1.0
 |Content-Type:multipart/alternative=3B=20boundary=3D"b1_WOWQBFAi3Bpygy6jB3
 EW39MDn3xSy6xOybvEuq6DQk";
 bh=McVIox0rMn4QYHfNEY5qv7fA+oIrPfs2bzhO92KR6dU=;
 b=iaiMmv5mGMZe/pTIuqn0oMfElvGrP7Hiq4w+86QatK2iuJc3bQIew8SN8PA/0GUIADLYB9jgq
 Ys1OWdGPVdrTJ0Z3zD0So7JoGZp3MRg3i2aa83xGg6Gny3sBZjoEwAyM3JJQ82qPkodtKw0qX
 8Elwkuyp4Nur/pGWPlTON7MRE=
X-Spam-Score: 2.9 (++)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Mejora el clima organizacional body { margin: 0; padding:
 0; font-family: Arial, Helvetica, sans-serif; font-size: 14px; color: #333;
 background-color: #ffffff; } table { border-spacing: 0; width: 10 [...] 
 Content analysis details:   (2.9 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 4.0 RCVD_IN_UCE1           RBL: IP Listed in UCEPROTECT Level 1
 [190.105.144.156 listed in dnsbl-1.uceprotect.net]
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 0.0 HTML_MESSAGE           BODY: HTML included in message
 0.0 HTML_FONT_LOW_CONTRAST BODY: HTML font color similar or identical to
 background
 -1.0 MAILING_LIST_MULTI     Multiple indicators imply a widely-seen list
 manager
X-Headers-End: 1uoVYQ-0000jT-4L
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] =?utf-8?q?V9fs-developer=2C_capacitaci=C3=B3n_si?=
 =?utf-8?q?n_seguimiento_no_es_desarrollo?=
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

CgoKCU1lam9yYSBlbCBjbGltYSBvcmdhbml6YWNpb25hbAoJYm9keSB7CiAgICAgIG1hcmdpbjog
MDsKICAgICAgcGFkZGluZzogMDsKICAgICAgZm9udC1mYW1pbHk6IEFyaWFsLCBIZWx2ZXRpY2Es
IHNhbnMtc2VyaWY7CiAgICAgIGZvbnQtc2l6ZTogMTRweDsKICAgICAgY29sb3I6ICMzMzM7CiAg
ICAgIGJhY2tncm91bmQtY29sb3I6ICNmZmZmZmY7CiAgICB9CiAgICB0YWJsZSB7CiAgICAgIGJv
cmRlci1zcGFjaW5nOiAwOwogICAgICB3aWR0aDogMTAwJTsKICAgICAgbWF4LXdpZHRoOiA2MDBw
eDsKICAgICAgbWFyZ2luOiBhdXRvOwogICAgfQogICAgdGQgewogICAgICBwYWRkaW5nOiAxMnB4
IDIwcHg7CiAgICB9CiAgICBhIHsKICAgICAgY29sb3I6ICMxYTczZTg7CiAgICAgIHRleHQtZGVj
b3JhdGlvbjogbm9uZTsKICAgIH0KICAgIC5mb290ZXIgewogICAgICBmb250LXNpemU6IDEycHg7
CiAgICAgIGNvbG9yOiAjODg4ODg4OwogICAgICB0ZXh0LWFsaWduOiBjZW50ZXI7CiAgICB9CgkK
CgpJbnZpZXJ0ZSBlbiBjYXBhY2l0YWNpw7NuIHF1ZSByZWFsbWVudGUgZGVzYXJyb2xsYSBhIHR1
IGVxdWlwbyBjb24gVm9yZWNvbCBMZWFybmluZy4KCgoKCQoJCQoJCQkKCQkJSG9sYSwmbmJzcDtW
OWZzLWRldmVsb3BlciwKCgkJCUludmVydGlyIGVuIGNhcGFjaXRhY2nDs24gbm8gc2llbXByZSBz
aWduaWZpY2EgcXVlIHR1IGVxdWlwbyBlc3TDqSBjcmVjaWVuZG8uIFNpbiB1biBidWVuIHNlZ3Vp
bWllbnRvLCBsb3MgY3Vyc29zIHB1ZWRlbiBubyB0ZW5lciBlbCBlZmVjdG8gZXNwZXJhZG8uCgoJ
CQlWb3JlY29sIExlYXJuaW5nIGVzIHVuYSBwbGF0YWZvcm1hIHF1ZSB0ZSBheXVkYSBhIGdlc3Rp
b25hciBlbCBhcHJlbmRpemFqZSBkZSB0dSBlcXVpcG8gZGUgZm9ybWEgc2VuY2lsbGEgeSBlZmVj
dGl2YS4KCgkJCUNvbiBWb3JlY29sIExlYXJuaW5nIHB1ZWRlczoKCgkJCQoJCQkJQ2FwYWNpdGFy
IGEgdHUgcGVyc29uYWwsIGRlc2RlIHVubyBoYXN0YSBjaW5jbyBtaWwgY29sYWJvcmFkb3Jlcywg
Y29uIGN1cnNvcyBoZWNob3MgYSBsYSBtZWRpZGEgZGUgbGFzIG5lY2VzaWRhZGVzIGRlIHR1IGVt
cHJlc2EuCgkJCQlWZXIgY8OzbW8gYXZhbnphIGNhZGEgcGVyc29uYSB5IGVudHJlZ2FyIGNlcnRp
ZmljYWRvcyBhbCB0ZXJtaW5hciBsb3MgY3Vyc29zLCBhc2VndXJhbmRvIHF1ZSBhcHJlbmRpZXJv
biBkZSB2ZXJkYWQuCgkJCQlQZXJtaXRpciBxdWUgdHVzIGNvbGFib3JhZG9yZXMgZXN0dWRpZW4g
Y3VhbmRvIHF1aWVyYW4geSBkZXNkZSBjdWFscXVpZXIgZGlzcG9zaXRpdm8sIGNvbiBldmFsdWFj
aW9uZXMgcXVlIGNvbmZpcm1hbiBsbyBhcHJlbmRpZG8uCgkJCQoKCQkJRXN0YSBwbGF0YWZvcm1h
IGVzdMOhIGRpc2XDsWFkYSBwYXJhIHF1ZSBsYSBjYXBhY2l0YWNpw7NuIHNlYSB1bmEgaGVycmFt
aWVudGEgcmVhbCBwYXJhIGVsIGRlc2Fycm9sbG8gZGUgdHUgZXF1aXBvLCBubyBzb2xvIHVuYSBs
aXN0YSBkZSB0YXJlYXMgcG9yIGN1bXBsaXIuCgoJCQlTaSBxdWllcmVzIG1lam9yYXIgZWwgYXBy
ZW5kaXphamUgZW4gdHUgZW1wcmVzYSwgVm9yZWNvbCBMZWFybmluZyBwdWVkZSBheXVkYXJ0ZS4g
UmVzcG9uZGUgYSBlc3RlIGNvcnJlbyBvIGNvbnTDoWN0YW1lOyBtaXMgZGF0b3MgZXN0w6FuIGFi
YWpvLgoKCQkJU2FsdWRvcywKCgkJCS0tLS0tLS0tLS0tLS0tCgoJCQlBdHRlLjogTWFyaWFubiBS
aXZhcwoKCQkJQ2l1ZGFkIGRlIE3DqXhpY286ICg1NSkgNTAxOCAwNTY1CgoJCQlXaGF0c0FwcDog
KzUyIDMzIDE2MDcgMjA4OQoKCQkJU2kgbm8gZGVzZWFzIHJlY2liaXIgbcOhcyBjb3JyZW9zLCBo
YXogY2xpYyBhcXXDrSBwYXJhIGRhcnRlIGRlIGJhamEuCgkJCQoJCQoJCgoKCgoKUGFyYSByZW1v
dmVyIHN1IGRpcmVjY2kmb2FjdXRlO24gZGUgZXN0YSBsaXN0YSBoYWdhIDxhIGhyZWY9Imh0dHBz
Oi8vczEuYXJyb2JhbWFpbC5jb20vdW5zdXNjcmliZS5waHA/aWQ9d3JyaXR5c3J3cHRzcHJ0c2V1
cCI+Y2xpY2sgYXF1JmlhY3V0ZTs8L2E+Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fClY5ZnMtZGV2ZWxvcGVyIG1haWxpbmcgbGlzdApWOWZzLWRldmVsb3Bl
ckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlz
dHMvbGlzdGluZm8vdjlmcy1kZXZlbG9wZXIK
