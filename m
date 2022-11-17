Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A9D2562D897
	for <lists+v9fs-developer@lfdr.de>; Thu, 17 Nov 2022 11:54:55 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1ovcXm-0007mk-Dt;
	Thu, 17 Nov 2022 10:54:54 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <guozihua@huawei.com>) id 1ovcXk-0007mN-EL
 for v9fs-developer@lists.sourceforge.net;
 Thu, 17 Nov 2022 10:54:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:CC:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=taZJTL4HGWRkpXlffyiRh9vc5G342sqmL2EszrN7ucU=; b=JSlwc1o6Mk8S05Z6S+Eqquo3gk
 PGXNXXbDee2VolGBvc3r/yLbaGPRswYChtXtIPqpFW5OkT9VSF38uzeokIrkCoa63wZ2ikNAM0cAK
 KkA/Rlf/u4rHr400BKICj5rVLMQvLDPB33wB/6yEpLNa5aclEVDZz64Kk/7mZ8CsRO6s=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:CC:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=taZJTL4HGWRkpXlffyiRh9vc5G342sqmL2EszrN7ucU=; b=OoSd+YogUYJ4le0gOOuob2Zrwa
 1kpuXbXD3A6rA5ddCYNjSnsqoUNq/2zVqmIebG37AglHS206Xx3oWaOeUuwU+Q6luc8ebxZWUICaR
 yhgBr0oKwCwSBztag9gfJJVkFGSpW96Ep20Masy3Y3M/jYT3dF3Q3J0rDuOqu9yCqiTE=;
Received: from szxga01-in.huawei.com ([45.249.212.187])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ovcXi-0001OV-4S for v9fs-developer@lists.sourceforge.net;
 Thu, 17 Nov 2022 10:54:52 +0000
Received: from dggpemm500024.china.huawei.com (unknown [172.30.72.54])
 by szxga01-in.huawei.com (SkyGuard) with ESMTP id 4NCcCJ0yp7zqSTb;
 Thu, 17 Nov 2022 18:50:52 +0800 (CST)
Received: from [10.67.110.173] (10.67.110.173) by
 dggpemm500024.china.huawei.com (7.185.36.203) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 17 Nov 2022 18:54:40 +0800
Message-ID: <5be5b648-d72a-5577-1d34-dfa9a6658827@huawei.com>
Date: Thu, 17 Nov 2022 18:54:40 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.2
Content-Language: en-US
To: <asmadeus@codewreck.org>
References: <20221117091159.31533-1-guozihua@huawei.com>
 <Y3YRuHnkULT1Ti3l@codewreck.org>
In-Reply-To: <Y3YRuHnkULT1Ti3l@codewreck.org>
X-Originating-IP: [10.67.110.173]
X-ClientProxiedBy: dggems705-chm.china.huawei.com (10.3.19.182) To
 dggpemm500024.china.huawei.com (7.185.36.203)
X-CFilter-Loop: Reflected
X-Spam-Score: -2.3 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 2022/11/17 18:49,
 asmadeus@codewreck.org wrote: > GUO Zihua
 wrote on Thu, Nov 17, 2022 at 05:11:56PM +0800: >> This patchset fixes the
 write overflow issue in p9_read_work. As well as >> some follo [...] 
 Content analysis details:   (-2.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.187 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1ovcXi-0001OV-4S
Subject: Re: [V9fs-developer] [PATCH 0/3 v2] 9p: Fix write overflow in
 p9_read_work
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

On 2022/11/17 18:49, asmadeus@codewreck.org wrote:
> GUO Zihua wrote on Thu, Nov 17, 2022 at 05:11:56PM +0800:
>> This patchset fixes the write overflow issue in p9_read_work. As well as
>> some follow up cleanups.
> 
> Thanks for this v2.
> 
> Comments below
> 
>> GUO Zihua (3):
>>    9p: Fix write overflow in p9_read_work
>>    9p: Remove redundent checks for message size against msize.
> 
> This has 'Fixes: 3da2e34b64cd ("9p: Fix write overflow in
> p9_read_work")' but that commit isn't applied yet, so the commit hash
> only exists in your tree -- I will get a different hash when I apply the
> patch (because it'll contain my name as committer, date changed etc)
> 
> I don't think it really makes sense to separate these two patches, I'll
> squash them together on my side.
> 
>>    9p: Use P9_HDRSZ for header size
> 
> This makes sense to keep separate, I'll just drop the 'fixes' tag for
> the same reason as above
> 
> 
> I'll do the squash & test tomorrow, you don't need to resend.
> I will tell you when I push to next so you can check you're happy with
> my version.

Sounds great! Thanks Dominique!
-- 
Best
GUO Zihua



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
