Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 87D78B00C63
	for <lists+v9fs-developer@lfdr.de>; Thu, 10 Jul 2025 21:55:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	Reply-To:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:
	List-Id:Subject:MIME-Version:Message-ID:From:To:Date:Sender:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=kz/5mg9X4J10vD6ZoDVLeMfojEC+RUQ4OJBAK74b2nY=; b=M2CwVZ9NA5hBxiOHBjr25tsvCE
	/pfDq1x8DJoOyPkglVfUfSJZ3SQiisOgx6+NuOwzwanaWJfBn3wkNDMgWzj9c4n0/I8QNe+AGisGY
	TR0lsrwrg7hBj712Lh0xLA0fUC9thvwy19MB2IhB/5jOyz2pzo8LgbAJaMn06NggrM8E=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1uZxMQ-0004Tr-5R;
	Thu, 10 Jul 2025 19:55:14 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <bounce.L3194S133745M830@s1.arrobamail.com>)
 id 1uZxMO-0004Ta-T4 for v9fs-developer@lists.sourceforge.net;
 Thu, 10 Jul 2025 19:55:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:List-ID:List-Unsubscribe:
 Message-ID:Subject:Reply-To:From:To:Date:Sender:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Help:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=d8YH8hScLUitJM0ifI0LmwLWIX4CqYs8iIVuBD6twSc=; b=kr8soyEJ3yfyr1yG3yoWr7Nx11
 v6e/b+uUNV8UbiCSMV/+tb4dQc39izPilHkdxkMw7j1rPCIw9Jx3Ou6fj2QcoTzSX0OqoPj0W6h8w
 VoZnsU5991II0pabNZC5xTyp2LWJJgsIycHtWuHuvbC7PhLU3ZESRty77hpLaoMKQRaQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:List-ID:List-Unsubscribe:Message-ID:Subject:
 Reply-To:From:To:Date:Sender:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Help:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=d8YH8hScLUitJM0ifI0LmwLWIX4CqYs8iIVuBD6twSc=; b=C
 emWHBtYXU3xFDVGStPkcvudoaV6EwAe+oIM7ZYK1E2n+tS363QZtdNTSvQPMslWQvCbT7O9Q9Lv6v
 2T3xzPt8RH0I1i/jQ//bOLN+ebYPKU0tnc5mYSPD34XlPwrpv89YrKvcKcHRe0eBsL5S/4X6RMV4P
 FqZOo8gtIVnwus64=;
Received: from p144i156.pf.fmservers.net ([190.105.144.156])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uZxMO-0002WN-0r for v9fs-developer@lists.sourceforge.net;
 Thu, 10 Jul 2025 19:55:12 +0000
Date: Thu, 10 Jul 2025 14:55:00 -0500
To: V9fs-developer <v9fs-developer@lists.sourceforge.net>
From: =?utf-8?Q?Luis_Rodr=C3=ADguez?= <luis.rodriguez@consultores-rh.com>
Message-ID: <dHgRXnK93Df7HMsfriJk9fMHukDUo7nm9vD0VKROY@s1.arrobamail.com>
X-Mailer: FMMailer v3
X-Data: ZXx2OWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXR8
X-Fid: eGZpZC12OWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQtODMwLTMxOTQtMTMzNzQ1LTI2OS1zMS5hcnJvYmFtYWlsLmNvbQ==
X-fmbh: djlmcy1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0OzgzMDszMTk0OzEzMzc0NTsyNjk=
X-bhid: X-bhd: 830;3194;133745
List-Unsubscribe-Post: List-Unsubscribe=One-Click
X-AntiAbuse: abuse@outservices.net
Precedence: bulk
Feedback-ID: 830:3194s133745:124931:WPservicesESP
X-Transport: p144i156
MIME-Version: 1.0
DKIM-Signature: v=1; d=consultores-rh.com; s=fm;
 a=rsa-sha256; q=dns/txt; t=1752177300; c=relaxed/simple;
 h=Date:To:From:Reply-To:Subject:Message-ID:X-Mailer:X-Data:X-Fid:X-fmbh:List-Unsubscribe:X-AntiAbuse:Feedback-ID:List-ID:MIME-Version:Content-Type;
 z=Date:Thu,=2010=20Jul=202025=2014:55:00=20-0500
 |To:V9fs-developer=20<v9fs-developer@lists.sourceforge.net>
 |From:=3D?utf-8?Q?Luis_Rodr=3DC3=3DADguez?=3D=20<luis.rodriguez@consultore
 s-rh.com>
 |Reply-To:=3D?utf-8?Q?Luis_Rodr=3DC3=3DADguez?=3D=20<luis.rodriguez@consul
 tores-rh.com>
 |Subject:=3D?utf-8?Q?=3DC2=3DBFEl_clima_laboral_frena_tu_productividad=3D3
 F?=3D
 |Message-ID:<dHgRXnK93Df7HMsfriJk9fMHukDUo7nm9vD0VKROY@s1.arrobamail.com>
 |X-Mailer:FMMailer=20v3
 |X-Data:ZXx2OWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXR8
 |X-Fid:eGZpZC12OWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQtODMwLTMxOTQ
 tMTMzNzQ1LTI2OS1zMS5hcnJvYmFtYWlsLmNvbQ=3D=3D
 |X-fmbh:djlmcy1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0OzgzMDszMTk0OzEzMz
 c0NTsyNjk=3D
 |List-Unsubscribe:<https://s1.arrobamail.com/unsuscribe.php?FormData=3Dwrr
 itysrwptsorqseup> |X-AntiAbuse:abuse@outservices.net
 |Feedback-ID:830:3194s133745:124931:WPservicesESP
 |List-ID:<38328:2407410> |MIME-Version:1.0
 |Content-Type:multipart/alternative=3B=20boundary=3D"b1_dHgRXnK93Df7HMsfri
 Jk9fMHukDUo7nm9vD0VKROY";
 bh=d8YH8hScLUitJM0ifI0LmwLWIX4CqYs8iIVuBD6twSc=;
 b=V/fktndfkrp/OKba+1EaO1WrZ9BjlfJRwcDtERGqZDAv7wwSrioqQqvVGq3m+u4UHAQ3t7unu
 qPP2A/O51sefRWvKq45ZUKm9EYCunZLMSpPlmyRphSZrdy1woeAfcH7AYaFGhamuREnMEhreJ
 HEjf/PlNdkZ7t7O+8xABk904U=
X-Spam-Score: 2.9 (++)
X-Spam-Report: Spam detection software, running on the system "sfi-spamd-2.hosts.colo.sdot.me",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hola&nbsp;V9fs-developer, A veces, lo que más afecta al
   equipo no está en los resultados, sino en el ambiente. Tensión acumulada,
    falta de comunicación, desmotivación silenciosa... todo eso impacta más
    de lo que parece. 
 
 Content analysis details:   (2.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  4.0 RCVD_IN_UCE1           RBL: IP Listed in UCEPROTECT Level 1
                             [190.105.144.156 listed in dnsbl-1.uceprotect.net]
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
                             domains are different
  0.0 HTML_IMAGE_ONLY_32     BODY: HTML: images with 2800-3200 bytes of words
  0.0 HTML_MESSAGE           BODY: HTML included in message
 -1.0 MAILING_LIST_MULTI     Multiple indicators imply a widely-seen list
                             manager
X-Headers-End: 1uZxMO-0002WN-0r
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] =?utf-8?q?=C2=BFEl_clima_laboral_frena_tu_produc?=
 =?utf-8?q?tividad=3F?=
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
Reply-To: =?utf-8?Q?Luis_Rodr=C3=ADguez?= <luis.rodriguez@consultores-rh.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

CgoKCQoKCkhvbGEmbmJzcDtWOWZzLWRldmVsb3BlciwKCkEgdmVjZXMsIGxvIHF1ZSBtw6FzIGFm
ZWN0YSBhbCBlcXVpcG8gbm8gZXN0w6EgZW4gbG9zIHJlc3VsdGFkb3MsIHNpbm8gZW4gZWwgYW1i
aWVudGUuClRlbnNpw7NuIGFjdW11bGFkYSwgZmFsdGEgZGUgY29tdW5pY2FjacOzbiwgZGVzbW90
aXZhY2nDs24gc2lsZW5jaW9zYS4uLiB0b2RvIGVzbyBpbXBhY3RhIG3DoXMgZGUgbG8gcXVlIHBh
cmVjZS4KCkNvbiBWb3JlY29sIFdvcmsgRW52aXJvbm1lbnQgcHVlZGVzIGRhciBlbCBwcmltZXIg
cGFzbyBwYXJhIGNhbWJpYXJsby4KCkFwbGljYW1vcyBlbmN1ZXN0YXMgZXN0cmF0w6lnaWNhcyB5
IGFuw7NuaW1hcyBxdWUgdGUgcGVybWl0ZW4gZGVzY3VicmlyIGPDs21vIHNlIHNpZW50ZSByZWFs
bWVudGUgdHUgb3JnYW5pemFjacOzbi4gU2luIHN1cG9zaWNpb25lcywgc2luIGZpbHRyb3MuCgrC
v1BvciBxdcOpIGVsZWdpcm5vcz8KCgoJSWRlbnRpZmljYW1vcyBmb2NvcyBkZSByaWVzZ28gZW1v
Y2lvbmFsIHkgb3JnYW5pemFjaW9uYWwuCglBeXVkYW1vcyBhIGRpc2XDsWFyIGFjY2lvbmVzIHF1
ZSBzw60gcmVzdWVsdmVuLgoJQ3JlYW1vcyBlc3BhY2lvcyBkb25kZSBsYSBnZW50ZSBxdWllcmUg
cXVlZGFyc2UgeSBjcmVjZXIuCglZIHRvZG8gZXN0bywgY29uIHVuYSBoZXJyYW1pZW50YSDDoWdp
bCwgY2xhcmEgeSBzaW4gY29tcGxpY2FjaW9uZXMuCgoKwr9UZSBndXN0YXLDrWEgYWdlbmRhciB1
bmEgZGVtbz8gU29sbyByZXNwb25kZSBhIGVzdGUgY29ycmVvIG8gY29udMOhY3RhbWUgZGlyZWN0
YW1lbnRlLiBFc3RveSBwYXJhIGF5dWRhcnRlLgoKU2FsdWRvcwoKLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tCgpBdHRlLjogTHVpcyBSb2Ryw61ndWV6CgpDaXVkYWQgZGUgTcOpeGljbzogKDU1KSA1
MDE4IDA1NjUKCldoYXRzQXBwOiZuYnNwOys1MiAzMyAxNjA3IDIwODkKCiZuYnNwOwoKUGFyYSBk
ZSBzdXNjcmliaXJ0ZSBkZSBlc3RhIGxpc3RhLCZuYnNwO2FxdcOtCgoKCgpQYXJhIHJlbW92ZXIg
c3UgZGlyZWNjaSZvYWN1dGU7biBkZSBlc3RhIGxpc3RhIGhhZ2EgPGEgaHJlZj0iaHR0cHM6Ly9z
MS5hcnJvYmFtYWlsLmNvbS91bnN1c2NyaWJlLnBocD9pZD13cnJpdHlzcndwdHNvcnFzZXVwIj5j
bGljayBhcXUmaWFjdXRlOzwvYT4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KVjlmcy1kZXZlbG9wZXIgbWFpbGluZyBsaXN0ClY5ZnMtZGV2ZWxvcGVyQGxp
c3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9s
aXN0aW5mby92OWZzLWRldmVsb3Blcgo=
