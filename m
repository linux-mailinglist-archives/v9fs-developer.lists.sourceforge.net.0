Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E98FB62D360
	for <lists+v9fs-developer@lfdr.de>; Thu, 17 Nov 2022 07:19:12 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1ovYEx-00082F-Ln;
	Thu, 17 Nov 2022 06:19:11 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <juan.aguilarve@essalud.gob.pe>) id 1ovYEu-000828-2H
 for v9fs-developer@lists.sourceforge.net;
 Thu, 17 Nov 2022 06:19:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=From:Content-Transfer-Encoding:Content-Type:
 MIME-Version:Message-ID:Date:Subject:To:Reply-To:Sender:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=uY+KPOQWlDhrVS4T9GmWZxPLHRTXQCu8TOIV7Ic88Ug=; b=QU+Dd8vWFU/3b94ULaI23qUuUr
 0WyFfd/wc46jgouRzX1uH8WuwJwEnihtx+YVtFkS6PMt8Z708tqm9GII1IiOdv9XkPnq2ZThIxcX9
 Ik3yH+zWv05nY75n2B1yTLE03JhHpYF0hG80txgY9QUB41bcQCfcTR6MOSy6BwruL2ws=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=From:Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:
 Subject:To:Reply-To:Sender:Cc:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=uY+KPOQWlDhrVS4T9GmWZxPLHRTXQCu8TOIV7Ic88Ug=; b=D
 LK7R76Nk3uuwhTBcjq+VhIfhNiA2Az095UhSgQGciXTaiJjdeZzNpv6OLqWWKz51SnDm+oetszCym
 TVbz3vyGFgOtsyOzWHbs7nAfq941zdNy9qfRef4Q+y+DafjQpTdFPveAEEONY9gvhpT6MVYAqtyb5
 u1zU5vNVHYPaqTTA=;
Received: from fml-essalud.essalud.gob.pe ([190.81.44.152])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ovYEp-00B5Tl-9U for v9fs-developer@lists.sourceforge.net;
 Thu, 17 Nov 2022 06:19:07 +0000
Received: from mail.essalud.gob.pe ([172.20.0.227])
 by FML-ESSALUD.essalud.gob.pe  with ESMTP id 2AH6IkTx019978-2AH6IkUA019978
 for <v9fs-developer@lists.sourceforge.net>; Thu, 17 Nov 2022 01:18:48 -0500
Received: from correo.essalud.gob.pe (correo.essalud.gob.pe [10.0.1.43])
 by mail.essalud.gob.pe (Postfix on SuSE Linux 7.2 (i386)) with ESMTP id
 520C166C971 for <v9fs-developer@lists.sourceforge.net>;
 Thu, 17 Nov 2022 01:24:14 -0500 (PET)
Received: from localhost (localhost [127.0.0.1])
 by correo.essalud.gob.pe (Postfix) with ESMTP id D57C767149151
 for <v9fs-developer@lists.sourceforge.net>;
 Thu, 17 Nov 2022 01:12:52 -0500 (-05)
Received: from correo.essalud.gob.pe ([127.0.0.1])
 by localhost (correo.essalud.gob.pe [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id UEsaB8QN2trd for <v9fs-developer@lists.sourceforge.net>;
 Thu, 17 Nov 2022 01:12:52 -0500 (-05)
Received: from localhost (localhost [127.0.0.1])
 by correo.essalud.gob.pe (Postfix) with ESMTP id 8FF95714C6105
 for <v9fs-developer@lists.sourceforge.net>;
 Thu, 17 Nov 2022 01:12:52 -0500 (-05)
DKIM-Filter: OpenDKIM Filter v2.10.3 correo.essalud.gob.pe 8FF95714C6105
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=essalud.gob.pe;
 s=0C7340B8-402B-11ED-89C3-99F5FC01023F; t=1668665572;
 bh=uY+KPOQWlDhrVS4T9GmWZxPLHRTXQCu8TOIV7Ic88Ug=;
 h=To:Date:Message-ID:MIME-Version:From;
 b=w+EDmtJghQKne0+5W/yqlUFpafluBboh9wk6NWi0DBmjfDbTR2n1rc85xyz4disTu
 wIq8Rn5+jj7OkpazRDtdlwvb5JjNAwX0vANFbvnhb9WsXaJ1maR1K/fEmH2wAGkkEx
 f2wcNAB8RP5Otzb0XqfTyybI4oCGD0px/Vww77yUmJlzLx6CA0B5dJu2ZEH1oFh9iE
 2IKe6HTiC65vTMF68GDqaRFu2lC5T3O8+e+SDZBEtXQW4lntamS1N9fDm8e42G78Dn
 mpQpNGVjJV2iqIxmo03aZxj6Ra0FWjV9xvqnLE/1hM1jXBowZKJ9uEz68GuNGSMQgx
 boMSKy6fKw5Tg==
X-Virus-Scanned: amavisd-new at essalud.gob.pe
Received: from correo.essalud.gob.pe ([127.0.0.1])
 by localhost (correo.essalud.gob.pe [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id PaM438-BRyt9 for <v9fs-developer@lists.sourceforge.net>;
 Thu, 17 Nov 2022 01:12:52 -0500 (-05)
Received: from [200.25.45.234] (unknown [200.25.45.235])
 by correo.essalud.gob.pe (Postfix) with ESMTPSA id D235B6406D1C8
 for <v9fs-developer@lists.sourceforge.net>;
 Thu, 17 Nov 2022 01:12:51 -0500 (-05)
To: v9fs-developer@lists.sourceforge.net
Date: 17 Nov 2022 06:18:46 +0000
Message-ID: <20221117061845.7694EC16C2DE0FF0@from.header.has.no.domain>
MIME-Version: 1.0
From: juan.aguilarve@essalud.gob.pe
X-FEAS-DKIM: Invalid Public Key
Authentication-Results: fml-essalud.essalud.gob.pe;
 dkim=neutral (Could not retrieve key) header.i=@essalud.gob.pe
X-FE-Policy-ID: 2:2:2:essalud.gob.pe
X-Spam-Score: 6.6 (++++++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has identified this incoming email as possible spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Bitte ich brauche Ihre Hilfe, um $50 000 000.00 aus einem
 sicheren Safe zu bewegen. 
 Content analysis details:   (6.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.0 RCVD_IN_UCE1           RBL: IP Listed in UCEPROTECT Level 1
 [190.81.44.152 listed in dnsbl-1.uceprotect.net]
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: essalud.gob.pe]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [190.81.44.152 listed in wl.mailspike.net]
 0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in
 digit [sergei.lai58[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 LOTS_OF_MONEY          Huge... sums of money
 0.1 MONEY_NOHTML           Lots of money in plain text
 2.5 FREEMAIL_FORGED_REPLYTO Freemail in Reply-To, but not From
 3.0 MONEY_FREEMAIL_REPTO   Lots of money from someone using free
 email?
X-Headers-End: 1ovYEp-00B5Tl-9U
Subject: [V9fs-developer] =?utf-8?q?die_Info_-35_=25_geh=C3=B6ren_Ihnen?=
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
Reply-To: sergei.lai58@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Bitte ich brauche Ihre Hilfe, um $50 000 000.00 aus einem 
sicheren Safe zu bewegen.


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
