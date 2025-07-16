Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BB19CB07ED6
	for <lists+v9fs-developer@lfdr.de>; Wed, 16 Jul 2025 22:26:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	Reply-To:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:
	List-Id:Subject:MIME-Version:Message-ID:From:To:Date:Sender:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Fr3M0ZjxaZYoVm1sbmDFO/7GKDKf4AG0ikl30AF19Jk=; b=JRenpEP9CqAT/khplIxmVh8Er4
	Js4pubyscVVCgyAjFUVPzYgEycvxxu2pHJkTK78RYvhgZhCzmvg6WOV2uV+dVNWjmZ1CTPrPI/YHt
	pKXPPphpb0C3lkLtpC5YaCfltFjJwunaV/7L8eNGJYoeMcr0M1btR1UUI4UFXJBcPWWY=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1uc8hT-0007ic-8C;
	Wed, 16 Jul 2025 20:25:59 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <bounce.L3194S133745M838@s1.arrobamail.com>)
 id 1uc8hR-0007iV-M1 for v9fs-developer@lists.sourceforge.net;
 Wed, 16 Jul 2025 20:25:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:List-ID:List-Unsubscribe:
 Message-ID:Subject:Reply-To:From:To:Date:Sender:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Help:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=3jsPK6ZxFqA/sPNN7HvUovn0Z5gPifuR4Q06uRZG0NY=; b=ATHo7nDoYBRKONdB2DtUvM4P0W
 /u/TBWaP4eoh4D3DFjCUJt5s35Oy/ChrI9rXdIBOophmaKSsAej0gY2ESsYVL3guBLF55Z/UFSJ8/
 RO8GlgizyQlerNURiS4MYo8Ia+O5wsabKPVGn6N1gWq5ofm+TQjx7QvfbePLDUJYSYdU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:List-ID:List-Unsubscribe:Message-ID:Subject:
 Reply-To:From:To:Date:Sender:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Help:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=3jsPK6ZxFqA/sPNN7HvUovn0Z5gPifuR4Q06uRZG0NY=; b=S
 b9gSDz+ZLhiKoyWcYS/rCkzyLk31cSherhwMgH1A6meJxhkWKR040GGw4vMo1nJ7KKdKr64j7qk5h
 4Rqh/xflFB7IxQ1xjBRUzyvuYylajOeKUIZJkiBwkGILawTmGC/QG0e6wJNdc+L50n/e6fKzqI1Q4
 R/rnVsEg2S4JU9yU=;
Received: from p144i156.pf.fmservers.net ([190.105.144.156])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uc8hQ-0006xa-Nt for v9fs-developer@lists.sourceforge.net;
 Wed, 16 Jul 2025 20:25:57 +0000
Date: Wed, 16 Jul 2025 15:25:49 -0500
To: V9fs-developer <v9fs-developer@lists.sourceforge.net>
From: =?utf-8?Q?Valeria_P=C3=A9rez?= <valeria.perez@consultores-rh.com>
Message-ID: <OvpsmKGwzJnsDAPhoiQOaknhEps7P4M4dEXIXQuZZE@s1.arrobamail.com>
X-Mailer: FMMailer v3
X-Data: ZXx2OWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXR8
X-Fid: eGZpZC12OWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQtODM4LTMxOTQtMTMzNzQ1LTI2OS1zMS5hcnJvYmFtYWlsLmNvbQ==
X-fmbh: djlmcy1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0OzgzODszMTk0OzEzMzc0NTsyNjk=
X-bhid: X-bhd: 838;3194;133745
List-Unsubscribe-Post: List-Unsubscribe=One-Click
X-AntiAbuse: abuse@outservices.net
Precedence: bulk
Feedback-ID: 838:3194s133745:124931:WPservicesESP
X-Transport: p144i156
MIME-Version: 1.0
DKIM-Signature: v=1; d=consultores-rh.com; s=fm;
 a=rsa-sha256; q=dns/txt; t=1752697549; c=relaxed/simple;
 h=Date:To:From:Reply-To:Subject:Message-ID:X-Mailer:X-Data:X-Fid:X-fmbh:List-Unsubscribe:X-AntiAbuse:Feedback-ID:List-ID:MIME-Version:Content-Type;
 z=Date:Wed,=2016=20Jul=202025=2015:25:49=20-0500
 |To:V9fs-developer=20<v9fs-developer@lists.sourceforge.net>
 |From:=3D?utf-8?Q?Valeria_P=3DC3=3DA9rez?=3D=20<valeria.perez@consultores-
 rh.com>
 |Reply-To:=3D?utf-8?Q?Valeria_P=3DC3=3DA9rez?=3D=20<valeria.perez@consulto
 res-rh.com>
 |Subject:V9fs-developer,=20conoce=20mejor=20a=20tu=20candidato=20antes=20d
 e=20contratar
 |Message-ID:<OvpsmKGwzJnsDAPhoiQOaknhEps7P4M4dEXIXQuZZE@s1.arrobamail.com>
 |X-Mailer:FMMailer=20v3
 |X-Data:ZXx2OWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXR8
 |X-Fid:eGZpZC12OWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQtODM4LTMxOTQ
 tMTMzNzQ1LTI2OS1zMS5hcnJvYmFtYWlsLmNvbQ=3D=3D
 |X-fmbh:djlmcy1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0OzgzODszMTk0OzEzMz
 c0NTsyNjk=3D
 |List-Unsubscribe:<https://s1.arrobamail.com/unsuscribe.php?FormData=3Dwrr
 itysrwptsoroseup> |X-AntiAbuse:abuse@outservices.net
 |Feedback-ID:838:3194s133745:124931:WPservicesESP
 |List-ID:<38328:2407410> |MIME-Version:1.0
 |Content-Type:multipart/alternative=3B=20boundary=3D"b1_OvpsmKGwzJnsDAPhoi
 QOaknhEps7P4M4dEXIXQuZZE";
 bh=3jsPK6ZxFqA/sPNN7HvUovn0Z5gPifuR4Q06uRZG0NY=;
 b=ccL+j9WcRF+zIPhOCyzYIlMucF6TyvdKm1wnQwnTgq+7Pddhvp6BaO6ds4Ohu9ua2vVJa3rMH
 XUheWP3oHXurkIqlVxygsgKOAoNxjVCV8AcwtqFTKE0Uzr3kgxN5hhBWXLUayrHsMcI3wX8k9
 b/Kzf3haTtfFT88Aj0+8eH6P8=
X-Spam-Score: 2.9 (++)
X-Spam-Report: Spam detection software, running on the system "sfi-spamd-1.hosts.colo.sdot.me",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hola,&nbsp;V9fs-developer Sabemos que encontrar al candidato
    ideal va más allá del currículum. Por eso quiero contarte brevemente sobre
    PsicoSmart, una plataforma que ayuda a equipos de RR.&nbsp;HH. a evaluar
   talento con pr [...] 
 
 Content analysis details:   (2.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  4.0 RCVD_IN_UCE1           RBL: IP Listed in UCEPROTECT Level 1
                             [190.105.144.156 listed in dnsbl-1.uceprotect.net]
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
  0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
                             domains are different
  0.0 HTML_MESSAGE           BODY: HTML included in message
 -1.0 MAILING_LIST_MULTI     Multiple indicators imply a widely-seen list
                             manager
X-Headers-End: 1uc8hQ-0006xa-Nt
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] V9fs-developer,
 conoce mejor a tu candidato antes de contratar
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

CgoKCQoKCkhvbGEsJm5ic3A7Vjlmcy1kZXZlbG9wZXIKClNhYmVtb3MgcXVlIGVuY29udHJhciBh
bCBjYW5kaWRhdG8gaWRlYWwgdmEgbcOhcyBhbGzDoSBkZWwgY3VycsOtY3VsdW0uIFBvciBlc28g
cXVpZXJvIGNvbnRhcnRlIGJyZXZlbWVudGUgc29icmUgUHNpY29TbWFydCwgdW5hIHBsYXRhZm9y
bWEgcXVlIGF5dWRhIGEgZXF1aXBvcyBkZSBSUi4mbmJzcDtISC4gYSBldmFsdWFyIHRhbGVudG8g
Y29uIHBydWViYXMgcHNpY29tw6l0cmljYXMgcsOhcGlkYXMsIGNvbmZpYWJsZXMgeSBmw6FjaWxl
cyBkZSBhcGxpY2FyLgoKQ29uIFBzaWNvU21hcnQgcHVlZGVzOgoKCgkKCUFwbGljYXIgZXZhbHVh
Y2lvbmVzIHBzaWNvbcOpdHJpY2FzIDEwMCUgZW4gbMOtbmVhLgoJCgkKCUVsZWdpciBlbnRyZSBt
w6FzIGRlIDMwJm5ic3A7cHJ1ZWJhcyBwcm9mZXNpb25hbGVzIHZhbGlkYWRhcy4KCQoJCglHZW5l
cmFyIHJlcG9ydGVzIGF1dG9tw6F0aWNvcywgdmlzdWFsZXMgeSBmw6FjaWxlcyBkZSBpbnRlcnBy
ZXRhci4KCQoJCglDb21wYXJhciByZXN1bHRhZG9zIGVudHJlIGNhbmRpZGF0b3MgZW4gc2VndW5k
b3MuCgkKCQoJQWhvcnJhciBob3JhcyB2YWxpb3NhcyBkZWwgcHJvY2VzbyBkZSBzZWxlY2Npw7Nu
LgoJCgoKU2kgZXN0w6FzIGJ1c2NhbmRvIG1lam9yYXIgdHVzIGNvbnRyYXRhY2lvbmVzLCB0ZSBs
byByZWNvbWllbmRvIG11Y2jDrXNpbW8uIFNpIHF1aWVyZXMgY29ub2NlciBtw6FzIHB1ZWRlcyBy
ZXNwb25kZXIgZXN0ZSBjb3JyZW8gbyBzaW1wbGVtZW50ZSBjb250YWN0YXJtZSwgbWlzIGRhdG9z
IGVzdMOhbiBhYmFqby4KClNhbHVkb3MsCgotLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQoK
QXR0ZS46Jm5ic3A7VmFsZXJpYSBQw6lyZXoKCkNpdWRhZCBkZSBNw6l4aWNvOiAoNTUpIDUwMTgg
MDU2NQoKV2hhdHNBcHA6Jm5ic3A7KzUyIDMzIDE2MDcgMjA4OQoKJm5ic3A7CgpQYXJhIGRhcnRl
IGRlIGJhamEgZGUgZXN0YSBsaXN0YSwgaGF6IGNsaWMgYXF1w60uCgoKCgpQYXJhIHJlbW92ZXIg
c3UgZGlyZWNjaSZvYWN1dGU7biBkZSBlc3RhIGxpc3RhIGhhZ2EgPGEgaHJlZj0iaHR0cHM6Ly9z
MS5hcnJvYmFtYWlsLmNvbS91bnN1c2NyaWJlLnBocD9pZD13cnJpdHlzcndwdHNvcm9zZXVwIj5j
bGljayBhcXUmaWFjdXRlOzwvYT4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KVjlmcy1kZXZlbG9wZXIgbWFpbGluZyBsaXN0ClY5ZnMtZGV2ZWxvcGVyQGxp
c3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9s
aXN0aW5mby92OWZzLWRldmVsb3Blcgo=
