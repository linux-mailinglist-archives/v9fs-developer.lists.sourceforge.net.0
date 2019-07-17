Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id EBFAE6BF5B
	for <lists+v9fs-developer@lfdr.de>; Wed, 17 Jul 2019 17:53:54 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1hnmFa-00064N-UY; Wed, 17 Jul 2019 15:53:50 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <matthieu.baerts@tessares.net>) id 1hnmFZ-000642-8M
 for v9fs-developer@lists.sourceforge.net; Wed, 17 Jul 2019 15:53:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=FDo9Lo4bRL1drnwrtZOS25Zu6SZ8sQg0/SdAU9V59hY=; b=ZkkdVsWE5YuGDrsJhGFf2+1XLZ
 f/GCEOE3CQVGXBvVjXK1j0636VFtOUzGNk7/azii0ctj5tfO1b46bs3tTVxFgeoiq1sE8Y9+ksd1x
 DUD8bapk9M5b0AV2Zq8ofz7K9WhlgBJdB2PHDSz1ckzVP9Jp7/0IvzUYGfvviQ2GC+Og=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=FDo9Lo4bRL1drnwrtZOS25Zu6SZ8sQg0/SdAU9V59hY=; b=IGMs2RXQ+J2gQoXvrjmBhFaTZp
 pTQXiKv6YvjgFraKNQbjk9nYK9zUyz261zhD/oP8sJFpmv3siaIra6cxeCt/xK9+pAaxHrvmLuizt
 Zb/ax2Is4pG83O50vKxfDfaGFFa8G6IGmxE0hKL7Xfl2gyDibs4CA2KEgnVs5sR6M05U=;
Received: from mail-ed1-f65.google.com ([209.85.208.65])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 id 1hnmFW-004SrW-Fc
 for v9fs-developer@lists.sourceforge.net; Wed, 17 Jul 2019 15:53:49 +0000
Received: by mail-ed1-f65.google.com with SMTP id k21so26353018edq.3
 for <v9fs-developer@lists.sourceforge.net>;
 Wed, 17 Jul 2019 08:53:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=tessares-net.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:openpgp:autocrypt:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=FDo9Lo4bRL1drnwrtZOS25Zu6SZ8sQg0/SdAU9V59hY=;
 b=ySYwBUBt7ESg/2XHtjuCBA1eLs/9qUneVn6+odcBAjRvCxoTcHwuzaREZD1sooagN2
 KLcVkI44oj5xEWO8AEuPu1XviXokNBvucxdx1YzFi6Op9CNGpm8NEDrLHtPZQiDDTwSw
 27VpwAvJqMRKaFZq7Ybs2l/Ksli6MbiI8MqS98neSyC6k8dDvXwHAOAy3RkiLpYXPEiu
 mov9Bcwv1g72YUuH6KJvrrhogbbiSOGBXXbbbfZ+m5bs135eDM+CZkcCegAfGAKjVfut
 1o2WLRrUZ9cWKuO44wCDemxqgUXa+tVmGs3B1q6Mtwx6wNU37MmcGZpfhNEZZjEj79ld
 r99g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=FDo9Lo4bRL1drnwrtZOS25Zu6SZ8sQg0/SdAU9V59hY=;
 b=kt5rIkP4UitnX76xcZZJC6jyJgPA8AUGlGv9VhNypUeKcryPmf9Y/MCd5QTsUnKoDA
 BY0XVrCNBWJByKq8jUEzwxHbkHHIrbCEe5rXhigE09aYPvsvVp2Om0G9DJ1CoDU4zBSp
 8YB8NKVOdetVZzhdO3cyCHg/jxKukboanUA2jZfbRwvngd2Phd/Bbp3qGduNcQ5k2mnx
 /IieF7vpNynhJDOXm2ZoBLaFd8I27P4n87nc3WF0huyetYnO7NVyAcnl2VnKJPXimheH
 Y/t2D+kMjUngzZrpSCc+hA0xypHpo8uege+ETYXy948ra311GkHHgd8VBpIUrJbdPWwv
 39SA==
X-Gm-Message-State: APjAAAUl9FhTk0RIsqixN3gcaY5aJLg2c+d22uMu4VAXADtA8X/G1ePz
 h7E4nM3NPsRpyIDv9kvKhx3SvCXAPR/N2Q==
X-Google-Smtp-Source: APXvYqwyFKR5z5fBcCVNWRh0L1v4DbjbKREy8ZRM9kAD3V3pCnwjU3e27x58uBpfTARKhku7CGnXzA==
X-Received: by 2002:a17:906:2599:: with SMTP id
 m25mr31180538ejb.177.1563378819716; 
 Wed, 17 Jul 2019 08:53:39 -0700 (PDT)
Received: from tsr-lap-08.nix.tessares.net (hag0-main.tessares.net.
 [87.98.252.165])
 by smtp.gmail.com with ESMTPSA id oa21sm3525936ejb.60.2019.07.17.08.53.38
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 17 Jul 2019 08:53:38 -0700 (PDT)
To: Dominique Martinet <asmadeus@codewreck.org>
References: <0757f061-0685-6e8e-9e6f-035d0f57eaf8@tessares.net>
 <20190715113251.GA28601@nautica>
 <f6513948-312e-2edb-44e7-40217741e9ba@tessares.net>
 <20190715161501.GA6535@nautica>
From: Matthieu Baerts <matthieu.baerts@tessares.net>
Openpgp: preference=signencrypt
Autocrypt: addr=matthieu.baerts@tessares.net; keydata=
 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
 fQpO7wDE/Q==
Message-ID: <2dfd3bab-f7ce-56ef-9e39-eb774781272e@tessares.net>
Date: Wed, 17 Jul 2019 17:53:38 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190715161501.GA6535@nautica>
Content-Language: en-US
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.65 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.208.65 listed in list.dnswl.org]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: tessares.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1hnmFW-004SrW-Fc
Subject: Re: [V9fs-developer] New KASAN warnings with kernel v4.14.133
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
Cc: Sasha Levin <sashal@kernel.org>, v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Hi Dominique,

Sorry for the delay, I got interrupted by other tasks.

On 15/07/2019 18:15, Dominique Martinet wrote:
> Matthieu Baerts wrote on Mon, Jul 15, 2019:
>>> There are two things bugging me there:
>>>  - why does the trace speak of v9fs_vfs_get_link and not
>>> v9fs_vfs_get_link_dotl , from what I'm seeing of the code the
>>> v9fs_symlink_inode_operations_dotl is properly assigned so I don't see
>>> why you'd have mixed dotl and non-dotl calls. This might be a hint to
>>> some other problem.
>>>  - KASAN complains about a read in the p9dirent_read's strscpy, so
>>> 'nameptr' - the "allocated by task 330" stack corresponds as p9pdu_readf
>>> does allocate 'nameptr', but it's a 100% local pointer that's never
>>> stored anywhere else and shouldn't be free-able by p9stat_free which
>>> could free only free something from p9pdu_readf's 'S', not present in
>>> "Qqbs".
>>> (the corresponding 'S' in v9fs_vfs_get_link is p9_client_stat, but even
>>> if we're looking at the same fid I really do not see how it could get
>>> the same pointer as nameptr here)
>>>
>>> I'd need to look deeper into a crash dump to understand this better,
>>> will try to reproduce on a fresh 4.14.133 with your mount command...
>>
>> Thank you for your analysis and for looking at that!
>>
>> I can maybe revert the 6 new patches related to 9P and check if I still
>> have the issue with KASAN.
>> Do you suspect one of them to cause this issue?
> 
> The only one that might be related is "9p: p9dirent_read: check
> network-provided name length" ; but even that likely shouldn't kick in.

Two days ago, I only had the time to launch a kind of 'git bisect' to
find which of the new 9p patches caused the issue. It seems you were
right, without this "9p: p9dirent_read: check network-provided name
length" patch, I no longer have the KASAN warning on this v4.14 kernel.

> You can check if it was implied by adding debug=1 to your 9p mount
> options, assuming it is compiled with debugs (I still plan on making
> that the default eventually as debug=1 only enables *error* messages)

I will check how to enable these debugs (is it a kernel option or you
want the output of pr_debug?) and report the logs here.

>>> Do you have any idea what kind of access pattern 'confd' does on top
>>> of your mount?
>>
>> I don't have the details but it is supposed to be used to collect data
>> from SNMP counters. Apparently, it is collecting info from
>> HOST-RESOURCES-MIB. From what I see, it is linked to the RFC 2790 and it
>> is getting many stats from the FS but I don't have the details. I heard
>> that it might be reproducible using snmpd and snmpwalk but I don't know
>> more.
>>
>> If you think it is important, I can ask around and try to get more info.
> 
> Well, just mounting won't reproduce, so I definitely need some kind of
> hint of what is happening if I'd want to have a chance.
> 
> Looking at the traces I suspect it has to do with readlink on a symlink
> at the same time as it gets stat'd by another process but I didn't spend
> much time trying yet.
> 
> The first step to understanding a bug is to know how it happens exactly
> :)

Of course, I understand. For the moment, this confd process is more like
a blackbox to me but I will try to get more details! I just hope I will
not have to use strace :)

Cheers,
Matt


-- 
Matthieu Baerts | R&D Engineer
matthieu.baerts@tessares.net
Tessares SA | Hybrid Access Solutions
www.tessares.net
1 Avenue Jean Monnet, 1348 Louvain-la-Neuve, Belgium


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
