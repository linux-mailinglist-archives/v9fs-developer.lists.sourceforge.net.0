Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B259498CC
	for <lists+v9fs-developer@lfdr.de>; Tue, 18 Jun 2019 08:17:40 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1hd7R3-00038E-Ca; Tue, 18 Jun 2019 06:17:37 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <infos@declinaizon.site>) id 1hd7R1-00037d-5v
 for v9fs-developer@lists.sourceforge.net; Tue, 18 Jun 2019 06:17:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-ID:Subject:From:To:Date:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=CXiWK1tY1VWywEm7T2Ni5nfgFA30JAZ0p6cICTjwpN0=; b=UikrrdqE79JRwhVzZYXgIsY5m9
 RartpF9nkm/FZjHJtDj5ZBK3AdvpVHSbebBrC9Ksc3xUF8sZwhIdOq0bRWeXMiOWYoNZSHxqZYiEn
 gf4rUSuBbq5egABgxziU91OdXsh1O36pY6Cs41/zvSrvXOyrBy7QNxFb70jala4ZJrH4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Subject:
 From:To:Date:Sender:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=CXiWK1tY1VWywEm7T2Ni5nfgFA30JAZ0p6cICTjwpN0=; b=S
 NE3UxujiI61UMc47Ix64kOuAzQ9S5ncJpzI4EjOkqTJBKGTU6n3p6Ot5oe13sA170JuTGt5zy8MJT
 UreRfc9/O0d3GRJ+WaL9rk18upLbQyMrDG1itB6+HoaqgYe2L0sN2j5G+q7ZQ0VBv+V6YjwxxP5V5
 Z/WlrOx/dRYgx5zQ=;
Received: from smtp11.smtpout.orange.fr ([80.12.242.133]
 helo=smtp.smtpout.orange.fr)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps (TLSv1:DHE-RSA-AES128-SHA:128)
 (Exim 4.90_1) id 1hd7Qx-00EpYI-7Y
 for v9fs-developer@lists.sourceforge.net; Tue, 18 Jun 2019 06:17:34 +0000
Received: from devanti ([10.163.22.117]) by mwinf5d46 with ME
 id S6HP2000Q2XaXci036HPAw; Tue, 18 Jun 2019 08:17:24 +0200
X-ME-Helo: devanti
X-ME-Date: Tue, 18 Jun 2019 08:17:24 +0200
X-ME-IP: 10.163.22.117
Date: Tue, 18 Jun 2019 08:17:23 +0200
To: v9fs-developer@lists.sourceforge.net
From: Card Terminal <infos@declinaizon.site>
Message-ID: <482b9de69123ce75c8b211275827844d@devanti>
X-Priority: 3
X-Mailer: dope
MIME-Version: 1.0
X-Spam-Score: 7.3 (+++++++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 2.5 URIBL_DBL_SPAM         Contains a spam URL listed in the Spamhaus DBL
 blocklist [URIs: kecetop.fr]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [80.12.242.133 listed in list.dnswl.org]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: kecetop.fr]
 0.1 URIBL_SBL_A Contains URL's A record listed in the Spamhaus SBL
 blocklist [URIs: kecetop.fr]
 0.6 URIBL_SBL Contains an URL's NS IP listed in the Spamhaus SBL
 blocklist [URIs: kecetop.fr]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HTML_IMAGE_RATIO_08    BODY: HTML has a low ratio of text to image area
 0.1 MIME_HTML_MOSTLY       BODY: Multipart message mostly text/html MIME
 1.0 HTML_MESSAGE           BODY: HTML included in message
 0.5 RAZOR2_CHECK           Listed in Razor2 (http://razor.sf.net/)
 1.5 RAZOR2_CF_RANGE_51_100 Razor2 gives confidence level above 50%
 [cf: 100]
 0.0 T_REMOTE_IMAGE         Message contains an external image
X-Headers-End: 1hd7Qx-00EpYI-7Y
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] Taking card payments has never been so easy
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

card terminal


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
