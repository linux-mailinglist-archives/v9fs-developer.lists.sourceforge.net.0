Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A04DF62D481
	for <lists+v9fs-developer@lfdr.de>; Thu, 17 Nov 2022 08:58:34 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1ovZn6-0002zu-JJ;
	Thu, 17 Nov 2022 07:58:32 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <guozihua@huawei.com>) id 1ovZn4-0002zn-NB
 for v9fs-developer@lists.sourceforge.net;
 Thu, 17 Nov 2022 07:58:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:CC:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=vM59Yu1xPVpipXIw/7QWIqJB1chvMfcVHl573k3Nq/U=; b=me5idnmiR/UtocYZGS22sHkGK2
 URmFBHFflKFIxwCXl6ssiNTljJojRqyR+TmChoZ+e+x5HPWbjylx8QvBj992rX+YdPYVG+yXz+/eS
 7ZN6PjnaeKwY53PIhLYbVG+FdETWV36OQ3XhwcXtYCHyrvlEMpwh7sAhoL35237ZMtv8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:CC:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=vM59Yu1xPVpipXIw/7QWIqJB1chvMfcVHl573k3Nq/U=; b=U5ehcqxazrkD7lK+XZBhxfnu8B
 i1OdhrveOxltUG7mOGX/0qeXIPccblPOdL7nkFnumU/3QvMpW2Hgm/7lSPHBEWj/AdRJhiRSZR7rH
 c/iOBsqs/WWjSy2lOnhnqzGezXP+RTve1EE7D0ZmBKDoZdIWWY2sP2fINxM6gStRN+6A=;
Received: from szxga02-in.huawei.com ([45.249.212.188])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ovZn0-00BAEy-7c for v9fs-developer@lists.sourceforge.net;
 Thu, 17 Nov 2022 07:58:30 +0000
Received: from dggpemm500024.china.huawei.com (unknown [172.30.72.54])
 by szxga02-in.huawei.com (SkyGuard) with ESMTP id 4NCXMQ4kLbzHw0Z;
 Thu, 17 Nov 2022 15:57:38 +0800 (CST)
Received: from [10.67.110.173] (10.67.110.173) by
 dggpemm500024.china.huawei.com (7.185.36.203) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 17 Nov 2022 15:58:09 +0800
Message-ID: <1fe5dc97-f6f6-f204-bbf5-954fe7e9790c@huawei.com>
Date: Thu, 17 Nov 2022 15:58:09 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.2
Content-Language: en-US
To: <asmadeus@codewreck.org>
References: <20221117061444.27287-1-guozihua@huawei.com>
 <Y3Xi2PmyglEzH5/u@codewreck.org>
In-Reply-To: <Y3Xi2PmyglEzH5/u@codewreck.org>
X-Originating-IP: [10.67.110.173]
X-ClientProxiedBy: dggems705-chm.china.huawei.com (10.3.19.182) To
 dggpemm500024.china.huawei.com (7.185.36.203)
X-CFilter-Loop: Reflected
X-Spam-Score: -4.3 (----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 2022/11/17 15:29,
 asmadeus@codewreck.org wrote: > GUO Zihua
 wrote on Thu, Nov 17, 2022 at 02:14:44PM +0800: >> The root cause of this
 issue is that we check the size of the message >> received agai [...] 
 Content analysis details:   (-4.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.188 listed in list.dnswl.org]
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: rc.id]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -2.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1ovZn0-00BAEy-7c
Subject: Re: [V9fs-developer] [PATCH] 9p: Fix write overflow in p9_read_work
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
From: "Guozihua \(Scott\) via V9fs-developer"
 <v9fs-developer@lists.sourceforge.net>
Reply-To: "Guozihua \(Scott\)" <guozihua@huawei.com>
Cc: lucho@ionkov.net, ericvh@gmail.com, netdev@vger.kernel.org,
 linux_oss@crudebyte.com, edumazet@google.com,
 v9fs-developer@lists.sourceforge.net, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On 2022/11/17 15:29, asmadeus@codewreck.org wrote:
> GUO Zihua wrote on Thu, Nov 17, 2022 at 02:14:44PM +0800:
>> The root cause of this issue is that we check the size of the message
>> received against the msize of the client in p9_read_work. However, this
>> msize could be lager than the capacity of the sdata buffer. Thus,
>> the message size should also be checked against sdata capacity.
> 
> Thanks for the fix!
> 
> I'm picky, so a few remarks below.
> 
>>
>> Reported-by: syzbot+0f89bd13eaceccc0e126@syzkaller.appspotmail.com
>> Fixes: 1b0a763bdd5e ("9p: use the rcall structure passed in the request in trans_fd read_work")
>> Signed-off-by: GUO Zihua <guozihua@huawei.com>
>> ---
>>   net/9p/trans_fd.c | 8 ++++++++
>>   1 file changed, 8 insertions(+)
>>
>> diff --git a/net/9p/trans_fd.c b/net/9p/trans_fd.c
>> index 56a186768750..bc131a21c098 100644
>> --- a/net/9p/trans_fd.c
>> +++ b/net/9p/trans_fd.c
>> @@ -342,6 +342,14 @@ static void p9_read_work(struct work_struct *work)
>>   			goto error;
>>   		}
>>   
>> +		if (m->rc.size > m->rreq->rc.capacity - m->rc.offset) {
> 
> Ah, it took me a while to understand but capacity here is no longer the
> same as msize since commit 60ece0833b6c ("net/9p: allocate appropriate
> reduced message buffers")
> 
> If you have time to test the reproducer, please check with any commit
> before 60ece0833b6c if you can still reproduce. If not please fix your
> Fixes tag to this commit.
> I'd appreciate a word in the commit message saying that message capacity
> is no longer constant here and needs a more subtle check than msize.
> 
> 
> Also:
>   - We can remove the msize check, it's redundant with this; it doesn't
> matter if we don't check for msize before doing the tag lookup as tag
> has already been read
>   - While the `- offset` part of the check is correct (rc.size does
> not include headers, and the current offset must be 7 here) I'd prefer
> if you woud use P9_HDRSZ as that's defined in the protocol and using
> macros will be easier to check if that ever evolves.
>   - (I'd also appreciate if you could update the capacity = 7 next to the
> 'start by reading header' comment above while you're here so we use the
> same macro in both place)
> 
> 
>> +			p9_debug(P9_DEBUG_ERROR,
>> +				 "requested packet size too big: %d\n",
>> +				 m->rc.size);
> 
> Please log m->rc.tag, m->rc.id and m->rreq->rc.capacity as well for
> debugging if that happens.
> 
>> +			err = -EIO;
>> +			goto error;
>> +		}
>> +
>>   		if (!m->rreq->rc.sdata) {
>>   			p9_debug(P9_DEBUG_ERROR,
>> 				 "No recv fcall for tag %d (req %p), disconnecting!\n",
> --
> Dominique

Hi Dominique, Thanks for the comment, will push a v2 right away.
-- 
Best
GUO Zihua



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
