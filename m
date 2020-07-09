Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F5BE2195DC
	for <lists+v9fs-developer@lfdr.de>; Thu,  9 Jul 2020 04:04:54 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1jtLvf-0002t1-Kc; Thu, 09 Jul 2020 02:04:51 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <zhengbin13@huawei.com>) id 1jtLvd-0002sp-Av
 for v9fs-developer@lists.sourceforge.net; Thu, 09 Jul 2020 02:04:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:CC:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=33GfuHrr9xu2ArYN9s8Nf8gyHSSYEi6KGvWOiY/YSDA=; b=Qg1q+7PVXsa0U0kn9qVsdB7sD0
 GZXpPc0hkx+U+/4k1uABsSfbwyaRDIFSE6yjd+IC6G3u7/v8FAKOVg/5bOLnzUULttkECZiWvGZGG
 vPQOxfBSnLpNXRmg44YycY3ivvUX592Ul6Z25RRjVZH0cqCAxRNS30b+mlWlLi03kEPc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:CC:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=33GfuHrr9xu2ArYN9s8Nf8gyHSSYEi6KGvWOiY/YSDA=; b=OWEQC6tnGElo61I6bA2CGfXdL7
 1QKbctarnRaBq5HRNDX3wrmMD8Vvd/vakLc2sA22XieFzm0HmYDNwJTNia+tU87VPXzinh3hMAOgN
 rWajGo8XD4z+A4EhCX7gNBYF9kb81j0wJO1jlOcYeH2cB2SGZXA1WzyQz89tdEk5bdL0=;
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jtLva-00Bgfs-TY
 for v9fs-developer@lists.sourceforge.net; Thu, 09 Jul 2020 02:04:49 +0000
Received: from DGGEMS414-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 6E24292A9D235B4B7F6B;
 Thu,  9 Jul 2020 10:04:38 +0800 (CST)
Received: from [127.0.0.1] (10.174.177.218) by DGGEMS414-HUB.china.huawei.com
 (10.3.19.214) with Microsoft SMTP Server id 14.3.487.0;
 Thu, 9 Jul 2020 10:04:30 +0800
To: Dominique Martinet <asmadeus@codewreck.org>
References: <20200615012153.89538-1-zhengbin13@huawei.com>
 <20200615102053.GA11026@nautica>
From: "Zhengbin (OSKernel)" <zhengbin13@huawei.com>
Message-ID: <ae01f0bd-da0a-f01f-cbd0-3af10ccaa4ae@huawei.com>
Date: Thu, 9 Jul 2020 10:04:30 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.3.0
MIME-Version: 1.0
In-Reply-To: <20200615102053.GA11026@nautica>
Content-Language: en-US
X-Originating-IP: [10.174.177.218]
X-CFilter-Loop: Reflected
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: huawei.com]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [45.249.212.32 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1jtLva-00Bgfs-TY
Subject: Re: [V9fs-developer] [PATCH RESEND] 9p: Fix memory leak in
 v9fs_mount
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
Cc: lucho@ionkov.net, yi.zhang@huawei.com, ericvh@gmail.com,
 linux-kernel@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Is this OK? I don't see it on linux-next

On 2020/6/15 18:20, Dominique Martinet wrote:
> Zheng Bin wrote on Mon, Jun 15, 2020:
>> v9fs_mount
>>    v9fs_session_init
>>      v9fs_cache_session_get_cookie
>>        v9fs_random_cachetag                     -->alloc cachetag
>>        v9ses->fscache = fscache_acquire_cookie  -->maybe NULL
>>    sb = sget                                    -->fail, goto clunk
>> clunk_fid:
>>    v9fs_session_close
>>      if (v9ses->fscache)                        -->NULL
>>        kfree(v9ses->cachetag)
>>
>> Thus memleak happens.
>>
>> Signed-off-by: Zheng Bin <zhengbin13@huawei.com>
> Thanks, will run tests & queue next weekend
>



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
