Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 56C2C8C6544
	for <lists+v9fs-developer@lfdr.de>; Wed, 15 May 2024 12:56:26 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1s7CJ4-0000r1-Oj;
	Wed, 15 May 2024 10:56:23 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <booking@onyxvacationrentals.com>) id 1s7CJ4-0000qt-9s
 for v9fs-developer@lists.sourceforge.net;
 Wed, 15 May 2024 10:56:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-Id:Date:MIME-Version:Content-Type:To:
 Subject:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=tZZkZSnwKTekp8OCRW5gn11+Fn8HnbrgkErNm3a8pSE=; b=is9/25I6a3mnNTG1ol82xiAK2o
 o3sq/J5Z5n6INuDPC7xTYba3CD55I9qqVlSc/sSPaMkOrPEAD/jQ7XdiZ/LBgM81482ThUz5NSmd9
 XKEO5otBS+ihV4ZTIcWZlp7q6J6v0eqG32Hkn3CnsjTozJ7VqJpfly4M/crAx86P27NE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-Id:Date:MIME-Version:Content-Type:To:Subject:From:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=tZZkZSnwKTekp8OCRW5gn11+Fn8HnbrgkErNm3a8pSE=; b=M
 duUDYkq7X/t/3HXZBHol6zIx+DNlrvngsKwLm7pZ116a7lH8YYlvXmi+hgItyGvU9wU6eNxdULO7f
 F+f0RCWfBps5LxjCBAHxulIbl8yWXtQuzAVVdSyJGGMcPa0b+zliefAcDZAT++jIu2Mla/QLnvjj1
 LD901aV3l1ukhwpk=;
Received: from 5771653.baggerbags.com ([162.215.217.107])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1s7CJ4-0001PU-W0 for v9fs-developer@lists.sourceforge.net;
 Wed, 15 May 2024 10:56:23 +0000
Received: from [188.215.229.134] (port=57753 helo=188)
 by 5771653.baggerbags.com with esmtpsa (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.96.2)
 (envelope-from <booking@onyxvacationrentals.com>) id 1s6XLt-0003Tl-1r
 for v9fs-developer@lists.sourceforge.net;
 Mon, 13 May 2024 10:12:34 -0500
From: =?iso-8859-1?B?SVQgTWVzc2dlIENlbnRlcq4=?=
 <booking@onyxvacationrentals.com>
To: <v9fs-developer@lists.sourceforge.net>
MIME-Version: 1.0
Date: Mon, 13 May 2024 17:12:34 +0200
Message-Id: <2024130517123390AC0DC4BD$6CF4140D95@onyxvacationrentals.com>
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - 5771653.baggerbags.com
X-AntiAbuse: Original Domain - lists.sourceforge.net
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - onyxvacationrentals.com
X-Get-Message-Sender-Via: 5771653.baggerbags.com: authenticated_id:
 booking@onyxvacationrentals.com
X-Authenticated-Sender: 5771653.baggerbags.com: booking@onyxvacationrentals.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Spam-Score: 5.8 (+++++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  lists.sourceforge.net account Security alert We think that
 someone else might have accessed the lists.sourceforge.net account 
 Content analysis details:   (5.8 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_DNSWL_BLOCKED  RBL: ADMINISTRATOR NOTICE: The query to
 DNSWL was blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [162.215.217.107 listed in list.dnswl.org]
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: emlnk.com]
 0.5 DATE_IN_PAST_24_48     Date: is 24 to 48 hours before Received: date
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.3 RCVD_IN_MSPIKE_L3      RBL: Low reputation (-3)
 [162.215.217.107 listed in bl.mailspike.net]
 0.0 HTML_MESSAGE           BODY: HTML included in message
 5.0 RCVD_IN_MSPIKE_BL      Mailspike blocklisted
 0.0 T_KAM_HTML_FONT_INVALID Test for Invalidly Named or Formatted
 Colors in HTML
X-Headers-End: 1s7CJ4-0001PU-W0
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] lists.sourceforge.net account security alert
X-BeenThere: v9fs-developer@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: "deprecated: use v9fs@lists.linux.dev"
 <v9fs-developer.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/v9fs-developer>, 
 <mailto:v9fs-developer-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=v9fs-developer>
List-Post: <mailto:v9fs-developer@lists.sourceforge.net>
List-Help: <mailto:v9fs-developer-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/v9fs-developer>, 
 <mailto:v9fs-developer-request@lists.sourceforge.net?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net


lists.sourceforge.net account

Security alert

We think that someone else might have accessed the lists.sourceforge.net account 

v9fs-developer@lists.sourceforge.net

. When this happens, we require you to verify your identity with a security challenge and then change your password the next time you sign in.

If someone else has access to your account, they have your password and might be trying to access your personal information or send junk email.

If you haven't already recovered your account, we can help you do it now.

Recover account https://servidomic66338.lt.emlnk.com/Prod/link-tracker?notrack=1&redirectUrl=aHR0cHMlM0ElMkYlMkZjbG91ZGZsYXJlLWlwZnMuY29tJTJGaXBmcyUyRmJhZnliZWlhNGR2YzNpbDZ0YWd1YjU3bDVqbWltZ2JsN2o2eHdtbzRmd2tqaTdueWhrYXR5Z3FhYmlpJTJGYXR0YWNodW9kYXRlLmh0bWw=&sig=GoLMM5oDxwXkVSo4qCBPYCCA7bR9NNLeGF35ygY76bsD&iat=1715030762&a=%7C%7C478555477%7C%7C&account=servidomic66338%2Eactivehosted%2Ecom&email=CWuTNivKslSMhmU%2BK63VkDSOLcfLmaDlx0sThdJ6yXXpEGKofA%3D%3D%3A9MG0jdT4TxOBNgAsqE0DYRRBb%2FJdKdJt&s=YmFiYWNsZXR1c0B5YW5kZXguY29t&i=1A3A0A9#v9fs-developer@lists.sourceforge.net

Learn how to 

make your account more secure http:///#

.

Thanks,

The lists.sourceforge.net account team

Privacy Statement http://#

lists.sourceforge.net Corporation, One Microsoft Way, Redmond, WA 98052

_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
