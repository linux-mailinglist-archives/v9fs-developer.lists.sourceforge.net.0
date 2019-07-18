Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A9E56D0DD
	for <lists+v9fs-developer@lfdr.de>; Thu, 18 Jul 2019 17:16:18 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1ho88j-0001LN-Qk; Thu, 18 Jul 2019 15:16:13 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <matthieu.baerts@tessares.net>) id 1ho88j-0001LD-7A
 for v9fs-developer@lists.sourceforge.net; Thu, 18 Jul 2019 15:16:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=kBxhxb5h6cKj5kgH3kuaxjvauqR6tdHrJwlIv3G+MZY=; b=WQh3nFUVBxtcB3AK3rpm8j6jgj
 2TLoXpZ4XkcGOxmK/TF0Di5L45dyECQCxQHXjrBAyI06pqGeq6ZReEvbZ7zZJ5h2ZdbMGm6CDaauA
 UtlcOR3kyBLhKkIoN/O4Yd5iCpQOtEShV5PAek2JkQI6ZiFohA5B66C9PkxRAog2y9yo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=kBxhxb5h6cKj5kgH3kuaxjvauqR6tdHrJwlIv3G+MZY=; b=KO7i8BmczltSnDaaqAshpeeCi9
 aEqzvlF3HbvxlB0GNNVa4F6GBW7zhJKTttjlWlP4SBPNB3DuUrOU0zhDG8oFArF3YT5iN45hpMpds
 LrOEy7dWIC0oj19iH6J0pmte4EJE5K/lAdutUV2syMXVxnTYl5w7xsdiFEfDtoPkeiv0=;
Received: from mail-ed1-f65.google.com ([209.85.208.65])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 id 1ho88h-0063fw-8O
 for v9fs-developer@lists.sourceforge.net; Thu, 18 Jul 2019 15:16:13 +0000
Received: by mail-ed1-f65.google.com with SMTP id m10so30589063edv.6
 for <v9fs-developer@lists.sourceforge.net>;
 Thu, 18 Jul 2019 08:16:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=tessares-net.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:openpgp:autocrypt:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=kBxhxb5h6cKj5kgH3kuaxjvauqR6tdHrJwlIv3G+MZY=;
 b=kopMhcWI7OVrHqpxDACgBMtTFQ6ulozUl4o1cYAfaWXEUQmQcuoEj2JvvBfy9xuMFP
 Bxy+JFmfKBgQpzYkXQD0yge7j9DQW9ktuZOFwve3MGD/lDjSfiQ2Gqg0wqj9UCOSGTDJ
 WGNfkKSPOkmcYcZtlzQxBPhI4Nz5QDWSrCcl5Z5EiaEwlcnydJj+3xcMzMF9oKO8B2JK
 o1jLoxEYui2VO6Z1bkPmUGl/1m3bbshfyFUoyzHtvKFNhmw2SlZiMUcjJ1PyDNk6sIn6
 uezcRhy6RYiYbuENt9Vqtnf+WQQ11gFWzXIOMmIz1MuFDGj5uQq0+7fojXrPnNdfVIlp
 6gNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=kBxhxb5h6cKj5kgH3kuaxjvauqR6tdHrJwlIv3G+MZY=;
 b=PHKOJCjhTOQhQxNJNJyZ5GNG6vKbVsd/vAYKkttS6iVD1xaYiWUjFGeE1IasqRuAlS
 y8uMs4H5MknY67siB9mvhP5QDm1bd/EapEZPLUiR+i7AhWivX/2xvKAcWMSlipk6Gp/X
 Y3+7mTndbQVkTJVp9s8dq5WaNh2VFpDrtZR1CMzoZcnPorYiE31XZzDO9M9jZaBgTUgL
 5lyUrTbwMwzbFGQ/zlpd/IfzyOJ0zCYosCd9fK0zWV7tvakqZBS+WkzZfzKz85J3BW2F
 E1TwYcPaWTdwABjHMcb0tfIWbZ8KML1m25wE+UgSwU4hyTx7eCAan5czrwqyMuMlHE1H
 e6HA==
X-Gm-Message-State: APjAAAVWojkhJR1mZw9fUnrayCVXBL+6iUyv6yztm5FbhOkwsE9rgc+9
 JIf7NIGS7oDE4e2U2kdBVWg3VA==
X-Google-Smtp-Source: APXvYqywuqYt74YSwP0vs/6MwYk1/fJ8xP5k2bvazEv1TRuVcjwPCGfCDRXthomKsXQXLp9S7lbA9w==
X-Received: by 2002:a50:b122:: with SMTP id k31mr41626872edd.204.1563462964632; 
 Thu, 18 Jul 2019 08:16:04 -0700 (PDT)
Received: from tsr-lap-08.nix.tessares.net ([213.211.153.55])
 by smtp.gmail.com with ESMTPSA id a8sm7567445edt.56.2019.07.18.08.16.03
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 18 Jul 2019 08:16:03 -0700 (PDT)
To: Dominique Martinet <asmadeus@codewreck.org>
References: <20190718135255.GA21431@nautica>
From: Matthieu Baerts <matthieu.baerts@tessares.net>
Openpgp: preference=signencrypt
Autocrypt: addr=matthieu.baerts@tessares.net; keydata=
 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
 fQpO7wDE/Q==
Message-ID: <0e508114-4e3c-f2ee-6160-9207a54414e4@tessares.net>
Date: Thu, 18 Jul 2019 17:16:02 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190718135255.GA21431@nautica>
Content-Language: en-US
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.208.65 listed in list.dnswl.org]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: tessares.net]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.65 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1ho88h-0063fw-8O
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

On 18/07/2019 15:52, Dominique Martinet wrote:
> Matthieu Baerts wrote on Thu, Jul 18, 2019:
>> I can sure do that but before, when you say:
>>
>>> the pr_debug messages will go to dmesg.
>>
>> Are they really "pr_debug" message? Just to know if I need to do
>> something special at the compilation time.
> 
> I meant p9_debug(), but it should all be the same and lead to printk()s
> if the flag is enabled.

OK thank you.

> Matthieu Baerts wrote on Thu, Jul 18, 2019:
>>> I might have done something wrong because I don't see any debug
>>> information printed in dmesg, at least not more than before:
>>
>> I just looked at the code and it seems debug=1 means I will only get the
>> messages related to the errors (P9_DEBUG_ERROR).
>>
>> With debug=7, I have many more messages, too many for my VMs in fact :)
> 
> As you found out, debug is a mask yes - with the trivial patch I inlined
> both error paths out of p9dirent_read should print something with
> debug=1 (P9_DEBUG_ERROR), so given removing the patch makes the issue
> not happen anymore I was expecting at least some error to happen
> there...

Indeed, that's strange.

>> I did the modification you proposed in protocol.c and this
>> "p9dirent_read failed" message is not printed.
>>
>> I also tried to use "debug=3" but I don't have any other messages that
>> are printed in dmesg.
>>
>> If you have any other ideas, do not hesitate to share, I now have one
>> setup ready to test that.
> 
> hmm, so since debug=3 works the setup is fine, just for some reason
> neither of the errors added in 84693d06096 ("9p: p9dirent_read: check
> network-provided name length") are hit.. I'll have to admit I don't
> follow, but then again I didn't think the patch could cause the kasan
> warning we see so something else must be wrong somewhere.

Could it be possible that with the new patch, less characters are copied
and '\0' is not added anywhere in dirent->d_name? And it was working
before because one byte was set to 0 just after? But now when d_name is
read, we read far too much. I don't know what else it could be when
looking at 84693d06096 ("9p: p9dirent_read: check network-provided name
length").

But I just tested this patch and I still have a warning from KASAN:


====
diff --git a/net/9p/protocol.c b/net/9p/protocol.c
index 1885403c9a3e..ed76ebb5276a 100644
--- a/net/9p/protocol.c
+++ b/net/9p/protocol.c
@@ -633,6 +633,7 @@ int p9dirent_read(struct p9_client *clnt, char *buf,
int len,
                kfree(nameptr);
                return ret;
        }
+       dirent->d_name[sizeof(dirent->d_name) - 1] = '\0';
        kfree(nameptr);

        return fake_pdu.offset;
====

Do you think it could come from another patch? I could re-do a "git
bisect"-like but continue after the first reverted patch gives a green
light.

> I'd like to look into why we see mixed dotl and non-dotl function calls
> in the trace (what I was saying about ovl using v9fs_vfs_get_link
> instead of v9fs_vfs_get_link_dotl in my first message) if possible.
> 
> When I tried reproducing in my VM, I can confirm it only uses
> v9fs_vfs_get_link_dotl for me, but I'm not using statx so it's not the
> exact same traces.
> I did the following:
> 
> (setup)
> # mkdir -p /mnt/9p /mnt/overlay /tmp/overlay/upper /tmp/overlay/work
> # mount -t 9p -o trans=virtio,debug=1 share /mnt/9p
> # mount -t overlay overlay -o lower=/mnt/9p,upper=/tmp/overlay/upper,workdir=/tmp/overlay/work /mnt/overlay
> 
> (actual action)
> # perf probe -m 9p v9fs_vfs_get_link_dotl
> # perf probe -m 9p v9fs_vfs_get_link
> # perf record -g -e probe:* -aR sleep 10 &
> # ls -l /mnt/overlay/dir_with_links_on_the_9p_fs
> # wait
> # perf script
> ...
> ls 19559 [024]  4276.755045: probe:v9fs_vfs_get_link_dotl:
> # (ffffffffc0f06930)
>         ffffffffc0f06931 v9fs_vfs_get_link_dotl+0x1
> 		(/lib/modules/4.14.133/kernel/fs/9p/9p.ko)
>         ffffffffc0f43888 ovl_get_link+0x58 ([overlay])
>         ffffffffab6f2ab6 vfs_readlink+0x186 ([kernel.kallsyms])
>         ffffffffab6caca8 sys_readlink+0x1c8 ([kernel.kallsyms])
>         ffffffffab0067a4 do_syscall_64+0x194 ([kernel.kallsyms])
>             7f9b99db5c0b __GI___readlink+0xb (/usr/lib64/libc-2.29.so)
>                        0 [unknown] ([unknown])
> ...
> 
> 
> If you have interactive access to the vm, could you try something
> similar to see if v9fs_vfs_get_link also gets hit for you?

The interactive access is currently disabled on this setup but I can
enable it and see what I can do! I hope I will be able to do these
manipulations soon.

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
