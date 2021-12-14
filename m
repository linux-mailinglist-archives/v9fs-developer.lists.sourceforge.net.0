Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A8AC5473DB3
	for <lists+v9fs-developer@lfdr.de>; Tue, 14 Dec 2021 08:34:34 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mx2KW-0001wo-HU; Tue, 14 Dec 2021 07:34:32 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2) (envelope-from
 <0107017db7dd188d-514d8b94-b61b-4f12-8be5-b2980b457763-000000@eu-central-1.amazonses.com>)
 id 1mx2KV-0001wi-42
 for v9fs-developer@lists.sourceforge.net; Tue, 14 Dec 2021 07:34:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=List-Unsubscribe:Content-Type:MIME-Version:To:
 Reply-To:From:Subject:Date:Message-ID:Sender:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ZBC+Eyk3ck6FlVx1Xu7h114MM3Q38Vu8pq99V/Yva4k=; b=Hbo8COpCKEWtce+2KKJ6RHpmmC
 k1mg4hS4tWWYQDvmbcfCjgRINpJCy9XqxMX01sxnyvA2FTzRVLFcuHV8Y50RECFzBAaCMf0GZ7TI4
 SWe5SmTOd0bxB10Q7kscf2z8SUWGhjvgerF4g0gKXMQ96r2qKz0ec9CoHiD7alol3F9k=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=List-Unsubscribe:Content-Type:MIME-Version:To:Reply-To:From:Subject:Date:
 Message-ID:Sender:Cc:Content-Transfer-Encoding:Content-ID:Content-Description
 :Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Subscribe:List-Post:List-Owner:
 List-Archive; bh=ZBC+Eyk3ck6FlVx1Xu7h114MM3Q38Vu8pq99V/Yva4k=; b=Hffb9xvfxejs
 ljuYcBB2hWsIOQzlyQvzZzJv+b0GnKcdTQ1ZWX8MDJ88+rc60FWNs3EMK/IJV7BYL5Uh1aS1VYnp/
 J1mzrLKN7zkK+bTiQZPoKvNSNfX4RjWiVAdxIoUslabAEI62JtxiCXoJDjIecoGU6fXI0C23YcIsi
 Qr+OU=;
Received: from b227-249.smtp-out.eu-central-1.amazonses.com ([69.169.227.249])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-SHA256:128) (Exim 4.92.3)
 id 1mx2KQ-0005VR-VV
 for v9fs-developer@lists.sourceforge.net; Tue, 14 Dec 2021 07:34:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
 s=azn2h6rx57537id7wxygi2kd6pvhrgz3; d=eko-med.ro; t=1639467260;
 h=Sender:Message-ID:Date:Subject:From:Reply-To:To:MIME-Version:Content-Type:List-Unsubscribe;
 bh=p6GagLWg0fYOoOAFHXxu3+mw/YnJ9AuvqSkXFO3GFdI=;
 b=CC4oxvwyu7ZDG+Y5SFgfYLMM4HF5ZjAc0mW/Nk71wHD6SporqGq/erAjfgpAlLIE
 zRzeWw2WBVVzpvXW/WuGT/jA1oCQkNvIgkLhTflwJgwVPU2jdd7Lhy+D7gr/6fhUTF0
 xV2RCv6kPCPk8uf6CcwWo6fj2BwkJ5SraXPjY5Q0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
 s=54ecsf3zk7z4mwxwwox7z7bg6e5gwjsz; d=amazonses.com; t=1639467260;
 h=Sender:Message-ID:Date:Subject:From:Reply-To:To:MIME-Version:Content-Type:List-Unsubscribe:Feedback-ID;
 bh=p6GagLWg0fYOoOAFHXxu3+mw/YnJ9AuvqSkXFO3GFdI=;
 b=gqUryLiMyG6jcDU7U0pWffyHkWUlR4fCirG8rIbz+vzcIYfomuO9ndUX5b6vRCmK
 uozFbI1qDij2teqddPgmmmH/uad5DOjU3850QhIiODsXQLtso6HzReLGcYbKQoze/UZ
 A00T+oWsDe3wN/mLBzmI3/d5LgVx/1/a+3t1/RF4=
Message-ID: <0107017db7dd188d-514d8b94-b61b-4f12-8be5-b2980b457763-000000@eu-central-1.amazonses.com>
Date: Tue, 14 Dec 2021 07:34:20 +0000
From: Office <office@eko-med.ro>
To: "" <v9fs-developer@lists.sourceforge.net>
MIME-Version: 1.0
Feedback-ID: 1.eu-central-1.N8GLPrwMW4DEokEt/uX8R5Dj6lDs1dpqTZ0OFMrLAAo=:AmazonSES
X-SES-Outgoing: 2021.12.14-69.169.227.249
X-Spam-Score: 6.2 (++++++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has identified this incoming email as possible spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Pretruile sunt negociabile [FarmersMarket-Top]
 [eko-med](https://ekogroup.com.ro?mailpoet_router&endpoint=track&action=click&data=WzE0MzAwNSwibmlxaWF6cXMzYjQ0MGNjZ2s0YzRrNDRzOG9jZ2NrYzQiLCI4MiIsIjAxNjA3NGVlYWViNyIsZmFsc2Vd)
 Content analysis details:   (6.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [69.169.227.249 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 1.7 URIBL_BLACK            Contains an URL listed in the URIBL blacklist
 [URIs: ekogroup.com.ro]
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 2.0 PYZOR_CHECK            Listed in Pyzor
 (https://pyzor.readthedocs.io/en/latest/)
 0.0 T_KAM_HTML_FONT_INVALID Test for Invalidly Named or Formatted
 Colors in HTML
 2.5 URI_WP_HACKED_2        URI for compromised WordPress site, possible
 malware
X-Headers-End: 1mx2KQ-0005VR-VV
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] DE LA 3,
 5 lei | Teste si pulsoximetre covid-19 | livrare imediata
X-BeenThere: v9fs-developer@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <v9fs-developer.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/v9fs-developer>, 
 <mailto:v9fs-developer-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=v9fs-developer>
List-Post: <mailto:v9fs-developer@lists.sourceforge.net>
List-Help: <mailto:v9fs-developer-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/v9fs-developer>, 
 <mailto:v9fs-developer-request@lists.sourceforge.net?subject=subscribe>
Reply-To: Office <office@eko-med.ro>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Pretruile sunt negociabile

[FarmersMarket-Top]

[eko-med](https://ekogroup.com.ro?mailpoet_router&endpoint=track&action=click&data=WzE0MzAwNSwibmlxaWF6cXMzYjQ0MGNjZ2s0YzRrNDRzOG9jZ2NrYzQiLCI4MiIsIjAxNjA3NGVlYWViNyIsZmFsc2Vd)

PESTE 500 MILIOANE DE PRODUSE
ANTI-COVID 19
VANDUTE IN TOATA EUROPA

Oferta noastra cuprinde:
- produse anti-covid 19
- dispozitive medicale avizate MS
- gama Higyenium
_____
OFFICE@EKOGROUP.RO
OFFICE@EKO-MED.RO
+4 0771 675 240

[iamge1](https://ekogroup.com.ro?mailpoet_router&endpoint=track&action=click&data=WzE0MzAwNSwibmlxaWF6cXMzYjQ0MGNjZ2s0YzRrNDRzOG9jZ2NrYzQiLCI4MiIsIjAxNjA3NGVlYWViNyIsZmFsc2Vd)

EKOGROUP.RO is an international TRADE company with areas of action in different regions of the world.
Ask for a price quote and you will be answered in a maximum of 48 hours.

[teste covid](https://ekogroup.com.ro?mailpoet_router&endpoint=track&action=click&data=WzE0MzAwNSwibmlxaWF6cXMzYjQ0MGNjZ2s0YzRrNDRzOG9jZ2NrYzQiLCI4MiIsImQ2ZTdkNGU3MWE2OSIsZmFsc2Vd)

8,5 lei, tva zero
ORICE TEST anti-covid 19

[Negociaza preturile telefonic](https://ekogroup.com.ro?mailpoet_router&endpoint=track&action=click&data=WzE0MzAwNSwibmlxaWF6cXMzYjQ0MGNjZ2s0YzRrNDRzOG9jZ2NrYzQiLCI4MiIsImQ2ZTdkNGU3MWE2OSIsZmFsc2Vd)

[Masca medicala](https://ekogroup.com.ro?mailpoet_router&endpoint=track&action=click&data=WzE0MzAwNSwibmlxaWF6cXMzYjQ0MGNjZ2s0YzRrNDRzOG9jZ2NrYzQiLCI4MiIsImQ2ZTdkNGU3MWE2OSIsZmFsc2Vd)

0,15 lei+tva
ORICE MASCA medicala

[Negociaza preturile telefonic](https://ekogroup.com.ro?mailpoet_router&endpoint=track&action=click&data=WzE0MzAwNSwibmlxaWF6cXMzYjQ0MGNjZ2s0YzRrNDRzOG9jZ2NrYzQiLCI4MiIsImQ2ZTdkNGU3MWE2OSIsZmFsc2Vd)

[masca medicala](https://ekogroup.com.ro?mailpoet_router&endpoint=track&action=click&data=WzE0MzAwNSwibmlxaWF6cXMzYjQ0MGNjZ2s0YzRrNDRzOG9jZ2NrYzQiLCI4MiIsImQ2ZTdkNGU3MWE2OSIsZmFsc2Vd)

19 lei + tva
ORICE PRODUS covid 19

[Negociaza preturile telefonic](https://ekogroup.com.ro?mailpoet_router&endpoint=track&action=click&data=WzE0MzAwNSwibmlxaWF6cXMzYjQ0MGNjZ2s0YzRrNDRzOG9jZ2NrYzQiLCI4MiIsImQ2ZTdkNGU3MWE2OSIsZmFsc2Vd)

[Higenyum](https://ekogroup.com.ro?mailpoet_router&endpoint=track&action=click&data=WzE0MzAwNSwibmlxaWF6cXMzYjQ0MGNjZ2s0YzRrNDRzOG9jZ2NrYzQiLCI4MiIsIjAxNjA3NGVlYWViNyIsZmFsc2Vd)

Cere oferta Higenyum

[Negociaza preturile](https://ekogroup.com.ro?mailpoet_router&endpoint=track&action=click&data=WzE0MzAwNSwibmlxaWF6cXMzYjQ0MGNjZ2s0YzRrNDRzOG9jZ2NrYzQiLCI4MiIsIjAxNjA3NGVlYWViNyIsZmFsc2Vd)

[Produse covid](https://ekogroup.com.ro?mailpoet_router&endpoint=track&action=click&data=WzE0MzAwNSwibmlxaWF6cXMzYjQ0MGNjZ2s0YzRrNDRzOG9jZ2NrYzQiLCI4MiIsIjAxNjA3NGVlYWViNyIsZmFsc2Vd)

Cere oferta completa

[Negociaza preturile](https://ekogroup.com.ro?mailpoet_router&endpoint=track&action=click&data=WzE0MzAwNSwibmlxaWF6cXMzYjQ0MGNjZ2s0YzRrNDRzOG9jZ2NrYzQiLCI4MiIsIjAxNjA3NGVlYWViNyIsZmFsc2Vd)

[Produse medicale](https://ekogroup.com.ro?mailpoet_router&endpoint=track&action=click&data=WzE0MzAwNSwibmlxaWF6cXMzYjQ0MGNjZ2s0YzRrNDRzOG9jZ2NrYzQiLCI4MiIsIjAxNjA3NGVlYWViNyIsZmFsc2Vd)

Orice aparat medical

[Cere oferta pe mail](https://ekogroup.com.ro?mailpoet_router&endpoint=track&action=click&data=WzE0MzAwNSwibmlxaWF6cXMzYjQ0MGNjZ2s0YzRrNDRzOG9jZ2NrYzQiLCI4MiIsIjAxNjA3NGVlYWViNyIsZmFsc2Vd)

[eko-med](https://ekogroup.com.ro?mailpoet_router&endpoint=track&action=click&data=WzE0MzAwNSwibmlxaWF6cXMzYjQ0MGNjZ2s0YzRrNDRzOG9jZ2NrYzQiLCI4MiIsIjAxNjA3NGVlYWViNyIsZmFsc2Vd)

[facebook](https://ekogroup.com.ro?mailpoet_router&endpoint=track&action=click&data=WzE0MzAwNSwibmlxaWF6cXMzYjQ0MGNjZ2s0YzRrNDRzOG9jZ2NrYzQiLCI4MiIsImIwYzRlMjI4NjkyYiIsZmFsc2Vd) [instagram](https://ekogroup.com.ro?mailpoet_router&endpoint=track&action=click&data=WzE0MzAwNSwibmlxaWF6cXMzYjQ0MGNjZ2s0YzRrNDRzOG9jZ2NrYzQiLCI4MiIsImI0MzM5Yjg1ODkxNyIsZmFsc2Vd)
[Unsubscribe](https://ekogroup.com.ro?mailpoet_router&endpoint=track&action=click&data=WzE0MzAwNSwibmlxaWF6cXMzYjQ0MGNjZ2s0YzRrNDRzOG9jZ2NrYzQiLCI4MiIsImM1OGVkOGQ3NmY2OSIsZmFsc2Vd) | [Manage your subscription](https://ekogroup.com.ro?mailpoet_router&endpoint=track&action=click&data=WzE0MzAwNSwibmlxaWF6cXMzYjQ0MGNjZ2s0YzRrNDRzOG9jZ2NrYzQiLCI4MiIsIjkyMDlkMzIxMjcwYiIsZmFsc2Vd)
______
office@eko-med.ro
+4 0771 675 240

[FarmersMarket-Bottom]

_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
