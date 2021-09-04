Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E4333400B99
	for <lists+v9fs-developer@lfdr.de>; Sat,  4 Sep 2021 16:16:43 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mMWTJ-0002EJ-18; Sat, 04 Sep 2021 14:16:41 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <lgndrtsn@mufg.jp>) id 1mMWT6-0002CE-9h
 for v9fs-developer@lists.sourceforge.net; Sat, 04 Sep 2021 14:16:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Date:Subject:To:From:
 Message-ID:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Ia7IyPEPGNmi4aMNaBXw5uevxucpZyKXCnXI9ZZLMqI=; b=REj3mdvmBJfie8o4II9L8DWiix
 yc3iFuQPwuyi6kiSyzkT8b62/qs9S7hAtlS0bVKb/bd8Q+gsCyay0GuQ/utbYCgRHbymorY7lOrc5
 AD0pzeYw7DCnbEVVwgKrsue/vmAClHREBpiSmSGR/EDpP8DeBKgXv5f5ypfjH7IMhVAU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Date:Subject:To:From:Message-ID:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=Ia7IyPEPGNmi4aMNaBXw5uevxucpZyKXCnXI9ZZLMqI=; b=h
 vWODOwoR1II8AljmLAzqBj5DlhMOhIGZtYXfMl2EqFrO0I8TKUZ68qdX8BfDWK9rjK8KYI2YSKmvq
 ufsxWcu01pWXZyo+4HPe/EwH8Rt4aib51QXeZe36jiTHKAK89ZwdQZAEzsH247omdm3QJa2g152qq
 uvaiHWwL50i+nVfw=;
Received: from mail.eihanw.cn ([117.50.162.67] helo=mufg.jp)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtp (Exim 4.92.3)
 id 1mMWT2-0004YH-Tb
 for v9fs-developer@lists.sourceforge.net; Sat, 04 Sep 2021 14:16:28 +0000
Message-ID: <20210904221625021587@mufg.jp>
From: =?gb2312?B?yP3B4qPVo8ajyqXLpbOluSBOZXQgQnJhbmNo?= <lgndrtsn@mufg.jp>
To: <v9fs-developer@lists.sourceforge.net>
Date: Sat, 4 Sep 2021 22:16:11 +0800
MIME-Version: 1.0
X-mailer: Inwjlwvda 2
X-Spam-Score: 4.4 (++++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: mpshxg.shop]
 1.0 HK_RANDOM_FROM         From username looks random
 0.0 HK_RANDOM_ENVFROM      Envelope sender username looks random
 0.5 FROM_LOCAL_NOVOWEL     From: localpart has series of non-vowel letters
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.9 SPF_HELO_SOFTFAIL      SPF: HELO does not match SPF record (softfail)
 1.0 HTML_MESSAGE           BODY: HTML included in message
X-Headers-End: 1mMWT2-0004YH-Tb
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer]
 =?gb2312?B?yP3B4qPVo8ajyrvhyeekq6Tpvm+8saTOpLTfQr1q?=
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
Content-Type: multipart/mixed; boundary="===============7682726099716526008=="
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

This is a multi-part message in MIME format.

--===============7682726099716526008==
Content-Type: text/plain;
	charset="gb2312"
Content-Transfer-Encoding: base64

yP3B4qPVo8ajyuN50NDA+9PDpKSkv6TApK2hoqSipOqkrKTIpKaktKS2pKSk3qS5oaMNCqSzpM6k
v6TToaKktLG+yMuYlKTOpLTA+9PDpKukyaSmpKuk8rRf1UqktaS7pMakpKS/pMCkraS/pKSkqsih
0v2krKSipOqk3qS3pL+kzqTHoaLVXKTLhNnK1qTKpKyk6aGipaupYKXJpM6ktMD708Ok8tK7sr/W
xs/epLWku6TGpKSkv6TApK2hoqS030K9aqS1pLukxqSkpL+kwKStpN6kt6S/oaMNCqTEpK2k3qS3
pMakz6Gi0tTPwqTYpaKlr6W7pbmkzsnPoaKlq6lgpcmkzqS0wPvTw7Rf1Uqky6S0hWbBpqTypKru
iqSk1sKkt6TepLmhow0KIKSqv82YlKTLpM+ktMPUu/OhoqS00MTF5KTypKqS7KSxpLehotVcpMvJ
6qS31FWktKS2pKSk3qS7pPOhow0Kus7X5KS0wO294qSkpL+kwKStpL+kr6Sq7oqkpMnqpLekoqSy
pN6kuaGjDQqktLvYtPCk8qSkpL+kwKSxpMqkpIj2us+hoqWrqWClyaTOpLTA+9PD1sbP3qSsvkC+
QaS1pOyk66SzpMik4qS0pLakpKTepLmkzqTHoaLT6KThpLTBy7PQz8KktaSkoaMNCg0KofaktMD7
08O0X9VKpM+ks6TBpOkNCg0KpLSyu7HjpMiktNDExeSk8qSqpKuksaS3pN6kt6TG1Vyky8nqpLfU
VaS0pLakpKTepLuk86SsoaINCrrOpMikvqS0wO294tlupOqkv6SvpKruiqSkyeqkt6SipLKk3qS5
oaMNCqmkqaSppKmkqaSppKmkqaSppKmkqaSppKmkqaSppKmkqaSppKmkqaSppKmkqaSppKmkqaSp
pKmkqaSppKmkqaSppKmkDQrI/cHio9WjxqPK43nQ0A0KqaWppamlqaWppamlqaWppamlqaWppaml
qaWppamlDQqh9rBr0NDV36H2DQrI/cHio9WjxqPK43nQ0A0Klny+qba81tDSsMf41tDSsDQtMy0y
DQqppKmkqaSppKmkqaSppKmkqaSppKmkqaSppKmkqaSppKmkqaSppKmkqaSppKmkqaSppKmkqaSp
pKmkqaSppKmkqaSppA0KQ29weXJpZ2h0KEMpIE1pdHN1YmlzaGkgVUZKIENvLixMdGQuQWxsIFJp
Z2h0cyBSZXNlcnZlZC4=

--===============7682726099716526008==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============7682726099716526008==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer

--===============7682726099716526008==--


