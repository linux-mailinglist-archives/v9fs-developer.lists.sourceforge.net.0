Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AA7868C885
	for <lists+v9fs-developer@lfdr.de>; Mon,  6 Feb 2023 22:22:35 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pP8wc-0002m6-IB;
	Mon, 06 Feb 2023 21:22:33 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <axboe@kernel.dk>) id 1pP8wa-0002lw-9h
 for v9fs-developer@lists.sourceforge.net;
 Mon, 06 Feb 2023 21:22:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=GyO4H+NPThpmNrszKY3ZjzP0Rd9jL1+w73Xf4g0ELv4=; b=MfPBA1Btye7FMzPK8cfDSTXEyW
 7mvkasqrAoKxAY/jz7RuUM9jFRZlp95s8JJP0zMfbeXVCz5uj0JJi/N77wmrX6bsp9KwnxSQpgkDx
 3FOb6JrOYKtOqAGEdjtltXp1z014mOwC4s36inZAEzQZbvOzjP2Bqs08LFFqFrRDPRi4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=GyO4H+NPThpmNrszKY3ZjzP0Rd9jL1+w73Xf4g0ELv4=; b=eUN7N0vrkopBV0wPxOP7sxibqO
 3QFlWlSPuOSPgys6uB0kq34EJ2ytOLJMifRUa4+jvwrkAdNg8e7PTs5CkN02ASNBlsZxyHjl3IWNl
 /Yo4/NV6uterSIz9CTLiOKCyvqRB3vEWL93125LOCQQb1yWYapMcuu61P1/RYrUrfe+o=;
Received: from mail-pl1-f177.google.com ([209.85.214.177])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1pP8wW-0004aS-42 for v9fs-developer@lists.sourceforge.net;
 Mon, 06 Feb 2023 21:22:30 +0000
Received: by mail-pl1-f177.google.com with SMTP id h15so6213724plk.12
 for <v9fs-developer@lists.sourceforge.net>;
 Mon, 06 Feb 2023 13:22:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernel-dk.20210112.gappssmtp.com; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=GyO4H+NPThpmNrszKY3ZjzP0Rd9jL1+w73Xf4g0ELv4=;
 b=T6MduvHKpSGd3A6R6gkuMYuAib6DsUH4pSK+ARl89lrtmIEYGTXAdknNDIdfyjjUUX
 WfKKomDmat6TsUzTncmu9eyNTkbwLgW1zjCb3VTM5as0xaO2m3u6ARSVQcQr3s67uqUQ
 PsNDIfnv150h/tPvmmy/k50G1YhbAOumi5MGdetKCMgsiDqbdbRW/bat8HjyeLmK5FZ5
 +9Umd/2oS3SSdiYr8xLChtX9HNUhnhcLOnwcWUFlWhKPeG/bfDR7zn79DnzXIcmYDAM/
 JhVu6wx7n39Wf8pSgKHTIDaHbgbPVpLMcItwGq0UO8huiKbcAWoSj6Qu65Gped1NM279
 ALfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=GyO4H+NPThpmNrszKY3ZjzP0Rd9jL1+w73Xf4g0ELv4=;
 b=cmS+uN8MfjxU01rP8t6+F+v2alE72xhtjwfsxbu8n/s/e5YR2uu8TWcWE7x3eBHw7r
 v124GhqxRMS6r0NtYLkjqUE8NK/KBIBTThJ5E8wjaOOPVQ0FlQKV9nufe0Xgul9GthLH
 dcoWUyUCXB78fpwDhn6x7n6ukNu0ryZOzfjna35U2jThyp+LfvfpnIDKOFtEO7NfER76
 GElQ/ruiKdrtKCwzH+3Zx44fz9u5cPNhr5pIlUJszHjKrywhFGmi7swmmG/Z63gWYKdl
 a8dxC/5owHZ8AsYM99QHv0EnuAR+3vw2Iq8ffEc1BLNeULbsCK1qbt8r8XqOjX3ia5Ja
 GTkg==
X-Gm-Message-State: AO0yUKV5PaOZ+FfFOvLW4Stv5Egtf7O/8zoTZDkg8fZrv9zudN7Q6h2l
 o8GTieIZleuWfFfW1yJd/Kg8F0TUcgFLHnWw
X-Google-Smtp-Source: AK7set9M1G/XPzvlguhRhWPaA4Kqfaupla5+Y3OZh6sjez2Du5/3W4GhEGlygE28FmaEu7mZZd1tHg==
X-Received: by 2002:a92:d386:0:b0:313:bb52:a976 with SMTP id
 o6-20020a92d386000000b00313bb52a976mr361376ilo.1.1675714765838; 
 Mon, 06 Feb 2023 12:19:25 -0800 (PST)
Received: from [192.168.1.94] ([96.43.243.2]) by smtp.gmail.com with ESMTPSA id
 o6-20020a02b806000000b003af2cdde559sm3650739jam.35.2023.02.06.12.19.24
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 06 Feb 2023 12:19:25 -0800 (PST)
Message-ID: <ad133b58-9bc1-4da9-73a2-957512e3e162@kernel.dk>
Date: Mon, 6 Feb 2023 13:19:24 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Content-Language: en-US
To: Dominique Martinet <asmadeus@codewreck.org>,
 Christian Schoenebeck <linux_oss@crudebyte.com>,
 Eric Van Hensbergen <ericvh@kernel.org>
References: <9422b998-5bab-85cc-5416-3bb5cf6dd853@kernel.dk>
 <Y99+yzngN/8tJKUq@codewreck.org>
From: Jens Axboe <axboe@kernel.dk>
In-Reply-To: <Y99+yzngN/8tJKUq@codewreck.org>
X-Spam-Score: -1.1 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 2/5/23 3:02?AM, Dominique Martinet wrote: > meta-comment:
 9p is usually handled separately from netdev, I just saw > this by chance
 when Simon replied to v1 -- please cc > v9fs-developer@lists.sour [...] 
 Content analysis details:   (-1.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.214.177 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.214.177 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -1.1 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1pP8wW-0004aS-42
Subject: Re: [V9fs-developer] [PATCH v2] 9p/client: don't assume
 signal_pending() clears on recalc_sigpending()
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
Cc: netdev <netdev@vger.kernel.org>, Pengfei Xu <pengfei.xu@intel.com>,
 v9fs-developer@lists.sourceforge.net, Jakub Kicinski <kuba@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On 2/5/23 3:02?AM, Dominique Martinet wrote:
> meta-comment: 9p is usually handled separately from netdev, I just saw
> this by chance when Simon replied to v1 -- please cc
> v9fs-developer@lists.sourceforge.net for v3 if there is one
> (well, it's a bit of a weird tree because patches are sometimes taken
> through -net...)
> 
> Also added Christian (virtio 9p) and Eric (second maintainer) to Tos for
> attention.

Thanks! I can send out a v3, but let's get the discussion sorted first.
Only change I want to make is the comment format, which apparently is
different in net/ that most other spots in the kernel.

> Jens Axboe wrote on Fri, Feb 03, 2023 at 09:04:28AM -0700:
>> signal_pending() really means that an exit to userspace is required to
>> clear the condition, as it could be either an actual signal, or it could
>> be TWA_SIGNAL based task_work that needs processing. The 9p client
>> does a recalc_sigpending() to take care of the former, but that still
>> leaves TWA_SIGNAL task_work. The result is that if we do have TWA_SIGNAL
>> task_work pending, then we'll sit in a tight loop spinning as
>> signal_pending() remains true even after recalc_sigpending().
>>
>> Move the signal_pending() logic into a helper that deals with both, and
>> return -ERESTARTSYS if the reason for signal_pendding() being true is
>> that we have task_work to process.
>> Link: https://lore.kernel.org/lkml/Y9TgUupO5C39V%2FDW@xpf.sh.intel.com/
>> Reported-and-tested-by: Pengfei Xu <pengfei.xu@intel.com>
>> Signed-off-by: Jens Axboe <axboe@kernel.dk>
>> ---
>> v2: don't rely on task_work_run(), rather just punt with -ERESTARTYS at
>>     that point. For one, we don't want to export task_work_run(), it's
>>     in-kernel only. And secondly, we need to ensure we have a sane state
>>     before running task_work. The latter did look fine before, but this
>>     should be saner. Tested this also fixes the report as well for me.
> 
> Hmm, just bailing out here is a can of worm -- when we get the reply
> from server depending on the transport hell might break loose (zc
> requests in particular on virtio will probably just access the memory
> anyway... fd will consider it got a bogus reply and close the connection
> which is a lesser evil but still not appropriatey)
> 
> We really need to get rid of that retry loop in the first place, and req
> refcounting I added a couple of years ago was a first step towards async
> flush which will help with that, but the async flush code had a bug I
> never found time to work out so it never made it and we need an
> immediate fix.
> 
> ... Just looking at code out loud, sorry for rambling: actually that
> signal handling in virtio is already out of p9_virtio_zc_request() so
> the pages are already unpinned by the time we do that flush, and I guess
> it's not much worse -- refcounting will make it "mostly work" exactly as
> it does now, as in the pages won't be freed until we actually get the
> reply, so the pages can get moved underneath virtio which is bad but is
> the same as right now, and I guess it's a net improvement?
> 
> 
> I agree with your assessment that we can't use task_work_run(), I assume
> it's also quite bad to just clear the flag?
> I'm not familiar with these task at all, in which case do they happen?
> Would you be able to share an easy reproducer so that I/someone can try
> on various transports?

You can't just clear the flag without also running the task_work. Hence
it either needs to be done right there, or leave it pending and let the
exit to userspace take care of it.

> If it's "rare enough" I'd say sacrificing the connection might make more
> sense than a busy loop, but if it's becoming common I think we'll need
> to spend some more time thinking about it...
> It might be less effort to dig out my async flush commits if this become
> too complicated, but I wish I could say I have time for it...

It can be a number of different things - eg fput() will do it. The
particular case that I came across was io_uring, which will use
TWA_SIGNAL based task_work for retry operations (and other things). If
you use io_uring, and depending on how you setup the ring, it can be
quite common or will never happen. Dropping the connection task_work
being pending is not a viable solution, I'm afraid.

-- 
Jens Axboe



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
