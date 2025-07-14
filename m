Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id AC21AB0476A
	for <lists+v9fs-developer@lfdr.de>; Mon, 14 Jul 2025 20:31:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	Reply-To:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:
	List-Id:Subject:MIME-Version:Message-ID:From:To:Date:Sender:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=AtW+1pvWTUYhgC0d1JRfiYZRfT4ZV/hSmfxGQzC62l4=; b=CqVX9b3+nxepCVemYPiWKGn9Mx
	VJIJRIzf7Lib6/GMh/kdatCmd+uo/O3oe1lylOa7BkCrj3nTsQaZT3X6JEwBywtW+L1KdjSL5zKDW
	gKpLbT05CmOLChGJYvwZ9HWICf94FT/bwccmasoHpEbXxaAEWQ7c6GjnDq5PYLzaW8os=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1ubNxV-0006yJ-5O;
	Mon, 14 Jul 2025 18:31:25 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <bounce.L3194S133745M836@s1.arrobamail.com>)
 id 1ubNxT-0006y5-O5 for v9fs-developer@lists.sourceforge.net;
 Mon, 14 Jul 2025 18:31:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:List-ID:List-Unsubscribe:
 Message-ID:Subject:Reply-To:From:To:Date:Sender:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Help:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=NsoicLkf7meiM/7TASY8R0kZYMqHZSQOirY4R//hp/s=; b=Xx1mDBipmDyJl0IJiuIfiIXhOv
 9ToPut/2Lbu9MsBnO12Zs7fa3kmCdpv7Rx0/fKRYUmuq+4zbFezqv0KfIuMgeQHQ5lqPrVsOMLNFj
 Str8HSCLZ5kwxbsWhD0GNV12v7THiKdfMHAM1vv5SNa+lrbCJDgNJ+vijesSTx/WOVyA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:List-ID:List-Unsubscribe:Message-ID:Subject:
 Reply-To:From:To:Date:Sender:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Help:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=NsoicLkf7meiM/7TASY8R0kZYMqHZSQOirY4R//hp/s=; b=L
 cs1IBKl6yxj0OcWMvYbv3nj55QITJm2Xv6r6x5484xXRI/W2ZIwGxlcXhSUEU0Y45Hi9qJS3B9l3a
 HEAN1prd4p5JU2fG6TMVvVNkuLGZxHIrtdgUR0ghviD6ha+R7RGvWFPUvA11uTGGlAaQjJ+ZROTH5
 s/nfmNUp2KQjNAHg=;
Received: from p144i156.pf.fmservers.net ([190.105.144.156])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ubNxS-0008UB-St for v9fs-developer@lists.sourceforge.net;
 Mon, 14 Jul 2025 18:31:23 +0000
Date: Mon, 14 Jul 2025 13:31:11 -0500
To: V9fs-developer <v9fs-developer@lists.sourceforge.net>
From: =?utf-8?Q?Jassiel_Ram=C3=ADrez?= <jassiel.ramirez@consultores-rh.com>
Message-ID: <yoWfkwde5BTRe72hcZDcdKazJ848LSlVCA3vPMyws@s1.arrobamail.com>
X-Mailer: FMMailer v3
X-Data: ZXx2OWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXR8
X-Fid: eGZpZC12OWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQtODM2LTMxOTQtMTMzNzQ1LTI2OS1zMS5hcnJvYmFtYWlsLmNvbQ==
X-fmbh: djlmcy1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0OzgzNjszMTk0OzEzMzc0NTsyNjk=
X-bhid: X-bhd: 836;3194;133745
List-Unsubscribe-Post: List-Unsubscribe=One-Click
X-AntiAbuse: abuse@outservices.net
Precedence: bulk
Feedback-ID: 836:3194s133745:124931:WPservicesESP
X-Transport: p144i156
MIME-Version: 1.0
DKIM-Signature: v=1; d=consultores-rh.com; s=fm;
 a=rsa-sha256; q=dns/txt; t=1752517871; c=relaxed/simple;
 h=Date:To:From:Reply-To:Subject:Message-ID:X-Mailer:X-Data:X-Fid:X-fmbh:List-Unsubscribe:X-AntiAbuse:Feedback-ID:List-ID:MIME-Version:Content-Type;
 z=Date:Mon,=2014=20Jul=202025=2013:31:11=20-0500
 |To:V9fs-developer=20<v9fs-developer@lists.sourceforge.net>
 |From:=3D?utf-8?Q?Jassiel_Ram=3DC3=3DADrez?=3D=20<jassiel.ramirez@consulto
 res-rh.com>
 |Reply-To:=3D?utf-8?Q?Jassiel_Ram=3DC3=3DADrez?=3D=20<jassiel.ramirez@cons
 ultores-rh.com>
 |Subject:=3D?utf-8?Q?Una_soluci=3DC3=3DB3n_integral_para_capacitar_a_tu_eq
 uipo?=3D
 |Message-ID:<yoWfkwde5BTRe72hcZDcdKazJ848LSlVCA3vPMyws@s1.arrobamail.com>
 |X-Mailer:FMMailer=20v3
 |X-Data:ZXx2OWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXR8
 |X-Fid:eGZpZC12OWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQtODM2LTMxOTQ
 tMTMzNzQ1LTI2OS1zMS5hcnJvYmFtYWlsLmNvbQ=3D=3D
 |X-fmbh:djlmcy1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0OzgzNjszMTk0OzEzMz
 c0NTsyNjk=3D
 |List-Unsubscribe:<https://s1.arrobamail.com/unsuscribe.php?FormData=3Dwrr
 itysrwptsoruseup> |X-AntiAbuse:abuse@outservices.net
 |Feedback-ID:836:3194s133745:124931:WPservicesESP
 |List-ID:<38328:2407410> |MIME-Version:1.0
 |Content-Type:multipart/alternative=3B=20boundary=3D"b1_yoWfkwde5BTRe72hcZ
 DcdKazJ848LSlVCA3vPMyws";
 bh=NsoicLkf7meiM/7TASY8R0kZYMqHZSQOirY4R//hp/s=;
 b=Yuy9lPZd2s6pZvUjxhWQg2HgbNAVHMDhWOgRX83mUAkiKMFexzmlJFDQW5V6Umcq2vOasZRJC
 5yJRoKeWFM4x4ypC7Kv3pKPqRrQF9LghkRbQujv3B1tyJVuqFzyjQmBEkr/ifCBGTwW7FjlJZ
 h5tBATmNJzY/jyhLCqDIcly64=
X-Spam-Score: 2.9 (++)
X-Spam-Report: Spam detection software, running on the system "sfi-spamd-2.hosts.colo.sdot.me",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hola&nbsp;V9fs-developer, ¿Te has preguntado qué tan estructurado
    y accesible es el aprendizaje dentro de tu organización? 
 
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
  0.0 HTML_MESSAGE           BODY: HTML included in message
  0.0 HTML_IMAGE_ONLY_32     BODY: HTML: images with 2800-3200 bytes of words
 -1.0 MAILING_LIST_MULTI     Multiple indicators imply a widely-seen list
                             manager
X-Headers-End: 1ubNxS-0008UB-St
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] =?utf-8?q?Una_soluci=C3=B3n_integral_para_capaci?=
 =?utf-8?q?tar_a_tu_equipo?=
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
Reply-To: =?utf-8?Q?Jassiel_Ram=C3=ADrez?= <jassiel.ramirez@consultores-rh.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

CgoKCQoKCkhvbGEmbmJzcDtWOWZzLWRldmVsb3BlciwKCsK/VGUgaGFzIHByZWd1bnRhZG8gcXXD
qSB0YW4gZXN0cnVjdHVyYWRvIHkgYWNjZXNpYmxlIGVzIGVsIGFwcmVuZGl6YWplIGRlbnRybyBk
ZSB0dSBvcmdhbml6YWNpw7NuPwoKRW4gTGVhcm5pbmcgTWFuYWdlbWVudCB0ZSBheXVkYW1vcyBh
IGNlbnRyYWxpemFyIHkgZ2VzdGlvbmFyIGxhIGNhcGFjaXRhY2nDs24gZGUgZm9ybWEgcHLDoWN0
aWNhLCBjb24gbcOhcyBkZSAxMDAgY3Vyc29zIGxpc3RvcyBwYXJhIGltcGxlbWVudGFyIHkgbGEg
cG9zaWJpbGlkYWQgZGUgY2FyZ2FyIHR1cyBwcm9waW9zIGNvbnRlbmlkb3MuCgpMbyBxdWUgbcOh
cyB2YWxvcmFuIG51ZXN0cm9zIGNsaWVudGVzIGRlIFJSLiZuYnNwO0hILiBlcyBxdWU6CgoKCURp
c2XDsWFuIHJ1dGFzIGRlIGFwcmVuZGl6YWplIHBlcnNvbmFsaXphZGFzIHBhcmEgY2FkYSBlcXVp
cG8uCglDZW50cmFsaXphbiBlbCBjb250ZW5pZG8gaW50ZXJubyB5IGV4dGVybm8gZW4gdW5hIHNv
bGEgcGxhdGFmb3JtYS4KCU1vbml0b3JlYW4gZWwgYXZhbmNlIGNvbiBtw6l0cmljYXMgY2xhcmFz
IGRlIGZvcm1hY2nDs24uCglGYWNpbGl0YW4gbGEgY2FwYWNpdGFjacOzbiBjb250aW51YSBzaW4g
Y29tcGxpY2FjaW9uZXMgdMOpY25pY2FzLgoKClNpIGVzdMOhcyBidXNjYW5kbyBtZWpvcmFyIGxh
IGZvcm1hIGVuIHF1ZSBjYXBhY2l0YXMgYSB0dSBlcXVpcG8geSBoYWNlcmxvIGRlIGZvcm1hIG3D
oXMgZWZpY2llbnRlLCB0ZSBsbyByZWNvbWllbmRvIG11Y2jDrXNpbW8uIFBhcmEgbcOhcyBpbmZv
cm1hY2nDs24gcHVlZGVzIHJlc3BvbmRlciBlc3RlIGNvcnJlbyBvIGxsYW1hcm1lIGFsIG7Dum1l
cm8gZGUgYWJham8sJm5ic3A7CgpTYWx1ZG9zCgotLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KCkF0
dGUuOiBKYXNzaWVsIFJhbcOtcmV6CgpDaXVkYWQgZGUgTcOpeGljbzogKDU1KSA1MDE4IDA1NjUK
CldoYXRzQXBwOiZuYnNwOys1MiAzMyAxNjA3IDIwODkKCiZuYnNwOwoKUGFyYSBkZSBzdXNjcmli
aXJ0ZSBkZSBlc3RhIGxpc3RhLCZuYnNwO2FxdcOtCgoKCgpQYXJhIHJlbW92ZXIgc3UgZGlyZWNj
aSZvYWN1dGU7biBkZSBlc3RhIGxpc3RhIGhhZ2EgPGEgaHJlZj0iaHR0cHM6Ly9zMS5hcnJvYmFt
YWlsLmNvbS91bnN1c2NyaWJlLnBocD9pZD13cnJpdHlzcndwdHNvcnVzZXVwIj5jbGljayBhcXUm
aWFjdXRlOzwvYT4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KVjlmcy1kZXZlbG9wZXIgbWFpbGluZyBsaXN0ClY5ZnMtZGV2ZWxvcGVyQGxpc3RzLnNvdXJj
ZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby92
OWZzLWRldmVsb3Blcgo=
