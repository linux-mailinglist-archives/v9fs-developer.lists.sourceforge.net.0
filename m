Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DFD001F75CA
	for <lists+v9fs-developer@lfdr.de>; Fri, 12 Jun 2020 11:15:48 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1jjfmt-00041y-NA; Fri, 12 Jun 2020 09:15:47 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <zhengbin13@huawei.com>) id 1jjfmk-000413-KX
 for v9fs-developer@lists.sourceforge.net; Fri, 12 Jun 2020 09:15:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:CC:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=c9cJSMc6W3oQjFO10KB47XjtGUQQ9rfukzTdkFhJH2s=; b=mEfPplfgL4Sl3SzrjSD77ICUjg
 vRCWPp1ZxkRAQPhy2jGQHMPkk2J/tBscaF8sePnOYeSQCKS9WKw1pRKLPdxd+wmk/CSueJL5DHUS/
 40KzDN55fdHNq982qV8Gt3Czxm0SBNGDIZgvmmDJuj3xcMaiMOIehS8o2tp94ZCMxbCw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:CC:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=c9cJSMc6W3oQjFO10KB47XjtGUQQ9rfukzTdkFhJH2s=; b=jTv/h/4/WKdxPy4N2lyBebaPQq
 VvOujI7ZxlYWsByDzVor3odKKMM3cGvuiYOLfQCcWj0TJeTBfTG0H5ha9nXrMSUYQs2Pu29QA3hAO
 K205YDcJMExcYzNKX0IizM500nztt6gptIt6TJiBvRNgeCjGsJttz6sXeAsxH7ZkFv+U=;
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jjfmg-00HZPK-H6
 for v9fs-developer@lists.sourceforge.net; Fri, 12 Jun 2020 09:15:35 +0000
Received: from DGGEMS405-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id E29E735389073D3D1E65;
 Fri, 12 Jun 2020 17:15:18 +0800 (CST)
Received: from [127.0.0.1] (10.166.215.138) by DGGEMS405-HUB.china.huawei.com
 (10.3.19.205) with Microsoft SMTP Server id 14.3.487.0;
 Fri, 12 Jun 2020 17:15:09 +0800
To: Dominique Martinet <asmadeus@codewreck.org>
References: <20200612073248.40020-1-zhengbin13@huawei.com>
 <20200612085835.GA8776@nautica>
From: "Zhengbin (OSKernel)" <zhengbin13@huawei.com>
Message-ID: <fd5188fe-40e7-8996-ef20-5067bf4acc01@huawei.com>
Date: Fri, 12 Jun 2020 17:15:09 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.3.0
MIME-Version: 1.0
In-Reply-To: <20200612085835.GA8776@nautica>
Content-Language: en-US
X-Originating-IP: [10.166.215.138]
X-CFilter-Loop: Reflected
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: huawei.com]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [45.249.212.191 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.2 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jjfmg-00HZPK-H6
Subject: Re: [V9fs-developer] [PATCH] 9p: Fix memory leak in v9fs_mount
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
Cc: ericvh@gmail.com, lucho@ionkov.net, yi.zhang@huawei.com,
 v9fs-developer@lists.sourceforge.net
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: v9fs-developer-bounces@lists.sourceforge.net


On 2020/6/12 16:58, Dominique Martinet wrote:
> Zheng Bin wrote on Fri, Jun 12, 2020:
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
> LGTM.
> I don't think it's critical so I'll queue it for 5.9 in a bit after testing

5.8-rc1 has not been released yet, maybe this patch can be queued into 5.8?

Of course it depends on you, thanks.

>
>> ---
>>   fs/9p/v9fs.c | 5 ++---
>>   1 file changed, 2 insertions(+), 3 deletions(-)
>>
>> diff --git a/fs/9p/v9fs.c b/fs/9p/v9fs.c
>> index 15a99f9c7253..39def020a074 100644
>> --- a/fs/9p/v9fs.c
>> +++ b/fs/9p/v9fs.c
>> @@ -500,10 +500,9 @@ void v9fs_session_close(struct v9fs_session_info *v9ses)
>>   	}
>>
>>   #ifdef CONFIG_9P_FSCACHE
>> -	if (v9ses->fscache) {
>> +	if (v9ses->fscache)
>>   		v9fs_cache_session_put_cookie(v9ses);
>> -		kfree(v9ses->cachetag);
>> -	}
>> +	kfree(v9ses->cachetag);
>>   #endif
>>   	kfree(v9ses->uname);
>>   	kfree(v9ses->aname);



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
