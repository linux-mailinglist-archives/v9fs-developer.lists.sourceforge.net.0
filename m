Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DF947B11742
	for <lists+v9fs-developer@lfdr.de>; Fri, 25 Jul 2025 05:57:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	Reply-To:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:
	List-Id:Subject:MIME-Version:Message-ID:From:To:Date:Sender:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=zCiZg80EknOCD+bmCNpgvPRqoR8h8o5mm6RxVLFy1sI=; b=g0dhe5//5Eyri/FyqUjo6Q2qeA
	EA08CeS67+UPlF53zJ1EEgpF7cEfAK8Bj+hqTTBiMzz1KV6VXbYhjQl5w2IK7CPN2vbI4yccdIkTV
	qrICGLc0InwlcY39DdkEA2NEuwl2laSDrga5bdysZclQ84cH3vO0ITv8WZ0hnugUC+L8=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1uf9ZA-0003Hh-Ib;
	Fri, 25 Jul 2025 03:57:52 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <bounce.L3194S133745M854@s1.arrobamail.com>)
 id 1uf9Z9-0003HY-1J for v9fs-developer@lists.sourceforge.net;
 Fri, 25 Jul 2025 03:57:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:List-ID:List-Unsubscribe:
 Message-ID:Subject:Reply-To:From:To:Date:Sender:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Help:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=g59xQ3i27YFoxdfX0PErjY1dAFc8gbPUjmUdoG6uSNE=; b=b+KpKi51tbhYrFn7G5IGQukaA9
 Qm2End27vtdZQLN8ej/t5t8If27exgb5uEKfOfalu2EY+2Sa11V+q6lt09zTxhicd4dKaQHnPWz36
 prYhPA0x2qK3pDsTJQV10w5ZUl+opgJP5e1Pu/E4Xycr1MGn5wUjE+krO9UQKY+nRWQU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:List-ID:List-Unsubscribe:Message-ID:Subject:
 Reply-To:From:To:Date:Sender:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Help:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=g59xQ3i27YFoxdfX0PErjY1dAFc8gbPUjmUdoG6uSNE=; b=j
 QFINSHUsv2B+0bI/eGRSYbx0suibTdJ8OsQlBLV5siU1CH8kqvp6Ml1YZ6MvhTcL+HR/4FP6H54Vk
 aNTP4F5lv1ct5zXDMyibiuwVJWia/59BGAlDxj1HSScvlUtMkp/AbvyD5q9BQvwb+4HxL2QYwTpbQ
 pfqflfnGsUsW2PAw=;
Received: from p144i156.pf.fmservers.net ([190.105.144.156])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uf9Z8-0005ID-4c for v9fs-developer@lists.sourceforge.net;
 Fri, 25 Jul 2025 03:57:50 +0000
Date: Fri, 25 Jul 2025 00:57:38 -0300
To: V9fs-developer <v9fs-developer@lists.sourceforge.net>
From: =?utf-8?Q?Jassiel_Ram=C3=ADrez?= <jassiel.ramirez@consultores-rh.com>
Message-ID: <yvjeT29ar7hitGBfKOiHw2XsUf84gNPXfPrUHZ5vs@s1.arrobamail.com>
X-Mailer: FMMailer v3
X-Data: ZXx2OWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXR8
X-Fid: eGZpZC12OWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQtODU0LTMxOTQtMTMzNzQ1LTI2OS1zMS5hcnJvYmFtYWlsLmNvbQ==
X-fmbh: djlmcy1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0Ozg1NDszMTk0OzEzMzc0NTsyNjk=
X-bhid: X-bhd: 854;3194;133745
List-Unsubscribe-Post: List-Unsubscribe=One-Click
X-AntiAbuse: abuse@outservices.net
Precedence: bulk
Feedback-ID: 854:3194s133745:124931:WPservicesESP
X-Transport: p144i156
MIME-Version: 1.0
DKIM-Signature: v=1; d=consultores-rh.com; s=fm;
 a=rsa-sha256; q=dns/txt; t=1753415858; c=relaxed/simple;
 h=Date:To:From:Reply-To:Subject:Message-ID:X-Mailer:X-Data:X-Fid:X-fmbh:List-Unsubscribe:X-AntiAbuse:Feedback-ID:List-ID:MIME-Version:Content-Type;
 z=Date:Fri,=2025=20Jul=202025=2000:57:38=20-0300
 |To:V9fs-developer=20<v9fs-developer@lists.sourceforge.net>
 |From:=3D?utf-8?Q?Jassiel_Ram=3DC3=3DADrez?=3D=20<jassiel.ramirez@consulto
 res-rh.com>
 |Reply-To:=3D?utf-8?Q?Jassiel_Ram=3DC3=3DADrez?=3D=20<jassiel.ramirez@cons
 ultores-rh.com>
 |Subject:=3D?utf-8?Q?V9fs-developer,_conoce_la_soluci=3DC3=3DB3n_para_capa
 citar_a_tu_equipo?=3D
 |Message-ID:<yvjeT29ar7hitGBfKOiHw2XsUf84gNPXfPrUHZ5vs@s1.arrobamail.com>
 |X-Mailer:FMMailer=20v3
 |X-Data:ZXx2OWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXR8
 |X-Fid:eGZpZC12OWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQtODU0LTMxOTQ
 tMTMzNzQ1LTI2OS1zMS5hcnJvYmFtYWlsLmNvbQ=3D=3D
 |X-fmbh:djlmcy1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0Ozg1NDszMTk0OzEzMz
 c0NTsyNjk=3D
 |List-Unsubscribe:<https://s1.arrobamail.com/unsuscribe.php?FormData=3Dwrr
 itysrwptsoytseup> |X-AntiAbuse:abuse@outservices.net
 |Feedback-ID:854:3194s133745:124931:WPservicesESP
 |List-ID:<38328:2407410> |MIME-Version:1.0
 |Content-Type:multipart/alternative=3B=20boundary=3D"b1_yvjeT29ar7hitGBfKO
 iHw2XsUf84gNPXfPrUHZ5vs";
 bh=g59xQ3i27YFoxdfX0PErjY1dAFc8gbPUjmUdoG6uSNE=;
 b=Daul4BmbnjQU9LMoVI/Dd7sbRY6HeqQ1S937dH7EmeN5FPdtzaT3puajAt93R2m6DqmHM7gVE
 OkzLcxNUIWetPQ0FocEQzpWsdZdSGygKjXSEDIiBKr4YdO7rY5O7RM45pawjuIgAImHbg7aUt
 8Xn3FYOifCZvx2O/J050gBdHo=
X-Spam-Score: 2.9 (++)
X-Spam-Report: Spam detection software, running on the system "sfi-spamd-1.hosts.colo.sdot.me",
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
  0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
                             domains are different
  0.0 HTML_MESSAGE           BODY: HTML included in message
  0.0 HTML_IMAGE_ONLY_32     BODY: HTML: images with 2800-3200 bytes of words
 -1.0 MAILING_LIST_MULTI     Multiple indicators imply a widely-seen list
                             manager
X-Headers-End: 1uf9Z8-0005ID-4c
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] =?utf-8?q?V9fs-developer=2C_conoce_la_soluci?=
 =?utf-8?q?=C3=B3n_para_capacitar_a_tu_equipo?=
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
YWlsLmNvbS91bnN1c2NyaWJlLnBocD9pZD13cnJpdHlzcndwdHNveXRzZXVwIj5jbGljayBhcXUm
aWFjdXRlOzwvYT4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KVjlmcy1kZXZlbG9wZXIgbWFpbGluZyBsaXN0ClY5ZnMtZGV2ZWxvcGVyQGxpc3RzLnNvdXJj
ZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby92
OWZzLWRldmVsb3Blcgo=
