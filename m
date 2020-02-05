Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E6A57152722
	for <lists+v9fs-developer@lfdr.de>; Wed,  5 Feb 2020 08:42:11 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1izFK5-0007tV-D7; Wed, 05 Feb 2020 07:42:09 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <asmadeus@notk.org>) id 1izFK3-0007tN-Vo
 for v9fs-developer@lists.sourceforge.net; Wed, 05 Feb 2020 07:42:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=NuqTaU/bGY0JB7QJ1q4eEV6+/JQB0Dvq65pgKPl6/60=; b=hqbdqmXd2Hx/6DoOZq+qtjl2E/
 HfErT8Zzmjs+eXEgqSXrvgiw4XpJTZUuVS2Nm2oK4lTEli70XFsQ1fC1o7cIAfVt5gJxzg7QaAaTf
 J1amtENCdkH4LxuSouFOpEk6kJDZSDWLmO04CU/9RA/prSzti5syCcMSeZJUVYNQyW0I=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=NuqTaU/bGY0JB7QJ1q4eEV6+/JQB0Dvq65pgKPl6/60=; b=TzRA6l6EqC7wAT/35sFZ9dlh0m
 RmBjKb1N0yFObbo21/ZC91Q08xmfuByF1N4KlkGO+kIOuxnxZAUrHZLDhExv80uS0ISSTJd6YHY6N
 DaS2175k922hTEJUHvQ7dV7PdS58NwuGAR34TF8O5EIzwEA2PdA24o4FK++DDaCdEbRI=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1izFK2-00HUCA-Bh
 for v9fs-developer@lists.sourceforge.net; Wed, 05 Feb 2020 07:42:07 +0000
Received: by nautica.notk.org (Postfix, from userid 1001)
 id AAAD2C01B; Wed,  5 Feb 2020 08:41:59 +0100 (CET)
Date: Wed, 5 Feb 2020 08:41:44 +0100
From: Dominique Martinet <asmadeus@codewreck.org>
To: Sergey Alirzaev <l29ah@cock.li>
Message-ID: <20200205074144.GB16626@nautica>
References: <20200205003457.24340-1-l29ah@cock.li>
 <20200205003457.24340-2-l29ah@cock.li>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200205003457.24340-2-l29ah@cock.li>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Spam-Score: 0.2 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: cock.li]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1izFK2-00HUCA-Bh
Subject: Re: [V9fs-developer] [PATCH 2/2] 9p: read only once on O_NONBLOCK
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
Cc: Latchesar Ionkov <lucho@ionkov.net>, Eric Van Hensbergen <ericvh@gmail.com>,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Jakub Kicinski <kuba@kernel.org>, v9fs-developer@lists.sourceforge.net,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Sergey Alirzaev wrote on Wed, Feb 05, 2020:
> A proper way to handle O_NONBLOCK would be making the requests and
> responses happen asynchronously, but this would require serious code
> refactoring.

FWIW I do have some async 9p code waiting (it's been sent to the list
ages ago but I never took the time to properly test it due to lack of
interest manifested), the problem here is more the caching model than a
synchronous issue, since in nocache mode (where this is used) there is
nowhere to fetch the data ahead of time.

If you're interested in that then please have a look at
https://lore.kernel.org/lkml/1544532108-21689-1-git-send-email-asmadeus@codewreck.org/

> Signed-off-by: Sergey Alirzaev <l29ah@cock.li>

That aside, I guess, why not?
Will take when other patch gets addressed.

Thanks,
-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
