Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2391544D15D
	for <lists+v9fs-developer@lfdr.de>; Thu, 11 Nov 2021 06:17:11 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1ml2SS-000165-GV; Thu, 11 Nov 2021 05:17:08 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2) (envelope-from
 <0107017d0d6d7ad0-400d58c4-0ef8-4661-be71-9891dbc2234b-000000@eu-central-1.amazonses.com>)
 id 1ml2SQ-00015z-S8
 for v9fs-developer@lists.sourceforge.net; Thu, 11 Nov 2021 05:17:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=List-Unsubscribe:Content-Type:MIME-Version:To:
 Reply-To:From:Subject:Date:Message-ID:Sender:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=LFtZXtHcee5vri/LEoKkkVE09Z9nhhhFI+1lQordzd0=; b=VKseIvGJ2e+Vw7BaQzRsMv24c0
 h/WBo2I00k1jjVg9FYSuF6FWyLl+BUJmxbyKZvzuFB3XA/IKHiWXwfH6y073gj5VAff9yJUrzsgZW
 UQ3oCm/eq5UoGFkHsXzm44VifgInICmMWKWzy/MIf98oNq6z1Mwuqm8r8I66J9JfSjpU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=List-Unsubscribe:Content-Type:MIME-Version:To:Reply-To:From:Subject:Date:
 Message-ID:Sender:Cc:Content-Transfer-Encoding:Content-ID:Content-Description
 :Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Subscribe:List-Post:List-Owner:
 List-Archive; bh=LFtZXtHcee5vri/LEoKkkVE09Z9nhhhFI+1lQordzd0=; b=RWn/YdpFhuTd
 y2N8EI/SoFrZyCzPERa4iDx4Eb0wvRNh1cmPJ6mXBk233qTU0AnYZ4U+WTQxtK7ZGWEda7nFZc8ag
 3lRUKtoYnG30WHwBVK31xJ9YXVf7+WC1QT1oQ+uBNBprebxHebBl/GdomJ5spK4NAaQgKh02+QYet
 Tzx3w=;
Received: from b228-111.smtp-out.eu-central-1.amazonses.com ([69.169.228.111])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-SHA256:128) (Exim 4.92.3)
 id 1ml2SP-0000Fi-BW
 for v9fs-developer@lists.sourceforge.net; Thu, 11 Nov 2021 05:17:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
 s=azn2h6rx57537id7wxygi2kd6pvhrgz3; d=eko-med.ro; t=1636607818;
 h=Sender:Message-ID:Date:Subject:From:Reply-To:To:MIME-Version:Content-Type:List-Unsubscribe;
 bh=8sraRTbLl10Iq6g7Rmv1moxYIXQJnBOzAWoTh22akiU=;
 b=LCxAHCuo6+3hEZVQSXa0j6pg9iZ0mxzDc47nGSX8nmIjo56BspTUbuMLO9Crp+dd
 hfFKOkUUnm4DoyCVNIJh3yyZ6IWwL1gPiJNrYkO25or8Hdon8D4lLikwaxZoMsQVzRr
 bfhaCO8Oar+tKKDtDAaL0J+o+kanqO3kVL6fdZaM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
 s=54ecsf3zk7z4mwxwwox7z7bg6e5gwjsz; d=amazonses.com; t=1636607818;
 h=Sender:Message-ID:Date:Subject:From:Reply-To:To:MIME-Version:Content-Type:List-Unsubscribe:Feedback-ID;
 bh=8sraRTbLl10Iq6g7Rmv1moxYIXQJnBOzAWoTh22akiU=;
 b=kWpi51Rmb7j81RU5klH5vHkJ9UgOrRpbQ+shtUghGjNtAoy0i8AIwUncF5ZrWY2H
 ZshHJ2TMkXfAx08ZcZT9xtPMuAzYD8gYzadKPC2Gbm7WFV/y+VdDIZeXP9I6c2wtV/7
 reAxKeoKRvMHpHWMJQROGEx4I7HH018t2TkfsIEY=
Message-ID: <0107017d0d6d7ad0-400d58c4-0ef8-4661-be71-9891dbc2234b-000000@eu-central-1.amazonses.com>
Date: Thu, 11 Nov 2021 05:16:58 +0000
From: Office <office@eko-med.ro>
To: "" <v9fs-developer@lists.sourceforge.net>
MIME-Version: 1.0
Feedback-ID: 1.eu-central-1.N8GLPrwMW4DEokEt/uX8R5Dj6lDs1dpqTZ0OFMrLAAo=:AmazonSES
X-SES-Outgoing: 2021.11.11-69.169.228.111
X-Spam-Score: 6.2 (++++++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has identified this incoming email as possible spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Pretruile sunt negociabile [FarmersMarket-Top]
 [eko-med](https://ekogroup.com.ro?mailpoet_router&endpoint=track&action=click&data=WzE0MzAwNSwibmlxaWF6cXMzYjQ0MGNjZ2s0YzRrNDRzOG9jZ2NrYzQiLCI2OSIsIjIyYmU3MWQ1ZTQ5NyIsZmFsc2Vd)
 Content analysis details:   (6.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [69.169.228.111 listed in list.dnswl.org]
 1.7 URIBL_BLACK            Contains an URL listed in the URIBL blacklist
 [URIs: ekogroup.com.ro]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain 2.0 PYZOR_CHECK            Listed in Pyzor
 (https://pyzor.readthedocs.io/en/latest/)
 0.0 T_KAM_HTML_FONT_INVALID Test for Invalidly Named or Formatted
 Colors in HTML
 2.5 URI_WP_HACKED_2        URI for compromised WordPress site, possible
 malware
X-Headers-End: 1ml2SP-0000Fi-BW
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] Teste si pulsoximetre covid-19 | livrare imediata
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

[eko-med](https://ekogroup.com.ro?mailpoet_router&endpoint=track&action=click&data=WzE0MzAwNSwibmlxaWF6cXMzYjQ0MGNjZ2s0YzRrNDRzOG9jZ2NrYzQiLCI2OSIsIjIyYmU3MWQ1ZTQ5NyIsZmFsc2Vd)

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

[iamge1](https://ekogroup.com.ro?mailpoet_router&endpoint=track&action=click&data=WzE0MzAwNSwibmlxaWF6cXMzYjQ0MGNjZ2s0YzRrNDRzOG9jZ2NrYzQiLCI2OSIsIjIyYmU3MWQ1ZTQ5NyIsZmFsc2Vd)

EKOGROUP.RO is an international TRADE company with areas of action in different regions of the world.
Ask for a price quote and you will be answered in a maximum of 48 hours.

[teste covid](https://ekogroup.com.ro?mailpoet_router&endpoint=track&action=click&data=WzE0MzAwNSwibmlxaWF6cXMzYjQ0MGNjZ2s0YzRrNDRzOG9jZ2NrYzQiLCI2OSIsIjE4OWQwZjhmN2JiNCIsZmFsc2Vd)

8,5 lei, tva zero
ORICE TEST anti-covid 19

[Negociaza preturile telefonic](https://ekogroup.com.ro?mailpoet_router&endpoint=track&action=click&data=WzE0MzAwNSwibmlxaWF6cXMzYjQ0MGNjZ2s0YzRrNDRzOG9jZ2NrYzQiLCI2OSIsIjE4OWQwZjhmN2JiNCIsZmFsc2Vd)

[Masca medicala](https://ekogroup.com.ro?mailpoet_router&endpoint=track&action=click&data=WzE0MzAwNSwibmlxaWF6cXMzYjQ0MGNjZ2s0YzRrNDRzOG9jZ2NrYzQiLCI2OSIsIjE4OWQwZjhmN2JiNCIsZmFsc2Vd)

0,15 lei+tva
ORICE MASCA medicala

[Negociaza preturile telefonic](https://ekogroup.com.ro?mailpoet_router&endpoint=track&action=click&data=WzE0MzAwNSwibmlxaWF6cXMzYjQ0MGNjZ2s0YzRrNDRzOG9jZ2NrYzQiLCI2OSIsIjE4OWQwZjhmN2JiNCIsZmFsc2Vd)

[masca medicala](https://ekogroup.com.ro?mailpoet_router&endpoint=track&action=click&data=WzE0MzAwNSwibmlxaWF6cXMzYjQ0MGNjZ2s0YzRrNDRzOG9jZ2NrYzQiLCI2OSIsIjE4OWQwZjhmN2JiNCIsZmFsc2Vd)

23 lei + tva
ORICE PRODUS covid 19

[Negociaza preturile telefonic](https://ekogroup.com.ro?mailpoet_router&endpoint=track&action=click&data=WzE0MzAwNSwibmlxaWF6cXMzYjQ0MGNjZ2s0YzRrNDRzOG9jZ2NrYzQiLCI2OSIsIjE4OWQwZjhmN2JiNCIsZmFsc2Vd)

[Higenyum](https://ekogroup.com.ro?mailpoet_router&endpoint=track&action=click&data=WzE0MzAwNSwibmlxaWF6cXMzYjQ0MGNjZ2s0YzRrNDRzOG9jZ2NrYzQiLCI2OSIsIjIyYmU3MWQ1ZTQ5NyIsZmFsc2Vd)

Cere oferta Higenyum

[Negociaza preturile](https://ekogroup.com.ro?mailpoet_router&endpoint=track&action=click&data=WzE0MzAwNSwibmlxaWF6cXMzYjQ0MGNjZ2s0YzRrNDRzOG9jZ2NrYzQiLCI2OSIsIjIyYmU3MWQ1ZTQ5NyIsZmFsc2Vd)

[Produse covid](https://ekogroup.com.ro?mailpoet_router&endpoint=track&action=click&data=WzE0MzAwNSwibmlxaWF6cXMzYjQ0MGNjZ2s0YzRrNDRzOG9jZ2NrYzQiLCI2OSIsIjIyYmU3MWQ1ZTQ5NyIsZmFsc2Vd)

Cere oferta completa

[Negociaza preturile](https://ekogroup.com.ro?mailpoet_router&endpoint=track&action=click&data=WzE0MzAwNSwibmlxaWF6cXMzYjQ0MGNjZ2s0YzRrNDRzOG9jZ2NrYzQiLCI2OSIsIjIyYmU3MWQ1ZTQ5NyIsZmFsc2Vd)

[Produse medicale](https://ekogroup.com.ro?mailpoet_router&endpoint=track&action=click&data=WzE0MzAwNSwibmlxaWF6cXMzYjQ0MGNjZ2s0YzRrNDRzOG9jZ2NrYzQiLCI2OSIsIjIyYmU3MWQ1ZTQ5NyIsZmFsc2Vd)

Orice aparat medical

[Cere oferta pe mail](https://ekogroup.com.ro?mailpoet_router&endpoint=track&action=click&data=WzE0MzAwNSwibmlxaWF6cXMzYjQ0MGNjZ2s0YzRrNDRzOG9jZ2NrYzQiLCI2OSIsIjIyYmU3MWQ1ZTQ5NyIsZmFsc2Vd)

[eko-med](https://ekogroup.com.ro?mailpoet_router&endpoint=track&action=click&data=WzE0MzAwNSwibmlxaWF6cXMzYjQ0MGNjZ2s0YzRrNDRzOG9jZ2NrYzQiLCI2OSIsIjIyYmU3MWQ1ZTQ5NyIsZmFsc2Vd)

[facebook](https://ekogroup.com.ro?mailpoet_router&endpoint=track&action=click&data=WzE0MzAwNSwibmlxaWF6cXMzYjQ0MGNjZ2s0YzRrNDRzOG9jZ2NrYzQiLCI2OSIsImM5ZDZiN2ZiYTA1MCIsZmFsc2Vd) [instagram](https://ekogroup.com.ro?mailpoet_router&endpoint=track&action=click&data=WzE0MzAwNSwibmlxaWF6cXMzYjQ0MGNjZ2s0YzRrNDRzOG9jZ2NrYzQiLCI2OSIsIjQyZTU2MjE4ZDQyNSIsZmFsc2Vd)
[Unsubscribe](https://ekogroup.com.ro?mailpoet_router&endpoint=track&action=click&data=WzE0MzAwNSwibmlxaWF6cXMzYjQ0MGNjZ2s0YzRrNDRzOG9jZ2NrYzQiLCI2OSIsImIxZTlkNGI4ZTNmZiIsZmFsc2Vd) | [Manage your subscription](https://ekogroup.com.ro?mailpoet_router&endpoint=track&action=click&data=WzE0MzAwNSwibmlxaWF6cXMzYjQ0MGNjZ2s0YzRrNDRzOG9jZ2NrYzQiLCI2OSIsIjVhMjZhMmUxNGI0ZCIsZmFsc2Vd)
______
office@eko-med.ro
+4 0771 675 240

[FarmersMarket-Bottom]

_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
