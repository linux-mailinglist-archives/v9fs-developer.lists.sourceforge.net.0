Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 782513A16C2
	for <lists+v9fs-developer@lfdr.de>; Wed,  9 Jun 2021 16:13:41 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lqyxe-0000b2-09; Wed, 09 Jun 2021 14:13:38 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <hgcoin@gmail.com>) id 1lqyxc-0000ah-8F
 for v9fs-developer@lists.sourceforge.net; Wed, 09 Jun 2021 14:13:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:Subject:From:References:Cc:To:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=WgDdFC9LyeqAZL05FbBDlv9/pXFqVQqUYkzAMloDy78=; b=cvTrKFcm42z7YWq+PX5vBPQNb6
 ZBSc4zRC5Txo0F5LnrH7TqI0yo1rEMqH8ES8EcTZ1a0RecQ/HFRshOWtI9xGTYWwardGObCTYsacq
 f2OgN3dcf+7GmTPyDhlJ3MKHCrqoKmmkIYcsLGfyZ9Hk8mS3bzM4yE667MwLxxB80Xjg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:Subject:From:References:Cc:To:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=WgDdFC9LyeqAZL05FbBDlv9/pXFqVQqUYkzAMloDy78=; b=faF+n1Vl1c+UY88y1wvKjyT0Ce
 z1Io4d/K9XOE9MdGLSCEnYi3gBWd+tjRqlYo1mznIgk87T1qt2JOdKSrXG0o41EjtD/IkTzFUfuXg
 y7eQ3+54knvuBmeva0YzgUhdYW6HZacWrswWIfX/30YxdU3wGXiaId9+dgrLb4/M4WMM=;
Received: from mail-il1-f177.google.com ([209.85.166.177])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1lqyxT-0007e0-PS
 for v9fs-developer@lists.sourceforge.net; Wed, 09 Jun 2021 14:13:36 +0000
Received: by mail-il1-f177.google.com with SMTP id b5so26245674ilc.12
 for <v9fs-developer@lists.sourceforge.net>;
 Wed, 09 Jun 2021 07:13:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=to:cc:references:from:subject:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=WgDdFC9LyeqAZL05FbBDlv9/pXFqVQqUYkzAMloDy78=;
 b=bmiJS6cj4JL1iOK15/sSmWzkEXhfEioYMz+5x6EHpBI0kD4KICw4lgRJ8nuvmlxub1
 g9ikJOmtRNWMLZtyKcQpy+RClZGgFF3YaDpA2kW2+g9Y0KTpqj1GcUD1jJeOUlYTn6ti
 tyC2BVYicBGICAztfk/3PxzNnReCdMYo8kgIO5p7ldrOvYESWHaAO8aj3PAzgKgKlaze
 oRlPbc1vCaK31PPSaN28oshvIKSCBNF45C2jaYIk4rV4b24DnyQ5voxpcMz0uGENeD2r
 h/V/j/nuDnUfWFAhr3buO64qFUq+P2KlqWu06/nh4lgIAZMrINlNvziO4qwupnKtC5vk
 bfsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:to:cc:references:from:subject:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=WgDdFC9LyeqAZL05FbBDlv9/pXFqVQqUYkzAMloDy78=;
 b=epKO5EUDgogRPaupF8O6rSY6TAoeg2ZV6e57EUpQPs+pY8JATmZ0MhdTpMGRi35LNe
 rpRqnNzvmtqmhI94mcYCFNnXGS01XwDpA38vCC8UJDjc8zZ6WA5sCjryHIWOkCG3TM5x
 SPL3a/uNloQrH7X+8fBC5zJ00U7cZYRltCLyV8VaOPSzCD0VmPOGyEXC1hoQ450war8k
 3p7yfyaT+PmDkahaJk8iNZfy0kqBY21s7mUuWlhn/1hxPSwkgl+8SDVReHTJx0vTeixq
 lH1u+p1fhicQ4wDOpMoc+C2cqIWG7xM4YVNo7tqIcMjPyJc6ms+myD1Ie/IEZVKShRnI
 CBPQ==
X-Gm-Message-State: AOAM530OeTbuOT4FpaMLcZYF7ufrU3MmJYRvUAACSLgSnNPbgLDYjsRB
 GxSIJ497wnKxVrMXsQUpu0TXkquEjRmY/Q==
X-Google-Smtp-Source: ABdhPJygIm1qZY9qywOvCoVDy60MwBi8acFKPNMwdHyUsU9jCmEFWiqXTDgS16SMWc7ntkDr584s1g==
X-Received: by 2002:a05:6e02:521:: with SMTP id
 h1mr6679880ils.295.1623248000363; 
 Wed, 09 Jun 2021 07:13:20 -0700 (PDT)
Received: from ceo1homenx.1.quietfountain.com (173-29-47-53.client.mchsi.com.
 [173.29.47.53])
 by smtp.gmail.com with ESMTPSA id p18sm84514ilg.32.2021.06.09.07.13.18
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 09 Jun 2021 07:13:19 -0700 (PDT)
To: Stefan Hajnoczi <stefanha@redhat.com>, Vivek Goyal <vgoyal@redhat.com>
References: <20210608153524.GB504497@redhat.com>
 <YMCPPCbjbRoPAEcL@stefanha-x1.localdomain>
From: "Harry G. Coin" <hgcoin@gmail.com>
Message-ID: <af0fc557-c90c-4343-ed0e-a3a94dc07137@gmail.com>
Date: Wed, 9 Jun 2021 09:13:17 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <YMCPPCbjbRoPAEcL@stefanha-x1.localdomain>
Content-Language: en-US
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.166.177 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (hgcoin[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.177 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1lqyxT-0007e0-PS
Subject: Re: [V9fs-developer] [Virtio-fs] [PATCH] init/do_mounts.c: Add
 root="fstag:<tag>" syntax for root device
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
Cc: virtio-fs@redhat.com, Miklos Szeredi <miklos@szeredi.hu>,
 Richard Weinberger <richard.weinberger@gmail.com>,
 linux kernel mailing list <linux-kernel@vger.kernel.org>,
 David Howells <dhowells@redhat.com>, viro@zeniv.linux.org.uk,
 linux-fsdevel@vger.kernel.org, v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net


On 6/9/21 4:51 AM, Stefan Hajnoczi wrote:
> On Tue, Jun 08, 2021 at 11:35:24AM -0400, Vivek Goyal wrote:
>> We want to be able to mount virtiofs as rootfs and pass appropriate
>> kernel command line. Right now there does not seem to be a good way
>> to do that. If I specify "root=myfs rootfstype=virtiofs", system
>> panics.
>>
>> virtio-fs: tag </dev/root> not found
>> ..
>> ..
>> [ end Kernel panic - not syncing: VFS: Unable to mount root fs on unknown-block(0,0) ]
>>
>> Basic problem here is that kernel assumes that device identifier
>> passed in "root=" is a block device. But there are few execptions
>> to this rule to take care of the needs of mtd, ubi, NFS and CIFS.
>>
>> For example, mtd and ubi prefix "mtd:" or "ubi:" respectively.
>>
>> "root=mtd:<identifier>" or "root=ubi:<identifier>"
>>
>> NFS and CIFS use "root=/dev/nfs" and CIFS passes "root=/dev/cifs" and
>> actual root device details come from filesystem specific kernel
>> command line options.
>>
>> virtiofs does not seem to fit in any of the above categories. In fact
>> we have 9pfs which can be used to boot from but it also does not
>> have a proper syntax to specify rootfs and does not fit into any of
>> the existing syntax. They both expect a device "tag" to be passed
>> in a device to be mounted. And filesystem knows how to parse and
>> use "tag".
>>
>> So this patch proposes that we add a new prefix "fstag:" which specifies
>> that identifier which follows is filesystem specific tag and its not
>> a block device. Just pass this tag to filesystem and filesystem will
>> figure out how to mount it.
>>
>> For example, "root=fstag:<tag>".
>>
>> In case of virtiofs, I can specify "root=fstag:myfs rootfstype=virtiofs"
>> and it works.
>>
>> I think this should work for 9p as well. "root=fstag:myfs rootfstype=9p".
>> Though I have yet to test it.
>>
>> This kind of syntax should be able to address wide variety of use cases
>> where root device is not a block device and is simply some kind of
>> tag/label understood by filesystem.
> "fstag" is kind of virtio-9p/fs specific. The intended effect is really
> to specify the file system source (like in mount(2)) without it being
> interpreted as a block device.
>
> In a previous discussion David Gilbert suggested detecting file systems
> that do not need a block device:
> https://patchwork.kernel.org/project/linux-fsdevel/patch/20190906100324.8492-1-stefanha@redhat.com/
>
> I never got around to doing it, but can do_mounts.c just look at struct
> file_system_type::fs_flags FS_REQUIRES_DEV to detect non-block device
> file systems?
>
> That way it would know to just mount with root= as the source instead of
> treating it as a block device. No root= prefix would be required and it
> would handle NFS, virtiofs, virtio-9p, etc without introducing the
> concept of a "tag".
>
>   root=myfs rootfstype=virtiofs rootflags=...
>
> I wrote this up quickly after not thinking about the topic for 2 years,
> so the idea may not work at all :).

I plead for the long term goal of syntax harmony between the kernel
command line and the first three fields of /etc/fstab.

Let's do one thing one way, even if it is specified more than one place.

HC






_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
