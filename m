Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 769931D714A
	for <lists+v9fs-developer@lfdr.de>; Mon, 18 May 2020 08:52:16 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1jaZdF-0005nG-Tk; Mon, 18 May 2020 06:52:13 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <postmaster@irie.jp>) id 1jaZdE-0005n4-7n
 for v9fs-developer@lists.sourceforge.net; Mon, 18 May 2020 06:52:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Date:Subject:
 To:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=kh/E44w6pEuxHun3sduNLpAHiMCqVTmZnNKuXgprLec=; b=dZSDS9YeoiOhe+fQJ+fY7wEXfr
 zO1zvm2KYJoyv8XrkYxkbeBdtRMkBu+wDUIFq0fthsGylssZc5nQNr1PACf/sWxQqzJBQJRY1sHcF
 pKdA01Wh1OSoUrfqnt7+DbeGCXKLC2+9pPIyXdcKPv5o5S3l+BDrELaRXjCDFTcN1xiQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Date:Subject:To:From:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=kh/E44w6pEuxHun3sduNLpAHiMCqVTmZnNKuXgprLec=; b=l
 0HN5bq7cLF2PNweRx7ukfnal57/3gCTJ6gD/oov/pZAkO7pjIsLhVY+2x3cn0etxnsq8NLDqYERYN
 uSdmzIpbON0ldE6KMcm4YlAN5L7wwsmIePozkuA3yfZdRI9QQOe7PhaMKYLEYVvuyqSp9QPEne4BT
 JCZ6E8G/PKbV1rWM=;
Received: from p7cdba0fe.hyogff01.ap.so-net.ne.jp ([124.219.160.254]
 helo=irie.jp) by sfi-mx-3.v28.lw.sourceforge.com with smtp 
 (Exim 4.92.2) id 1jaZdB-00DNlA-Ff
 for v9fs-developer@lists.sourceforge.net; Mon, 18 May 2020 06:52:12 +0000
Received: (qmail 62612 invoked by uid 0); 18 May 2020 08:52:32 +0900
Received: from unknown (HELO irie.jp) (postmaster@irie.jp@172.83.14.90)
 by 0 with SMTP; 18 May 2020 08:52:32 +0900
From: "Sales" <postmaster@irie.jp>
To: v9fs-developer@lists.sourceforge.net
Date: 17 May 2020 19:59:16 -0400
Message-ID: <20200517195916.FA784E2D73BD4B2A@irie.jp>
MIME-Version: 1.0
X-Spam-Score: 3.1 (+++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 HTML_MESSAGE           BODY: HTML included in message
 3.3 SCRIPT_GIBBERISH       Nonsense in HTML <SCRIPT> tag
 0.0 T_HTML_ATTACH          HTML attachment to bypass scanning?
 0.4 KHOP_HELO_FCRDNS       Relay HELO differs from its IP's reverse DNS
 -1.7 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jaZdB-00DNlA-Ff
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] Postdated Check cleared receipt for 2020/15/May
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

Please confirm payment made May 14 2020.
_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
