Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CBF491C3127
	for <lists+v9fs-developer@lfdr.de>; Mon,  4 May 2020 03:42:16 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1jVQ7Z-0004en-Ql; Mon, 04 May 2020 01:42:13 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <mail@cxu.jp>) id 1jVQ7Y-0004eb-Rv
 for v9fs-developer@lists.sourceforge.net; Mon, 04 May 2020 01:42:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Date:From:To:Subject:MIME-Version:Content-Type:
 Sender:Reply-To:Message-ID:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=a4N7MZIaL0kc+J4F9NmCHC3Hy+brpUjqcTTPrua1Jpo=; b=RCCe57iSHKuuWYlTAQoLrQlauR
 AiKFsq0mLoHsdFu5zxUuY+x+343tdX3sZccZDjS+DKxXdLW0+6+nky7fyjWu+ZzrScjTVBwSB+8SC
 8I0+ThP3CHHtzQHiZdhBfJqIQ3SRpzZ2UdDAu3Hb4iRwfwx61YnVuZsko1IbzcodQWpQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Date:From:To:Subject:MIME-Version:Content-Type:Sender:Reply-To:Message-ID
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=a4N7MZIaL0kc+J4F9NmCHC3Hy+brpUjqcTTPrua1Jpo=; b=M
 6j/F5DWCY0uMFPPLWjhrw41MR2R2ch8oRboC30Dj0TKzU/uaoqqqunzcgw6j36sG2D0VeRSZYis4C
 wbXXQ3o7dpgyHHzR9oVgh7OT3zfA8EqZZKolsKkaazXtQDo6+MzV07zAQ/gNS/jR0ZG7yBGmRjjW+
 ya6Fvx8H14A8bfyM=;
Received: from [202.210.157.72] (helo=mail.cxu.jp)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtp (Exim 4.92.2)
 id 1jVQ7X-004yKA-KK
 for v9fs-developer@lists.sourceforge.net; Mon, 04 May 2020 01:42:12 +0000
Received: from [46.38.145.171] (unknown [46.38.145.171])
 by mail.cxu.jp (Postfix) with ESMTPA id 3419916DF70
 for <v9fs-developer@lists.sourceforge.net>;
 Mon,  4 May 2020 10:37:54 +0900 (JST)
MIME-Version: 1.0
To: v9fs-developer@lists.sourceforge.net
From: "Sales Manager" <mail@cxu.jp>
Date: Sun, 03 May 2020 18:37:53 -0700
X-Spam-Score: 5.0 (+++++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: perennialboutique.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 HTML_MESSAGE           BODY: HTML included in message
 0.5 RAZOR2_CHECK           Listed in Razor2 (http://razor.sf.net/)
 1.5 RAZOR2_CF_RANGE_51_100 Razor2 gives confidence level above 50%
 [cf: 100] 1.0 MISSING_MID            Missing Message-Id: header
 1.0 RDNS_NONE Delivered to internal network by a host with no rDNS
 0.0 FSL_BULK_SIG           Bulk signature with no Unsubscribe
X-Headers-End: 1jVQ7X-004yKA-KK
Content-Description: Mail message body
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: Re: [V9fs-developer] Purchase Order | Specifications | Order
 Confirmation
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
Message-Id: <E1jVQ7Z-0004en-Ql@sfs-ml-1.v29.lw.sourceforge.com>

https://perennialboutique.com/download/index.php?go=v9fs-developer@lists.sourceforge.net&download=yes&useraccess=secr&id=order_CFM&receipt=true
_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
