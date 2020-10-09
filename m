Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BDD2C288397
	for <lists+v9fs-developer@lfdr.de>; Fri,  9 Oct 2020 09:30:26 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1kQmr8-00084z-Os; Fri, 09 Oct 2020 07:30:22 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <asmadeus@notk.org>) id 1kQmr5-00084q-HY
 for v9fs-developer@lists.sourceforge.net; Fri, 09 Oct 2020 07:30:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=HNlsyhgrfWzlcQZjlO/tfnT1ypXi0nHYaSPWGqZcqWI=; b=XvQuesCOHcRTFznNb5P4Zb3gZj
 ta5gCSV1Pi4tkBNN31sfLioi/vEhuFlHEWXlqN7gCux4UypRlNxR9A6wRkDTdKWH1j9l5SA1Rt6yh
 nhrr+tMo2MDP4fugbjXkaRW9shG0sw3H7DDMLPZtKO/32CCsOrNrNe+WKmIbeljSZjBk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=HNlsyhgrfWzlcQZjlO/tfnT1ypXi0nHYaSPWGqZcqWI=; b=EGgxJaElYF2N7HGbNnXdtgC7/s
 2UsLMbL7slyYvekH/VE8zNdA/Be7HbuAMzr5LIaxBap0KFs0SEDkSuDZJaokDrmMt7ZU9sU9Gldbr
 E/dHMILG5bzCEXuIhjifiuleaPupbvnIp2YOGSis9N51E0fWjdf6nNsZsTJIkCnk1S/c=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kQmqt-003xQw-Tw
 for v9fs-developer@lists.sourceforge.net; Fri, 09 Oct 2020 07:30:19 +0000
Received: by nautica.notk.org (Postfix, from userid 1001)
 id 1C2EAC009; Fri,  9 Oct 2020 09:30:01 +0200 (CEST)
Date: Fri, 9 Oct 2020 09:29:46 +0200
From: Dominique Martinet <asmadeus@codewreck.org>
To: Ye Bin <yebin10@huawei.com>
Message-ID: <20201009072946.GA22796@nautica>
References: <20201009070448.63901-1-yebin10@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201009070448.63901-1-yebin10@huawei.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Spam-Score: 0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: huawei.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1kQmqt-003xQw-Tw
Subject: Re: [V9fs-developer] [PATCH] 9p/xen: Fix inconsistent of format
 with argument type in trans_xen.c
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
Cc: ericvh@gmail.com, lucho@ionkov.net, v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net



Ye Bin wrote on Fri, Oct 09, 2020:
> Fix follow warnings:
> [net/9p/trans_xen.c:454]: (warning) %u in format string (no. 1) requires
> 'unsigned int' but the argument type is 'int'.
> [net/9p/trans_xen.c:460]: (warning) %u in format string (no. 1) requires
> 'unsigned int' but the argument type is 'int'.
> 
> Reported-by: Hulk Robot <hulkci@huawei.com>
> Signed-off-by: Ye Bin <yebin10@huawei.com>

Err, well, we'll run into more troubles than a bad printf if `i` ever
hits values where that'd make a difference but sure.

Could you resend with linux-kernel@vger.kernel.org added to Ccs so I can
add a lkml link?
In general you should run your patch through the "get_maintainer.pl"
script, that'll add a few more Ccs, but I insist on a vger list for
history mostly.

> Subject Re: [PATCH] 9p/xen: Fix inconsistent of format with argument
type in trans_xen.c

Since you'll have to resend anyway, please fix the subject a bit.

'inconsistent of format' is not valid English, and I don't think it's
worth specifying in trans_xen.c after 9p/xen has already been said --
let's keep summaries short.

For example, "9p/xen: Fix format argument warning" ?


Thanks
-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
