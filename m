Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 17CBD20C71C
	for <lists+v9fs-developer@lfdr.de>; Sun, 28 Jun 2020 10:47:41 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1jpSyQ-0003qf-SZ; Sun, 28 Jun 2020 08:47:38 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <asmadeus@notk.org>) id 1jpSyO-0003qX-LM
 for v9fs-developer@lists.sourceforge.net; Sun, 28 Jun 2020 08:47:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=pZq545hkj2R0bxvu+Dr3tvEBR/anCSFD4BHSoB21g+8=; b=jnUURsQ43qkb4QBTeeMSDllHzi
 JfVH/OlrXs3/AR4ukncxYqOTFQZmP4jvo0fJhA4qvY7vueAmwD6Tccq35Y/ExNirPaZPDPI+DdEUg
 9Dv4bUShMSV7dPh7YehV1lXqLY1uP2eTGsQcF8iB3h6k3svQ6LCSykMhOIIJn61qR/1o=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=pZq545hkj2R0bxvu+Dr3tvEBR/anCSFD4BHSoB21g+8=; b=e99LuSZrJM5Z6cm0r7JYctaS8M
 QDDQrOcvMi7RPyU0xmjnttnu6f+3x8wrEF49g9KM+OYKz0fZAHgnKizXT7F8NkBoO8114LKZpbK5Y
 KSElU/RzlxtuOqEjTXfzjliV9wrqgCvy09OZIws25aCVE4siDHKCK04KUMZdKOQ/7w9o=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jpSyM-000VQ6-U1
 for v9fs-developer@lists.sourceforge.net; Sun, 28 Jun 2020 08:47:36 +0000
Received: by nautica.notk.org (Postfix, from userid 1001)
 id 49A2EC01A; Sun, 28 Jun 2020 10:47:28 +0200 (CEST)
Date: Sun, 28 Jun 2020 10:47:13 +0200
From: Dominique Martinet <asmadeus@codewreck.org>
To: Jianyong Wu <jianyong.wu@arm.com>
Message-ID: <20200628084713.GA10219@nautica>
References: <20200628074337.45895-1-jianyong.wu@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200628074337.45895-1-jianyong.wu@arm.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Spam-Score: 0.2 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: arm.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jpSyM-000VQ6-U1
Subject: Re: [V9fs-developer] [PATCH] 9p: remove unused code in 9p
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
Cc: lucho@ionkov.net, justin.he@arm.com, wei.chen@arm.com, Steve.Capper@arm.com,
 ericvh@gmail.com, linux-kernel@vger.kernel.org, Kaly.Xin@arm.com,
 v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Jianyong Wu wrote on Sun, Jun 28, 2020:
> These codes have been commented out since 2007 and lay in kernel
> since then. So, it's better to remove them.
> 
> Signed-off-by: Jianyong Wu <jianyong.wu@arm.com>

Thanks, queued for 5.9
-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
